// ignore_for_file: constant_identifier_names, camel_case_types, non_constant_identifier_names

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:code_builder/code_builder.dart' hide FunctionType;
import 'package:collection/collection.dart';
import 'package:logging/logging.dart';
import 'package:path/path.dart' as path;

import 'instructions.dart';

class Compiler {
  final File file;
  final Logger logger;

  Compiler({
    required this.file,
    required this.logger,
  });

  Library compile({bool generateWastTest = false}) {
    var library = LibraryBuilder();
    library.comments.add('Generated from ${file.path}.');
    library.ignoreForFile.addAll([
      'camel_case_types',
      'dead_code',
      'non_constant_identifier_names',
      'unused_label',
      'unused_local_variable',
    ]);
    library.directives.addAll([
      if (generateWastTest) Directive.import('package:test/test.dart'),
      Directive.import('package:wasmd/runtime.dart'),
    ]);

    var module = _parse(file);

    printModule(
      module,
      library,
      moduleName: path.basenameWithoutExtension(file.path),
      generateWastTest: generateWastTest,
    );

    return library.build();
  }

  Module _parse(File file) {
    _log('Parsing ${file.path}...');
    _log();

    var module = Module();

    Uint8List fileData = file.readAsBytesSync();
    Reader r = Reader(fileData);

    // 0x00 0x61 0x73 0x6D
    // 0x01 0x00 0x00 0x00
    int magic = r.readByteHeader(Endian.big);
    r.verifyMarker(magic, 0x0061736D);
    int version = r.readByteHeader();

    _log('magic: ${hex(magic, 8)}');
    _log('version: $version'); // expected: 1
    _log('');

    while (r.bytesRemaining() > 0) {
      var kind = r.readUint8();
      var length = r.leb128();

      var sectionKind = SectionKind.from(kind);
      _log('[section ${sectionKind?.name}] (bytes: $length)');

      // todo: find a module that uses a name custom section.

      if (sectionKind == SectionKind.custom) {
        _parseCustomSection(r, module, length);
      } else if (sectionKind == SectionKind.type) {
        _parseTypeSection(r, module);
      } else if (sectionKind == SectionKind.import) {
        _parseImportSection(r, module);
      } else if (sectionKind == SectionKind.function) {
        _parseFunctionSection(r, module);
      } else if (sectionKind == SectionKind.table) {
        _parseTableSection(r, module);
      } else if (sectionKind == SectionKind.memory) {
        _parseMemorySection(r, module);
      } else if (sectionKind == SectionKind.global) {
        _parseGlobalSection(r, module);
      } else if (sectionKind == SectionKind.export) {
        _parseExportSection(r, module);
      } else if (sectionKind == SectionKind.start) {
        _parseStartSection(r, module);
      } else if (sectionKind == SectionKind.element) {
        _parseElementSection(r, module);
      } else if (sectionKind == SectionKind.code) {
        _parseCodeSection(r, module);
      } else if (sectionKind == SectionKind.data) {
        _parseDataSection(r, module);
      } else if (sectionKind == SectionKind.data_count) {
        _parseDataCountSection(r, module, length);
      } else {
        throw 'unhandled section ${sectionKind?.name}';
      }
    }

    return module;
  }

  void _parseCustomSection(Reader r, Module module, int length) {
    var startPos = r.pos;
    var name = r.readUtf8();
    length -= (r.pos - startPos);
    r.skip(length);
    print('  skipping custom section [$name]');

    // todo: handle 'name' custom sections
    // https://webassembly.github.io/spec/core/appendix/custom.html#name-section
  }

  void _parseTypeSection(Reader r, Module module) {
    // "It decodes into a vector of function types that represent the types
    // component of a module.
    //
    //   typesec ::= ft*: section1(vec(functype)) ⇒ ft*"

    // "Function types are encoded by the byte 0x60 followed by the
    // respective vectors of parameter and result types.
    //
    //   functype ::= 0x60 rt1: resulttype rt2: resulttype ⇒ rt1 → rt2"

    int vecCount = r.leb128();
    for (int i = 0; i < vecCount; i++) {
      r.verifyMarker(r.readUint8(), 0x60);
      var parameterType = r.readResultTypeVector();
      var resultType = r.readResultTypeVector();
      module.functionTypes.add(FunctionType(parameterType, resultType));
    }

    for (var element in module.functionTypes) {
      _log('  $element');
    }
  }

  void _parseFunctionSection(Reader r, Module module) {
    // "It decodes into a vector of type indices that represent the type
    // fields of the functions in the funcs component of a module."
    int vecCount = r.leb128();

    for (int i = 0; i < vecCount; i++) {
      int typeIndex = r.leb128();
      module.addDefinedFunction(DefinedFunction(module, typeIndex, i));
    }

    for (var func in module.definedFunctions) {
      _log('  $func');
    }
  }

  void _parseElementSection(Reader r, Module module) {
    var count = r.leb128();
    for (int i = 0; i < count; i++) {
      var type = r.leb128();
      switch (type) {
        case 0x00:
          var instrs = r.readInstructionsEndTerminated();
          var funcCount = r.leb128();
          var funcIndexs = <int>[];
          for (int j = 0; j < funcCount; j++) {
            funcIndexs.add(r.leb128());
          }
          module.addElementSegment(0, instrs, funcIndexs);
          break;
        default:
          throw 'unhandled element section type: ${hex(type)}';
      }
    }
  }

