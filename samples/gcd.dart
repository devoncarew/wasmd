// Generated from samples/gcd.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class GcdModule implements Module {
  GcdModule();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 gcd(i32 arg0, i32 arg1) {
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
