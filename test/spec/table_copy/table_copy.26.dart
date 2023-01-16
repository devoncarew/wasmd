// Generated from test/spec/table_copy/table_copy.26.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class TableCopy26Module implements Module {
  TableCopy26Module() {
    segments.init();
    vm = VM(this);
  }

  late final VM vm;

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
    return 0;
  }

  i32 _func01() {
    return 1;
  }

  i32 _func02() {
    return 2;
  }

  i32 _func03() {
    return 3;
  }

  i32 _func04() {
    return 4;
  }

  i32 _func05() {
    return 5;
  }

  i32 _func06() {
    return 6;
  }

  i32 _func07() {
    return 7;
  }

  i32 _func08() {
    return 8;
  }

  i32 _func09() {
    return 9;
  }

  void _func10() {
    vm.table_copy(0, 0, 15, 30, 0);
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

  final TableCopy26Module module;

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