  void _parseCodeSection(Reader r, Module module) {
    // "It decodes into a vector of code entries that are pairs of value type
    // vectors and expressions. They represent the locals and body field of the
    // functions in the funcs component of a module. The type fields of the
    // respective functions are encoded separately in the function section."

    int vecCount = r.leb128();
    _log('  numFunctions: $vecCount');

    for (int i = 0; i < vecCount; i++) {
      var function = module.definedFunctions[i];

      int funcLength = r.leb128();
      int startPos = r.pos;

      _log('  func $i [len=$funcLength]');

      var locals = <ValueType>[];
      var declsCount = r.leb128();
      for (int i = 0; i < declsCount; i++) {
        var count = r.leb128();
        var kind = ValueType.fromCode(r.readUint8());
        locals.addAll(List.filled(count, kind));
      }

      function.setLocals(locals);

      _log('    locals: $locals');

      // instructions* 0x0B
      int instructionsLength = funcLength - (r.pos - startPos);

      Reader reader = Reader(r.readUint8List(instructionsLength));
      List<Instr> instructions = [];
      var depth = 0;

      while (reader.bytesRemaining() > 0) {
        int opcode = reader.readUint8();
        int? opcode2;
        if (opcode == Instruction.overflowOpcode) {
          opcode2 = reader.readUint8();
        }
        Instr? i = Instruction.parse(opcode, reader, opcode2: opcode2);
        if (i != null) {
          if (opcode == Instruction_Block.blockOpcode) {
            depth++;
          } else if (opcode == Instruction_Loop.loopOpcode) {
            depth++;
          } else if (opcode == Instruction_If.ifOpcode) {
            depth++;
          } else if (opcode == Instruction_End.endOpcode) {
            depth--;
          }
          instructions.add(i);
        } else {
          _log('    unknown opcode: ${hex(opcode)}');
          var opcode2Desc = opcode2 == null ? '' : ' ${hex(opcode2)}';
          print('unknown opcode: ${hex(opcode)}$opcode2Desc');
          instructions.add(Instr(Instruction_Unreachable(), [hex(opcode)]));
          while (depth > 0) {
            instructions.add(Instr(Instruction_End()));
            depth--;
          }
          break;
        }
      }

      function.setInstrs(instructions);
    }
  }

  void _parseTableSection(Reader r, Module module) {
    var tableCount = r.leb128();
    for (int i = 0; i < tableCount; i++) {
      var refType = r.readUint8();
      var tableType = TableType.from(refType);
      if (tableType == null) {
        throw 'unknown table type: ${hex(refType)}';
      }
      var limitKind = r.readUint8();
      switch (limitKind) {
        case 0x00:
          var min = r.leb128();
          _log('  table ${tableType.name}: [$min) elements');
          module.addTable(tableType, min);
          break;
        case 0x01:
          var min = r.leb128();
          var max = r.leb128();
          _log('  table ${tableType.name}: [$min $max] elements');
          module.addTable(tableType, min, max);
          break;
        default:
          throw StateError('unsupported table limit: ${hex(limitKind)}');
      }
    }
  }

  void _parseMemorySection(Reader r, Module module) {
    int count = r.leb128();
    if (count > 1) {
      throw StateError('Only 1 memory item supported (found $count)');
    }
    var limitKind = r.readUint8();
    switch (limitKind) {
      case 0x00:
        var min = r.leb128();
        _log('  min: $min pages');
        module.setMemoryInfo(min: min);
        break;
      case 0x01:
        var min = r.leb128();
        var max = r.leb128();
        _log('  min: $min pages');
        _log('  max: $max pages');
        module.setMemoryInfo(min: min, max: max);
        break;
      default:
        throw StateError('unsupported memory kind: ${hex(limitKind)}');
    }
  }

  void _parseExportSection(Reader r, Module module) {
    // "It decodes into a vector of exports that represent the component of a
    // module."
    var exportCount = r.leb128();

    for (int i = 0; i < exportCount; i++) {
      var name = r.readName();

      var type = r.readUint8();
      switch (type) {
        case 0x00:
          // funcidx
          var functionIndex = r.leb128();
          _log("  export func '$name' (#$functionIndex)");
          module.exportFunction(name, functionIndex);
          break;
        case 0x02:
          // memidx
          var memoryIndex = r.leb128();
          _log("  export memory (#$memoryIndex)");
          module.exportMemory(name, memoryIndex);
          break;
        case 0x03:
          // globalidx
          var globalIndex = r.leb128();
          _log("  export global (#$globalIndex)");
          module.exportGlobal(name, globalIndex);
          break;
        default:
          throw 'unhandled type: ${type.toRadixString(16)}';
      }
    }
  }

  void _parseStartSection(Reader r, Module module) {
    int funcIndex = r.leb128();
    module.startFunctionIndex = funcIndex;
  }

