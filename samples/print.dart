// Generated from samples/print.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class PrintModule implements Module {
  PrintModule({
    required this.consoleImports,
    required this.memory,
  }) {
    dataSegments.init(memory);
    writeHi();
  }

  final ConsoleImports consoleImports;

  /// min pages: 1
  @override
  final Memory memory;

  final DataSegments dataSegments = DataSegments();

  @override
  late final List<Table> tables = [];

  void writeHi() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(16);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      consoleImports.log(t0, t1);
    }
  }
}

typedef FunctionType0 = void Function(i32, i32);
typedef FunctionType1 = void Function();

/// A class representing the symbols imported from the 'console' module.
abstract class ConsoleImports {
  /// The imported 'log' symbol.
  void log(i32 arg0, i32 arg1);
}

class DataSegments {
  Uint8List helloString = decodeDataLiteral(_hex0);

  Uint8List otherString = decodeDataLiteral(_hex1);

  static const String _hex0 =
      '\x48\x65\x6C\x6C\x6F\x20\x66\x72\x6F\x6D\x20\x77\x61\x73\x6D\x21\x00';

  static const String _hex1 =
      '\x62\x75\x65\x6E\x6F\x73\x20\x64\x69\x61\x73\x00';

  void init(Memory memory) {
    memory.copyTo(helloString, 0);
  }
}
