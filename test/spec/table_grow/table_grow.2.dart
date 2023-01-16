// Generated from test/spec/table_grow/table_grow.2.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class TableGrow2Module implements Module {
  TableGrow2Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(0);

  @override
  late final List<Table> tables = [table0];

  i32 grow(i32 arg0) => _func0(arg0);

  i32 _func0(i32 arg0) {
    var t0 = vm.table_grow(0, null, arg0);
    return t0;
  }
}

typedef FunctionType0 = i32 Function(i32);
