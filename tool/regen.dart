import 'dart:io';

import 'package:code_builder/code_builder.dart' hide Expression;
import 'package:dart_style/dart_style.dart';
import 'package:logging/logging.dart';
import 'package:path/path.dart' as p;
import 'package:wasmd/compiler.dart';
import 'package:wasmd/src/utils.dart';

void main(List<String> args) {
  if (args.isEmpty) {
    print('usage: dart tool/regen.dart <wat files>');
    return;
  }

  for (var arg in args) {
    var watFile = File(arg);

    // compile the wat file to wasm and dis files
    var wasmFile = compileWatToWasm(watFile);

    // compile the wasm file to dart
    var dartFile = File('${p.withoutExtension(watFile.path)}.dart');
    compileWasmToDart(wasmFile, dartFile);
  }
}

File compileWatToWasm(File watFile) {
  var wasmFile = File('${p.withoutExtension(watFile.path)}.wasm');
  var disFile = File('${p.withoutExtension(watFile.path)}.dis');

  // wat2wasm -o wasmFile watFile
  var args = [
    'wat2wasm',
    '--debug-names',
    // '--enable-multi-memory',
    '-v',
    '-o',
    wasmFile.path,
    watFile.path,
  ];
  print(args.join(' '));

  var result = Process.runSync(args.first, args.skip(1).toList());
  var out = (result.stdout as String).trim();
  if (out.isNotEmpty) print(out);
  var err = (result.stderr as String).trim();
  if (result.exitCode == 0) {
    disFile.writeAsStringSync(err);
    print('Wrote ${disFile.path}.');
  } else {
    if (err.isNotEmpty) stderr.writeln(err);
  }

  if (result.exitCode != 0) {
    throw '${args.first} failed with exit code ${result.exitCode}';
  }

  print('Wrote ${wasmFile.path}.');

  return wasmFile;
}

void compileWasmToDart(File wasmFile, File dartFile) {
  print('Reading ${wasmFile.path}.');

  var logger = Logger.detached('wasm2dart');
  // if (verbose) {
  //   logger.onRecord.listen((record) {
  //     stderr.writeln(record.message);
  //   });
  // }

  var compiler = Compiler(file: wasmFile, logger: logger);
  var library = compiler.compile();

  var formatter = DartFormatter();
  var emitter = DartEmitter(
    orderDirectives: true,
    useNullSafetySyntax: true,
    allocator: NoPrefixAllocator(),
  );

  var code = library.accept(emitter).toString();
  try {
    code = formatter.format(code);
  } catch (e) {
    print(e);
  }

  print('Emitting ${dartFile.path}.');
  dartFile.writeAsStringSync(code);
}
