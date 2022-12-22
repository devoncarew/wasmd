// Generated from test/wasm/memory_grow_3.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'package:test/test.dart';
import 'package:wasmd/runtime.dart';

import 'src/infra.dart';

void main() {
  group('memory_grow_3', () {
    final Module m = Module();

    returns('check_memory_zero_0', m.test_check_memory_zero_0, 0);
    returns('grow_0', m.test_grow_0, 1);
    returns('check_memory_zero_1', m.test_check_memory_zero_1, 0);
    returns('grow_1', m.test_grow_1, 2);
    returns('check_memory_zero_2', m.test_check_memory_zero_2, 0);
    returns('grow_2', m.test_grow_2, 3);
    returns('check_memory_zero_3', m.test_check_memory_zero_3, 0);
    returns('grow_3', m.test_grow_3, 4);
    returns('check_memory_zero_4', m.test_check_memory_zero_4, 0);
    returns('grow_4', m.test_grow_4, 5);
    returns('check_memory_zero_5', m.test_check_memory_zero_5, 0);
  });
}

class Module {
  Module();

  final Memory memory = Memory(1);

  i32 grow(i32 arg0) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.memory_grow(0);
    return frame.pop();
  }

  i32 check_memory_zero(i32 arg0, i32 arg1) {
    i32 local0 = 0;

    final frame = Frame(memory);
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

  i32 test_check_memory_zero_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0xffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(check_memory_zero(t0, t1));
    }
    return frame.pop();
  }

  i32 test_grow_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      frame.push(grow(t0));
    }
    return frame.pop();
  }

  i32 test_check_memory_zero_1() {
    final frame = Frame(memory);
    frame.i32_const(0x10000);
    frame.i32_const(0x1ffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(check_memory_zero(t0, t1));
    }
    return frame.pop();
  }

  i32 test_grow_1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      frame.push(grow(t0));
    }
    return frame.pop();
  }

  i32 test_check_memory_zero_2() {
    final frame = Frame(memory);
    frame.i32_const(0x20000);
    frame.i32_const(0x2ffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(check_memory_zero(t0, t1));
    }
    return frame.pop();
  }

  i32 test_grow_2() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      frame.push(grow(t0));
    }
    return frame.pop();
  }

  i32 test_check_memory_zero_3() {
    final frame = Frame(memory);
    frame.i32_const(0x30000);
    frame.i32_const(0x3ffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(check_memory_zero(t0, t1));
    }
    return frame.pop();
  }

  i32 test_grow_3() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      frame.push(grow(t0));
    }
    return frame.pop();
  }

  i32 test_check_memory_zero_4() {
    final frame = Frame(memory);
    frame.i32_const(0x40000);
    frame.i32_const(0x4ffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(check_memory_zero(t0, t1));
    }
    return frame.pop();
  }

  i32 test_grow_4() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      frame.push(grow(t0));
    }
    return frame.pop();
  }

  i32 test_check_memory_zero_5() {
    final frame = Frame(memory);
    frame.i32_const(0x50000);
    frame.i32_const(0x5ffff);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(check_memory_zero(t0, t1));
    }
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(i32);
typedef FunctionType1 = i32 Function(i32, i32);
typedef FunctionType2 = i32 Function();