  void _parseImportSection(Reader r, Module module) {
    var numImports = r.leb128();
    for (int i = 0; i < numImports; i++) {
      var moduleName = r.readUtf8();
      var itemName = r.readUtf8();
      var importType = r.readUint8();

      switch (importType) {
        case 0x00:
          // function
          var importModule = module.getCreateImportModule(moduleName);
          var functionTypeIndex = r.readUint8();
          importModule.addImportedFunction(
            ImportedFunction(module, functionTypeIndex, importModule, itemName),
          );
          break;
        case 0x01:
          // table
          throw 'unimplemented import table';
        case 0x02:
          // mem

          // TODO: what does it mean to specify min. memory sizes when importing
          // memory?

          var limitKind = r.readUint8();
          switch (limitKind) {
            case 0x00:
              var min = r.leb128();
              _log('  min: $min pages');
              module.setMemoryInfo(min: min);
              break;
            case 0x01:
              var min = r.leb128();
              var max = r.leb128();
              _log('  min: $min pages');
              _log('  max: $max pages');
              module.setMemoryInfo(min: min, max: max);
              break;
            default:
              throw StateError('unsupported memory kind: ${hex(limitKind)}');
          }

          module.memoryImported = true;
          break;
        case 0x03:
          // global
          throw 'unimplemented import global';
        default:
          throw 'unknown import type: ${hex(importType)}';
      }
    }
  }

  void _parseGlobalSection(Reader r, Module module) {
    int globalCount = r.leb128();

    for (int i = 0; i < globalCount; i++) {
      var type = r.readUint8();
      var mutability = r.readUint8();
      var instructions = r.readInstructionsEndTerminated();

      var global = Global(
        type: ValueType.fromCode(type),
        mutable: mutability == 0x01,
        initExpression: instructions,
      );
      global.name = 'global$i';
      module.globals.add(global);

      _log('  global: ${global.type} ${global.name}');
    }
  }

  void _parseDataSection(Reader r, Module module) {
    var dataCount = r.leb128();
    for (int i = 0; i < dataCount; i++) {
      var type = r.leb128();
      switch (type) {
        case 0x00:
          var instructions = r.readInstructionsEndTerminated();
          var bytes = r.readByteVector();
          module.dataSegments.add(DataSegment(
            passive: false,
            offsetExpression: instructions,
            bytes: bytes,
          ));
          break;
        case 0x01:
          var bytes = r.readByteVector();
          module.dataSegments.add(DataSegment(passive: true, bytes: bytes));
          break;
        case 0x02:
          var memIndex = r.leb128();
          if (memIndex != 0) {
            throw 'Only data segments with memory indexes of 0 are supported; '
                'found $memIndex';
          }
          var instructions = r.readInstructionsEndTerminated();
          var bytes = r.readByteVector();
          module.dataSegments.add(DataSegment(
            passive: false,
            offsetExpression: instructions,
            bytes: bytes,
          ));
          break;
        default:
          throw 'unsupported data type ${hex(type)}';
      }
    }
  }

  void _parseDataCountSection(Reader r, Module module, int length) {
    if (length > 0) {
      var count = r.leb128();
      _log('  data count: $count');
    }
  }

  void _log([String? message]) => logger.info(message ?? '');
}

