// Generated from samples/branch1.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Branch1Module implements Module {
  Branch1Module() {
    _func1();
  }

  @override
  final Memory memory = Memory(0);

  final Globals globals = Globals();

  @override
  late final List<Table> tables = [];

  i32 sample() {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      frame.push(globals.i);
      frame.i32_const(1);
      frame.i32_add();
      globals.i = frame.pop();
      frame.push(globals.i);
      frame.i32_const(10);
      frame.i32_lt_s();
      if (frame.pop() != 0) {
        continue loop_label_0;
      }
      break;
    }
    frame.push(globals.i);
    return frame.pop();
  }

  void _func1() {
    final frame = Frame(this);
    frame.i32_const(1);
    globals.i = frame.pop();
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = void Function();

class Globals {
  i32 i = 0;
}
