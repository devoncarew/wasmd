// Generated from test/spec/const/const.300.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Const300Module implements Module {
  Const300Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f() => _func0();

  f32 _func0() {
    final frame = Frame(this);
    frame.f32_const(2.802596928649634e-45);
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function();
