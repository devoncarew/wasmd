// ignore_for_file: camel_case_types

import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';

import 'compiler.dart' hide ValueType;
import 'compiler.dart' as compiler show BlockType, FunctionType, ValueType;

class Instr {
  final Instruction instruction;
  final List<Object> args;

  Instr(
    this.instruction, [
    this.args = const [],
  ]);

  Code generateToStatement(DefinedFunction function) {
    var code = instruction.generateToStatement(this, function);
    instruction.updateStackDepth(function);
    return code;
  }

  @override
  String toString() {
    return instruction.toString();
  }
}

class Instruction_Unreachable extends Instruction {
  Instruction_Unreachable() : super('unreachable', 0x00, '');

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    if (instr.args.isNotEmpty) {
      var error = instr.args[0] as String;
      return literalString('unreachable ($error)').thrown.statement;
    } else {
      return refer('Trap')
          .call([literalString('unreachable')])
          .thrown
          .statement;
    }
  }
}

class Instruction_Nop extends Instruction {
  Instruction_Nop() : super('nop', 0x01, '');

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    return Code('      /* nop */');
  }
}

class Instruction_Block extends Instruction {
  static const blockOpcode = 0x02;

  // the immediate is either 0x40, a valuetype, or a positive 33bit integer
  Instruction_Block() : super('block', blockOpcode, '(i32)');

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    var blocktype = BlockType.from(instr.args[0] as int, function);

    function.enterBlock(compiler.BlockType.$block, blocktype);

    var label = function.currentBlockLabel;
    return Code('$label: {');
  }
}

class Instruction_Loop extends Instruction {
  static const loopOpcode = 0x03;

  Instruction_Loop() : super('loop', loopOpcode, '(i32)');

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    var blocktype = BlockType.from(instr.args[0] as int, function);

    function.enterBlock(compiler.BlockType.$loop, blocktype);

    var label = function.currentBlockLabel;
    return Code('\n$label: for (;;) {');
  }
}

class Instruction_If extends Instruction {
  static const ifOpcode = 0x04;

  Instruction_If() : super('if', ifOpcode, '(i32) i32');

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    var blocktype = BlockType.from(instr.args[0] as int, function);

    function.enterBlock(compiler.BlockType.$if, blocktype);

    var label = function.currentBlockLabel;
    return Code('$label: if (frame.pop() != 0) {');
  }
}

class Instruction_Else extends Instruction {
  Instruction_Else() : super('else', 0x05, '');

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    return Code('} else {\n');
  }
}

class Instruction_End extends Instruction {
  static const endOpcode = 0x0B;

  Instruction_End() : super('end', endOpcode, '');

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    var frame = refer('frame');

    var oldNesting = function.exitBlock();

    if (oldNesting != null && oldNesting.loopType) {
      return Code('break;\n}');
    } else if (oldNesting != null) {
      return Code('}');
    } else {
      if (function.returnsVoid) {
        return Code('');
      } else {
        return frame.property('pop').call([]).returned.statement;
      }
    }
  }
}

class Instruction_Br extends Instruction {
  Instruction_Br() : super('br', 0x0C, '(u32)');

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    var immediate = instr.args[0] as int;
    var label = function.labelNameFromIndex(immediate);
    var scope = function.scopeForIndex(immediate);
    var blockKind = function.blockNestingFromIndex(immediate);
    return blockKind.generateBranchFor(function, label, scope, name: 'br');
  }
}

class Instruction_BrIf extends Instruction {
  Instruction_BrIf() : super('br_if', 0x0D, '(u32)');

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    var immediate = instr.args[0] as int;
    var label = function.labelNameFromIndex(immediate);
    var scope = function.scopeForIndex(immediate);
    var blockKind = function.blockNestingFromIndex(immediate);
    return blockKind.generateBranchFor(function, label, scope,
        name: 'br_if', popCondition: true);
  }
}

class Instruction_BrTable extends Instruction {
  Instruction_BrTable() : super('br_table', 0x0E, '(u32) i32');

  @override
  Instr parsefromOpcodes(Reader r) {
    var count = r.leb128_u();
    var labels = <int>[];
    for (int i = 0; i < count; i++) {
      labels.add(r.leb128_u());
    }
    int defaultLabel = r.leb128_u();
    return Instr(this, [labels, defaultLabel]);
  }

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    var labelIndexes = instr.args[0] as List<int>;
    var defaultIndex = instr.args[1] as int;

