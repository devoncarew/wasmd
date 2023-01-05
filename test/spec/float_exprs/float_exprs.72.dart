// Generated from test/spec/float_exprs/float_exprs.72.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs72Module implements Module {
  FloatExprs72Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_no_fold_mul_sqrts(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_sqrt();
    frame.push(y);
    frame.f32_sqrt();
    frame.f32_mul();
    return frame.pop();
  }

  f64 f64_no_fold_mul_sqrts(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_sqrt();
    frame.push(y);
    frame.f64_sqrt();
    frame.f64_mul();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32, f32);
typedef FunctionType1 = f64 Function(f64, f64);
