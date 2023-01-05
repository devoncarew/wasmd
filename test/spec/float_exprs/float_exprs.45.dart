// Generated from test/spec/float_exprs/float_exprs.45.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs45Module implements Module {
  FloatExprs45Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_no_fold_ge_select_to_abs(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(x);
    frame.f32_neg();
    frame.push(x);
    frame.f32_const(0.0);
    frame.f32_ge();
    frame.select();
    return frame.pop();
  }

  f32 f32_no_fold_gt_select_to_abs(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(x);
    frame.f32_neg();
    frame.push(x);
    frame.f32_const(-0.0);
    frame.f32_gt();
    frame.select();
    return frame.pop();
  }

  f32 f32_no_fold_le_select_to_abs(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_neg();
    frame.push(x);
    frame.push(x);
    frame.f32_const(-0.0);
    frame.f32_le();
    frame.select();
    return frame.pop();
  }

  f32 f32_no_fold_lt_select_to_abs(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_neg();
    frame.push(x);
    frame.push(x);
    frame.f32_const(0.0);
    frame.f32_lt();
    frame.select();
    return frame.pop();
  }

  f64 f64_no_fold_ge_select_to_abs(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(x);
    frame.f64_neg();
    frame.push(x);
    frame.f64_const(0.0);
    frame.f64_ge();
    frame.select();
    return frame.pop();
  }

  f64 f64_no_fold_gt_select_to_abs(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(x);
    frame.f64_neg();
    frame.push(x);
    frame.f64_const(-0.0);
    frame.f64_gt();
    frame.select();
    return frame.pop();
  }

  f64 f64_no_fold_le_select_to_abs(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_neg();
    frame.push(x);
    frame.push(x);
    frame.f64_const(-0.0);
    frame.f64_le();
    frame.select();
    return frame.pop();
  }

  f64 f64_no_fold_lt_select_to_abs(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_neg();
    frame.push(x);
    frame.push(x);
    frame.f64_const(0.0);
    frame.f64_lt();
    frame.select();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32);
typedef FunctionType1 = f64 Function(f64);