    var varName = function.scope.nextTempName;

    var switchStatement = StringBuffer('switch ($varName) {');
    for (int i = 0; i < labelIndexes.length; i++) {
      var labelIndex = labelIndexes[i];
      var label = function.labelNameFromIndex(labelIndex);
      var scope = function.scopeForIndex(labelIndex);
      var blockKind = function.blockNestingFromIndex(labelIndex);
      var code = blockKind.generateBranchFor(function, label, scope);

      switchStatement.writeln('case $i:');
      switchStatement.writeln(code.toString());
    }
    {
      var label = function.labelNameFromIndex(defaultIndex);
      var scope = function.scopeForIndex(defaultIndex);
      var blockKind = function.blockNestingFromIndex(defaultIndex);
      var code = blockKind.generateBranchFor(function, label, scope);

      switchStatement.writeln('default:');
      switchStatement.writeln(code.toString());
    }
    switchStatement.writeln('}');

    return Block.of([
      declareVar(varName).assign(CodeExpression(Code('frame.pop()'))).statement,
      Code(switchStatement.toString()),
    ]);
  }
}

class Instruction_Return extends Instruction {
  Instruction_Return() : super('return', 0x0F, '');

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    var frame = refer('frame');

    if (function.returnsVoid) {
      return Code('');
    } else {
      return frame.property('pop').call([]).returned.statement;
    }
  }
}

class BlockType {
  compiler.ValueType? valueType;
  compiler.FunctionType? functionType;

  BlockType.from(int code, DefinedFunction function) {
    if (code == -0x40) {
      // no block type
    } else if (code < 0) {
      valueType = compiler.ValueType.fromCode(code & 0x7F);
    } else {
      functionType = function.module.functionTypes[code];
    }
  }

  int get returnItems {
    if (valueType != null) return 1;
    if (functionType != null) return functionType!.resultType.length;
    return 0;
  }

  String get describe {
    if (valueType != null) return valueType!.name;
    if (functionType != null) return functionType!.toString();
    return '';
  }
}

class Instruction_LocalGet extends Instruction {
  Instruction_LocalGet() : super('local.get', 0x20, '(u32) => any');

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    var immediate = instr.args[0] as int;
    var localName = function.variables[immediate].name;

    return refer('frame').property('push').call([refer(localName)]).statement;
  }
}

class Instruction_LocalSet extends Instruction {
  Instruction_LocalSet() : super('local.set', 0x21, '(u32) any');

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    var immediate = instr.args[0] as int;
    var localName = function.variables[immediate].name;

    return refer(localName)
        .assign(refer('frame').property('pop').call([]))
        .statement;
  }
}

class Instruction_LocalTee extends Instruction {
  Instruction_LocalTee() : super('local.tee', 0x22, '(u32) any => any');

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    var immediate = instr.args[0] as int;
    var localName = function.variables[immediate].name;

    return refer(localName)
        .assign(refer('frame').property('peek').call([]))
        .statement;
  }
}

class Instruction_GlobalGet extends Instruction {
  Instruction_GlobalGet() : super('global.get', 0x23, '(u32) => any');

  @override
  Code generateToStatement(Instr instr, ModuleFunction function) {
    var immediate = instr.args[0] as int;
    var global = function.module.globals.globals[immediate];

    return refer('frame')
        .property('push')
        .call([refer('globals').property(global.name)]).statement;
  }
}

class Instruction_GlobalSet extends Instruction {
  Instruction_GlobalSet() : super('global.set', 0x24, '(u32) any');

  @override
  Code generateToStatement(Instr instr, ModuleFunction function) {
    var immediate = instr.args[0] as int;
    var global = function.module.globals.globals[immediate];

    return refer('globals')
        .property(global.name)
        .assign(refer('frame').property('pop').call([]))
        .statement;
  }
}

class Instruction_TableGet extends Instruction {
  Instruction_TableGet() : super('table.get', 0x25, '(u32) i32 => any');

  @override
  Code generateToStatement(Instr instr, ModuleFunction function) {
    var immediate = instr.args[0] as int;
    return refer('frame').property('push').call([
      refer('table$immediate').index(refer('frame').property('pop').call([]))
    ]).statement;
  }
}

class Instruction_TableSet extends Instruction {
  Instruction_TableSet() : super('table.set', 0x26, '(u32) i32 => any');

