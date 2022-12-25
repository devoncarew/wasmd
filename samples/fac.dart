// Generated from samples/fac.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Module {
  Module();

  final Memory memory = Memory(0);

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
      {
        var t0 = frame.pop();
        frame.push(fac(t0));
      }
      frame.i32_mul();
    }
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(i32);
