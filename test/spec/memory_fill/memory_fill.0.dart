// Generated from test/spec/memory_fill/memory_fill.0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class MemoryFill0Module implements Module {
  MemoryFill0Module();

  @override
  final Memory memory = Memory(
    1,
    1,
  );

  @override
  late final List<Table> tables = [];

  i32 checkRange(i32 from, i32 to, i32 expected) {
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

  void test() {
    final frame = Frame(this);
    frame.i32_const(0xff00);
    frame.i32_const(85);
    frame.i32_const(256);
    frame.memory_fill(0);
  }
}

typedef FunctionType0 = i32 Function(i32, i32, i32);
typedef FunctionType1 = void Function();