  @override
  Code generateToStatement(Instr instr, ModuleFunction function) {
    var immediate = instr.args[0] as int;

    return Block.of([
      Code('{'),
      declareVar('ref')
          .assign(refer('frame').property('pop').call([]))
          .statement,
      Code('table$immediate[frame.pop() as int] = ref;'),
      Code('}'),
    ]);
  }
}

class Instruction_Call extends Instruction {
  Instruction_Call() : super('call', 0x10, '(u32)');

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    var immediate = instr.args[0] as int;
    var target = function.module.functionByIndex(immediate)!;
    var statements = <Code>[];

    var temps = List.generate(target.parameterTypes.length, (i) => 't$i');
    for (var temp in temps.reversed) {
      statements.add(
        declareVar(temp).assign(CodeExpression(Code('frame.pop()'))).statement,
      );
    }

    Expression call = refer(target.name).call([
      ...temps.map((t) => refer(t)),
    ]);

    if (!target.returnsVoid) {
      call = refer('frame.push').call([call]);
    }

    statements.add(call.statement);

    if (statements.length == 1) {
      return statements.first;
    } else {
      return Block.of([
        Code('{'),
        ...statements,
        Code('}'),
      ]);
    }
  }
}

class Instruction_CallIndirect extends Instruction {
  Instruction_CallIndirect() : super('call_indirect', 0x11, '(u32 u32)');

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    var sigIndex = instr.args[0] as int;
    var tableIndex = instr.args[1] as int;

    var funcType = function.module.functionTypes[sigIndex];
    var statements = <Code>[];

    statements.addAll([
      Code(
          'var func = table$tableIndex[frame.pop()] as FunctionType$sigIndex?;'),
      Code('if (func == null) throw Trap(\'uninitialized element\');'),
    ]);

    var temps = List.generate(funcType.parameterTypes.length, (i) => 't$i');
    for (var temp in temps.reversed) {
      statements.add(
        declareVar(temp).assign(CodeExpression(Code('frame.pop()'))).statement,
      );
    }

    Expression call = refer('func').call([
      ...temps.map((t) => refer(t)),
    ]);

    if (!funcType.returnsVoid) {
      call = refer('frame.push').call([call]);
    }

    statements.add(call.statement);

    return Block.of([
      Code('{'),
      ...statements,
      Code('}'),
    ]);
  }
}

class Instruction_MemoryInit extends Instruction {
  Instruction_MemoryInit()
      : super('memory.init', 0x08, '(u32 u32) i32 i32 i32');

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    var dataSegment = instr.args[0] as int;
    // ignore: unused_local_variable
    var memIndex = instr.args[1] as int;

    var module = function.module;
    var segmentName = module.dataSegments.segments[dataSegment].name;

    return Block.of([
      Code('{'),
      Code('i32 count = frame.pop() as i32;'),
      Code('i32 srcOffset = frame.pop() as i32;'),
      Code('i32 dstOffset = frame.pop() as i32;'),
      Code('memory.copyFrom(_data.$segmentName, srcOffset, dstOffset, count);'),
      Code('}'),
    ]);
  }
}

class Instruction_TableInit extends Instruction {
  Instruction_TableInit() : super('table.init', 0x0C, '(u32 u32) i32 i32 i32');

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    var segment = instr.args[0] as int;
    var table = instr.args[1] as int;

    var seg = function.module.elementSegments.segments[segment];
    if (seg.segmentKind != SegmentKind.passive) {
      var error =
          'table.init does not support ${seg.segmentKind.name} element segments';
      return literalString(error).thrown.statement;
    }

    return Block.of([
      Code('{'),
      Code('i32 count = frame.pop() as i32;'),
      Code('i32 sourceOffset = frame.pop() as i32;'),
      Code('i32 destOffset = frame.pop() as i32;'),
      Code('segments.copyTo(table$table, sourceOffset, destOffset, count, '
          'segments.segment$segment);'),
      Code('}'),
    ]);
  }
}

class Instruction_RefFunc extends Instruction {
  Instruction_RefFunc() : super('ref.func', 0xD2, '(u32) => funcref');

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    var funcIndex = instr.args[0] as int;
    var func = function.module.allFunctions[funcIndex];
    var name =
        ElementSegments.inSegmentContext ? 'module.${func.name}' : func.name;
    return refer('frame.push').call([refer(name)]).statement;
  }
}

// TODO: write some code to determine what the stack looks like after each
// operation

