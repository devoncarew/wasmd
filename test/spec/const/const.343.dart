// Generated from test/spec/const/const.343.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class Const343Module extends Module {
  Const343Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f64 f() => _func0();

  f64 _func0() {
    return -2.409919865102885e-181;
  }
}

typedef FunctionType0 = f64 Function();
