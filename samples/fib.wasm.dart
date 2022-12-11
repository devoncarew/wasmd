// Generated from samples/fib.wasm.

// ignore_for_file: camel_case_types
// ignore_for_file: dead_code
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: unused_label
// ignore_for_file: unused_local_variable

import 'package:dasm/runtime.dart';

class Module {
  Module() {
    dataSegments.init(memory);
  }

  final Memory memory = Memory(0);
  final DataSegments dataSegments = DataSegments();

  i32 fib(i32 arg0) {
    i32 local0 = 0;
    i32 local1 = 0;
    i32 local2 = 0;

    final frame = Frame(memory);
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

class DataSegments {
  void init(Memory memory) {}
}
