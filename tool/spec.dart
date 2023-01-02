import 'dart:convert';
import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';
import 'package:logging/logging.dart';
import 'package:path/path.dart' as p;
import 'package:wasmd/compiler.dart';
import 'package:wasmd/src/utils.dart';

// Given an wast file, generate one or more wat module files that represent unit
// tests.
//
// Based on the wast2json tool.

// TODO:? --disable-saturating-float-to-int --disable-sign-extension
// --disable-multi-value --disable-simd

void main(List<String> args) {
  if (args.isEmpty) {
    print('usage: dart tools/spec_2.dart <wast file>');
    return;
  }

  if (args.first == '--all') {
    var specDir = Directory(p.join('test', 'spec'));
    args = specDir
        .listSync()
        .whereType<Directory>()
        .map((d) => p.basename(d.path))
        .map((n) => 'spec/test/core/$n.wast')
        .toList()
      ..sort();
  }

  for (var arg in args) {
    var wastFile = File(arg);

    var basename = p.basenameWithoutExtension(arg).replaceAll('-', '_');
    var dir =
        Directory(p.join('test', 'spec', p.basenameWithoutExtension(arg)));
    dir.createSync(recursive: true);

    var jsonFile = File(p.join(dir.path, '$basename.json'));
    var wasmFiles = wast2json(wastFile, jsonFile);

    // generate a dart file from the json testing file
    var dartFile = File('${p.withoutExtension(jsonFile.path)}_test.dart');
    generateDartForJson(jsonFile, dartFile);

    // compile wasm to dart
    for (var wasmFile in wasmFiles) {
      if (!wasmFile.existsSync()) continue;

      var dartFile = File('${p.withoutExtension(wasmFile.path)}.dart');
      compileWasmToDart(wasmFile, dartFile);
    }
  }
}

List<File> wast2json(File wastFile, File jsonFile) {
  // wast2json -o jsonFile wastFile
  var args = [
    'wast2json',
    '--debug-names', // todo: other flags as well
    '-o',
    jsonFile.path,
    wastFile.path,
  ];
  print(args.join(' '));

  var result = Process.runSync(args.first, args.skip(1).toList());
  var out = (result.stdout as String).trim();
  if (out.isNotEmpty) print(out);
  var err = (result.stderr as String).trim();
  if (err.isNotEmpty) stderr.writeln(err);

  if (result.exitCode != 0) {
    throw '${args.first} failed with exit code ${result.exitCode}';
  }

  print('Wrote ${jsonFile.path}.');

  return jsonFile.parent
      .listSync()
      .whereType<File>()
      .where((file) => file.path.endsWith('.wasm'))
      .toList();
}

void compileWasmToDart(File wasmFile, File dartFile) {
  var logger = Logger.detached('wasm2dart');
  // if (verbose) {
  //   logger.onRecord.listen((record) {
  //     stderr.writeln(record.message);
  //   });
  // }

  var compiler = Compiler(file: wasmFile, logger: logger);
  var library = compiler.compile(compileForWastTest: true);
  var code = emitFormatLibrary(library);

  print('  emitting ${dartFile.path}');
  dartFile.writeAsStringSync(code);
}

