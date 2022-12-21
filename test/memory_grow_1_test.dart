// Generated from test/wasm/memory_grow_1.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'package:test/test.dart';
import 'package:wasmd/runtime.dart';

import 'src/infra.dart';

void main() {
  group('memory_grow_1', () {
    final Module m = Module();
    final Globals g = m.globals;

    returns('test_grow_0', m.test_grow_0, g.expect_grow_0);
    returns('test_grow_1', m.test_grow_1, g.expect_grow_1);
    returns('test_grow_2', m.test_grow_2, g.expect_grow_2);
    returns('test_grow_3', m.test_grow_3, g.expect_grow_3);
    returns('test_grow_4', m.test_grow_4, g.expect_grow_4);
    returns('test_grow_5', m.test_grow_5, g.expect_grow_5);
    returns('test_grow_6', m.test_grow_6, g.expect_grow_6);
    returns('test_grow_7', m.test_grow_7, g.expect_grow_7);
  });
}

class Module {
  Module();

  final Memory memory = Memory(0);

  final Globals globals = Globals();

  i32 grow(i32 arg0) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.memory_grow(0);
    return frame.pop();
  }

  i32 test_grow_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(grow(t0));
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

  i32 test_grow_2() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(grow(t0));
    }
    return frame.pop();
  }

  i32 test_grow_3() {
    final frame = Frame(memory);
    frame.i32_const(2);
    {
      var t0 = frame.pop();
      frame.push(grow(t0));
    }
    return frame.pop();
  }

  i32 test_grow_4() {
    final frame = Frame(memory);
    frame.i32_const(800);
    {
      var t0 = frame.pop();
      frame.push(grow(t0));
    }
    return frame.pop();
  }

  i32 test_grow_5() {
    final frame = Frame(memory);
    frame.i32_const(0x10000);
    {
      var t0 = frame.pop();
      frame.push(grow(t0));
    }
    return frame.pop();
  }

  i32 test_grow_6() {
    final frame = Frame(memory);
    frame.i32_const(0xfce0);
    {
      var t0 = frame.pop();
      frame.push(grow(t0));
    }
    return frame.pop();
  }

  i32 test_grow_7() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      frame.push(grow(t0));
    }
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(i32);
typedef FunctionType1 = i32 Function();

class Globals {
  final i32 expect_grow_0 = 0;

  final i32 expect_grow_1 = 0;

  final i32 expect_grow_2 = 1;

  final i32 expect_grow_3 = 1;

  final i32 expect_grow_4 = 3;

  final i32 expect_grow_5 = -1;

  final i32 expect_grow_6 = -1;

  final i32 expect_grow_7 = 803;
}