/// valtype := numtype | vectype | reftype
/// numtype := i32, i64, f32, f64
/// reftype := functype | externref
enum ValueType {
  i32,
  i64,
  f32,
  f64,
  funcref,
  u32,
  reftype,
  any;

  static ValueType fromString(String str) {
    var ret = values.firstWhereOrNull((e) => e.name == str);
    if (ret == null) throw 'no ValueType found for \'$str\'';
    return ret;
  }
}

class Literal {
  final ValueType type;
  final Object value;

  Literal(this.type, this.value);

  @override
  String toString() {
    if (value is num) {
      return printLiteral(value as num).toString();
    } else {
      return value.toString();
    }
  }
}

Expression printLiteral(num n) {
  if (n is int) {
    if (n > 1000) {
      return CodeExpression(Code('0x${n.toRadixString(16)}'));
    } else if (n < -1000) {
      return CodeExpression(Code('-0x${n.toRadixString(16).substring(1)}'));
    } else {
      return literalNum(n);
    }
  } else if (n is double) {
    if (n.isNaN) {
      return CodeExpression(Code('double.nan'));
    } else if (n == double.negativeInfinity) {
      return CodeExpression(Code('double.negativeInfinity'));
    } else if (n == double.infinity) {
      return CodeExpression(Code('double.infinity'));
    } else {
      return literalNum(n);
    }
  } else {
    return literalNum(n);
  }
}

class Instruction {
  static const i32ConstOpcode = 0x41;
  static const i64ConstOpcode = 0x42;
  static const f32ConstOpcode = 0x43;
  static const f64ConstOpcode = 0x44;
  static const overflowOpcode = 0xFC;

  static final List<Instruction> instructions = _init();
  static final Map<int, Instruction> opcodeMap = _initOpcodeMap(instructions);

  static final List<Instruction> overflowInstructions = _initOverflow();
  static final Map<int, Instruction> overflowOpcodeMap =
      _initOpcodeMap(overflowInstructions);

  final String name;
  final int opcode;
  late final List<ValueType> immediates;
  late final List<ValueType> params;
  late final ValueType? returns;

  Instruction(this.name, this.opcode, String shorthand) {
    _parseShorthand(shorthand);
  }

  void _parseShorthand(String shorthand) {
    // '(immediates+) params* => return?'
    if (shorthand.contains(')')) {
      shorthand = shorthand.substring(1);
      var imm = shorthand.substring(0, shorthand.indexOf(')'));
      immediates = imm.split(' ').map(ValueType.fromString).toList();
      shorthand = shorthand.substring(shorthand.indexOf(')') + 1).trim();
    } else {
      immediates = const [];
    }

    if (shorthand.contains('=>')) {
      var ret = shorthand.substring(shorthand.indexOf('=>') + 2).trim();
      returns = ValueType.fromString(ret);
      shorthand = shorthand.substring(0, shorthand.indexOf('=>')).trim();
    } else {
      returns = null;
    }

    if (shorthand.isNotEmpty) {
      params = shorthand.split(' ').map(ValueType.fromString).toList();
    } else {
      params = const [];
    }
  }

  String get methodName => name.replaceAll('.', '_');

  Instr parsefromOpcodes(Reader r) {
    if (immediates.isNotEmpty) {
      var args = <Object>[];
      for (var immediateType in immediates) {
        switch (immediateType) {
          case ValueType.i32:
            args.add(r.leb128_s(bits: 64));
            break;
          case ValueType.i64:
            args.add(r.leb128_s(bits: 64));
            break;
          case ValueType.f32:
            args.add(r.readF32());
            break;
          case ValueType.f64:
            args.add(r.readF64());
            break;
          case ValueType.u32:
            args.add(r.leb128_u());
            break;
          default:
            throw 'unhandled immediate type: $immediateType';
        }
      }
      return Instr(this, args);
    } else {
      return Instr(this);
    }
  }

  Code generateToStatement(Instr instr, DefinedFunction function) {
    var frame = refer('frame');

    if (immediates.isNotEmpty) {
      return frame
          .property(methodName)
          .call(instr.args.map((arg) => printLiteral(arg as num)))
          .statement;
    } else {
      return frame.property(methodName).call([]).statement;
    }
  }

  void updateStackDepth(DefinedFunction function) {
    function.scope.updateStackDepth((returns != null ? 1 : 0) - params.length);
  }

  @override
  String toString() => name;

