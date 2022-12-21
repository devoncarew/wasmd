// ignore_for_file: camel_case_types

import 'package:code_builder/code_builder.dart';

import 'compiler.dart';

class Instr {
  final Instruction instruction;
  final List<Object> args;

  Instr(
    this.instruction, [
    this.args = const [],
  ]);

  Code generateToStatement(DefinedFunction function) {
    return instruction.generateToStatement(this, function);
  }

  @override
  String toString() {
    return instruction.toString();
  }
}

const List<ImmediateTypes> _one = [ImmediateTypes.u32];
const List<ImmediateTypes> _two = [
  ImmediateTypes.u32,
  ImmediateTypes.u32,
];

class Instruction_Unreachable extends Instruction {
  Instruction_Unreachable() : super('unreachable', 0x00);

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    if (instr.args.isNotEmpty) {
      var error = instr.args[0] as String;
      return literalString('unreachable ($error)').thrown.statement;
    } else {
      return literalString('unreachable').thrown.statement;
    }
  }
}

class Instruction_Nop extends Instruction {
  Instruction_Nop() : super('nop', 0x01);

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    return Code('/* nop */');
  }
}

class Instruction_Block extends Instruction {
  static const blockOpcode = 0x02;

  Instruction_Block() : super('block', blockOpcode, immediates: _one);

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    // todo: this needs to do some stack management

    // todo: use blocktype
    var blocktype = instr.args[0] as int;

    function.enterBlock(BlockType.blockType);

    var label = function.currentBlockLabel;
    return Code('$label: {\n');
  }
}

class Instruction_Loop extends Instruction {
  static const loopOpcode = 0x03;

  Instruction_Loop() : super('loop', loopOpcode, immediates: _one);

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    // todo: this needs to do some stack management

    // todo: use blocktype
    var blocktype = instr.args[0] as int;

    function.enterBlock(BlockType.loopType);

    var label = function.currentBlockLabel;
    return Code('\n$label: for (;;) {\n');
  }
}

class Instruction_If extends Instruction {
  static const ifOpcode = 0x04;

  Instruction_If() : super('if', ifOpcode, immediates: _one);

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    // todo: this needs to do some stack management

    // todo: use blocktype
    var blocktype = instr.args[0] as int;

    function.enterBlock(BlockType.ifType);

    var label = function.currentBlockLabel;
    return Code('$label: if (frame.pop() != 0) {\n');
  }
}

class Instruction_Else extends Instruction {
  Instruction_Else() : super('else', 0x05);

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    return Code('} else {\n');
  }
}

class Instruction_End extends Instruction {
  static const endOpcode = 0x0B;

  Instruction_End() : super('end', endOpcode);

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    var frame = refer('frame');

    var oldNesting = function.exitBlock();

    if (oldNesting == BlockType.loopType) {
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
  Instruction_Br() : super('br', 0x0C, immediates: _one);

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    var immediate = instr.args[0] as int;
    var label = function.labelNameFromIndex(immediate);
    var blockKind = function.blockNestingFromIndex(immediate);
    var jumpKind = blockKind == BlockType.loopType ? 'continue' : 'break';

    return Code('$jumpKind $label;');
  }
}

class Instruction_BrLf extends Instruction {
  Instruction_BrLf() : super('br_lf', 0x0D, immediates: _one);

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    var immediate = instr.args[0] as int;
    var label = function.labelNameFromIndex(immediate);
    var blockKind = function.blockNestingFromIndex(immediate);
    var jumpKind = blockKind == BlockType.loopType ? 'continue' : 'break';

    return Code('if (frame.pop() != 0) $jumpKind $label;');
  }
}

class Instruction_Return extends Instruction {
  Instruction_Return() : super('return', 0x0F);

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

class Instruction_LocalGet extends Instruction {
  Instruction_LocalGet() : super('local.get', 0x20, immediates: _one);

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    var immediate = instr.args[0] as int;
    var localName = function.variables[immediate].name;

    return refer('frame').property('push').call([refer(localName)]).statement;
  }
}

class Instruction_LocalSet extends Instruction {
  Instruction_LocalSet() : super('local.set', 0x21, immediates: _one);

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
  Instruction_LocalTee() : super('local.tee', 0x22, immediates: _one);

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
  Instruction_GlobalGet() : super('global.get', 0x23, immediates: _one);

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
  Instruction_GlobalSet() : super('global.set', 0x24, immediates: _one);

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

class Instruction_Call extends Instruction {
  Instruction_Call() : super('call', 0x10, immediates: _one);

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
  Instruction_CallIndirect() : super('call_indirect', 0x11, immediates: _two);

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    var sigIndex = instr.args[0] as int;
    var tableIndex = instr.args[1] as int;