void printModule(
  Module module,
  LibraryBuilder library, {
  required String moduleName,
  bool generateWastTest = false,
}) {
  final classBuilder = ClassBuilder()..name = 'Module';

  if (generateWastTest) {
    String generateTests() {
      var buf = StringBuffer();
      var functions =
          module.allFunctions.where((f) => f.name.startsWith('test_'));
      for (var func in functions) {
        var testName = func.name;
        var expectName = 'expect_${testName.substring('test_'.length)}';

        buf.writeln("  test('$testName', () {");
        buf.writeln('    expect(module.$testName(), module.$expectName);');
        buf.writeln('  });');
        buf.writeln();
      }

      return buf.toString();
    }

    var mainMethod = Method(
      (b) => b
        ..name = 'main'
        ..returns = Reference('void')
        ..body = Block.of([
          Code('''
  group('$moduleName', () {
    late Module module;

    setUp(() {
      module = Module();
    });

    ${generateTests()}
  });
'''),
        ]),
    );
    library.body.add(mainMethod);
  }

  for (var import in module.importModules) {
    classBuilder.fields.add(
      Field((b) => b
        ..name = import.referenceName
        ..type = Reference(import.typeName)
        ..modifier = FieldModifier.final$),
    );
  }

  // memory reference
  if (module.memoryImported) {
    classBuilder.fields.add(
      Field(
        (b) => b
          ..name = 'memory'
          ..type = Reference('Memory')
          ..modifier = FieldModifier.final$
          ..docs.add('/// min pages: ${module.minMemory}'),
      ),
    );
  } else {
    classBuilder.fields.add(
      Field((b) => b
        ..name = 'memory'
        ..type = Reference('Memory')
        ..modifier = FieldModifier.final$
        ..assignment = refer('Memory').call([
          literalNum(module.minMemory),
          if (module.maxMemory != null) literalNum(module.maxMemory!),
        ]).code),
    );
  }

  // global exports - getter and setter pairs
  for (var export in module.globalExports) {
    var global = export.global;

    classBuilder.methods.add(Method(
      (b) => b
        ..name = export.name
        ..type = MethodType.getter
        ..returns = Reference(global.type.typeName)
        ..body = refer('globals').property(global.name!).code,
    ));

    if (global.mutable) {
      classBuilder.methods.add(Method(
        (b) => b
          ..name = export.name
          ..type = MethodType.setter
          ..requiredParameters.add((Parameter(
            (b) => b
              ..name = 'value'
              ..type = Reference(global.type.typeName),
          )))
          ..body = refer('globals')
              .property(global.name!)
              .assign(refer('value'))
              .code,
      ));
    }
  }

  // globals reference
  if (module.globals.isNotEmpty) {
    classBuilder.fields.add(
      Field(
        (b) => b
          ..name = 'globals'
          ..type = Reference('Globals')
          ..modifier = FieldModifier.final$
          ..assignment = Code('Globals()'),
      ),
    );
  }

  // dataSegments reference
  if (module.dataSegments.isNotEmpty) {
    classBuilder.fields.add(
      Field(
        (b) => b
          ..name = 'dataSegments'
          ..type = Reference('DataSegments')
          ..modifier = FieldModifier.final$
          ..assignment = Code('DataSegments()'),
      ),
    );
  }

  // tables
  if (module.tables.isNotEmpty) {
    for (int i = 0; i < module.tables.length; i++) {
      var table = module.tables[i];
      classBuilder.fields.add(
        Field(
          (b) => b
            ..name = 'table$i'
            ..type = Reference('Table')
            ..modifier = FieldModifier.final$
            ..assignment = Reference('Table').call([
              literalNum(table.minSize),
              if (table.maxSize != null) literalNum(table.maxSize!),
            ]).code,
        ),
      );
    }

    classBuilder.fields.add(
      Field(
        (b) => b
          ..name = 'tables'
          ..type = Reference('List<Table>')
          ..modifier = FieldModifier.final$
          ..late = true,
      ),
    );
  }

  // elementSegments reference
  if (module.elementSegments.isNotEmpty) {
    classBuilder.fields.add(
      Field(
        (b) => b
          ..name = 'elementSegments'
          ..type = Reference('ElementSegments')
          ..modifier = FieldModifier.final$
          ..assignment = Code('ElementSegments()'),
      ),
    );
  }

  // emit an init method
  var constructor = ConstructorBuilder();
  var constructorStatements = [
    if (module.dataSegments.isNotEmpty)
      refer('dataSegments').property('init').call([refer('memory')]).statement,
  ];

  if (module.tables.isNotEmpty) {
    int index = 0;
    constructorStatements.add(
      refer('tables')
          .assign(
            literalList(module.tables.map((t) => refer('table${index++}'))),
          )
          .statement,
    );
  }

  if (module.elementSegments.isNotEmpty) {
    constructorStatements.add(
      refer('elementSegments').property('init').call([
        refer('this'),
      ]).statement,
    );
  }

  if (module.startFunction != null) {
    constructorStatements
        .add(refer(module.startFunction!.name).call([]).statement);
  }

  if (constructorStatements.isNotEmpty) {
    constructor.body = Block.of(constructorStatements);
  }

  for (var import in module.importModules) {
    constructor.optionalParameters.add(Parameter(
      (b) => b
        ..toThis = true
        ..required = true
        ..named = true
        ..name = import.referenceName,
    ));
  }
  if (module.memoryImported) {
    constructor.optionalParameters.add(Parameter(
      (b) => b
        ..name = 'memory'
        ..toThis = true
        ..required = true
        ..named = true,
    ));
  }
  classBuilder.constructors.add(constructor.build());

  for (var func in module.definedFunctions) {
    var method = func.generateToMethod();
    classBuilder.methods.add(method);
  }

  library.body.add(classBuilder.build());

  // TODO: currently, we only need to generate these if tables are being used
  for (int i = 0; i < module.functionTypes.length; i++) {
    var functionType = module.functionTypes[i];
    var ret = functionType.resultTypeDisplayName;
    var params = functionType.parameterTypes.map((p) => p.typeName).join(', ');
    library.body.add(Code('typedef FunctionType$i = $ret Function($params);'));
  }

  if (module.globals.isNotEmpty) {
    library.body.add(Global.createGlobalsClassDef(module));
  }

  for (var import in module.importModules) {
    library.body.add(import.createImportModuleClassDef());
  }

  if (module.dataSegments.isNotEmpty) {
    library.body.add(DataSegment.createDataSegmentClassDef(module));
  }

  if (module.elementSegments.isNotEmpty) {
    library.body.add(ElementSegment.createElementSegmentsClassDef(module));
  }
}

class Reader {
  late final ByteData data;
  int pos = 0;
  late final int length;

  Reader(Uint8List uint8ListData) {
    data = ByteData.sublistView(uint8ListData);
    length = uint8ListData.length;
  }

  int bytesRemaining() => length - pos;

  /// Throws an exception if the expected marker is not what's found.
  void verifyMarker(int actual, int expected) {
    if (actual != expected) {
      throw 'found ${hex(actual)} but expected ${hex(expected)}';
    }
  }

  int readByteHeader([Endian endian = Endian.little]) {
    int val = data.getUint32(pos, endian);
    pos += 4;
    return val;
  }

  int readUint8() {
    return data.getUint8(pos++);
  }

  int leb128() => leb128_u();

  int leb128_u() {
    const CONTINUATION_BIT = 0x80;

    int result = 0;
    int shift = 0;

    do {
      int byte = data.getUint8(pos++);

      // if (shift == 63 && byte != 0x00 && byte != 0x01) {
      //   while (byte & CONTINUATION_BIT != 0) {
      //     byte = data.getUint8(pos++);
      //   }
      //   throw 'leb128_u overflow';
      // }

      var lowBits = byte & 0x7F;
      result |= lowBits << shift;

      if (byte & CONTINUATION_BIT == 0) {
        return result;
      }

      shift += 7;
    } while (true);
  }