  static Map<int, Instruction> _initOpcodeMap(List<Instruction> instructions) {
    var map = <int, Instruction>{};
    for (var instr in instructions) {
      if (map.containsKey(instr.opcode)) {
        throw 'duplicate entries for ${hex(instr.opcode)}';
      }
      map[instr.opcode] = instr;
    }
    return map;
  }

  static Instr? parse(int opcode, Reader r, {required int? opcode2}) {
    Instruction? instruction;
    if (opcode == overflowOpcode) {
      instruction = overflowOpcodeMap[opcode2];
    } else {
      instruction = opcodeMap[opcode];
    }

    return instruction?.parsefromOpcodes(r);
  }

  static Literal? calcLiternal(List<Instr> instrs) {
    if (instrs.length != 1) {
      return null;
    }

    var inst = instrs.first;

    if (inst.instruction.opcode == i32ConstOpcode) {
      return Literal(ValueType.i32, inst.args.first as int);
    } else if (inst.instruction.opcode == i64ConstOpcode) {
      return Literal(ValueType.i64, inst.args.first as int);
    } else if (inst.instruction.opcode == f32ConstOpcode) {
      return Literal(ValueType.f32, inst.args.first as double);
    } else if (inst.instruction.opcode == f64ConstOpcode) {
      return Literal(ValueType.f64, inst.args.first as double);
    } else {
      return null;
    }
  }

