// Generated from test/spec/exports/exports.14.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class Exports14Module extends Module {
  Exports14Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 a() => _func0();
  i32 b() => _func0();
  i32 c() => _func0();

  i32 _func0() {
    return 42;
  }
}

typedef FunctionType0 = i32 Function();
