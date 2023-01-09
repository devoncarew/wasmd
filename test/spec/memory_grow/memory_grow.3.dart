// Generated from test/spec/memory_grow/memory_grow.3.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class MemoryGrow3Module implements Module {
  MemoryGrow3Module();

  @override
  final Memory memory = Memory(1);

  @override
  late final List<Table> tables = [];

  i32 grow(i32 arg0) => _func0(arg0);
  i32 check_memory_zero(i32 arg0, i32 arg1) => _func1(arg0, arg1);

  i32 _func0(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.memory_grow(0);
    return frame.pop();
  }

  i32 _func1(i32 arg0, i32 arg1) {
    i32 local0 = 0;

    final frame = Frame(this);
    frame.i32_const(1);
    local0 = frame.pop();
    block_label_0:
    {
      loop_label_1:
      for (;;) {
        frame.push(arg0);
        frame.i32_load8_u(0, 0);
        local0 = frame.pop();
        frame.push(local0);
        frame.i32_const(0);
        frame.i32_ne();
        if (frame.pop() != 0) break block_label_0;
        frame.push(arg0);
        frame.push(arg1);
        frame.i32_ge_u();
        if (frame.pop() != 0) break block_label_0;
        frame.push(arg0);
        frame.i32_const(1);
        frame.i32_add();
        arg0 = frame.pop();
        frame.push(arg0);
        frame.push(arg1);
        frame.i32_le_u();
        if (frame.pop() != 0) continue loop_label_1;
        break;
      }
    }
    frame.push(local0);
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(i32);
typedef FunctionType1 = i32 Function(i32, i32);
