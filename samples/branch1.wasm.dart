// Generated from samples/branch1.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'package:dasm/runtime.dart';

class Module {
  Module() {
    _func1();
  }

  final Memory memory = Memory(0);
  final Globals globals = Globals();

  i32 sample() {
    final frame = Frame(memory);

    loop_label_0:
    for (;;) {
      frame.push(globals.global0);
      frame.i32_const(1);
      frame.i32_add();
      globals.global0 = frame.pop();
      frame.push(globals.global0);
      frame.i32_const(10);
      frame.i32_lt_s();
      if (frame.pop() != 0) continue loop_label_0;
      break;
    }
    frame.push(globals.global0);
    return frame.pop();
  }

  void _func1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    globals.global0 = frame.pop();
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
