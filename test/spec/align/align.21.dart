// Generated from test/spec/align/align.21.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class Align21Module implements Module {
  Align21Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  void _func0() {
    var t0 = vm.f32_store(2, 0, 0, 1.0);
  }
}

typedef FunctionType0 = void Function();
