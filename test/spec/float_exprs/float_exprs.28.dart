// Generated from test/spec/float_exprs/float_exprs.28.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs28Module implements Module {
  FloatExprs28Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_no_approximate_sqrt_reciprocal(f32 x) {
    final frame = Frame(this);
    frame.f32_const(1.0);
    frame.push(x);
    frame.f32_div();
    frame.f32_sqrt();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32);
