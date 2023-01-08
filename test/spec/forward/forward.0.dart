// Generated from test/spec/forward/forward.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Forward0Module implements Module {
  Forward0Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 even(i32 arg0) => _even(arg0);
  i32 odd(i32 arg0) => _odd(arg0);

  i32 _even(i32 n) {
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
        frame.push(_odd(t0));
      }
    }
    return frame.pop();
  }

  i32 _odd(i32 n) {
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
        frame.push(_even(t0));
      }
    }
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(i32);
