// Generated from samples/gcd.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class GcdModule implements Module {
  GcdModule();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 gcd(i32 arg0, i32 arg1) => _gcd(arg0, arg1);

  i32 _gcd(i32 arg0, i32 arg1) {
    i32 local0 = 0;

    final frame = Frame(this);
    block_label_0:
    {
      block_label_1:
      {
        frame.push(arg0);
        if (frame.pop() != 0) break block_label_1;
        frame.push(arg1);
        local0 = frame.pop();
        break block_label_0;
      }

      loop_label_1:
      for (;;) {
        frame.push(arg1);
        frame.push(arg0);
        local0 = frame.peek();
        frame.i32_rem_u();
        arg0 = frame.pop();
        frame.push(local0);
        arg1 = frame.pop();
        frame.push(arg0);
        if (frame.pop() != 0) continue loop_label_1;
        break;
      }
    }
    frame.push(local0);
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(i32, i32);
