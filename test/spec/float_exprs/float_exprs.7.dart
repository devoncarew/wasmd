// Generated from test/spec/float_exprs/float_exprs.7.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs7Module implements Module {
  FloatExprs7Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_no_fold_zero_div(f32 x) {
    final frame = Frame(this);
    frame.f32_const(0.0);
    frame.push(x);
    frame.f32_div();
    return frame.pop();
  }

  f64 f64_no_fold_zero_div(f64 x) {
    final frame = Frame(this);
    frame.f64_const(0.0);
    frame.push(x);
    frame.f64_div();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32);
typedef FunctionType1 = f64 Function(f64);
