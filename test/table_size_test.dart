// Generated from test/wasm/table_size.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'package:test/test.dart';
import 'package:wasmd/runtime.dart';

import 'src/infra.dart';

void main() {
  group('table_size', () {
    final Module m = Module();

    returns('test_size_t0_0', m.test_size_t0_0, 0);
    returns('test_grow_t0_0', m.test_grow_t0_0);
    returns('test_size_t0_1', m.test_size_t0_1, 1);
    returns('test_grow_t0_1', m.test_grow_t0_1);
    returns('test_size_t0_2', m.test_size_t0_2, 5);
    returns('test_grow_t0_2', m.test_grow_t0_2);
    returns('test_size_t0_3', m.test_size_t0_3, 5);
    returns('test_size_t1_0', m.test_size_t1_0, 1);
    returns('test_grow_t1_0', m.test_grow_t1_0);
    returns('test_size_t1_1', m.test_size_t1_1, 2);
    returns('test_grow_t1_1', m.test_grow_t1_1);
    returns('test_size_t1_2', m.test_size_t1_2, 6);
    returns('test_grow_t1_2', m.test_grow_t1_2);
    returns('test_size_t1_3', m.test_size_t1_3, 6);
    returns('test_size_t2_0', m.test_size_t2_0, 0);
    returns('test_grow_t2_0', m.test_grow_t2_0);
    returns('test_size_t2_1', m.test_size_t2_1, 0);
    returns('test_grow_t2_1', m.test_grow_t2_1);
    returns('test_size_t2_2', m.test_size_t2_2, 1);
    returns('test_grow_t2_2', m.test_grow_t2_2);
    returns('test_size_t2_3', m.test_size_t2_3, 1);
    returns('test_grow_t2_3', m.test_grow_t2_3);
    returns('test_size_t2_4', m.test_size_t2_4, 1);
    returns('test_grow_t2_4', m.test_grow_t2_4);
    returns('test_size_t2_5', m.test_size_t2_5, 2);
    returns('test_size_t3_0', m.test_size_t3_0, 3);
    returns('test_grow_t3_0', m.test_grow_t3_0);
    returns('test_size_t3_1', m.test_size_t3_1, 4);
    returns('test_grow_t3_1', m.test_grow_t3_1);
    returns('test_size_t3_2', m.test_size_t3_2, 7);
    returns('test_grow_t3_2', m.test_grow_t3_2);
    returns('test_size_t3_3', m.test_size_t3_3, 7);
    returns('test_grow_t3_3', m.test_grow_t3_3);
    returns('test_size_t3_4', m.test_size_t3_4, 7);
    returns('test_grow_t3_4', m.test_grow_t3_4);
    returns('test_size_t3_5', m.test_size_t3_5, 8);
  });
}

class Module {
  Module() {
    tables = [
      table0,
      table1,
      table2,
      table3,
    ];
  }

  final Memory memory = Memory(0);

  final Table table0 = Table(0);

  final Table table1 = Table(1);

  final Table table2 = Table(
    0,
    2,
  );

  final Table table3 = Table(
    3,
    8,
  );

  late final List<Table> tables;

  i32 size_t0() {
    final frame = Frame(memory);
    throw 'unreachable (0xFC)';
  }

  i32 size_t1() {
    final frame = Frame(memory);
    throw 'unreachable (0xFC)';
  }

  i32 size_t2() {
    final frame = Frame(memory);
    throw 'unreachable (0xFC)';
  }

  i32 size_t3() {
    final frame = Frame(memory);
    throw 'unreachable (0xFC)';
  }

  void grow_t0(i32 sz) {
    final frame = Frame(memory);
    throw 'unreachable (0xD0)';
  }

  void grow_t1(i32 sz) {
    final frame = Frame(memory);
    throw 'unreachable (0xD0)';
  }

  void grow_t2(i32 sz) {
    final frame = Frame(memory);
    throw 'unreachable (0xD0)';
  }

  void grow_t3(i32 sz) {
    final frame = Frame(memory);
    throw 'unreachable (0xD0)';
  }

  i32 test_size_t0_0() {
    final frame = Frame(memory);
    frame.push(size_t0());
    return frame.pop();
  }

