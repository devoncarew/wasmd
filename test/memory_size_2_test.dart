// Generated from test/wasm/memory_size_2.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'package:test/test.dart';
import 'package:wasmd/runtime.dart';

import 'src/infra.dart';

void main() {
  group('memory_size_2', () {
    final Module m = Module();

    returns('size_0', m.test_size_0, 0);
    returns('grow_0', m.test_grow_0);
    returns('size_1', m.test_size_1, 0);
    returns('grow_1', m.test_grow_1);
    returns('size_2', m.test_size_2, 1);
    returns('grow_2', m.test_grow_2);
    returns('size_3', m.test_size_3, 1);
    returns('grow_3', m.test_grow_3);
    returns('size_4', m.test_size_4, 1);
    returns('grow_4', m.test_grow_4);
    returns('size_5', m.test_size_5, 2);
  });
}

class Module {
  Module();

  final Memory memory = Memory(
    0,
    2,
  );

  i32 size() {
    final frame = Frame(memory);
    frame.memory_size(0);
    return frame.pop();
  }

  void grow(i32 sz) {
    final frame = Frame(memory);
    frame.push(sz);
    frame.memory_grow(0);
    frame.drop();
  }

  i32 test_size_0() {
    final frame = Frame(memory);
    frame.push(size());
    return frame.pop();
  }

  void test_grow_0() {
    final frame = Frame(memory);
    frame.i32_const(3);
    {
      var t0 = frame.pop();
      grow(t0);
    }
  }

  i32 test_size_1() {
    final frame = Frame(memory);
    frame.push(size());
    return frame.pop();
  }

  void test_grow_1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      grow(t0);
    }
  }

  i32 test_size_2() {
    final frame = Frame(memory);
    frame.push(size());
    return frame.pop();
  }

  void test_grow_2() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      grow(t0);
    }
  }

  i32 test_size_3() {
    final frame = Frame(memory);
    frame.push(size());
    return frame.pop();
  }

  void test_grow_3() {
    final frame = Frame(memory);
    frame.i32_const(4);
    {
      var t0 = frame.pop();
      grow(t0);
    }
  }

  i32 test_size_4() {
    final frame = Frame(memory);
    frame.push(size());
    return frame.pop();
  }

  void test_grow_4() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      grow(t0);
    }
  }

  i32 test_size_5() {
    final frame = Frame(memory);
    frame.push(size());
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = void Function(i32);
typedef FunctionType2 = void Function();
