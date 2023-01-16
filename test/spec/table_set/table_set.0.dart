// Generated from test/spec/table_set/table_set.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class TableSet0Module extends Module {
  TableSet0Module() {
    elementSegments.init();
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(1);

  final Table table1 = Table(2);

  @override
  late final List<Table> tables = [
    table0,
    table1,
  ];

  @override
  late final ElementSegments elementSegments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  ExternRef? get_externref(i32 arg0) => _func1(arg0);
  FuncRef? get_funcref(i32 arg0) => _f3(arg0);
  void set_externref(i32 arg0, ExternRef? arg1) => _func3(arg0, arg1);
  void set_funcref(i32 arg0, FuncRef? arg1) => _func4(arg0, arg1);
  void set_funcref_from(i32 arg0, i32 arg1) => _func5(arg0, arg1);
  i32 is_null_funcref(i32 arg0) => _func6(arg0);

  void _dummy() {}

  ExternRef? _func1(i32 i) {
    return table0[i];
  }

  FuncRef? _f3(i32 i) {
    return table1[i];
  }

  void _func3(i32 i, ExternRef? r) {
    table0[i] = r;
  }

  void _func4(i32 i, FuncRef? r) {
    table1[i] = r;
  }

  void _func5(i32 i, i32 j) {
    table1[i] = table1[j];
  }

  i32 _func6(i32 i) {
    var t0 = _f3(i);
    var t1 = vm.ref_is_null(t0);
    return t1;
  }

  List<Function> _initFunctionTable() {
    return [_dummy, _func1, _f3, _func3, _func4, _func5, _func6];
  }
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = ExternRef? Function(i32);
typedef FunctionType2 = FuncRef? Function(i32);
typedef FunctionType3 = void Function(i32, ExternRef?);
typedef FunctionType4 = void Function(i32, FuncRef?);
typedef FunctionType5 = void Function(i32, i32);
typedef FunctionType6 = i32 Function(i32);

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final TableSet0Module module;

  @override
  late final List<List<int>?> segments = [null];

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table1, 0, 1, 1, [0]); /* segment0 */
  }
}
