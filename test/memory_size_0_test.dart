// Generated from test/wasm/memory_size_0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'package:test/test.dart';
import 'package:wasmd/runtime.dart';

import 'src/infra.dart';

void main() {
  group('memory_size_0', () {
    final Module m = Module();
    final Globals g = m.globals;

    returns('test_size_0', m.test_size_0, g.expect_size_0);
    returns('test_grow_0', m.test_grow_0);
    returns('test_size_1', m.test_size_1, g.expect_size_1);
    returns('test_grow_1', m.test_grow_1);
    returns('test_size_2', m.test_size_2, g.expect_size_2);
    returns('test_grow_2', m.test_grow_2);
    returns('test_size_3', m.test_size_3, g.expect_size_3);
  });
}

class Module {
  Module();

  final Memory memory = Memory(0);

  final Globals globals = Globals();

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
    frame.i32_const(1);
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
    frame.i32_const(4);
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
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = void Function(i32);
typedef FunctionType2 = void Function();

class Globals {
  final i32 expect_size_0 = 0;

  final i32 expect_size_1 = 1;

  final i32 expect_size_2 = 5;

  final i32 expect_size_3 = 5;
}
