// Generated from test/spec/float_exprs/float_exprs.47.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs47Module implements Module {
  FloatExprs47Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_incorrect_correction() {
    final frame = Frame(this);
    frame.f32_const(1.3329999446868896);
    frame.f32_const(1.225000023841858);
    frame.f32_add();
    frame.f32_const(1.3329999446868896);
    frame.f32_sub();
    frame.f32_const(1.225000023841858);
    frame.f32_sub();
    return frame.pop();
  }

  f64 f64_incorrect_correction() {
    final frame = Frame(this);
    frame.f64_const(1.333);
    frame.f64_const(1.225);
    frame.f64_add();
    frame.f64_const(1.333);
    frame.f64_sub();
    frame.f64_const(1.225);
    frame.f64_sub();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function();
typedef FunctionType1 = f64 Function();