  // int leb128_u() {
  //   int result = 0;
  //   int shift = 0;

  //   // read unsigned LEB128
  //   for (int i = 0; i < 7; i++) {
  //     int byte = data.getUint8(pos++);
  //     result |= (byte & 0x7F) << shift;
  //     shift += 7;
  //     if (byte & 0x80 == 0) {
  //       break;
  //     }
  //   }

  //   return result;
  // }

  int leb128_s({int bits = 64}) {
    const CONTINUATION_BIT = 0x80;
    const SIGN_BIT = 1 << 6;

    int result = 0;
    int shift = 0;
    // int size = 64;
    int byte;

    do {
      byte = data.getUint8(pos++);

      // if (shift == 63 && byte != 0x00 && byte != 0x7f) {
      //     while (byte & CONTINUATION_BIT != 0) {
      //           byte = data.getUint8(pos++);
      //     }
      //       throw 'leb128_u overflow';
      // }

      var lowBits = byte & 0x7F;
      result |= lowBits << shift;
      shift += 7;

      if (byte & CONTINUATION_BIT == 0) {
        break;
      }
    } while (true);

    if ((shift < bits) && ((SIGN_BIT & byte) == SIGN_BIT)) {
      // Sign extend the result.
      result |= ~0 << shift;
    }

    return result;
  }

  // int leb128_s({int bits = 64}) {
  //   int result = 0;
  //   int shift = 0;

  //   // read signed LEB128
  //   for (int i = 0; i < 7; i++) {
  //     int byte = data.getUint8(pos++);
  //     result |= (byte & 0x7F) << shift;
  //     shift += 7;
  //     if (byte & 0x80 == 0) {
  //       if (shift < bits && (byte & 0x40) != 0) {
  //         result = result | (~0 << shift);
  //       }
  //       break;
  //     }
  //   }

  //   return result;
  // }

  double readF32() {
    var result = data.getFloat32(pos, Endian.little);
    pos += 4;
    return result;
  }

  double readF64() {
    var result = data.getFloat64(pos, Endian.little);
    pos += 8;
    return result;
  }

  void skip(int len) {
    pos += len;
  }

  List<ValueType> readResultTypeVector() {
    List<ValueType> result = [];

    int vecCount = leb128();
    for (int i = 0; i < vecCount; i++) {
      result.add(ValueType.fromCode(readUint8()));
    }

    return result;
  }

  Uint8List readUint8List(int length) {
    var result = data.buffer.asUint8List(pos, length);
    pos += length;
    return result;
  }

  Uint8List readByteVector() {
    var len = leb128();
    return readUint8List(len);
  }

  String readName() => readUtf8();

  String readUtf8() {
    var length = leb128();
    var bytes = readUint8List(length);
    return utf8.decoder.convert(bytes);
  }

  List<Instr> readInstructionsEndTerminated() {
    var instructions = <Instr>[];

    var opcode = 0;
    while (opcode != Instruction_End.endOpcode) {
      opcode = readUint8();
      int? opcode2;
      if (opcode == Instruction.overflowOpcode) {
        opcode2 = readUint8();
      }
      if (opcode != Instruction_End.endOpcode) {
        Instr? i = Instruction.parse(opcode, this, opcode2: opcode2);
        if (i != null) {
          instructions.add(i);
        } else {
          throw 'unknown opcode: ${hex(opcode)}';
        }
      }
    }

    return instructions;
  }
}

enum SectionKind {
  custom(0),
  type(1),
  import(2),
  function(3),
  table(4),
  memory(5),
  global(6),
  export(7),
  start(8),
  element(9),
  code(10),
  data(11),
  data_count(12);

  const SectionKind(this.id);

  final int id;

  static Map<int, SectionKind>? _idMap;

  static SectionKind? from(int id) {
    _idMap ??= Map.fromIterable(SectionKind.values,
        key: (kind) => (kind as SectionKind).id);
    return _idMap![id];
  }
}

enum TableType {
  externref(0x6F),
  functype(0x70);

  const TableType(this.code);

  final int code;

  static Map<int, TableType>? _codeMap;

  static TableType? from(int id) {
    _codeMap ??= Map.fromIterable(TableType.values,
        key: (kind) => (kind as TableType).code);
    return _codeMap![id];
  }
}

enum BlockType {
  blockType('block'),
  ifType('if'),
  loopType('loop');

  final String short;

  const BlockType(this.short);
}

class FunctionType {
  final List<ValueType> parameterTypes;
  final List<ValueType> resultType;

  FunctionType(this.parameterTypes, this.resultType);

  String get resultTypeDisplayName {
    return resultType.isEmpty
        ? 'void'
        : resultType.map((e) => e.toString()).join(', ');
  }

  bool get returnsVoid => resultType.isEmpty;

  @override
  String toString() {
    var params = parameterTypes.map((e) => e.toString()).join(', ');
    return '$resultTypeDisplayName func($params)';
  }
}

enum ValueType {
  f64(0x7C),
  f32(0x7D),
  i64(0x7E),
  i32(0x7F);

  const ValueType(this.code);

  final int code;

  String get typeName => name;

  @override
  String toString() => name;

  static ValueType fromCode(int code) {
    return ValueType.values.firstWhere((e) => e.code == code, orElse: () {
      throw 'unhandled type kind: ${hex(code)}';
    });
  }
}

class Module {
  List<FunctionType> functionTypes = [];

