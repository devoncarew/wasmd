// Generated from samples/branch2.wasm.

// ignore_for_file: camel_case_types
// ignore_for_file: dead_code
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: unused_label
// ignore_for_file: unused_local_variable

import 'package:dasm/runtime.dart';

class Module {
  Module({required this.consoleImports}) {
    dataSegments.init(memory);
    _func0();
  }

  final ConsoleImports consoleImports;
  final Memory memory = Memory(0);
  final Globals globals = Globals();
  final DataSegments dataSegments = DataSegments();

  void _func0() {
    final frame = Frame(memory);

    loop_label_0:
    for (;;) {
      frame.push(globals.global0);
      frame.i32_const(1);
      frame.i32_add();
      globals.global0 = frame.pop();
      frame.push(globals.global0);
      consoleImports.log(frame.pop());
      frame.push(globals.global0);
      frame.i32_const(10);
      frame.i32_lt_s();
      if (frame.pop() != 0) continue loop_label_0;
      break;
    }
  }
}

class Globals {
  i32 global0 = _initGlobal0();

  static final Memory memory = Memory(0);

  static i32 _initGlobal0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    return frame.pop();
  }
}

/// An abstract class representing the symbols imported from the 'console' module.
abstract class ConsoleImports {
  /// The imported 'log' symbol.
  void log(i32 arg0);
}

class DataSegments {
  void init(Memory memory) {}
}
