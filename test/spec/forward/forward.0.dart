// Generated from test/spec/forward/forward.0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Forward0Module implements Module {
  Forward0Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 even(i32 n) {
    final frame = Frame(this);
    frame.push(n);
    frame.i32_const(0);
    frame.i32_eq();
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(1);
    } else {
      frame.push(n);
      frame.i32_const(1);
      frame.i32_sub();
      {
        var t0 = frame.pop();
        frame.push(odd(t0));
      }
    }
    return frame.pop();
  }

  i32 odd(i32 n) {
    final frame = Frame(this);
    frame.push(n);
    frame.i32_const(0);
    frame.i32_eq();
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
    } else {
      frame.push(n);
      frame.i32_const(1);
      frame.i32_sub();
      {
        var t0 = frame.pop();
        frame.push(even(t0));
      }
    }
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(i32);
