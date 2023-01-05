// Generated from test/spec/float_exprs/float_exprs.95.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs95Module implements Module {
  FloatExprs95Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_no_fold_conditional_inc(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(x);
    frame.f32_const(1.0);
    frame.f32_add();
    frame.push(y);
    frame.f32_const(0.0);
    frame.f32_lt();
    frame.select();
    return frame.pop();
  }

  f64 f64_no_fold_conditional_inc(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(x);
    frame.f64_const(1.0);
    frame.f64_add();
    frame.push(y);
    frame.f64_const(0.0);
    frame.f64_lt();
    frame.select();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32, f32);
typedef FunctionType1 = f64 Function(f64, f64);