  void test_grow_t0_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      grow_t0(t0);
    }
  }

  i32 test_size_t0_1() {
    final frame = Frame(memory);
    frame.push(size_t0());
    return frame.pop();
  }

  void test_grow_t0_1() {
    final frame = Frame(memory);
    frame.i32_const(4);
    {
      var t0 = frame.pop();
      grow_t0(t0);
    }
  }

  i32 test_size_t0_2() {
    final frame = Frame(memory);
    frame.push(size_t0());
    return frame.pop();
  }

  void test_grow_t0_2() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      grow_t0(t0);
    }
  }

  i32 test_size_t0_3() {
    final frame = Frame(memory);
    frame.push(size_t0());
    return frame.pop();
  }

  i32 test_size_t1_0() {
    final frame = Frame(memory);
    frame.push(size_t1());
    return frame.pop();
  }

  void test_grow_t1_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      grow_t1(t0);
    }
  }

  i32 test_size_t1_1() {
    final frame = Frame(memory);
    frame.push(size_t1());
    return frame.pop();
  }

  void test_grow_t1_1() {
    final frame = Frame(memory);
    frame.i32_const(4);
    {
      var t0 = frame.pop();
      grow_t1(t0);
    }
  }

  i32 test_size_t1_2() {
    final frame = Frame(memory);
    frame.push(size_t1());
    return frame.pop();
  }

  void test_grow_t1_2() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      grow_t1(t0);
    }
  }

  i32 test_size_t1_3() {
    final frame = Frame(memory);
    frame.push(size_t1());
    return frame.pop();
  }

  i32 test_size_t2_0() {
    final frame = Frame(memory);
    frame.push(size_t2());
    return frame.pop();
  }

  void test_grow_t2_0() {
    final frame = Frame(memory);
    frame.i32_const(3);
    {
      var t0 = frame.pop();
      grow_t2(t0);
    }
  }

  i32 test_size_t2_1() {
    final frame = Frame(memory);
    frame.push(size_t2());
    return frame.pop();
  }

  void test_grow_t2_1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      grow_t2(t0);
    }
  }

  i32 test_size_t2_2() {
    final frame = Frame(memory);
    frame.push(size_t2());
    return frame.pop();
  }

  void test_grow_t2_2() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      grow_t2(t0);
    }
  }

  i32 test_size_t2_3() {
    final frame = Frame(memory);
    frame.push(size_t2());
    return frame.pop();
  }

  void test_grow_t2_3() {
    final frame = Frame(memory);
    frame.i32_const(4);
    {
      var t0 = frame.pop();
      grow_t2(t0);
    }
  }

  i32 test_size_t2_4() {
    final frame = Frame(memory);
    frame.push(size_t2());
    return frame.pop();
  }

  void test_grow_t2_4() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      grow_t2(t0);
    }
  }

  i32 test_size_t2_5() {
    final frame = Frame(memory);
    frame.push(size_t2());
    return frame.pop();
  }

  i32 test_size_t3_0() {
    final frame = Frame(memory);
    frame.push(size_t3());
    return frame.pop();
  }

  void test_grow_t3_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      grow_t3(t0);
    }
  }

  i32 test_size_t3_1() {
    final frame = Frame(memory);
    frame.push(size_t3());
    return frame.pop();
  }

  void test_grow_t3_1() {
    final frame = Frame(memory);
    frame.i32_const(3);
    {
      var t0 = frame.pop();
      grow_t3(t0);
    }
  }

  i32 test_size_t3_2() {
    final frame = Frame(memory);
    frame.push(size_t3());
    return frame.pop();
  }

  void test_grow_t3_2() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      grow_t3(t0);
    }
  }

  i32 test_size_t3_3() {
    final frame = Frame(memory);
    frame.push(size_t3());
    return frame.pop();
  }

  void test_grow_t3_3() {
    final frame = Frame(memory);
    frame.i32_const(2);
    {
      var t0 = frame.pop();
      grow_t3(t0);
    }
  }

  i32 test_size_t3_4() {
    final frame = Frame(memory);
    frame.push(size_t3());
    return frame.pop();
  }

  void test_grow_t3_4() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      grow_t3(t0);
    }
  }

  i32 test_size_t3_5() {
    final frame = Frame(memory);
    frame.push(size_t3());
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = void Function(i32);
typedef FunctionType2 = void Function();
