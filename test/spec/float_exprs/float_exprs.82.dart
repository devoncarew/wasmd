// Generated from test/spec/float_exprs/float_exprs.82.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs82Module implements Module {
  FloatExprs82Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 f32_no_fold_add_ge_monotonicity(f32 x, f32 y, f32 z) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(z);
    frame.f32_add();
    frame.push(y);
    frame.push(z);
    frame.f32_add();
    frame.f32_ge();
    return frame.pop();
  }

  i32 f32_no_fold_add_le_monotonicity(f32 x, f32 y, f32 z) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(z);
    frame.f32_add();
    frame.push(y);
    frame.push(z);
    frame.f32_add();
    frame.f32_le();
    return frame.pop();
  }

  i32 f64_no_fold_add_ge_monotonicity(f64 x, f64 y, f64 z) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(z);
    frame.f64_add();
    frame.push(y);
    frame.push(z);
    frame.f64_add();
    frame.f64_ge();
    return frame.pop();
  }

  i32 f64_no_fold_add_le_monotonicity(f64 x, f64 y, f64 z) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(z);
    frame.f64_add();
    frame.push(y);
    frame.push(z);
    frame.f64_add();
    frame.f64_le();
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(f32, f32, f32);
typedef FunctionType1 = i32 Function(f64, f64, f64);
