// Generated from test/spec/float_exprs/float_exprs.43.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs43Module implements Module {
  FloatExprs43Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_no_fold_lt_select(f32 arg0, f32 arg1) => _func0(arg0, arg1);
  f32 f32_no_fold_le_select(f32 arg0, f32 arg1) => _func1(arg0, arg1);
  f32 f32_no_fold_gt_select(f32 arg0, f32 arg1) => _func2(arg0, arg1);
  f32 f32_no_fold_ge_select(f32 arg0, f32 arg1) => _func3(arg0, arg1);
  f64 f64_no_fold_lt_select(f64 arg0, f64 arg1) => _func4(arg0, arg1);
  f64 f64_no_fold_le_select(f64 arg0, f64 arg1) => _func5(arg0, arg1);
  f64 f64_no_fold_gt_select(f64 arg0, f64 arg1) => _func6(arg0, arg1);
  f64 f64_no_fold_ge_select(f64 arg0, f64 arg1) => _func7(arg0, arg1);

  f32 _func0(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.push(x);
    frame.push(y);
    frame.f32_lt();
    frame.select();
    return frame.pop();
  }

  f32 _func1(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.push(x);
    frame.push(y);
    frame.f32_le();
    frame.select();
    return frame.pop();
  }

  f32 _func2(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.push(x);
    frame.push(y);
    frame.f32_gt();
    frame.select();
    return frame.pop();
  }

  f32 _func3(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.push(x);
    frame.push(y);
    frame.f32_ge();
    frame.select();
    return frame.pop();
  }

  f64 _func4(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.push(x);
    frame.push(y);
    frame.f64_lt();
    frame.select();
    return frame.pop();
  }

  f64 _func5(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.push(x);
    frame.push(y);
    frame.f64_le();
    frame.select();
    return frame.pop();
  }

  f64 _func6(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.push(x);
    frame.push(y);
    frame.f64_gt();
    frame.select();
    return frame.pop();
  }

  f64 _func7(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.push(x);
    frame.push(y);
    frame.f64_ge();
    frame.select();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32, f32);
typedef FunctionType1 = f64 Function(f64, f64);