  static List<Instruction> _init() {
    return [
      Instruction_Unreachable(), // unreachable, 0x00
      Instruction_Nop(), // nop, 0x01
      Instruction_Block(), // block, 0x02
      Instruction_Loop(), // loop, 0x03
      Instruction_If(), // if, 0x04
      Instruction_Else(), // else, 0x05
      // reserved, 0x06 - 0x0A
      Instruction_End(), // end, 0x0B
      Instruction_Br(), // br, 0x0C
      Instruction_BrIf(), // br_if, 0x0D
      Instruction_BrTable(), // br_table, 0x0E
      Instruction_Return(), // return, 0x0F
      Instruction_Call(), // call, 0x10
      Instruction_CallIndirect(), // call_indirect, 0x11
      // reserved, 0x12 - 0x19
      Instruction('drop', 0x1A, 'any'),
      Instruction('select', 0x1B, 'any any i32 => any'),
      Instruction('select_t', 0x1C, '(u32) any any i32 => any'),
      // reserved, 0x1D - 0x1F
      Instruction_LocalGet(), // local.get, 0x20
      Instruction_LocalSet(), // local.set, 0x21
      Instruction_LocalTee(), // local.tee, 0x22
      Instruction_GlobalGet(), // global.get, 0x23
      Instruction_GlobalSet(), // global.get, 0x24
      Instruction_TableGet(), // table.get, 0x25
      Instruction_TableSet(), // table.get, 0x26
      // reserved, 0x27
      Instruction('i32.load', 0x28, '(u32 u32) i32 => i32'),
      Instruction('i64.load', 0x29, '(u32 u32) i32 => i64'),
      Instruction('f32.load', 0x2A, '(u32 u32) i32 => f32'),
      Instruction('f64.load', 0x2B, '(u32 u32) i32 => f64'),
      Instruction('i32.load8_s', 0x2C, '(u32 u32) i32 => i32'),
      Instruction('i32.load8_u', 0x2D, '(u32 u32) i32 => i32'),
      Instruction('i32.load16_s', 0x2E, '(u32 u32) i32 => i32'),
      Instruction('i32.load16_u', 0x2F, '(u32 u32) i32 => i32'),
      Instruction('i64.load8_s', 0x30, '(u32 u32) i32 => i64'),
      Instruction('i64.load8_u', 0x31, '(u32 u32) i32 => i64'),
      Instruction('i64.load16_s', 0x32, '(u32 u32) i32 => i64'),
      Instruction('i64.load16_u', 0x33, '(u32 u32) i32 => i64'),
      Instruction('i64.load32_s', 0x34, '(u32 u32) i32 => i64'),
      Instruction('i64.load32_u', 0x35, '(u32 u32) i32 => i64'),
      Instruction('i32.store', 0x36, '(u32 u32) i32 i32'),
      Instruction('i64.store', 0x37, '(u32 u32) i32 i64'),
      Instruction('f32.store', 0x38, '(u32 u32) i32 f32'),
      Instruction('f64.store', 0x39, '(u32 u32) i32 f64'),
      Instruction('i32.store8', 0x3A, '(u32 u32) i32 i32'),
      Instruction('i32.store16', 0x3B, '(u32 u32) i32 i32'),
      Instruction('i64.store8', 0x3C, '(u32 u32) i32 i64'),
      Instruction('i64.store16', 0x3D, '(u32 u32) i32 i64'),
      Instruction('i64.store32', 0x3E, '(u32 u32) i32 i64'),
      Instruction('memory.size', 0x3F, '(u32) => i32'),
      Instruction('memory.grow', 0x40, '(u32) i32 => i32'),
      Instruction('i32.const', i32ConstOpcode, '(i32) => i32'),
      Instruction('i64.const', i64ConstOpcode, '(i64) => i64'),
      Instruction('f32.const', f32ConstOpcode, '(f32) => f32'),
      Instruction('f64.const', f64ConstOpcode, '(f64) => f64'),
      Instruction('i32.eqz', 0x45, 'i32 => i32'),
      Instruction('i32.eq', 0x46, 'i32 i32 => i32'),
      Instruction('i32.ne', 0x47, 'i32 i32 => i32'),
      Instruction('i32.lt_s', 0x48, 'i32 i32 => i32'),
      Instruction('i32.lt_u', 0x49, 'i32 i32 => i32'),
      Instruction('i32.gt_s', 0x4A, 'i32 i32 => i32'),
      Instruction('i32.gt_u', 0x4B, 'i32 i32 => i32'),
      Instruction('i32.le_s', 0x4C, 'i32 i32 => i32'),
      Instruction('i32.le_u', 0x4D, 'i32 i32 => i32'),
      Instruction('i32.ge_s', 0x4E, 'i32 i32 => i32'),
      Instruction('i32.ge_u', 0x4F, 'i32 i32 => i32'),
      Instruction('i64.eqz', 0x50, 'i64 => i32'),
      Instruction('i64.eq', 0x51, 'i64 i64 => i32'),
      Instruction('i64.ne', 0x52, 'i64 i64 => i32'),
      Instruction('i64.lt_s', 0x53, 'i64 i64 => i32'),
      Instruction('i64.lt_u', 0x54, 'i64 i64 => i32'),
      Instruction('i64.gt_s', 0x55, 'i64 i64 => i32'),
      Instruction('i64.gt_u', 0x56, 'i64 i64 => i32'),
      Instruction('i64.le_s', 0x57, 'i64 i64 => i32'),
      Instruction('i64.le_u', 0x58, 'i64 i64 => i32'),
      Instruction('i64.ge_s', 0x59, 'i64 i64 => i32'),
      Instruction('i64.ge_u', 0x5A, 'i64 i64 => i32'),
      Instruction('f32.eq', 0x5B, 'f32 f32 => i32'),
      Instruction('f32.ne', 0x5C, 'f32 f32 => i32'),
      Instruction('f32.lt', 0x5D, 'f32 f32 => i32'),
      Instruction('f32.gt', 0x5E, 'f32 f32 => i32'),
      Instruction('f32.le', 0x5F, 'f32 f32 => i32'),
      Instruction('f32.ge', 0x60, 'f32 f32 => i32'),
      Instruction('f64.eq', 0x61, 'f64 f64 => i32'),
      Instruction('f64.ne', 0x62, 'f64 f64 => i32'),
      Instruction('f64.lt', 0x63, 'f64 f64 => i32'),
      Instruction('f64.gt', 0x64, 'f64 f64 => i32'),
      Instruction('f64.le', 0x65, 'f64 f64 => i32'),
      Instruction('f64.ge', 0x66, 'f64 f64 => i32'),
      Instruction('i32.clz', 0x67, 'i32 => i32'),
      Instruction('i32.ctz', 0x68, 'i32 => i32'),
      Instruction('i32.popcnt', 0x69, 'i32 => i32'),
      Instruction('i32.add', 0x6A, 'i32 i32 => i32'),
      Instruction('i32.sub', 0x6B, 'i32 i32 => i32'),
      Instruction('i32.mul', 0x6C, 'i32 i32 => i32'),
      Instruction('i32.div_s', 0x6D, 'i32 i32 => i32'),
      Instruction('i32.div_u', 0x6E, 'i32 i32 => i32'),
      Instruction('i32.rem_s', 0x6F, 'i32 i32 => i32'),
      Instruction('i32.rem_u', 0x70, 'i32 i32 => i32'),
      Instruction('i32.and', 0x71, 'i32 i32 => i32'),
      Instruction('i32.or', 0x72, 'i32 i32 => i32'),
      Instruction('i32.xor', 0x73, 'i32 i32 => i32'),
      Instruction('i32.shl', 0x74, 'i32 i32 => i32'),
      Instruction('i32.shr_s', 0x75, 'i32 i32 => i32'),
      Instruction('i32.shr_u', 0x76, 'i32 i32 => i32'),
      Instruction('i32.rotl', 0x77, 'i32 i32 => i32'),
      Instruction('i32.rotr', 0x78, 'i32 i32 => i32'),
      Instruction('i64.clz', 0x79, 'i64 => i64'),
      Instruction('i64.ctz', 0x7A, 'i64 => i64'),
      Instruction('i64.popcnt', 0x7B, 'i64 => i64'),
      Instruction('i64.add', 0x7C, 'i64 i64 => i64'),
      Instruction('i64.sub', 0x7D, 'i64 i64 => i64'),
      Instruction('i64.mul', 0x7E, 'i64 i64 => i64'),
      Instruction('i64.div_s', 0x7F, 'i64 i64 => i64'),
      Instruction('i64.div_u', 0x80, 'i64 i64 => i64'),
      Instruction('i64.rem_s', 0x81, 'i64 i64 => i64'),
      Instruction('i64.rem_u', 0x82, 'i64 i64 => i64'),
      Instruction('i64.and', 0x83, 'i64 i64 => i64'),
      Instruction('i64.or', 0x84, 'i64 i64 => i64'),
      Instruction('i64.xor', 0x85, 'i64 i64 => i64'),
      Instruction('i64.shl', 0x86, 'i64 i64 => i64'),
      Instruction('i64.shr_s', 0x87, 'i64 i64 => i64'),
      Instruction('i64.shr_u', 0x88, 'i64 i64 => i64'),
      Instruction('i64.rotl', 0x89, 'i64 i64 => i64'),
      Instruction('i64.rotr', 0x8A, 'i64 i64 => i64'),
      Instruction('f32.abs', 0x8B, 'f32 => f32'),
      Instruction('f32.neg', 0x8C, 'f32 => f32'),
      Instruction('f32.ceil', 0x8D, 'f32 => f32'),
      Instruction('f32.floor', 0x8E, 'f32 => f32'),
      Instruction('f32.trunc', 0x8F, 'f32 => f32'),
      Instruction('f32.nearest', 0x90, 'f32 => f32'),
      Instruction('f32.sqrt', 0x91, 'f32 => f32'),
      Instruction('f32.add', 0x92, 'f32 f32 => f32'),
      Instruction('f32.sub', 0x93, 'f32 f32 => f32'),
      Instruction('f32.mul', 0x94, 'f32 f32 => f32'),
      Instruction('f32.div', 0x95, 'f32 f32 => f32'),
      Instruction('f32.min', 0x96, 'f32 f32 => f32'),
      Instruction('f32.max', 0x97, 'f32 f32 => f32'),
      Instruction('f32.copysign', 0x98, 'f32 f32 => f32'),
      Instruction('f64.abs', 0x99, 'f64 => f64'),
      Instruction('f64.neg', 0x9A, 'f64 => f64'),
      Instruction('f64.ceil', 0x9B, 'f64 => f64'),
      Instruction('f64.foor', 0x9C, 'f64 => f64'),
      Instruction('f64.trunc', 0x9D, 'f64 => f64'),
      Instruction('f64.nearest', 0x9E, 'f64 => f64'),
      Instruction('f64.sqrt', 0x9F, 'f64 => f64'),
      Instruction('f64.add', 0xA0, 'f64 f64 => f64'),
      Instruction('f64.sub', 0xA1, 'f64 f64 => f64'),
      Instruction('f64.mul', 0xA2, 'f64 f64 => f64'),
      Instruction('f64.div', 0xA3, 'f64 f64 => f64'),
      Instruction('f64.min', 0xA4, 'f64 f64 => f64'),
      Instruction('f64.max', 0xA5, 'f64 f64 => f64'),
      Instruction('f64.copysign', 0xA6, 'f64 f64 => f64'),
      Instruction('i32.wrap_i64', 0xA7, 'i64 => i32'),
      Instruction('i32.trunc_f32_s', 0xA8, 'f32 => i32'),
      Instruction('i32.trunc_f32_u', 0xA9, 'f32 => i32'),
      Instruction('i32.trunc_f64_s', 0xAA, 'f64 => i32'),
      Instruction('i32.trunc_f64_u', 0xAB, 'f64 => i32'),
      Instruction('i64.extend_i32_s', 0xAC, 'i32 => i64'),
      Instruction('i64.extend_i32_u', 0xAD, 'i32 => i64'),
      Instruction('i64.trunc_f32_s', 0xAE, 'f32 => i64'),
      Instruction('i64.trunc_f32_u', 0xAF, 'f32 => i64'),
      Instruction('i64.trunc_f64_s', 0xB0, 'f64 => i64'),
      Instruction('i64.trunc_f64_u', 0xB1, 'f64 => i64'),
      Instruction('f32.convert_i32_s', 0xB2, 'i32 => f32'),
      Instruction('f32.convert_i32_u', 0xB3, 'i32 => f32'),
      Instruction('f32.convert_i64_s', 0xB4, 'i64 => f32'),
      Instruction('f32.convert_i64_u', 0xB5, 'i64 => f32'),
      Instruction('f32.demote_f64', 0xB6, 'f64 => f32'),
      Instruction('f64.convert_i32_s', 0xB7, 'i32 => f64'),
      Instruction('f64.convert_i32_u', 0xB8, 'i32 => f64'),
      Instruction('f64.convert_i64_s', 0xB9, 'i64 => f64'),
      Instruction('f64.convert_i64_u', 0xBA, 'i64 => f64'),
      Instruction('f64.promote_f32', 0xBB, 'f32 => f64'),
      Instruction('i32.reinterpret_f32', 0xBC, 'f32 => i32'),
      Instruction('i64.reinterpret_f64', 0xBD, 'f64 => i64'),
      Instruction('f32.reinterpret_i32', 0xBE, 'i32 => f32'),
      Instruction('f64.reinterpret_i64', 0xBF, 'i64 => f64'),
      Instruction('i32.extend8_s', 0xC0, 'i32 => i32'),
      Instruction('i32.extend16_s', 0xC1, 'i32 => i32'),
      Instruction('i64.extend8_s', 0xC2, 'i64 => i64'),
      Instruction('i64.extend16_s', 0xC3, 'i64 => i64'),
      Instruction('i64.extend32_s', 0xC4, 'i64 => i64'),
      // reserved, 0xC5 - 0xCF
      Instruction('ref.null', 0xD0, '(u32) => reftype'),
      Instruction('ref.is_null', 0xD1, 'reftype => i32'),
      Instruction_RefFunc(), // ref.func, 0xD2
      // reserved, 0xD3 - 0xFB
      // 0xFC - overflow (below)
      // 0xFD - vector
    ];
  }

