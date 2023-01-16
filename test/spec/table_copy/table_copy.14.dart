// Generated from test/spec/table_copy/table_copy.14.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

/// A class representing the symbols imported from the 'a' module.
abstract class AImports {
  i32 ef0();
  i32 ef1();
  i32 ef2();
  i32 ef3();
  i32 ef4();
}

class TableCopy14Module extends Module {
  TableCopy14Module({required this.aImports}) {
    elementSegments.init();
    vm = VM(this);
  }

  final AImports aImports;

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

  @override
  late final ElementSegments elementSegments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  void test() => _func5();
  i32 check_t0(i32 arg0) => _func6(arg0);
  i32 check_t1(i32 arg0) => _func7(arg0);

  i32 _func0() {
    return 5;
  }

  i32 _func1() {
    return 6;
  }

  i32 _func2() {
    return 7;
  }

  i32 _func3() {
    return 8;
  }

  i32 _func4() {
    return 9;
  }

  void _func5() {
    vm.table_copy(1, 1, 20, 22, 4);
  }

  i32 _func6(i32 arg0) {
    var func0 = assertCallable<FunctionType0>(table1[arg0]);
    var t0 = func0();
    return t0;
  }

  i32 _func7(i32 arg0) {
    var func0 = assertCallable<FunctionType0>(table0[arg0]);
    var t0 = func0();
    return t0;
  }

  List<Function> _initFunctionTable() {
    return [
      aImports.ef0,
      aImports.ef1,
      aImports.ef2,
      aImports.ef3,
      aImports.ef4,
      _func0,
      _func1,
      _func2,
      _func3,
      _func4,
      _func5,
      _func6,
      _func7
    ];
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = void Function();
typedef FunctionType2 = i32 Function(i32);

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final TableCopy14Module module;

  late final List<int> segment1;

  late final List<int> segment3;

  @override
  late final List<List<int>?> segments = [null, segment1, null, segment3, null, null];

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table1, 0, 2, 4, [3, 1, 4, 1]); /* segment0 */
    segment1 = [2, 7, 1, 8];
    copyTo(module.table1, 0, 12, 5, [7, 5, 2, 3, 6]); /* segment2 */
    segment3 = [5, 9, 2, 7, 6];
    copyTo(module.table0, 0, 3, 4, [1, 3, 1, 4]); /* segment4 */
    copyTo(module.table0, 0, 11, 5, [6, 3, 2, 5, 7]); /* segment5 */
  }
}