void generateDartForJson(File jsonFile, File dartFile) {
  var base = p.basenameWithoutExtension(jsonFile.path);
  var json = jsonDecode(jsonFile.readAsStringSync()) as Map<String, dynamic>;
  var sourceFilename = json['source_filename'];
  var commands = (json['commands'] as List).cast<Map<String, dynamic>>();

  var library = LibraryBuilder();
  library.comments.add('Generated from $sourceFilename.');
  library.ignoreForFile.addAll([
    'non_constant_identifier_names',
    'unused_local_variable',
  ]);
  library.directives.addAll([
    Directive.import('../../src/infra.dart'),
  ]);

  // create a main() method
  var mainMethod = MethodBuilder()
        ..name = 'main'
        ..returns = Reference('void')
      // ..requiredParameters.add(Parameter((b) => b
      //   ..name = 'args'
      //   ..type = Reference('List<String>')))
      ;

  var statements = <Code>[
    Code("group('$base', () {"),
  ];

  // create statements
  var moduleCount = 0;
  late String lastModule;

  var testCount = <String, int>{};
  var constMap = <String, String>{};

  for (var command in commands) {
    var type = command['type'] as String;
    var line = command['line'] as int;

    if (type == 'module') {
      statements.add(Code(''));

      var filename = command['filename'] as String;
      var name = command['name'] as String?;
      name ??= 'm$moduleCount';
      lastModule = name;

      var shortName = p.withoutExtension(filename);
      var prefix = shortName.replaceAll('.', '_');

      moduleCount++;

      var dartImport = '$shortName.dart';
      // TODO: at the time of initial generation, these files don't yet exist.
      var importInterfaces = _readImportInterfaces(dartFile.parent, dartImport);
      var className = titleCase(patchUpName('${shortName}Module'));
      statements.add(Code('    // module $dartImport (line $line)'));
      statements.add(Code('var $name = $prefix.$className('));
      for (var import in importInterfaces) {
        statements.add(
            Code('${import.paramName}: $prefix.${import.implClassName}(),'));
      }
      statements.add(Code(');\n'));
      library.directives.add(Directive.import(dartImport, as: prefix));
    } else if (type == 'action') {
      var action = command['action'] as Map<String, dynamic>;

      var actionType = action['type']; // 'invoke' or 'get'
      var module = (action['module'] as String?) ?? lastModule;
      var field = action['field'] as String;
      var args = (action['args'] as List).cast<Map<String, dynamic>>();

      field = patchUpName(field);

      var invocation = '';
      if (actionType == 'invoke') {
        invocation = '(';
        invocation += args.map((arg) {
          return encodeType(arg['type'], arg['value']);
        }).join(', ');
        invocation += ')';
      }

      testCount[field] = (testCount[field] ?? -1) + 1;

      var description = '${field}_${testCount[field]}';
      description = description.replaceAll(r'$', '');

      statements.add(Code(_addComma('invoke(\'$description\', '
          '() => $module.$field$invocation);')));
    } else if (type == 'assert_return') {
      var action = command['action'] as Map<String, dynamic>;
      var expected = (command['expected'] as List).cast<Map<String, dynamic>>();

      var actionType = action['type']; // 'invoke' or 'get'
      var module = (action['module'] as String?) ?? lastModule;
      var field = action['field'] as String;
      var args = (action['args'] as List).cast<Map<String, dynamic>>();

      field = patchUpName(field);

      if (expected.length > 1) {
        // TODO:
        print('multiple return expectations not yet supported ($type $field)');
        continue;
      }

      var invocation = '';
      if (actionType == 'invoke') {
        invocation = '(';
        invocation += args.map((arg) {
          return encodeType(arg['type'], arg['value']);
        }).join(', ');
        invocation += ')';
      }

      var result = expected.map((arg) {
        return encodeType(arg['type'], arg['value']);
      }).firstOrNull;

      testCount[field] = (testCount[field] ?? -1) + 1;

      var description = '${field}_${testCount[field]}';
      description = description.replaceAll(r'$', '');

      statements.add(Code(_addComma('returns(\'$description\', '
          '() => $module.$field$invocation, $result);')));
    } else if (type == 'assert_trap') {
      var action = command['action'] as Map<String, dynamic>;
      var text = command['text'] as String;

      var actionType = action['type']; // 'invoke' or 'get'
      var module = (action['module'] as String?) ?? lastModule;
      var field = action['field'] as String;
      var args = (action['args'] as List).cast<Map<String, dynamic>>();

      field = patchUpName(field);

      var invocation = '';
      if (actionType == 'invoke') {
        invocation = '(';
        invocation += args.map((arg) {
          return encodeType(arg['type'], arg['value']);
        }).join(', ');
        invocation += ')';
      }

      var ref = '_${text.split(' ').map((e) => e.substring(0, 1)).join()}';
      constMap[ref] = text;
      testCount[field] = (testCount[field] ?? -1) + 1;

      var description = '${field}_${testCount[field]}';
      description = description.replaceAll(r'$', '');

      statements.add(Code(_addComma('traps(\'$description\', '
          '() => $module.$field$invocation, $ref);')));
    } else if (type == 'assert_invalid') {
      // a wasm file
      var filename = command['filename'] as String;

      // Remove this wasm module - we don't want to try to compile it.
      var file = File(p.join(jsonFile.parent.path, filename));
      file.deleteSync();
    } else if (type == 'assert_malformed') {
      // a wat file
      var filename = command['filename'] as String;

      // Remove this wat file - we don't try to compile or generate from it.
      var file = File(p.join(jsonFile.parent.path, filename));
      file.deleteSync();
    } else {
      // We ignore other command types.
      // statements.add(Code('    // $type'));
    }
  }

  for (var key in constMap.keys) {
    var value = constMap[key]!;
    library.body.add(declareConst(key, type: Reference('String'))
        .assign(literalString(value))
        .statement);
  }

  if (constMap.isNotEmpty) {
    library.body.add(Code('\n\n'));
  }

  mainMethod.body = Block.of([
    ...statements,
    Code('});'),
  ]);

  library.body.add(mainMethod.build());

  var code = emitFormatLibrary(library.build());
  dartFile.writeAsStringSync(code);
  print('Wrote ${dartFile.path}.');
}

List<ImportInterface> _readImportInterfaces(
    Directory dir, String dartImportFile) {
  var sourceFile = File(p.join(dir.path, dartImportFile));
  if (!sourceFile.existsSync()) return [];

  String source = sourceFile.readAsStringSync();
  var regex = RegExp(r'abstract class (\S+)Imports {');
  return regex.allMatches(source).map((match) {
    var name = match.group(1)!;
    return ImportInterface(name);
  }).toList();
}

class ImportInterface {
  final String name;

  ImportInterface(this.name);

  String get paramName =>
      '${name.substring(0, 1).toLowerCase()}${name.substring(1)}Imports';

  String get implClassName => '${name}ImportsImpl';
}

String _addComma(String str) {
  if (str.length > 76 && str.endsWith(');')) {
    return '${str.substring(0, str.length - 2)},);';
  } else {
    return str;
  }
}

String encodeType(String type, String value) {
  if (value == 'null') {
    return value;
  } else if ((type == 'i32' || type == 'i64') && value.length <= 6) {
    if (value == '0') {
      return value;
    } else {
      var val = int.parse(value);
      return '0x${val.toRadixString(16).toUpperCase()}';
    }
  } else {
    if ((type == 'f32' || type == 'f64') &&
        (value == 'nan:arithmetic' || value == 'nan:canonical')) {
      return 'double.nan';
    } else {
      var val = BigInt.parse(value);
      return "$type('${val.toRadixString(16).toUpperCase()}')";
    }
  }
}
