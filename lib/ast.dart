import 'package:code_builder/code_builder.dart' hide FunctionType;
import 'package:wasmd/compiler.dart';
import 'package:wasmd/instructions.dart' hide ValueType;
import 'package:wasmd/src/utils.dart';

class Ref {
  final String expr;

  Ref(this.expr);

  @override
  String toString() => expr;
}

class FunctionBuilder {
  final Module module;
  final DefinedFunction definedFunction;
  final RefStack stack = RefStack();
  final List<Code> statements = [];

  final List<BlockType> nesting = [];
  final List<Scope> scopes = [Scope()];

  FunctionBuilder(this.module, this.definedFunction);

  FunctionType get functionType => definedFunction.functionType;

  Variable variableFromIndex(int index) => definedFunction.variables[index];

  void enterBlock(BlockType blockType, BlockFunctionType blockType2) {
    nesting.add(blockType);
    scopes.add(Scope(parent: scope, blockType: blockType2));
  }

  BlockType? exitBlock() {
    if (nesting.isEmpty) {
      return null;
    }

    scopes.removeLast();
    return nesting.removeLast();
  }

  Scope get scope => scopes.last;

  String get currentBlockLabel => labelNameFromIndex(0)!;

  String? labelNameFromIndex(int index) {
    if (index >= nesting.length) return null;

    var block = blockNestingFromIndex(index);
    var depth = nesting.length - 1 - index;
    return '${block.shortName}_label_$depth';
  }

  BlockType blockNestingFromIndex(int index) {
    // Special case asking for the outermost nesting - the function entrypoint.
    if (index == nesting.length) {
      return BlockType.$return;
    }

    return nesting[nesting.length - 1 - index];
  }

  Scope scopeForIndex(int index) {
    return scopes[scopes.length - 1 - index];
  }

  void build(List<Instr> instrs) {
    for (var instr in instrs) {
      instr.instruction.generateToVm(instr, this);
    }
  }

  List<Code> emit() {
    return statements;
  }

  Ref popRef() => stack.pop();

  List<Ref> popN(int count) {
    var result = <Ref>[];
    for (int i = 0; i < count; i++) {
      result.add(popRef());
    }
    return result;
  }

  Ref peekRef() => stack.peek();

  void pushRef(Ref ref) {
    stack.push(ref);
  }

  void generateAssign(Ref to, Ref from) {
    statements.add(refer(to.expr).assign(refer(from.expr)).statement);
  }

  void addStatement(Code code) {
    statements.add(code);
  }

  void performCall(VmCall call) {
    statements.add(call.toExpression().statement);
  }

  void pushAssignTemp(VmCall call) {
    // create temp
    var temp = generateName('t');

    // assign to temp
    statements.add(declareVar(temp).assign(call.toExpression()).statement);

    // push temp
    stack.push(Ref(temp));
  }

  void pushAssignTuple(VmCall call) {
    // create temp
    var temp = generateName('tuple');

    // assign to temp
    statements.add(declareVar(temp).assign(call.toExpression()).statement);

    // push tuple fields
    for (int i = 0; i < call.returns.length; i++) {
      stack.push(Ref('$temp.t$i'));
    }
  }

  ModuleFunction? functionByIndex(int index) {
    return definedFunction.module.functionByIndex(index);
  }

  final Map<String, int> _names = {};

  String generateName(String baseName) {
    // TODO: We need a general name allocator.
    var val = _names[baseName] ?? 0;
    var name = '$baseName$val';
    _names[baseName] = val + 1;
    return name;
  }

  void generateBlockReturnVar(
    BlockFunctionType blocktype, {
    String? description,
  }) {
    var blockReturnName = generateName('block');
    scope.blockReturnName = blockReturnName;

    description ??= '';
    if (description.isNotEmpty) {
      description = ' // $description';
    }

    if (blocktype.isPrimitive) {
      var val = blocktype.defaultInitValue;
      addStatement(Code('\nvar $blockReturnName = $val;$description'));
    } else if (blocktype.returnItems > 1) {
      addStatement(Code(
          '\nlate ${blocktype.tupleTypeName} $blockReturnName;$description'));
    } else {
      var type = blocktype.firstReturnType!;
      addStatement(Code('\n${type.typeName} $blockReturnName;$description'));
    }
  }

  void blockReturn({bool endStatement = false}) {
    // We're at the end of a block - either an `else` instruction or an `end`.
    var retCount = scope.blockReturnCount;

    if (retCount == 0) {
      return;
    } else if (retCount == 1) {
      // todo: does poping here mess up the stack?
      var ref = popRef();
      addStatement(Code('${scope.blockReturnName} = $ref;'));

      if (endStatement) {
        pushRef(Ref(scope.blockReturnName!));
      }
    } else {
      var refs = popN(retCount);
      addStatement(Code('return Tuple$retCount('
          '${refs.reversed.map((ref) => ref.toString()).join(', ')});'));
    }
  }

  /// Remove all but the oldest [depth] stack entries, but keep the top
  /// [paramCount] stack items.
  void unwindTo(int depth, int paramCount) => stack.unwindTo(depth, paramCount);
}

class RefStack {
  final List<Ref> stack = [];

  bool get isEmpty => stack.isEmpty;

  void push(Ref ref) {
    stack.add(ref);
  }

  Ref pop() => stack.removeLast();

  Ref peek() => stack.last;

  /// Remove all but the oldest [depth] stack entries, but keep the top
  /// [paramCount] stack items.
  void unwindTo(int depth, int paramCount) {
    if (stack.length == depth + paramCount) {
      return;
    }

    // Keep [0, start), [length-paramCount, length)
    stack.removeRange(depth, stack.length - paramCount);
  }
}

class VmCall {
  final String name;
  final List<num> immediates;
  final List<Ref> args;
  final List<ValueType> returns;

  VmCall(this.name, this.immediates, this.args, this.returns);

  Expression toExpression() {
    var params = [
      ...immediates.map((n) => printExpression(printLiteral(n))),
      ...args.map((r) => r.expr),
    ];
    return CodeExpression(Code('$name(${params.join(', ')})'));
  }
}
