// ignore_for_file: constant_identifier_names, camel_case_types
// ignore_for_file: non_constant_identifier_names

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:code_builder/code_builder.dart' hide FunctionType;
import 'package:collection/collection.dart';
import 'package:logging/logging.dart';
import 'package:path/path.dart' as path;

import 'instructions.dart' hide BlockType;
import 'instructions.dart' as instructions show BlockType;
import 'src/utils.dart';

class Compiler {
  final File file;
  final Logger logger;

  Compiler({
    required this.file,
    required this.logger,
  });

  Library compile({bool compileForWastTest = false}) {
    var library = LibraryBuilder();
    library.comments.add('Generated from ${file.path}.');
    library.ignoreForFile.addAll([
      'camel_case_types',
      'dead_code',
      'non_constant_identifier_names',
      'unused_element',
      'unused_label',
      'unused_local_variable',
    ]);
    library.directives.addAll([
      Directive.import('package:wasmd/runtime.dart'),
    ]);

    var module = _parse(file);

    printModule(
      module,
      library,
      moduleName: path.basenameWithoutExtension(file.path),
      compileForWastTest: compileForWastTest,
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
    var data = r.readUint8List(length).toList();
    var customSectionReader = Reader(Uint8List.fromList(data));

    var name = customSectionReader.readUtf8();
    if (name == 'name') {
      _parseNameCustomSection(customSectionReader, module);
    } else {
      print('  skipping custom section [$name]');
    }
  }

  void _parseNameCustomSection(Reader r, Module module) {
    // https://webassembly.github.io/spec/core/appendix/custom.html#name-section

    while (r.bytesRemaining() > 0) {
      var subsectionId = r.readUint8();
      var size = r.leb128_u();

      // 4: type names

      switch (subsectionId) {
        case 0:
          // module name
          var name = r.readUtf8();
          if (isValidIdentifier(name)) {
            module.debugInfo = DebugInfo(name: name);
          }
          _log('[$name]');
          break;
        case 1:
          // function names
          var functions = r.leb128_u();
          for (int i = 0; i < functions; i++) {
            var functionIndex = r.leb128_u();
            var name = r.readUtf8();
            if (isValidIdentifier(name)) {
              _log('  [$name]');
              var func = module.functionByIndex(functionIndex);
              if (func is DefinedFunction) {
                (func.debugInfo ??= DebugInfo()).name = name;
              }
            }
          }
          break;
        case 2:
          // local names
          var functions = r.leb128_u();
          for (int i = 0; i < functions; i++) {
            var functionIndex = r.leb128_u();
            var func = module.functionByIndex(functionIndex);
            var locals = r.leb128_u();
            for (int j = 0; j < locals; j++) {
              var localIndex = r.leb128_u();
              var name = r.readUtf8();
              if (isValidIdentifier(name)) {
                if (func is DefinedFunction) {
                  var localMap = (func.debugInfo ??= DebugInfo()).indexedNames;
                  localMap[localIndex] = name;
                }
              }
            }
          }
          break;
        case 7:
          // global names
          var functions = r.leb128_u();
          for (int i = 0; i < functions; i++) {
            var index = r.leb128_u();
            var name = patchUpName(r.readUtf8());
            if (isValidIdentifier(name)) {
              _log('  [$name]');
              var localMap =
                  (module.globals.debugInfo ??= DebugInfo()).indexedNames;
              localMap[index] = name;
            }
          }
          break;
        case 9:
          // data segment names
          var items = r.leb128_u();
          for (int i = 0; i < items; i++) {
            var index = r.leb128_u();
            var name = patchUpName(r.readUtf8());
            if (isValidIdentifier(name)) {
              var localMap =
                  (module.dataSegments.debugInfo ??= DebugInfo()).indexedNames;
              localMap[index] = name;
            }
          }
          break;
        default:
          _log('  unknown name subsection kind: ${hex(subsectionId)}');
          r.skip(size);
          break;
      }
    }
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
      var sectionType = r.leb128();
      late SegmentKind segmentKind;
      ValueType? elementKind;
      int tableIndex = 0;
      List<Instr>? offsetInstrs;
      List<int>? functionIndexs;
      List<List<Instr>>? functionInstrs;

      ValueType? readType() {
        var elementKind = r.leb128_u();
        if (elementKind != 0 && elementKind != ValueType.funcref.code) {
          throw 'elementKind type not yet supported (${hex(elementKind)})';
        }
        return elementKind == 0 ? null : ValueType.fromCode(elementKind);
      }

      // https://stackoverflow.com/questions/74218077/how-does-the-element-section-of-wasm-module-in-binary-format-looks

      switch (sectionType) {
        case 0x00:
          // an active segment, implicit table index of 0, a vector of funcrefs
          elementKind = ValueType.funcref;
          segmentKind = SegmentKind.active;
          offsetInstrs = r.readInstructionsEndTerminated();
          functionIndexs = r.readVectorIndexes();
          break;
        case 0x01:
          // a passive segment, the elemkind, followed by a vector of the items
          elementKind = readType();
          segmentKind = SegmentKind.passive;
          functionIndexs = r.readVectorIndexes();
          break;
        case 0x02:
          // an active segment
          segmentKind = SegmentKind.active;
          tableIndex = r.leb128_u();
          offsetInstrs = r.readInstructionsEndTerminated();
          elementKind = readType();
          functionIndexs = r.readVectorIndexes();
          break;
        case 0x03:
          // a declarative segment
          segmentKind = SegmentKind.declaritive;
          elementKind = readType();
          functionIndexs = r.readVectorIndexes();
          break;
        case 0x04:
          // an active segment, table index of 0, vector values are expressions
          elementKind = ValueType.funcref;
          segmentKind = SegmentKind.active;
          offsetInstrs = r.readInstructionsEndTerminated();
          functionInstrs = r.readVectorOfInstructions();
          break;
        case 0x05:
          elementKind = readType();
          segmentKind = SegmentKind.passive;
          functionInstrs = r.readVectorOfInstructions();
          break;
        case 0x06:
          segmentKind = SegmentKind.active;
          tableIndex = r.leb128_u();
          offsetInstrs = r.readInstructionsEndTerminated();
          elementKind = readType();
          functionInstrs = r.readVectorOfInstructions();
          break;
        case 0x07:
          segmentKind = SegmentKind.declaritive;
          elementKind = readType();
          functionInstrs = r.readVectorOfInstructions();
          break;
        default:
          throw 'unhandled element section type: ${hex(sectionType)}';
      }

      module.elementSegments.addElementSegment(ElementSegment(
        elementKind: elementKind,
        segmentKind: segmentKind,
        tableIndex: tableIndex,
        offsetInstrs: offsetInstrs,
        functionIndexs: functionIndexs,
        functionInstrs: functionInstrs,
      ));
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

      var instrData = r.readUint8List(instructionsLength).toList();
      var reader = Reader(Uint8List.fromList(instrData));
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
          instructions.add(Instr(Instruction_Unreachable(), [
            opcode2 != null ? '${hex(opcode)} ${hex(opcode2)}' : hex(opcode),
          ]));
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
          module.exportFunction(patchUpName(name), functionIndex);
          break;
        case 0x01:
          // tableidx
          var tableIndex = r.leb128();
          _log("  export table '$name' (#$tableIndex)");
          module.exportTable(patchUpName(name), tableIndex);
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
          module.globals.exportGlobal(name, globalIndex);
          break;
        default:
          throw 'export type not supported: ${type.toRadixString(16)}';
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
        module: module,
        index: module.globals.imports.length + i,
        type: ValueType.fromCode(type),
        mutable: mutability == 0x01,
        initExpression: instructions,
      );
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
          module.dataSegments.add(DataSegment(module, i,
              passive: false, offsetExpression: instructions, bytes: bytes));
          break;
        case 0x01:
          var bytes = r.readByteVector();
          module.dataSegments
              .add(DataSegment(module, i, passive: true, bytes: bytes));
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
            module,
            i,
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
  bool compileForWastTest = false,
}) {
  var name = module.debugInfo?.name ?? moduleName;
  name = titleCase(patchUpName(name));
  module.className = '${name}Module';

  final classBuilder = ClassBuilder()
    ..name = module.className
    ..implements.add(Reference('Module'));

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
          ..annotations.add(refer('override'))
          ..docs.add('/// min pages: ${module.minMemory}'),
      ),
    );
  } else {
    classBuilder.fields.add(
      Field((b) => b
        ..name = 'memory'
        ..type = Reference('Memory')
        ..modifier = FieldModifier.final$
        ..annotations.add(refer('override'))
        ..assignment = refer('Memory').call([
          literalNum(module.minMemory),
          if (module.maxMemory != null) literalNum(module.maxMemory!),
        ]).code),
    );
  }

  // global exports - getter and setter pairs
  for (var export in module.globals.globalExports) {
    var global = export.global;

    classBuilder.methods.add(Method(
      (b) => b
        ..name = export.name
        ..type = MethodType.getter
        ..returns = Reference(global.type.typeName)
        ..body = refer('globals').property(global.name).code,
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
              .property(global.name)
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

  // TODO: rename this to 'data'
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
  {
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

    int tableIndex = 0;
    classBuilder.fields.add(
      Field(
        (b) => b
          ..name = 'tables'
          ..type = Reference('List<Table>')
          ..modifier = FieldModifier.final$
          ..annotations.add(refer('override'))
          ..late = true
          ..assignment = literalList(
              module.tables.map((t) => refer('table${tableIndex++}'))).code,
      ),
    );

    // TODO: determine whether we need to export tables
    // for (int i = 0; i < module.tables.length; i++) {
    //   var table = module.tables[i];
    //   if (table.exportName == null) continue;
    //   classBuilder.methods.add(
    //     Method(
    //       (b) => b
    //         ..name = table.exportName
    //         ..returns = Reference('Table')
    //         ..type = MethodType.getter
    //         ..lambda = true
    //         ..body = Code('table$i'),
    //     ),
    //   );
    // }
  }

  // elementSegments reference
  if (module.elementSegments.isNotEmpty) {
    classBuilder.fields.add(
      Field(
        (b) => b
          ..name = 'segments'
          ..type = Reference('ElementSegments')
          ..modifier = FieldModifier.final$
          ..late = true
          ..assignment = Code('ElementSegments(this)'),
      ),
    );
  }

  // emit an init method
  var constructor = ConstructorBuilder();
  var constructorStatements = [
    if (module.dataSegments.isNotEmpty)
      refer('dataSegments').property('init').call([refer('memory')]).statement,
  ];

  if (module.elementSegments.isNotEmpty) {
    constructorStatements.add(
      refer('segments').property('init').call([]).statement,
    );
  }

  if (module.elementSegments.isNotEmpty) {
    // late final List<Function> functionTable;
    classBuilder.fields.add(Field(
      (b) => b
        ..modifier = FieldModifier.final$
        ..late = true
        ..name = 'functionTable'
        ..type = Reference('List<Function>')
        ..assignment = Code('_initFunctionTable()'),
    ));
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
    if (func.functionType.returnsTuple) {
      throw 'multiple return values not currently supported '
          '(${func.name}: ${func.functionType.resultTypeDisplayName})';
    }
    var method = func.generateToMethod();
    classBuilder.methods.add(method);

    // handle the case where a function is exported multiple times
    if (func.hasMultipleExports) {
      func.generateAdditionalExports(classBuilder);
    }
  }

  if (module.elementSegments.isNotEmpty) {
    classBuilder.methods.add(Method(
      (b) => b
        ..name = '_initFunctionTable'
        ..returns = Reference('List<Function>')
        ..body = Block.of([
          Code(
              'return [${module.allFunctions.map((f) => f.name).join(', ')}];'),
        ]),
    ));
  }

  library.body.add(classBuilder.build());

  // TODO: currently, we only need to generate these if tables are being used
  for (int i = 0; i < module.functionTypes.length; i++) {
    var functionType = module.functionTypes[i];
    var ret = functionType.resultTypeDisplayName;
    var params = functionType.parameterTypes.map((p) => p.typeName).join(', ');
    if (functionType.returnsTuple) {
      library.body.add(Code('// TODO: FunctionType$i - support multiple return '
          'values ($ret)\n'));
    } else {
      library.body
          .add(Code('typedef FunctionType$i = $ret Function($params);\n'));
    }
  }

  if (module.globals.isNotEmpty) {
    library.body.add(Global.createGlobalsClassDef(module));
  }

  for (var import in module.importModules) {
    library.body.add(import.createImportModuleClassDef());

    if (compileForWastTest) {
      library.body.add(import.createImportModuleClassDefTestImpl());
    }
  }

  if (module.dataSegments.isNotEmpty) {
    library.body.add(DataSegment.createDataSegmentClassDef(module));
  }

  if (module.elementSegments.isNotEmpty) {
    library.body
        .add(module.elementSegments.createElementSegmentsClassDef(module));
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
    var length = leb128_u();
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

  List<int> readVectorIndexes() {
    var count = leb128_u();
    var indexs = <int>[];
    for (int i = 0; i < count; i++) {
      indexs.add(leb128_u());
    }
    return indexs;
  }

  List<List<Instr>> readVectorOfInstructions() {
    var count = leb128_u();
    var vector = <List<Instr>>[];
    for (int i = 0; i < count; i++) {
      vector.add(readInstructionsEndTerminated());
    }
    return vector;
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
  $block('block'),
  $if('if'),
  $loop('loop'),
  $return('return');

  final String shortName;

  const BlockType(this.shortName);

  bool get returnType => this == BlockType.$return;

  // loop types use 'continue' to re-start the block
  bool get loopType => this == BlockType.$loop;

  bool get breakType => this == BlockType.$block || this == BlockType.$if;

  Code generateBranchFor(
    DefinedFunction function,
    String? label,
    Scope scope, {
    bool popCondition = false,
  }) {
    if (returnType) {
      if (function.returnsVoid) {
        return Code('return;');
      } else {
        return Code('return frame.pop();');
      }
    } else {
      var jumpKind = loopType ? 'continue' : 'break';

      var code = popCondition ? 'if (frame.pop() != 0) {\n' : '';
      if (breakType) {
        // adjust stack
        code +=
            '  frame.unwindTo(${scope.entryDepth}, ${scope.blockArgCount});\n';
      }
      code += '  $jumpKind $label;\n';
      if (popCondition) {
        code += '}';
      }
      return Code(code);
    }
  }
}

class FunctionType {
  final List<ValueType> parameterTypes;
  final List<ValueType> resultType;

  FunctionType(this.parameterTypes, this.resultType);

  String get resultTypeDisplayName {
    return resultType.isEmpty
        ? 'void'
        : resultType.map((t) => t.typeName).join(', ');
  }

  bool get returnsVoid => resultType.isEmpty;

  bool get returnsTuple => resultType.length >= 2;

  @override
  String toString() {
    var params = parameterTypes.map((e) => e.toString()).join(', ');
    return '$resultTypeDisplayName func($params)';
  }
}

enum ValueType {
  i32(0x7F),
  i64(0x7E),
  f32(0x7D),
  f64(0x7C),
  funcref(0x70),
  externref(0x6F);

  const ValueType(this.code);

  final int code;

  String get typeName {
    if (this == funcref) {
      return 'FuncRef?';
    } else if (this == externref) {
      return 'ExternRef?';
    } else {
      return name;
    }
  }

  bool get refType => this == funcref || this == externref;

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

  final Globals globals = Globals();

  List<ImportModule> importModules = [];

  final DataSegments dataSegments = DataSegments();
  final ElementSegments elementSegments = ElementSegments();

  List<Table> tables = [];

  int minMemory = 0;
  int? maxMemory;
  bool memoryImported = false;

  int? startFunctionIndex;
  DebugInfo? debugInfo;
  String? className;

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

  void exportTable(String name, int tableIndex) {
    tables[tableIndex].exportName = name;
  }

  ModuleFunction? functionByIndex(int functionIndex) {
    return allFunctions[functionIndex];
  }

  ModuleFunction? get startFunction =>
      startFunctionIndex == null ? null : functionByIndex(startFunctionIndex!);
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

  Class createImportModuleClassDefTestImpl() {
    ClassBuilder importClass = ClassBuilder()
      ..name = '${typeName}Impl'
      ..extend = Reference(typeName);

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
          ..annotations.add(refer('override'))
          ..requiredParameters.addAll(parameters)
          ..body = Block(),
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

  DebugInfo? debugInfo;

  List<ValueType> locals = [];
  List<Instr> instrs = [];

  late List<Variable> variables;

  final List<BlockType> nesting = [];
  final List<Scope> scopes = [Scope()];

  final List<String> exportedAs = [];

  DefinedFunction(super.module, super.typeIndex, this.generatedIndex);

  @override
  String get name => exportName ?? debugInfo?.name ?? '_func$generatedIndex';

  @override
  String toString() => name;

  void exportAs(String name) {
    exportedAs.add(name);
  }

  String? get exportName => exportedAs.firstOrNull;

  void setLocals(List<ValueType> locals) {
    this.locals = locals;
  }

  void setInstrs(List<Instr> instrs) {
    this.instrs = instrs;
  }

  void enterBlock(BlockType blockType, instructions.BlockType blockType2) {
    nesting.add(blockType);
    scopes.add(Scope(parent: scope, blockType: blockType2));
  }

  String get currentBlockLabel => labelNameFromIndex(0)!;

  BlockType? exitBlock() {
    if (nesting.isEmpty) {
      return null;
    }

    scopes.removeLast();
    return nesting.removeLast();
  }

  Scope get scope => scopes.last;

  String? labelNameFromIndex(int index) {
    if (index >= nesting.length) return null;

    var block = blockNestingFromIndex(index);
    var depth = nesting.length - 1 - index;
    return '${block.shortName}_label_$depth';
  }

  Scope scopeForIndex(int index) {
    return scopes[scopes.length - 1 - index];
  }

  BlockType blockNestingFromIndex(int index) {
    // Special case asking for the outermost nesting - the function entrypoint.
    if (index == nesting.length) return BlockType.$return;

    return nesting[nesting.length - 1 - index];
  }

  bool get hasMultipleExports => exportedAs.length > 1;

  Method generateToMethod() {
    var method = MethodBuilder();
    method.name = name;
    method.returns = refer(functionType.resultTypeDisplayName);

    variables = <Variable>[];

    var debugLocalNames = debugInfo?.indexedNames ?? {};

    var params = functionType.parameterTypes;
    for (int paramIndex = 0; paramIndex < params.length; paramIndex++) {
      var variable = Variable(
        name: debugLocalNames[variables.length] ?? 'arg$paramIndex',
        type: params[paramIndex],
      );
      variables.add(variable);
      method.requiredParameters.add(
        Parameter(
          (p) => p
            ..name = variable.name
            ..type = refer(variable.type.typeName),
        ),
      );
    }

    var statements = <Code>[];

    if (locals.isNotEmpty) {
      for (int index = 0; index < locals.length; index++) {
        var variable = Variable(
          name: debugLocalNames[variables.length] ?? 'local$index',
          type: locals[index],
        );
        var type = variable.type;
        variables.add(variable);
        if (type.refType) {
          statements.add(
              declareVar(variable.name, type: refer(type.typeName)).statement);
        } else {
          statements.add(declareVar(variable.name, type: refer(type.typeName))
              .assign(literalNum(0))
              .statement);
        }
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
          .assign(refer('Frame').call([refer('this')]))
          .statement,
    );

    for (var instr in instrs) {
      statements.add(instr.generateToStatement(this));
    }
    method.body = Block.of(statements);

    return method.build();
  }

  /// This method is only used if a function is exported more than once.
  void generateAdditionalExports(ClassBuilder classBuilder) {
    for (var name in exportedAs.skip(1)) {
      var method = MethodBuilder();
      method.name = name;
      method.returns = refer(functionType.resultTypeDisplayName);

      var params = functionType.parameterTypes;
      for (int paramIndex = 0; paramIndex < params.length; paramIndex++) {
        method.requiredParameters.add(
          Parameter(
            (p) => p
              ..name = 'arg$paramIndex'
              ..type = refer(params[paramIndex].typeName),
          ),
        );
      }

      var index = 0;
      var expr =
          refer(exportName!).call(params.map((e) => refer('arg${index++}')));
      method.lambda = true;
      method.body = expr.code;

      classBuilder.methods.add(method.build());
    }
  }
}

class Scope {
  final Scope? parent;
  final instructions.BlockType? blockType;

  int _stackDepth = 0;

  int nextTempId = 0;

  Scope({this.parent, this.blockType}) {
    // TODO: improve the temp allocation logic
    if (parent != null) {
      nextTempId = parent!.nextTempId;
    }
  }

  String get nextTempName => 't${nextTempId++}';

  void updateStackDepth(int adjust) {
    _stackDepth += adjust;
  }

  int get stackDepth =>
      parent == null ? _stackDepth : parent!.stackDepth + _stackDepth;

  int get entryDepth => parent?.stackDepth ?? 0;

  int get blockArgCount => blockType?.returnItems ?? 0;
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

  String? exportName;

  Table(this.type, this.minSize, [this.maxSize]);
}

enum SegmentKind {
  passive,
  active,
  declaritive;
}

class ElementSegment {
  final SegmentKind segmentKind;
  final int tableIndex;
  final ValueType? elementKind;
  final List<Instr>? offsetInstrs;
  final List<int>? functionIndexs;
  final List<List<Instr>>? functionInstrs;

  ElementSegment({
    required this.segmentKind,
    required this.tableIndex,
    this.elementKind,
    this.offsetInstrs,
    this.functionIndexs,
    this.functionInstrs,
  });
}

class ElementSegments {
  final List<ElementSegment> segments = [];

  bool get isNotEmpty => segments.isNotEmpty;

  void addElementSegment(ElementSegment segment) {
    segments.add(segment);
  }

  static bool get inSegmentContext {
    return Zone.current['segments'] == true;
  }

  Class createElementSegmentsClassDef(Module module) {
    var fields = <Field>[];
    var initStatements = <Code>[];

    // final Module module;
    fields.add(Field(
      (b) => b
        ..modifier = FieldModifier.final$
        ..name = 'module'
        ..type = Reference(module.className),
    ));

    for (int i = 0; i < segments.length; i++) {
      var segment = segments[i];
      if (segment.segmentKind != SegmentKind.passive) continue;

      // TODO: there's more work to do to properly support FuncRef instruction
      // initializers.
      var listType =
          segment.elementKind == null ? 'int' : segment.elementKind!.typeName;

      fields.add(Field(
        (b) => b
          ..modifier = FieldModifier.final$
          ..late = true
          ..name = 'segment$i'
          ..type = Reference('List<$listType>'),
      ));
    }

    // ElementSegments(this.module);
    var constructor = Constructor(
      (b) => b
        ..requiredParameters.add((Parameter(
          (b) => b
            ..name = 'module'
            ..toThis = true,
        ))),
    );

    var functionTableGetter = Method(
      (b) => b
        ..name = 'functionTable'
        ..returns = Reference('List<Function>')
        ..annotations.add(Reference('override'))
        ..type = MethodType.getter
        ..lambda = true
        ..body = Code('module.functionTable'),
    );

    for (int i = 0; i < segments.length; i++) {
      var segment = segments[i];
      if (segment.segmentKind == SegmentKind.declaritive) continue;

      String indexesText;
      int itemCount;
      if (segment.functionIndexs != null) {
        itemCount = segment.functionIndexs!.length;
        indexesText = '[${segment.functionIndexs!.map((i) => '$i').join(',')}]';
      } else {
        itemCount = segment.functionInstrs!.length;
        indexesText = segment.functionInstrs!.map((instrs) {
          return closureFrom(module, instrs);
        }).join(', ');
        indexesText = '[$indexesText]';
      }

      if (segment.segmentKind == SegmentKind.active) {
        var destOffsetText = closureFrom(module, segment.offsetInstrs!);
        initStatements.add(Code(
            'copyTo(module.table${segment.tableIndex}, 0, $destOffsetText, '
            '$itemCount, $indexesText); /* segment$i */'));
      } else {
        initStatements.add(Code('segment$i = $indexesText;'));
      }
    }

    var initMethod = Method(
      (b) => b
        ..name = 'init'
        ..returns = Reference('\nvoid')
        ..body = Block.of(initStatements),
    );

    return Class(
      (b) => b
        ..name = 'ElementSegments'
        ..extend = Reference('AbstractElementSegments')
        ..fields.addAll(fields)
        ..constructors.add(constructor)
        ..methods.addAll([
          functionTableGetter,
          initMethod,
        ]),
    );
  }

  String closureFrom(Module module, List<Instr> instrs) {
    final emitter = WasmCustomEmitter();

    var literal = Instruction.calcLiternal(instrs);
    if (literal != null) {
      return literalNum(literal.value as num).accept(emitter).toString();
    }

    return runZoned<String>(() {
      var initFunction = DefinedFunction(module, 0, 0);

      var code = Block.of([
        Code('final frame = Frame(module);'),
        for (var instr in instrs) instr.generateToStatement(initFunction),
        Code('return frame.pop();'),
      ]);

      var str = code.accept(emitter).toString();
      return '() {$str }()';
    }, zoneValues: {'segments': true});
  }
}

class Globals {
  final List<Global> globals = [];
  // TODO: handle global imports
  List<String> imports = [];
  List<GlobalExport> globalExports = [];

  DebugInfo? debugInfo;

  Globals();

  bool get isNotEmpty => globals.isNotEmpty;

  num get count => globals.length;

  void add(Global global) {
    globals.add(global);
  }

  void exportGlobal(String name, int globalIndex) {
    globalExports.add(GlobalExport(name, globals[globalIndex]));
  }

  Global? getNamed(String name) {
    return globals.firstWhereOrNull((global) => global.name == name);
  }
}

class Global {
  final Module module;
  final int index;
  final ValueType type;
  final bool mutable;
  final List<Instr> initExpression;

  late String _generatedName;

  Global({
    required this.module,
    required this.index,
    required this.type,
    required this.mutable,
    required this.initExpression,
  }) {
    _generatedName = 'global$index';
  }

  String get name {
    var debugInfo = module.globals.debugInfo;
    if (debugInfo == null) return _generatedName;
    return debugInfo.indexedNames[index] ?? _generatedName;
  }

  String get initMethodName {
    return '_init${name.substring(0, 1).toUpperCase()}${name.substring(1)}';
  }

  /// Return the literal for this global value if it can be inferred.
  Literal? get calcLiteralValue => Instruction.calcLiternal(initExpression);

  static Class createGlobalsClassDef(Module module) {
    var fields = <Field>[];

    for (int i = 0; i < module.globals.count; i++) {
      var global = module.globals.globals[i];

      Code assignment;
      var literalValue = global.calcLiteralValue;
      if (literalValue == null) {
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

    var initMethods = <Method>[];
    for (var global in module.globals.globals) {
      var initFunction = DefinedFunction(module, 0, 0);
      var literalValue = global.calcLiteralValue;

      if (literalValue == null) {
        var method = Method(
          (b) => b
            ..name = global.initMethodName
            ..returns = Reference(global.type.typeName)
            ..static = true
            ..body = Block.of([
              declareFinal('frame')
                  .assign(refer('Frame').call([refer('stubModule')]))
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

class DataSegments {
  final List<DataSegment> segments = [];

  DebugInfo? debugInfo;

  DataSegments();

  bool get isNotEmpty => segments.isNotEmpty;

  void add(DataSegment dataSegment) {
    segments.add(dataSegment);
  }

  DataSegment? getNamed(String name) {
    return segments.firstWhereOrNull((segment) => segment.name == name);
  }
}

class DataSegment {
  final Module module;
  final int index;
  final bool passive;
  final List<int> bytes;
  final List<Instr>? offsetExpression;

  late String _generatedName;

  DataSegment(
    this.module,
    this.index, {
    required this.passive,
    this.offsetExpression,
    required this.bytes,
  }) {
    _generatedName = 'data$index';
  }

  String get name {
    var debugInfo = module.dataSegments.debugInfo;
    if (debugInfo == null) return _generatedName;
    return debugInfo.indexedNames[index] ?? _generatedName;
  }

  static Class createDataSegmentClassDef(Module module) {
    ClassBuilder builder = ClassBuilder()..name = 'DataSegments';

    // TODO: we likely don't need to create fields for active data segments.
    var segments = module.dataSegments.segments;
    for (int i = 0; i < segments.length; i++) {
      var dataSegment = segments[i];
      builder.fields.add(Field(
        (b) => b
          ..name = dataSegment.name
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
    for (int i = 0; i < segments.length; i++) {
      var dataSegment = segments[i];
      if (dataSegment.passive) continue;

      var literal = Instruction.calcLiternal(dataSegment.offsetExpression!);
      var offsetExpr = literal == null
          ? refer('_dataOffset$i(memory)')
          : literalNum(literal.value as num);

      // memory.copyTo(data0, _dataOffset0(memory), data0.length);
      statements.add(refer('memory').property('copyFrom').call([
        refer(dataSegment.name),
        literalNum(0), // source offset
        offsetExpr, // dest offset
        refer(dataSegment.name).property('length'), // length
      ]).statement);
    }

    initMethod.body = Block.of(statements);
    builder.methods.add(initMethod.build());

    for (int i = 0; i < segments.length; i++) {
      var dataSegment = segments[i];
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

    for (int i = 0; i < segments.length; i++) {
      var dataSegment = segments[i];
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
  if (bytes.isEmpty) return "''";

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

class DebugInfo {
  String? name;
  final Map<int, String> indexedNames = {};

  DebugInfo({this.name});
}
