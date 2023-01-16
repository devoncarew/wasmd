// Generated from test/spec/const/const.276.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class Const276Module extends Module {
  Const276Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f() => _func0();

  f32 _func0() {
    return 1125900041060352.0;
  }
}

typedef FunctionType0 = f32 Function();