  List<DefinedFunction> definedFunctions = [];
  List<ModuleFunction> allFunctions = [];

  List<Global> globals = [];

  List<ImportModule> importModules = [];

  List<DataSegment> dataSegments = [];

  List<GlobalExport> globalExports = [];

  List<Table> tables = [];
  List<ElementSegment> elementSegments = [];

  int minMemory = 0;
  int? maxMemory;
  bool memoryImported = false;

  int? startFunctionIndex;

  void setMemoryInfo({
    required int min,
    int? max,
  }) {
    minMemory = min;
    maxMemory = max;
  }

  void addTable(TableType type, int minSize, [int? maxSize]) {
    tables.add(Table(type, minSize, maxSize));
  }

  ImportModule getCreateImportModule(String name) {
    return importModules.firstWhere((import) => import.name == name,
        orElse: () {
      var module = ImportModule(name, this);
      importModules.add(module);
      return module;
    });
  }

  void addDefinedFunction(DefinedFunction function) {
    definedFunctions.add(function);
    allFunctions.add(function);
  }

  void exportFunction(String name, int functionIndex) {
    (functionByIndex(functionIndex) as DefinedFunction).exportAs(name);
  }

  void exportMemory(String name, int memoryIndex) {
    // we make the memory field visible by default
  }

  void exportGlobal(String name, int globalIndex) {
    globalExports.add(GlobalExport(name, globals[globalIndex]));
  }

  ModuleFunction? functionByIndex(int functionIndex) {
    return allFunctions[functionIndex];
  }

  ModuleFunction? get startFunction =>
      startFunctionIndex == null ? null : functionByIndex(startFunctionIndex!);

  void addElementSegment(
    int tableIndex,
    List<Instr> offsetInstrs,
    List<int> functionIndexs,
  ) {
    // TODO: This only handles passive element segments of funcref type
    elementSegments
        .add(ElementSegment(tableIndex, offsetInstrs, functionIndexs));
  }
}

class ImportModule {
  final String name;
  final Module wasmModule;

  final List<ImportedFunction> functions = [];

  ImportModule(this.name, this.wasmModule);

  String get referenceName =>
      '${name.substring(0, 1).toLowerCase()}${name.substring(1)}Imports';

  String get typeName =>
      '${name.substring(0, 1).toUpperCase()}${name.substring(1)}Imports';

  void addImportedFunction(ImportedFunction function) {
    functions.add(function);

    wasmModule.allFunctions.add(function);
  }

  Class createImportModuleClassDef() {
    ClassBuilder importClass = ClassBuilder()
      ..name = typeName
      ..abstract = true
      ..docs.add("/// A class representing the symbols imported from the "
          "'$name' module.");

    for (var func in functions) {
      var parameters = <Parameter>[];
      for (int i = 0; i < func.parameterTypes.length; i++) {
        var parameter = func.parameterTypes[i];
        parameters.add(
          Parameter(
            (b) => b
              ..type = Reference(parameter.typeName)
              ..name = 'arg$i',
          ),
        );
      }
      importClass.methods.add(Method(
        (b) => b
          ..name = func.referenceName
          ..returns = Reference(
            func.returnsVoid ? 'void' : func.returnType!.typeName,
          )
          ..requiredParameters.addAll(parameters)
          ..docs.add("/// The imported '${func.importName}' symbol."),
      ));
    }

    return importClass.build();
  }
}

abstract class ModuleFunction {
  final Module module;
  final int functionTypeIndex;

  ModuleFunction(this.module, this.functionTypeIndex);

  String get name;

  FunctionType get functionType => module.functionTypes[functionTypeIndex];

  List<ValueType> get parameterTypes => functionType.parameterTypes;

  ValueType? get returnType => functionType.resultType.firstOrNull;

  bool get returnsVoid => functionType.resultType.isEmpty;
}

class DefinedFunction extends ModuleFunction {
  final int generatedIndex;

  String? exportName;

  List<ValueType> locals = [];
  List<Instr> instrs = [];

  late List<Variable> variables;

  final List<BlockType> nesting = [];

  DefinedFunction(super.module, super.typeIndex, this.generatedIndex);

  @override
  String get name => exportName ?? '_func$generatedIndex';

  @override
  String toString() => name;

  void exportAs(String name) {
    exportName = name;
  }

  void setLocals(List<ValueType> locals) {
    this.locals = locals;
  }

  void setInstrs(List<Instr> instrs) {
    this.instrs = instrs;
  }

  void enterBlock(BlockType blockType) {
    nesting.add(blockType);
  }

  String get currentBlockLabel => labelNameFromIndex(0);

  BlockType? exitBlock() {
    if (nesting.isEmpty) return null;
    return nesting.removeLast();
  }

  String labelNameFromIndex(int index) {
    var block = blockNestingFromIndex(index);
    var depth = nesting.length - 1 - index;
    return '${block.short}_label_$depth';
  }

  BlockType blockNestingFromIndex(int index) {
    return nesting[nesting.length - 1 - index];
  }

