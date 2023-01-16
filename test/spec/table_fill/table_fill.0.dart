// Generated from test/spec/table_fill/table_fill.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class TableFill0Module implements Module {
  TableFill0Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(10);

  @override
  late final List<Table> tables = [table0];

  void fill(i32 arg0, ExternRef? arg1, i32 arg2) => _func0(arg0, arg1, arg2);
  ExternRef? get(i32 arg0) => _func1(arg0);

  void _func0(i32 i, ExternRef? r, i32 n) {
    vm.table_fill(0, i, r, n);
  }

  ExternRef? _func1(i32 i) {
    return table0[i];
  }
}

typedef FunctionType0 = void Function(i32, ExternRef?, i32);
typedef FunctionType1 = ExternRef? Function(i32);
