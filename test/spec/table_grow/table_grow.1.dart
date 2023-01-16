// Generated from test/spec/table_grow/table_grow.1.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class TableGrow1Module implements Module {
  TableGrow1Module() {
    segments.init();
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(16);

  @override
  late final List<Table> tables = [table0];

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  i32 grow() => _f();

  i32 _f() {
    var t0 = vm.table_grow(0, _f, -16);
    return t0;
  }

  List<Function> _initFunctionTable() {
    return [_f];
  }
}

typedef FunctionType0 = i32 Function();

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final TableGrow1Module module;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {}
}
