// Generated from samples/print.wasm.

import 'dart:typed_data';

import 'package:dasm/runtime.dart';

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

/// An abstract class representing the symbols imported from the 'console' module.
abstract class ConsoleImports {
  /// The imported 'log' symbol.
  void log(i32 arg0, i32 arg1);
}

class DataSegments {
  Uint8List data0 = hexDecode(_hex0);

  static const String _hex0 = '48656C6C6F2066726F6D207761736D21';

  void init(Memory memory) {
    memory.copyTo(data0, _dataOffset0(memory));
  }

  static u32 _dataOffset0(Memory memory) {
    final frame = Frame(memory);
    frame.i32_const(0);
    return frame.pop();
  }
}
