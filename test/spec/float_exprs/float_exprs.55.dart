// Generated from test/spec/float_exprs/float_exprs.55.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs55Module implements Module {
  FloatExprs55Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_sqrt_minus_2(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_sqrt();
    frame.f32_const(2.0);
    frame.f32_sub();
    return frame.pop();
  }

  f64 f64_sqrt_minus_2(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_sqrt();
    frame.f64_const(2.0);
    frame.f64_sub();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32);
typedef FunctionType1 = f64 Function(f64);
