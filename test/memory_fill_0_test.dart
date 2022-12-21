// Generated from test/wasm/memory_fill_0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'package:test/test.dart';
import 'package:wasmd/runtime.dart';

import 'src/infra.dart';

void main() {
  group('memory_fill_0', () {
    final Module m = Module();

    returns('test_checkRange_0', m.test_checkRange_0, -1);
    returns('test_checkRange_1', m.test_checkRange_1, -1);
  });
}

class Module {
  Module();

  final Memory memory = Memory(
    1,
    1,
  );

  i32 checkRange(i32 from, i32 to, i32 expected) {
    final frame = Frame(memory);

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
    final frame = Frame(memory);
    frame.i32_const(0xff00);
    frame.i32_const(85);
    frame.i32_const(256);
    frame.memory_fill(0);
  }

  i32 test_checkRange_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0xff00);
    frame.i32_const(0);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(checkRange(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 test_checkRange_1() {
    final frame = Frame(memory);
    frame.i32_const(0xff00);
    frame.i32_const(0x10000);
    frame.i32_const(85);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(checkRange(t0, t1, t2));
    }
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(i32, i32, i32);
typedef FunctionType1 = void Function();
typedef FunctionType2 = i32 Function();
