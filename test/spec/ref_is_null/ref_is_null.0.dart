// Generated from test/spec/ref_is_null/ref_is_null.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class RefIsNull0Module implements Module {
  RefIsNull0Module() {
    segments.init();
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(2);

  final Table table1 = Table(2);

  @override
  late final List<Table> tables = [
    table0,
    table1,
  ];

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  i32 funcref(FuncRef? arg0) => _f1(arg0);
  i32 externref(ExternRef? arg0) => _f2(arg0);
  void init(ExternRef? arg0) => _func3(arg0);
  void deinit() => _func4();
  i32 funcref_elem(i32 arg0) => _func5(arg0);
  i32 externref_elem(i32 arg0) => _func6(arg0);

  i32 _f1(FuncRef? x) {
    var t0 = vm.ref_is_null(x);
    return t0;
  }

  i32 _f2(ExternRef? x) {
    var t0 = vm.ref_is_null(x);
    return t0;
  }

  void _dummy() {}

  void _func3(ExternRef? r) {
    table1[1] = r;
  }

  void _func4() {
    table0[1] = null;
    table1[1] = null;
  }

  i32 _func5(i32 x) {
    var t0 = _f1(table0[x]);
    return t0;
  }

  i32 _func6(i32 x) {
    var t0 = _f2(table1[x]);
    return t0;
  }

  List<Function> _initFunctionTable() {
    return [_f1, _f2, _dummy, _func3, _func4, _func5, _func6];
  }
}

typedef FunctionType0 = i32 Function(FuncRef?);
typedef FunctionType1 = i32 Function(ExternRef?);
typedef FunctionType2 = void Function();
typedef FunctionType3 = void Function(ExternRef?);
typedef FunctionType4 = i32 Function(i32);

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final RefIsNull0Module module;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table0, 0, 1, 1, [2]); /* segment0 */
  }
}
