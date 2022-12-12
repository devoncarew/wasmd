// Generated from samples/print.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class Module {
  Module({
    required this.consoleImports,
    required this.memory,
  }) {
    dataSegments.init(memory);
    writeHi();
  }

  final ConsoleImports consoleImports;

  /// min pages: 1
  final Memory memory;
  final DataSegments dataSegments = DataSegments();

  void writeHi() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(16);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      consoleImports.log(t0, t1);
    }
  }
}

/// A class representing the symbols imported from the 'console' module.
abstract class ConsoleImports {
  /// The imported 'log' symbol.
  void log(i32 arg0, i32 arg1);
}

class DataSegments {
  Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 =
      '\x48\x65\x6C\x6C\x6F\x20\x66\x72\x6F\x6D\x20\x77\x61\x73\x6D\x21';

  void init(Memory memory) {
    memory.copyTo(data0, _dataOffset0(memory));
  }

  static u32 _dataOffset0(Memory memory) {
    final frame = Frame(memory);
    frame.i32_const(0);
    return frame.pop();
  }
}
