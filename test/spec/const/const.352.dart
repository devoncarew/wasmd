// Generated from test/spec/const/const.352.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Const352Module implements Module {
  Const352Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f64 f() => _func0();

  f64 _func0() {
    final frame = Frame(this);
    frame.f64_const(2.4099198651028847e-181);
    return frame.pop();
  }
}

typedef FunctionType0 = f64 Function();
