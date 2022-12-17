// Generated from samples/branch2.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Module {
  Module({required this.consoleImports}) {
    _func0();
  }

  final ConsoleImports consoleImports;
  final Memory memory = Memory(0);
  final Globals globals = Globals();

  void _func0() {
    final frame = Frame(memory);

    loop_label_0:
    for (;;) {
      frame.push(globals.global0);
      frame.i32_const(1);
      frame.i32_add();
      globals.global0 = frame.pop();
      frame.push(globals.global0);
      {
        var t0 = frame.pop();
        consoleImports.log(t0);
      }
      frame.push(globals.global0);
      frame.i32_const(10);
      frame.i32_lt_s();
      if (frame.pop() != 0) continue loop_label_0;
      break;
    }
  }
}

typedef FunctionType0 = void Function(i32);
typedef FunctionType1 = void Function();

class Globals {
  i32 global0 = 0;
}

/// A class representing the symbols imported from the 'console' module.
abstract class ConsoleImports {
  /// The imported 'log' symbol.
  void log(i32 arg0);
}
