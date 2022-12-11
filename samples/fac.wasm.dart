// Generated from samples/fac.wasm.

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

  i32 fac(i32 arg0) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.i32_const(0);
    frame.i32_eq();
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(1);
    } else {
      frame.push(arg0);
      frame.push(arg0);
      frame.i32_const(1);
      frame.i32_sub();
      frame.push(fac(frame.pop()));
      frame.i32_mul();
    }
    return frame.pop();
  }
}

class DataSegments {
  void init(Memory memory) {}
}
