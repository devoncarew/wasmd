// Generated from test/spec/func_ptrs/func_ptrs.9.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FuncPtrs9Module extends Module {
  FuncPtrs9Module() {
    elementSegments.init();
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(
    2,
    2,
  );

  @override
  late final List<Table> tables = [table0];

  @override
  late final ElementSegments elementSegments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  i32 callt(i32 arg0) => _func2(arg0);

  i32 _t1() {
    return 1;
  }

  i32 _t2() {
    return 2;
  }

  i32 _func2(i32 i) {
    var func0 = assertCallable<FunctionType0>(table0[i]);
    var t0 = func0();
    return t0;
  }

  List<Function> _initFunctionTable() {
    return [_t1, _t2, _func2];
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = i32 Function(i32);

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final FuncPtrs9Module module;

  @override
  late final List<List<int>?> segments = [null];

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table0, 0, 0, 2, [0, 1]); /* segment0 */
  }
}
