// ignore_for_file: constant_identifier_names, camel_case_types

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:code_builder/code_builder.dart' hide FunctionType;
import 'package:collection/collection.dart';
import 'package:logging/logging.dart';

class Compiler {
  final File file;
  final Logger logger;

  Compiler({
    required this.file,
    required this.logger,
  });

  Library compile() {
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
      Directive.import('package:wasmd/runtime.dart'),
    ]);

    var module = _parse(file);

    printModule(module, library);

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
      }
      // todo: table
      else if (sectionKind == SectionKind.memory) {
        _parseMemorySection(r, module);
      } else if (sectionKind == SectionKind.global) {
        _parseGlobalSection(r, module);
      } else if (sectionKind == SectionKind.export) {
        _parseExportSection(r, module);
      } else if (sectionKind == SectionKind.start) {
        _parseStartSection(r, module);
      }
      // todo: element
      else if (sectionKind == SectionKind.code) {
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
    _log('  skipping custom section [$name]');

    // todo:
    // 'name'
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

      var locals = <ResultType>[];
      var declsCount = r.leb128();
      for (int i = 0; i < declsCount; i++) {
        var count = r.leb128();
        var kind = ResultType(r.readUint8());
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
        Instr? i = Instruction.parse(opcode, reader, logger: logger);
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
          print('unknown opcode: ${hex(opcode)}');
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
        type: ResultType(type),
        mutable: mutability == 0x01,
        initExpression: instructions,
      );
      global.name = 'global$i';
      module.globals.add(global);
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

void printModule(Module module, LibraryBuilder library) {
  final classBuilder = ClassBuilder()..name = 'Module';

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

  // emit an init method
  var constructor = ConstructorBuilder();
  var constructorStatements = [
    if (module.dataSegments.isNotEmpty)
      refer('dataSegments').property('init').call([refer('memory')]).statement,
    if (module.startFunction != null)
      refer(module.startFunction!.name).call([]).statement,
  ];
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

  if (module.globals.isNotEmpty) {
    library.body.add(Global.createGlobalsClassDef(module));
  }

  for (var import in module.importModules) {
    library.body.add(import.createImportModuleClassDef());
  }

  if (module.dataSegments.isNotEmpty) {
    library.body.add(DataSegment.createDataSegmentClassDef(module));
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

  int readInt64() => leb128();

  int readUint8() {
    return data.getUint8(pos++);
  }

  int leb128() {
    // read LEB128
    int val = data.getUint8(pos++);
    int ret = val & 0x7F;
    if (val <= 0x7F) {
      return ret;
    }

    val = data.getUint8(pos++);
    ret = (val & 0x7F) << 7 | ret;
    if (val <= 0x7F) {
      return ret;
    }

    val = data.getUint8(pos++);
    ret = (val & 0x7F) << 14 | ret;
    if (val <= 0x7F) {
      return ret;
    }

    val = data.getUint8(pos++);
    ret = (val & 0x7F) << 21 | ret;
    if (val <= 0x7F) {
      return ret;
    }

    val = data.getUint8(pos++);
    ret = (val & 0x7F) << 28 | ret;
    if (val <= 0x7F) {
      return ret;
    }

    val = data.getUint8(pos++);
    ret = (val & 0x7F) << 42 | ret;
    if (val <= 0x7F) {
      return ret;
    }

    val = data.getUint8(pos++);
    ret = (val & 0x7F) << 49 | ret;
    if (val <= 0x7F) {
      return ret;
    }

    val = data.getUint8(pos++);
    ret = (val & 0x7F) << 56 | ret;
    if (val <= 0x7F) {
      return ret;
    }

    val = data.getUint8(pos++);
    ret = (val & 0x7F) << 63 | ret;
    return ret;
  }

  double readF64() {
    var result = data.getFloat64(pos, Endian.little);
    pos += 8;
    return result;
  }

  void skip(int len) {
    pos += len;
  }

  List<ResultType> readResultTypeVector() {
    List<ResultType> result = [];

    int vecCount = leb128();
    for (int i = 0; i < vecCount; i++) {
      result.add(ResultType(readUint8()));
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
      if (opcode != Instruction_End.endOpcode) {
        Instr? i = Instruction.parse(opcode, this);
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
    _idMap ??= Map.fromIterable(SectionKind.values, key: (kind) => kind.id);
    return _idMap![id];
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
  final List<ResultType> parameterTypes;
  final List<ResultType> resultType;

  FunctionType(this.parameterTypes, this.resultType);

  @override
  String toString() {
    var params = parameterTypes.map((e) => e.toString()).join(', ');
    return '$resultTypeDisplayName func($params)';
  }

  String get resultTypeDisplayName {
    return resultType.isEmpty
        ? 'void'
        : resultType.map((e) => e.toString()).join(', ');
  }
}

class ResultType {
  final int kind;

  ResultType(this.kind);

  String get typeName {
    switch (kind) {
      case 0x7C:
        return "f64";
      case 0x7D:
        return "f32";
      case 0x7E:
        return "i64";
      case 0x7F:
        return "i32";
      default:
        throw 'unhandled type kind: ${hex(kind)}';
    }
  }

  @override
  String toString() => typeName;
}

class Module {
  List<FunctionType> functionTypes = [];

  List<DefinedFunction> definedFunctions = [];
  List<ModuleFunction> allFunctions = [];

  List<Global> globals = [];

  List<ImportModule> importModules = [];

  List<DataSegment> dataSegments = [];

  List<GlobalExport> globalExports = [];

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

  List<ResultType> get parameterTypes => functionType.parameterTypes;

  ResultType? get returnType => functionType.resultType.firstOrNull;

  bool get returnsVoid => functionType.resultType.isEmpty;
}

class DefinedFunction extends ModuleFunction {
  final int generatedIndex;

  String? exportName;

  List<ResultType> locals = [];
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

  void setLocals(List<ResultType> locals) {
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
  final ResultType type;

  Variable({required this.name, required this.type});
}

class Global {
  final ResultType type;
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

    for (int i = 0; i < module.globals.length; i++) {
      var global = module.globals[i];
      var field = Field(
        (b) => b
          ..name = global.name
          ..modifier =
              global.mutable ? FieldModifier.var$ : FieldModifier.final$
          ..type = refer(global.type.typeName)
          ..assignment = Code('${global.initMethodName}()'),
      );
      fields.add(field);
    }

    // TODO: remove this memory instance - it's only used when we initialize
    // globals.
    // "static final Memory memory = Memory(0);"
    fields.add(Field(
      (b) => b
        ..name = 'memory'
        ..type = Reference('Memory')
        ..modifier = FieldModifier.final$
        ..static = true
        ..assignment = Code('Memory(0)'),
    ));

    var initMethods = <Method>[];
    for (var global in module.globals) {
      var initFunction = DefinedFunction(module, 0, 0);

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

      // memory.copyTo(data0, _dataOffset0(memory), data0.length);
      statements.add(refer('memory').property('copyTo').call([
        refer('data$i'),
        refer('_dataOffset$i(memory)'),
        // refer('data$i.length'),
      ]).statement);
    }

    initMethod.body = Block.of(statements);
    builder.methods.add(initMethod.build());

    for (int i = 0; i < module.dataSegments.length; i++) {
      var dataSegment = module.dataSegments[i];
      if (dataSegment.passive) continue;

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

const List<ImmediateTypes> _one = [ImmediateTypes.var32];
const List<ImmediateTypes> _two = [
  ImmediateTypes.var32,
  ImmediateTypes.var32,
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
    var global = function.module.globals[immediate];

    return refer('frame')
        .property('push')
        .call([refer('globals').property(global.name!)]).statement;
  }
}

class Instruction_GlobalSet extends Instruction {
  Instruction_GlobalSet() : super('global.set', 0x24, immediates: _one);

  @override
  Code generateToStatement(Instr instr, ModuleFunction function) {
    var immediate = instr.args[0] as int;
    var global = function.module.globals[immediate];

    return refer('globals')
        .property(global.name!)
        .assign(refer('frame').property('pop').call([]))
        .statement;
  }
}

class Instruction_CallLocalGet extends Instruction {
  Instruction_CallLocalGet() : super('call', 0x10, immediates: _one);

  @override
  Code generateToStatement(Instr instr, DefinedFunction function) {
    var immediate = instr.args[0] as int;
    var target = function.module.functionByIndex(immediate)!;

    if (target.parameterTypes.length <= 1) {
      Expression call = refer(target.name).call(
        target.parameterTypes.map(
          (type) => CodeExpression(Code('frame.pop()')),
        ),
      );

      if (!target.returnsVoid) {
        call = refer('frame.push').call([call]);
      }

      return call.statement;
    } else {
      var statements = <Code>[];
      var temps = List.generate(target.parameterTypes.length, (i) => 't$i');
      for (var temp in temps.reversed) {
        statements.add(
          declareVar(temp)
              .assign(CodeExpression(Code('frame.pop()')))
              .statement,
        );
      }

      Expression call = refer(target.name).call([
        ...temps.map((t) => refer(t)),
      ]);

      if (!target.returnsVoid) {
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
}

enum ImmediateTypes {
  var32,
  var64,
  f64;
}

class Instruction {
  static final List<Instruction> instructions = _init();
  static final Map<int, Instruction> opcodeMap = _initOpcodeMap(instructions);

  static const overflowOpcode = 0xFC;
  static final List<Instruction> overflowInstructions = _initOverflow();
  static final Map<int, Instruction> overflowOpcodeMap =
      _initOpcodeMap(overflowInstructions);

  final String name;
  final int opcode;
  final List<ImmediateTypes> immediates;

  Instruction(
    this.name,
    this.opcode, {
    this.immediates = const [],
  });

  String get methodName => name.replaceAll('.', '_');

  Code generateToStatement(Instr instr, DefinedFunction function) {
    var frame = refer('frame');

    if (immediates.isNotEmpty) {
      return frame
          .property(methodName)
          .call(instr.args.map((arg) => literalNum(arg as num)))
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

  static Instr? parse(int opcode, Reader r, {Logger? logger}) {
    Instruction? instruction;
    if (opcode == overflowOpcode) {
      opcode = r.readUint8();
      instruction = overflowOpcodeMap[opcode];
      if (instruction == null) {
        logger?.info('    overflow: ${hex(opcode)}');
      }
    } else {
      instruction = opcodeMap[opcode];
    }
    if (instruction == null) return null;

    if (instruction.immediates.isNotEmpty) {
      var args = <Object>[];
      for (var immediateType in instruction.immediates) {
        switch (immediateType) {
          case ImmediateTypes.var32:
            args.add(r.leb128());
            break;
          case ImmediateTypes.var64:
            args.add(r.leb128());
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

  static List<Instruction> _init() {
    return [
      Instruction_Unreachable(), // unreachable, 0x00
      Instruction_Block(), // block, 0x02
      Instruction_Loop(), // loop, 0x03
      Instruction_If(), // if, 0x04
      Instruction_Else(), // else, 0x05
      Instruction_End(), // end, 0x0B
      Instruction_Br(), // br, 0x0C
      Instruction_BrLf(), // br_lf, 0x0D
      Instruction_Return(), // return, 0x0F
      Instruction_CallLocalGet(), // call, 0x10
      Instruction('drop', 0x1A),
      Instruction('select', 0x1B),
      Instruction_LocalGet(), // local.get, 0x20
      Instruction_LocalSet(), // local.set, 0x21
      Instruction_LocalTee(), // local.tee, 0x22
      Instruction_GlobalGet(), // global.get, 0x23
      Instruction_GlobalSet(), // global.get, 0x24
      Instruction('i32.load', 0x28, immediates: _two),
      Instruction('i64.load', 0x29, immediates: _two),
      Instruction('i32.load8_u', 0x2D, immediates: _two),
      Instruction('i64.load8_u', 0x31, immediates: _two),
      Instruction('i32.store', 0x36, immediates: _two),
      Instruction('i64.store', 0x37, immediates: _two),
      Instruction('i32.store8', 0x3A, immediates: _two),
      Instruction('i32.store16', 0x3B, immediates: _two),
      Instruction('i64.store8', 0x3C, immediates: _two),
      Instruction('i64.store16', 0x3D, immediates: _two),
      Instruction('i64.store32', 0x3E, immediates: _two),
      Instruction('memory.size', 0x3F, immediates: _one),
      Instruction('memory.grow', 0x40, immediates: _one),
      Instruction('i32.const', 0x41, immediates: _one),
      Instruction('i64.const', 0x42, immediates: [ImmediateTypes.var64]),
      Instruction('f64.const', 0x44, immediates: [ImmediateTypes.f64]),
      Instruction('i32.eqz', 0x45),
      Instruction('i32.eq', 0x46),
      Instruction('i32.lt_s', 0x48),
      Instruction('i32.lt_u', 0x49),
      Instruction('i32.gt_s', 0x4A),
      Instruction('i32.gt_u', 0x4B),
      Instruction('i32.le_s', 0x4C),
      Instruction('i32.le_u', 0x4D),
      Instruction('i32.ge_s', 0x4E),
      Instruction('i32.ge_u', 0x4F),
      Instruction('f64.gt', 0x64),
      Instruction('f64.le', 0x65),
      Instruction('i32.add', 0x6A),
      Instruction('i32.sub', 0x6B),
      Instruction('i32.mul', 0x6C),
      Instruction('i32.div_u', 0x6E),
      Instruction('i32.rem_u', 0x70),
      Instruction('i32.and', 0x71),
      Instruction('i32.shl', 0x74),
      Instruction('i32.shr_s', 0x75),
      Instruction('i32.shr_u', 0x76),
      Instruction('i64.div_s', 0x7F),
      Instruction('i64.div_u', 0x80),
      Instruction('i64.and', 0x83),
      Instruction('i64.or', 0x84),
      Instruction('i64.xor', 0x85),
      Instruction('i64.shr_u', 0x88),
      Instruction('i64.rotl', 0x89),
      Instruction('i64.rotr', 0x8A),
      Instruction('f64.add', 0xA0),
      Instruction('f64.sub', 0xA1),
      Instruction('f64.mul', 0xA2),
      Instruction('f64.div', 0xA3),
      Instruction('f64.min', 0xA4),
      Instruction('f64.max', 0xA5),
      Instruction('f64.convert_i32_s', 0xB7),
      Instruction('f64.convert_i32_u', 0xB8),
    ];
  }

  static List<Instruction> _initOverflow() {
    return [
      Instruction('i32.trunc_sat_f64_u', 0x03),
      Instruction('memory.fill', 0x0B, immediates: _one),
    ];
  }
}
