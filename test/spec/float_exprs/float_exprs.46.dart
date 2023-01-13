// Generated from test/spec/float_exprs/float_exprs.46.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs46Module implements Module {
  FloatExprs46Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_no_fold_lt_if_to_abs(f32 arg0) => _func0(arg0);
  f32 f32_no_fold_le_if_to_abs(f32 arg0) => _func1(arg0);
  f32 f32_no_fold_gt_if_to_abs(f32 arg0) => _func2(arg0);
  f32 f32_no_fold_ge_if_to_abs(f32 arg0) => _func3(arg0);
  f64 f64_no_fold_lt_if_to_abs(f64 arg0) => _func4(arg0);
  f64 f64_no_fold_le_if_to_abs(f64 arg0) => _func5(arg0);
  f64 f64_no_fold_gt_if_to_abs(f64 arg0) => _func6(arg0);
  f64 f64_no_fold_ge_if_to_abs(f64 arg0) => _func7(arg0);

  f32 _func0(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_const(0.0);
    frame.f32_lt();
    if_label_0: // => f32
    if (frame.pop() != 0) {
      frame.push(x);
      frame.f32_neg();
    } else {
      frame.push(x);
    }
    return frame.pop();
  }

  f32 _func1(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_const(-0.0);
    frame.f32_le();
    if_label_0: // => f32
    if (frame.pop() != 0) {
      frame.push(x);
      frame.f32_neg();
    } else {
      frame.push(x);
    }
    return frame.pop();
  }

  f32 _func2(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_const(-0.0);
    frame.f32_gt();
    if_label_0: // => f32
    if (frame.pop() != 0) {
      frame.push(x);
    } else {
      frame.push(x);
      frame.f32_neg();
    }
    return frame.pop();
  }

  f32 _func3(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_const(0.0);
    frame.f32_ge();
    if_label_0: // => f32
    if (frame.pop() != 0) {
      frame.push(x);
    } else {
      frame.push(x);
      frame.f32_neg();
    }
    return frame.pop();
  }

  f64 _func4(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_const(0.0);
    frame.f64_lt();
    if_label_0: // => f64
    if (frame.pop() != 0) {
      frame.push(x);
      frame.f64_neg();
    } else {
      frame.push(x);
    }
    return frame.pop();
  }

  f64 _func5(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_const(-0.0);
    frame.f64_le();
    if_label_0: // => f64
    if (frame.pop() != 0) {
      frame.push(x);
      frame.f64_neg();
    } else {
      frame.push(x);
    }
    return frame.pop();
  }

  f64 _func6(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_const(-0.0);
    frame.f64_gt();
    if_label_0: // => f64
    if (frame.pop() != 0) {
      frame.push(x);
    } else {
      frame.push(x);
      frame.f64_neg();
    }
    return frame.pop();
  }

  f64 _func7(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_const(0.0);
    frame.f64_ge();
    if_label_0: // => f64
    if (frame.pop() != 0) {
      frame.push(x);
    } else {
      frame.push(x);
      frame.f64_neg();
    }
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32);
typedef FunctionType1 = f64 Function(f64);
