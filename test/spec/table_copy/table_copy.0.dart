// Generated from test/spec/table_copy/table_copy.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class TableCopy0Module extends Module {
  TableCopy0Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 ef0() => _func0();
  i32 ef1() => _func1();
  i32 ef2() => _func2();
  i32 ef3() => _func3();
  i32 ef4() => _func4();

  i32 _func0() {
    return 0;
  }

  i32 _func1() {
    return 1;
  }

  i32 _func2() {
    return 2;
  }

  i32 _func3() {
    return 3;
  }

  i32 _func4() {
    return 4;
  }
}

typedef FunctionType0 = i32 Function();
