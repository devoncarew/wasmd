// Generated from samples/branch1.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Module {
  Module() {
    foo();
  }

  final Memory memory = Memory(0);
  final Globals globals = Globals();

  i32 sample() {
    final frame = Frame(memory);

    loop_label_0:
    for (;;) {
      frame.push(globals.i);
      frame.i32_const(1);
      frame.i32_add();
      globals.i = frame.pop();
      frame.push(globals.i);
      frame.i32_const(10);
      frame.i32_lt_s();
      if (frame.pop() != 0) continue loop_label_0;
      break;
    }
    frame.push(globals.i);
    return frame.pop();
  }

  void foo() {
    final frame = Frame(memory);
    frame.i32_const(1);
    globals.i = frame.pop();
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = void Function();

class Globals {
  i32 i = 0;
}
