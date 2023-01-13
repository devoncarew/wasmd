// Generated from samples/fac.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FacModule implements Module {
  FacModule();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 fac(i32 arg0) => _func0(arg0);

  i32 _func0(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.i32_const(0);
    frame.i32_eq();
    if_label_0: // => i32
    if (frame.pop() != 0) {
      frame.i32_const(1);
    } else {
      frame.push(arg0);
      frame.push(arg0);
      frame.i32_const(1);
      frame.i32_sub();
      {
        var t0 = frame.pop();
        frame.push(_func0(t0));
      }
      frame.i32_mul();
    }
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(i32);