    var funcType = function.module.functionTypes[sigIndex];
    var statements = <Code>[];

    statements.add(Code(
        'var func = table$tableIndex[frame.pop()]! as FunctionType$sigIndex;'));

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

enum ImmediateTypes {
  i32,
  u32,
  i64,
  u64,
  f32,
  f64;
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
  static final List<Instruction> instructions = _init();
  static final Map<int, Instruction> opcodeMap = _initOpcodeMap(instructions);

  static const i32ConstOpcode = 0x41;
  static const i64ConstOpcode = 0x42;
  static const overflowOpcode = 0xFC;

  static final List<Instruction> overflowInstructions = _initOverflow();
  static final Map<int, Instruction> overflowOpcodeMap =
      _initOpcodeMap(overflowInstructions);

  final String name;
  final int opcode;
  final List<ImmediateTypes> immediates;
  final List<ImmediateTypes> args;
  final ImmediateTypes? returns;

  Instruction(
    this.name,
    this.opcode, {
    this.immediates = const [],
    this.args = const [],
    this.returns,
  });

  String get methodName => name.replaceAll('.', '_');

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
    if (instruction == null) return null;

    if (instruction.immediates.isNotEmpty) {
      var args = <Object>[];
      for (var immediateType in instruction.immediates) {
        switch (immediateType) {
          case ImmediateTypes.u32:
            args.add(r.leb128_u());
            break;
          case ImmediateTypes.i32:
            // ???
            // args.add(r.leb128_s(bits: 32));
            args.add(r.leb128_s(bits: 64));
            break;
          case ImmediateTypes.u64:
            args.add(r.leb128_u());
            break;
          case ImmediateTypes.i64:
            args.add(r.leb128_s(bits: 64));
            break;
          case ImmediateTypes.f32:
            args.add(r.readF32());
            break;
          case ImmediateTypes.f64:
            args.add(r.readF64());
            break;
          default:
            throw 'unhandled immediate type: $immediateType';
        }
      }
      return Instr(instruction, args);
    } else {
      return Instr(instruction);
    }
  }

