// Generated from test/spec/float_exprs/float_exprs.74.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs74Module implements Module {
  FloatExprs74Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_no_fold_mul_sqrt_div(f32 arg0, f32 arg1) => _func0(arg0, arg1);
  f64 f64_no_fold_mul_sqrt_div(f64 arg0, f64 arg1) => _func1(arg0, arg1);

  f32 _func0(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_sqrt();
    frame.f32_mul();
    frame.push(y);
    frame.f32_div();
    return frame.pop();
  }

  f64 _func1(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_sqrt();
    frame.f64_mul();
    frame.push(y);
    frame.f64_div();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32, f32);
typedef FunctionType1 = f64 Function(f64, f64);
