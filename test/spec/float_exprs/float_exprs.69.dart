// Generated from test/spec/float_exprs/float_exprs.69.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs69Module implements Module {
  FloatExprs69Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_no_fold_mul_divs(f32 arg0, f32 arg1, f32 arg2, f32 arg3) => _func0(arg0, arg1, arg2, arg3);
  f64 f64_no_fold_mul_divs(f64 arg0, f64 arg1, f64 arg2, f64 arg3) => _func1(arg0, arg1, arg2, arg3);

  f32 _func0(f32 x, f32 y, f32 z, f32 w) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_div();
    frame.push(z);
    frame.push(w);
    frame.f32_div();
    frame.f32_mul();
    return frame.pop();
  }

  f64 _func1(f64 x, f64 y, f64 z, f64 w) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_div();
    frame.push(z);
    frame.push(w);
    frame.f64_div();
    frame.f64_mul();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32, f32, f32, f32);
typedef FunctionType1 = f64 Function(f64, f64, f64, f64);
