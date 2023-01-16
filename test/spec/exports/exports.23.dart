// Generated from test/spec/exports/exports.23.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class Exports23Module extends Module {
  Exports23Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  final Globals globals = Globals();

  @override
  late final List<Table> tables = [];

  i32 get a => globals.global0;
}

class Globals {
  final i32 global0 = 0;
}
