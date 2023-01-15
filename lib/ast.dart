import 'package:code_builder/code_builder.dart' hide FunctionType;
import 'package:wasmd/compiler.dart';
import 'package:wasmd/instructions.dart';
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
}

class RefStack {
  final List<Ref> stack = [];

  bool get isEmpty => stack.isEmpty;

  void push(Ref ref) {
    stack.add(ref);
  }

  Ref pop() => stack.removeLast();

  Ref peek() => stack.last;
}

class VmCall {
  final String name;
  final List<num> immediates;
  final List<Ref> args;

  // todo: return types

  VmCall(this.name, this.immediates, this.args);

  Expression toExpression() {
    var params = [
      ...immediates.map((n) => printExpression(printLiteral(n))),
      ...args.map((r) => r.expr),
    ];
    return CodeExpression(Code('$name(${params.join(', ')})'));
  }
}
