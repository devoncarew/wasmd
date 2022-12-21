// Generated from test/wasm/memory_grow_0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'package:test/test.dart';
import 'package:wasmd/runtime.dart';

import 'src/infra.dart';

void main() {
  group('memory_grow_0', () {
    final Module m = Module();
    final Globals g = m.globals;

    returns('test_size_0', m.test_size_0, g.expect_size_0);
    returns('test_grow_0', m.test_grow_0, g.expect_grow_0);
    returns('test_size_1', m.test_size_1, g.expect_size_1);
    returns(
        'test_load_at_zero_1', m.test_load_at_zero_1, g.expect_load_at_zero_1);
    returns('test_store_at_zero_1', m.test_store_at_zero_1);
    returns(
        'test_load_at_zero_2', m.test_load_at_zero_2, g.expect_load_at_zero_2);
    returns('test_grow_1', m.test_grow_1, g.expect_grow_1);
    returns('test_size_2', m.test_size_2, g.expect_size_2);
    returns(
        'test_load_at_zero_3', m.test_load_at_zero_3, g.expect_load_at_zero_3);
    returns('test_store_at_zero_2', m.test_store_at_zero_2);
    returns(
        'test_load_at_zero_4', m.test_load_at_zero_4, g.expect_load_at_zero_4);
    returns('test_load_at_page_size_2', m.test_load_at_page_size_2,
        g.expect_load_at_page_size_2);
    returns('test_store_at_page_size_2', m.test_store_at_page_size_2);
    returns('test_load_at_page_size_3', m.test_load_at_page_size_3,
        g.expect_load_at_page_size_3);
  });
}

class Module {
  Module();

  final Memory memory = Memory(0);

  final Globals globals = Globals();

  i32 load_at_zero() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    return frame.pop();
  }

  void store_at_zero() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(2);
    frame.i32_store(2, 0);
  }

  i32 load_at_page_size() {
    final frame = Frame(memory);
    frame.i32_const(0x10000);
    frame.i32_load(2, 0);
    return frame.pop();
  }

  void store_at_page_size() {
    final frame = Frame(memory);
    frame.i32_const(0x10000);
    frame.i32_const(3);
    frame.i32_store(2, 0);
  }

  i32 grow(i32 sz) {
    final frame = Frame(memory);
    frame.push(sz);
    frame.memory_grow(0);
    return frame.pop();
  }

  i32 size() {
    final frame = Frame(memory);
    frame.memory_size(0);
    return frame.pop();
  }

  i32 test_size_0() {
    final frame = Frame(memory);
    frame.push(size());
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

  i32 test_size_1() {
    final frame = Frame(memory);
    frame.push(size());
    return frame.pop();
  }

  i32 test_load_at_zero_1() {
    final frame = Frame(memory);
    frame.push(load_at_zero());
    return frame.pop();
  }

  void test_store_at_zero_1() {
    final frame = Frame(memory);
    store_at_zero();
  }

  i32 test_load_at_zero_2() {
    final frame = Frame(memory);
    frame.push(load_at_zero());
    return frame.pop();
  }

  i32 test_grow_1() {
    final frame = Frame(memory);
    frame.i32_const(4);
    {
      var t0 = frame.pop();
      frame.push(grow(t0));
    }
    return frame.pop();
  }

  i32 test_size_2() {
    final frame = Frame(memory);
    frame.push(size());
    return frame.pop();
  }

  i32 test_load_at_zero_3() {
    final frame = Frame(memory);
    frame.push(load_at_zero());
    return frame.pop();
  }

  void test_store_at_zero_2() {
    final frame = Frame(memory);
    store_at_zero();
  }

  i32 test_load_at_zero_4() {
    final frame = Frame(memory);
    frame.push(load_at_zero());
    return frame.pop();
  }

  i32 test_load_at_page_size_2() {
    final frame = Frame(memory);
    frame.push(load_at_page_size());
    return frame.pop();
  }

  void test_store_at_page_size_2() {
    final frame = Frame(memory);
    store_at_page_size();
  }

  i32 test_load_at_page_size_3() {
    final frame = Frame(memory);
    frame.push(load_at_page_size());
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = void Function();
typedef FunctionType2 = i32 Function(i32);

class Globals {
  final i32 expect_size_0 = 0;

  final i32 expect_grow_0 = 0;

  final i32 expect_size_1 = 1;

  final i32 expect_load_at_zero_1 = 0;

  final i32 expect_load_at_zero_2 = 2;

  final i32 expect_grow_1 = 1;

  final i32 expect_size_2 = 5;

  final i32 expect_load_at_zero_3 = 2;

  final i32 expect_load_at_zero_4 = 2;

  final i32 expect_load_at_page_size_2 = 0;

  final i32 expect_load_at_page_size_3 = 3;
}
