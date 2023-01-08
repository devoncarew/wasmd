// Generated from samples/fib.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FibModule implements Module {
  FibModule();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 fib(i32 arg0) => _func0(arg0);

  i32 _func0(i32 arg0) {
    i32 local0 = 0;
    i32 local1 = 0;
    i32 local2 = 0;

    final frame = Frame(this);
    frame.i32_const(1);
    local0 = frame.pop();
    frame.push(arg0);
    frame.i32_const(0);
    frame.i32_gt_s();
    if_label_0:
    if (frame.pop() != 0) {
      loop_label_1:
      for (;;) {
        frame.push(arg0);
        frame.i32_const(1);
        frame.i32_sub();
        arg0 = frame.peek();
        if_label_2:
        if (frame.pop() != 0) {
          frame.push(local0);
          frame.push(local1);
          frame.i32_add();
          local2 = frame.pop();
          frame.push(local0);
          local1 = frame.pop();
          frame.push(local2);
          local0 = frame.pop();
          continue loop_label_1;
        }
        break;
      }
      frame.push(local0);
      return frame.pop();
    }
    frame.i32_const(0);
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(i32);