  Method generateToMethod() {
    var method = MethodBuilder();
    method.name = name;
    method.returns = refer(functionType.resultTypeDisplayName);

    variables = <Variable>[];

    var params = functionType.parameterTypes;
    for (int paramIndex = 0; paramIndex < params.length; paramIndex++) {
      var variable = Variable(name: 'arg$paramIndex', type: params[paramIndex]);
      variables.add(variable);
      method.requiredParameters.add(
        Parameter(
          (p) => p
            ..name = variable.name
            ..type = refer(variable.type.toString()),
        ),
      );
    }

    var statements = <Code>[];

    if (locals.isNotEmpty) {
      for (int index = 0; index < locals.length; index++) {
        var variable = Variable(name: 'local$index', type: locals[index]);
        variables.add(variable);
        statements.add(
            declareVar(variable.name, type: refer('${variable.type}'))
                .assign(literalNum(0))
                .statement);
      }
      statements.add(Code('\n'));
    }

    var paramNames = <String>[];
    for (int paramIndex = 0; paramIndex < params.length; paramIndex++) {
      paramNames.add('arg$paramIndex');
    }
    paramNames.addAll(locals.map((local) => 'null'));

    statements.add(
      declareFinal('frame')
          .assign(refer('Frame').call([refer('memory')]))
          .statement,
    );

    for (var instr in instrs) {
      statements.add(instr.generateToStatement(this));
    }
    method.body = Block.of(statements);

    return method.build();
  }
}

class ImportedFunction extends ModuleFunction {
  final ImportModule importModule;
  final String importName;

  ImportedFunction(super.module, super.functionTypeIndex, this.importModule,
      this.importName);

  String get referenceName => importName.replaceAll('.', '_');

  @override
  String get name => '${importModule.referenceName}.$referenceName';
}

String hex(int val, [int digits = 2]) {
  var result = val.toRadixString(16).toUpperCase();
  result = result.padLeft(digits, '0');
  return '0x$result';
}

class Variable {
  final String name;
  final ValueType type;

  Variable({required this.name, required this.type});
}

class Table {
  final TableType type;
  final int minSize;
  final int? maxSize;

  Table(this.type, this.minSize, [this.maxSize]);
}

class ElementSegment {
  final int tableIndex;
  final List<Instr> offsetInstrs;
  final List<int> functionIndexs;

  ElementSegment(this.tableIndex, this.offsetInstrs, this.functionIndexs);

  static Class createElementSegmentsClassDef(Module module) {
    var fields = <Field>[];
    var methods = <Method>[];

    var statements = <Code>[
      declareVar('offset', type: Reference('i32')).statement,
    ];

    for (int i = 0; i < module.elementSegments.length; i++) {
      statements.add(Code('\n    // element segment $i'));

      var segment = module.elementSegments[i];

      var literal = Instruction.calcLiternal(segment.offsetInstrs);
      var offsetExpr = literal == null
          ? refer('_segmentOffset$i').call([])
          : literalNum(literal.value as num);

      statements.add(refer('offset').assign(offsetExpr).statement);
      for (int j = 0; j < segment.functionIndexs.length; j++) {
        var functionIndex = segment.functionIndexs[j];
        // module.table0.funcRefs[offset + 0] = module._func83;
        var func = module.functionByIndex(functionIndex);
        statements.add(Code(
          'module.table${segment.tableIndex}.funcRefs[offset + $j] '
          '= module.${func!.name};',
        ));
      }
    }

    var initMethod = Method(
      (b) => b
        ..name = 'init'
        ..returns = Reference('void')
        ..requiredParameters.add(Parameter(
          (b) => b
            ..name = 'module'
            ..type = Reference('Module'),
        ))
        ..body = Block.of(statements),
    );

    var needsMemoryReference = false;

    for (int i = 0; i < module.elementSegments.length; i++) {
      var elementSegment = module.elementSegments[i];
      var initFunction = DefinedFunction(module, 0, 0);

      var literal = Instruction.calcLiternal(elementSegment.offsetInstrs);
      if (literal != null) continue;

      needsMemoryReference = true;

      var method = Method(
        (b) => b
          ..name = '_segmentOffset$i'
          ..returns = Reference('i32')
          ..static = true
          ..body = Block.of([
            declareFinal('frame')
                .assign(refer('Frame').call([refer('memory')]))
                .statement,
            for (var instr in elementSegment.offsetInstrs)
              instr.generateToStatement(initFunction),
            refer('frame').property('pop').call([]).returned.statement,
          ]),
      );

      methods.add(method);
    }

    if (needsMemoryReference) {
      // TODO: remove this memory instance - it's only used when we initialize
      // segments.
      // "static final Memory memory = Memory(0);"
      fields.add(Field(
        (b) => b
          ..name = 'memory'
          ..type = Reference('Memory')
          ..modifier = FieldModifier.final$
          ..static = true
          ..assignment = Code('Memory(0)'),
      ));
    }

    return Class(
      (b) => b
        ..name = 'ElementSegments'
        ..fields.addAll(fields)
        ..methods.addAll([
          initMethod,
          ...methods,
        ]),
    );
  }
}

class Global {
  final ValueType type;
  final bool mutable;
  final List<Instr> initExpression;

  String? name;

  Global({
    required this.type,
    required this.mutable,
    required this.initExpression,
  });

  String get initMethodName {
    return '_init${name!.substring(0, 1).toUpperCase()}${name!.substring(1)}';
  }