  static List<Instruction> _initOverflow() {
    // 0xFC 0xXX

    return [
      Instruction('i32.trunc_sat_f32_s', 0x00, 'f32 => i32'),
      Instruction('i32.trunc_sat_f32_u', 0x01, 'f32 => i32'),
      Instruction('i32.trunc_sat_f64_s', 0x02, 'f64 => i32'),
      Instruction('i32.trunc_sat_f64_u', 0x03, 'f64 => i32'),
      Instruction('i64.trunc_sat_f32_s', 0x04, 'f32 => i64'),
      Instruction('i64.trunc_sat_f32_u', 0x05, 'f32 => i64'),
      Instruction('i64.trunc_sat_f64_s', 0x06, 'f64 => i64'),
      Instruction('i64.trunc_sat_f64_u', 0x07, 'f64 => i64'),
      Instruction_MemoryInit(), // memory.init, 0x08
      Instruction('data.drop', 0x09, '(u32)'),
      Instruction('memory.copy', 0x0A, '(u32 u32) i32 i32 i32'),
      Instruction('memory.fill', 0x0B, '(u32) i32 i32 i32'),
      Instruction_TableInit(), // table.init, 0x0C
      Instruction('elem.drop', 0x0D, '(u32)'),
      Instruction('table.copy', 0x0E, '(u32 u32) i32 i32 i32'),
      Instruction('table.grow', 0x0F, '(u32) reftype i32 => i32'),
      Instruction('table.size', 0x10, '(u32) => i32'),
      Instruction('table.fill', 0x11, '(u32) i32 reftype i32'),
    ];
  }
}
