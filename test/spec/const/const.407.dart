// Generated from test/spec/const/const.407.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Const407Module implements Module {
  Const407Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f64 f() => _func0();

  f64 _func0() {
    final frame = Frame(this);
    frame.f64_const(-4.149515568880995e+180);
    return frame.pop();
  }
}

typedef FunctionType0 = f64 Function();
