// Generated from test/spec/memory_copy/memory_copy.89.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class MemoryCopy89Module implements Module {
  MemoryCopy89Module();

  @override
  final Memory memory = Memory(
    1,
    1,
  );

  @override
  late final List<Table> tables = [];

  void test() => _func0();
  i32 checkRange(i32 arg0, i32 arg1, i32 arg2) => _func1(arg0, arg1, arg2);

  void _func0() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(85);
    frame.i32_const(0x8000);
    frame.memory_fill(0);
    frame.i32_const(0x8000);
    frame.i32_const(170);
    frame.i32_const(0x8000);
    frame.memory_fill(0);
    frame.i32_const(0x9000);
    frame.i32_const(0x7000);
    frame.i32_const(0);
    frame.memory_copy(0, 0);
  }

  i32 _func1(i32 from, i32 to, i32 expected) {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      frame.push(from);
      frame.push(to);
      frame.i32_eq();
      if_label_1:
      if (frame.pop() != 0) {
        frame.i32_const(-1);
        return frame.pop();
      }
      frame.push(from);
      frame.i32_load8_u(0, 0);
      frame.push(expected);
      frame.i32_eq();
      if_label_1:
      if (frame.pop() != 0) {
        frame.push(from);
        frame.i32_const(1);
        frame.i32_add();
        from = frame.pop();
        continue loop_label_0;
      }
      break;
    }
    frame.push(from);
    return frame.pop();
    return frame.pop();
  }
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = i32 Function(i32, i32, i32);
