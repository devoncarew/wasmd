// Generated from test/spec/table_copy/table_copy.38.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class TableCopy38Module implements Module {
  TableCopy38Module() {
    segments.init();
  }

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(
    30,
    30,
  );

  final Table table1 = Table(
    30,
    30,
  );

  @override
  late final List<Table> tables = [
    table0,
    table1,
  ];

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  void test() => _func10();

  i32 _func00() {
    final frame = Frame(this);
    frame.i32_const(0);
    return frame.pop();
  }

  i32 _func01() {
    final frame = Frame(this);
    frame.i32_const(1);
    return frame.pop();
  }

  i32 _func02() {
    final frame = Frame(this);
    frame.i32_const(2);
    return frame.pop();
  }

  i32 _func03() {
    final frame = Frame(this);
    frame.i32_const(3);
    return frame.pop();
  }

  i32 _func04() {
    final frame = Frame(this);
    frame.i32_const(4);
    return frame.pop();
  }

  i32 _func05() {
    final frame = Frame(this);
    frame.i32_const(5);
    return frame.pop();
  }

  i32 _func06() {
    final frame = Frame(this);
    frame.i32_const(6);
    return frame.pop();
  }

  i32 _func07() {
    final frame = Frame(this);
    frame.i32_const(7);
    return frame.pop();
  }

  i32 _func08() {
    final frame = Frame(this);
    frame.i32_const(8);
    return frame.pop();
  }

  i32 _func09() {
    final frame = Frame(this);
    frame.i32_const(9);
    return frame.pop();
  }

  void _func10() {
    final frame = Frame(this);
    frame.i32_const(15);
    frame.i32_const(31);
    frame.i32_const(0);
    frame.table_copy(1, 0);
  }

  List<Function> _initFunctionTable() {
    return [
      _func00,
      _func01,
      _func02,
      _func03,
      _func04,
      _func05,
      _func06,
      _func07,
      _func08,
      _func09,
      _func10
    ];
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = void Function();

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final TableCopy38Module module;

  late final List<int> segment1;

  late final List<int> segment3;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table0, 0, 2, 4, [3, 1, 4, 1]); /* segment0 */
    segment1 = [2, 7, 1, 8];
    copyTo(module.table0, 0, 12, 5, [7, 5, 2, 3, 6]); /* segment2 */
    segment3 = [5, 9, 2, 7, 6];
  }
}