  static Literal? calcLiternal(List<Instr> instrs) {
    if (instrs.length != 1) {
      return null;
    }

    var inst = instrs.first;

    // todo: f32, f64

    if (inst.instruction.opcode == i32ConstOpcode) {
      return Literal(ValueType.i32, inst.args.first as int);
    } else if (inst.instruction.opcode == i64ConstOpcode) {
      return Literal(ValueType.i64, inst.args.first as int);
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
      Instruction_End(), // end, 0x0B
      Instruction_Br(), // br, 0x0C
      Instruction_BrLf(), // br_lf, 0x0D
      Instruction_Return(), // return, 0x0F
      Instruction_Call(), // call, 0x10
      Instruction_CallIndirect(), // call_indirect, 0x11
      Instruction('drop', 0x1A),
      Instruction('select', 0x1B),
      Instruction_LocalGet(), // local.get, 0x20
      Instruction_LocalSet(), // local.set, 0x21
      Instruction_LocalTee(), // local.tee, 0x22
      Instruction_GlobalGet(), // global.get, 0x23
      Instruction_GlobalSet(), // global.get, 0x24
      Instruction('i32.load', 0x28, immediates: _two),
      Instruction('i64.load', 0x29, immediates: _two),
      Instruction('f32.load', 0x2A, immediates: _two),
      Instruction('f64.load', 0x2B, immediates: _two),
      Instruction('i32.load8_s', 0x2C, immediates: _two),
      Instruction('i32.load8_u', 0x2D, immediates: _two),
      Instruction('i32.load16_s', 0x2E, immediates: _two),
      Instruction('i32.load16_u', 0x2F, immediates: _two),
      Instruction('i64.load8_s', 0x30, immediates: _two),
      Instruction('i64.load8_u', 0x31, immediates: _two),
      Instruction('i64.load16_s', 0x32, immediates: _two),
      Instruction('i64.load16_u', 0x33, immediates: _two),
      Instruction('i64.load32_s', 0x34, immediates: _two),
      Instruction('i64.load32_u', 0x35, immediates: _two),
      Instruction('i32.store', 0x36, immediates: _two),
      Instruction('i64.store', 0x37, immediates: _two),
      Instruction('i32.store8', 0x3A, immediates: _two),
      Instruction('i32.store16', 0x3B, immediates: _two),
      Instruction('i64.store8', 0x3C, immediates: _two),
      Instruction('i64.store16', 0x3D, immediates: _two),
      Instruction('i64.store32', 0x3E, immediates: _two),
      Instruction('memory.size', 0x3F, immediates: _one),
      Instruction('memory.grow', 0x40, immediates: _one),
      Instruction('i32.const', i32ConstOpcode,
          immediates: [ImmediateTypes.i32]),
      Instruction('i64.const', i64ConstOpcode,
          immediates: [ImmediateTypes.i64]),
      Instruction('f32.const', 0x43, immediates: [ImmediateTypes.f32]),
      Instruction('f64.const', 0x44, immediates: [ImmediateTypes.f64]),
      Instruction('i32.eqz', 0x45),
      Instruction('i32.eq', 0x46),
      Instruction('i32.ne', 0x47),
      Instruction('i32.lt_s', 0x48),
      Instruction('i32.lt_u', 0x49),
      Instruction('i32.gt_s', 0x4A),
      Instruction('i32.gt_u', 0x4B),
      Instruction('i32.le_s', 0x4C),
      Instruction('i32.le_u', 0x4D),
      Instruction('i32.ge_s', 0x4E),
      Instruction('i32.ge_u', 0x4F),
      Instruction('i64.eqz', 0x50),
      Instruction('i64.eq', 0x51),
      Instruction('i64.ne', 0x52),
      Instruction('i64.lt_s', 0x53),
      Instruction('i64.lt_u', 0x54),
      Instruction('i64.gt_s', 0x55),
      Instruction('i64.gt_u', 0x56),
      Instruction('i64.le_s', 0x57),
      Instruction('i64.le_u', 0x58),
      Instruction('i64.ge_s', 0x59),
      Instruction('i64.ge_u', 0x5A),
      Instruction('f64.gt', 0x64),
      Instruction('f64.le', 0x65),
      Instruction('i32.clz', 0x67),
      Instruction('i32.ctz', 0x68),
      Instruction('i32.popcnt', 0x69),
      Instruction('i32.add', 0x6A),
      Instruction('i32.sub', 0x6B),
      Instruction('i32.mul', 0x6C),
      Instruction('i32.div_s', 0x6D),
      Instruction('i32.div_u', 0x6E),
      Instruction('i32.rem_s', 0x6F),
      Instruction('i32.rem_u', 0x70),
      Instruction('i32.and', 0x71),
      Instruction('i32.or', 0x72),
      Instruction('i32.xor', 0x73),
      Instruction('i32.shl', 0x74),
      Instruction('i32.shr_s', 0x75),
      Instruction('i32.shr_u', 0x76),
      Instruction('i32.rotl', 0x77),
      // todo:
      // Instruction('i32.rotr', 0x78),
      Instruction('i64.clz', 0x79),
      Instruction('i64.ctz', 0x7A),
      Instruction('i64.popcnt', 0x7B),
      Instruction('i64.add', 0x7C),
      Instruction('i64.sub', 0x7D),
      Instruction('i64.mul', 0x7E),
      Instruction('i64.div_s', 0x7F),
      Instruction('i64.div_u', 0x80),
      Instruction('i64.rem_s', 0x81),
      Instruction('i64.rem_u', 0x82),
      Instruction('i64.and', 0x83),
      Instruction('i64.or', 0x84),
      Instruction('i64.xor', 0x85),
      Instruction('i64.shl', 0x86),
      Instruction('i64.shr_s', 0x87),
      Instruction('i64.shr_u', 0x88),
      Instruction('i64.rotl', 0x89),
      Instruction('i64.rotr', 0x8A),
      Instruction('f64.abs', 0x99),
      Instruction('f64.neg', 0x9A),
      Instruction('f64.ceil', 0x9B),
      Instruction('f64.foor', 0x9C),
      Instruction('f64.trunc', 0x9D),
      Instruction('f64.nearest', 0x9E),
      Instruction('f64.sqrt', 0x9F),
      Instruction('f64.add', 0xA0),
      Instruction('f64.sub', 0xA1),
      Instruction('f64.mul', 0xA2),
      Instruction('f64.div', 0xA3),
      Instruction('f64.min', 0xA4),
      Instruction('f64.max', 0xA5),
      Instruction('i32.wrap_i64', 0xA7),
      Instruction('i64.extend_i32_u', 0xAD),
      Instruction('f64.convert_i32_s', 0xB7),
      Instruction('f64.convert_i32_u', 0xB8),
      Instruction('i32.extend8_s', 0xC0),
      Instruction('i32.extend16_s', 0xC1),
      Instruction('i64.extend8_s', 0xC2),
      Instruction('i64.extend16_s', 0xC3),
      Instruction('i64.extend32_s', 0xC4),
    ];
  }

  static List<Instruction> _initOverflow() {
    return [
      Instruction('i32.trunc_sat_f64_u', 0x03),
      // Instruction('memory.init', 0x08, immediates: _one),
      Instruction('memory.copy', 0x0A, immediates: _two),
      Instruction('memory.fill', 0x0B, immediates: _one),
    ];
  }
}