  static Class createGlobalsClassDef(Module module) {
    var fields = <Field>[];

    var needsGlobalInitializer = false;

    for (int i = 0; i < module.globals.length; i++) {
      var global = module.globals[i];

      Code assignment;
      var literalValue = Instruction.calcLiternal(global.initExpression);
      if (literalValue == null) {
        needsGlobalInitializer = true;
        assignment = Code('${global.initMethodName}()');
      } else {
        assignment = printLiteral(literalValue.value as num).code;
      }

      var field = Field(
        (b) => b
          ..name = global.name
          ..modifier =
              global.mutable ? FieldModifier.var$ : FieldModifier.final$
          ..type = refer(global.type.typeName)
          ..assignment = assignment,
      );
      fields.add(field);
    }

    // TODO: remove this memory instance - it's only used when we initialize
    // globals.
    // "static final Memory memory = Memory(0);"
    if (needsGlobalInitializer) {
      fields.add(Field(
        (b) => b
          ..name = 'memory'
          ..type = Reference('Memory')
          ..modifier = FieldModifier.final$
          ..static = true
          ..assignment = Code('Memory(0)'),
      ));
    }

    var initMethods = <Method>[];
    for (var global in module.globals) {
      var initFunction = DefinedFunction(module, 0, 0);
      var literalValue = Instruction.calcLiternal(global.initExpression);

      if (literalValue == null) {
        var method = Method(
          (b) => b
            ..name = global.initMethodName
            ..returns = Reference(global.type.typeName)
            ..static = true
            ..body = Block.of([
              declareFinal('frame')
                  .assign(refer('Frame').call([refer('memory')]))
                  .statement,
              for (var instr in global.initExpression)
                instr.generateToStatement(initFunction),
              refer('frame').property('pop').call([]).returned.statement,
            ]),
        );

        initMethods.add(method);
      }
    }

    return Class(
      (b) => b
        ..name = 'Globals'
        ..fields.addAll(fields)
        ..methods.addAll(initMethods),
    );
  }
}

class GlobalExport {
  final String name;
  final Global global;

  GlobalExport(this.name, this.global);
}

class DataSegment {
  final bool passive;
  final List<int> bytes;
  final List<Instr>? offsetExpression;

  DataSegment({
    required this.passive,
    this.offsetExpression,
    required this.bytes,
  });

  static Class createDataSegmentClassDef(Module module) {
    ClassBuilder builder = ClassBuilder()..name = 'DataSegments';

    // TODO: we likely don't need to create fields for active data segments.
    for (int i = 0; i < module.dataSegments.length; i++) {
      builder.fields.add(Field(
        (b) => b
          ..name = 'data$i'
          ..type = Reference('Uint8List', 'dart:typed_data')
          ..assignment = Code('decodeDataLiteral(_hex$i)'),
      ));
    }

    var initMethod = MethodBuilder()
      ..name = 'init'
      ..returns = Reference('void')
      ..requiredParameters.add(Parameter(
        (b) => b
          ..name = 'memory'
          ..type = Reference('Memory'),
      ));

    var statements = <Code>[];
    for (int i = 0; i < module.dataSegments.length; i++) {
      var dataSegment = module.dataSegments[i];
      if (dataSegment.passive) continue;

      var literal = Instruction.calcLiternal(dataSegment.offsetExpression!);
      var offsetExpr = literal == null
          ? refer('_dataOffset$i(memory)')
          : literalNum(literal.value as num);

      // memory.copyTo(data0, _dataOffset0(memory), data0.length);
      statements.add(refer('memory').property('copyTo').call([
        refer('data$i'),
        offsetExpr,
      ]).statement);
    }

    initMethod.body = Block.of(statements);
    builder.methods.add(initMethod.build());

    for (int i = 0; i < module.dataSegments.length; i++) {
      var dataSegment = module.dataSegments[i];
      if (dataSegment.passive) continue;

      var literal = Instruction.calcLiternal(dataSegment.offsetExpression!);
      if (literal != null) continue;

      var offsetFunction = DefinedFunction(module, 0, 0);

      // For active data segments, we copy their contents into memory on init.
      var method = Method(
        (b) => b
          ..name = '_dataOffset$i'
          ..returns = Reference('u32')
          ..requiredParameters.add(Parameter(
            (b) => b
              ..name = 'memory'
              ..type = Reference('Memory'),
          ))
          ..static = true
          ..body = Block.of([
            declareFinal('frame')
                .assign(refer('Frame').call([refer('memory')]))
                .statement,
            for (var instr in dataSegment.offsetExpression!)
              instr.generateToStatement(offsetFunction),
            refer('frame').property('pop').call([]).returned.statement,
          ]),
      );

      builder.methods.add(method);
    }

    for (int i = 0; i < module.dataSegments.length; i++) {
      var dataSegment = module.dataSegments[i];
      var hexLiteral = buildDataLiteral(dataSegment.bytes);

      builder.fields.add(Field(
        (b) => b
          ..name = '_hex$i'
          ..static = true
          ..modifier = FieldModifier.constant
          ..type = Reference('String')
          ..assignment = Code(hexLiteral),
      ));
    }

    return builder.build();
  }
}

String buildDataLiteral(List<int> bytes) {
  var buf = StringBuffer();
  var lines = <String>[];
  for (var value in bytes) {
    var hex = value.toRadixString(16).padLeft(2, '0').toUpperCase();
    buf.write('\\x$hex');
    if (buf.length >= 72) {
      lines.add("'${buf.toString()}'");
      buf.clear();
    }
  }
  if (buf.isNotEmpty) {
    lines.add("'${buf.toString()}'");
    buf.clear();
  }
  return lines.join('\n');
}
