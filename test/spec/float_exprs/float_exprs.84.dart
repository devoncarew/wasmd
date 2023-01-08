// Generated from test/spec/float_exprs/float_exprs.84.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs84Module implements Module {
  FloatExprs84Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_epsilon() => _func0();
  f64 f64_epsilon() => _func1();

  f32 _func0() {
    final frame = Frame(this);
    frame.f32_const(1.0);
    frame.f32_const(3.0);
    frame.f32_const(4.0);
    frame.f32_const(3.0);
    frame.f32_div();
    frame.f32_const(1.0);
    frame.f32_sub();
    frame.f32_mul();
    frame.f32_sub();
    return frame.pop();
  }

  f64 _func1() {
    final frame = Frame(this);
    frame.f64_const(1.0);
    frame.f64_const(3.0);
    frame.f64_const(4.0);
    frame.f64_const(3.0);
    frame.f64_div();
    frame.f64_const(1.0);
    frame.f64_sub();
    frame.f64_mul();
    frame.f64_sub();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function();
typedef FunctionType1 = f64 Function();
