// Generated from test/spec/table_size/table_size.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class TableSize0Module implements Module {
  TableSize0Module();

  @override
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

  @override
  late final List<Table> tables = [
    table0,
    table1,
    table2,
    table3,
  ];

  i32 size_t0() => _func0();
  i32 size_t1() => _func1();
  i32 size_t2() => _func2();
  i32 size_t3() => _func3();
  void grow_t0(i32 arg0) => _func4(arg0);
  void grow_t1(i32 arg0) => _func5(arg0);
  void grow_t2(i32 arg0) => _func6(arg0);
  void grow_t3(i32 arg0) => _func7(arg0);

  i32 _func0() {
    final frame = Frame(this);
    frame.table_size(0);
    return frame.pop();
  }

  i32 _func1() {
    final frame = Frame(this);
    frame.table_size(1);
    return frame.pop();
  }

  i32 _func2() {
    final frame = Frame(this);
    frame.table_size(2);
    return frame.pop();
  }

  i32 _func3() {
    final frame = Frame(this);
    frame.table_size(3);
    return frame.pop();
  }

  void _func4(i32 sz) {
    final frame = Frame(this);
    frame.ref_null(111);
    frame.push(sz);
    frame.table_grow(0);
    frame.drop();
  }

  void _func5(i32 sz) {
    final frame = Frame(this);
    frame.ref_null(111);
    frame.push(sz);
    frame.table_grow(1);
    frame.drop();
  }

  void _func6(i32 sz) {
    final frame = Frame(this);
    frame.ref_null(111);
    frame.push(sz);
    frame.table_grow(2);
    frame.drop();
  }

  void _func7(i32 sz) {
    final frame = Frame(this);
    frame.ref_null(111);
    frame.push(sz);
    frame.table_grow(3);
    frame.drop();
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = void Function(i32);
