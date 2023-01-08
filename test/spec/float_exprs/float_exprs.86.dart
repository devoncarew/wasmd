// Generated from test/spec/float_exprs/float_exprs.86.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs86Module implements Module {
  FloatExprs86Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 f32_no_trichotomy_lt(f32 arg0, f32 arg1) => _func0(arg0, arg1);
  i32 f32_no_trichotomy_le(f32 arg0, f32 arg1) => _func1(arg0, arg1);
  i32 f32_no_trichotomy_gt(f32 arg0, f32 arg1) => _func2(arg0, arg1);
  i32 f32_no_trichotomy_ge(f32 arg0, f32 arg1) => _func3(arg0, arg1);
  i32 f64_no_trichotomy_lt(f64 arg0, f64 arg1) => _func4(arg0, arg1);
  i32 f64_no_trichotomy_le(f64 arg0, f64 arg1) => _func5(arg0, arg1);
  i32 f64_no_trichotomy_gt(f64 arg0, f64 arg1) => _func6(arg0, arg1);
  i32 f64_no_trichotomy_ge(f64 arg0, f64 arg1) => _func7(arg0, arg1);

  i32 _func0(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_lt();
    frame.push(x);
    frame.push(y);
    frame.f32_ge();
    frame.i32_or();
    return frame.pop();
  }

  i32 _func1(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_le();
    frame.push(x);
    frame.push(y);
    frame.f32_gt();
    frame.i32_or();
    return frame.pop();
  }

  i32 _func2(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_gt();
    frame.push(x);
    frame.push(y);
    frame.f32_le();
    frame.i32_or();
    return frame.pop();
  }

  i32 _func3(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_ge();
    frame.push(x);
    frame.push(y);
    frame.f32_lt();
    frame.i32_or();
    return frame.pop();
  }

  i32 _func4(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_lt();
    frame.push(x);
    frame.push(y);
    frame.f64_ge();
    frame.i32_or();
    return frame.pop();
  }

  i32 _func5(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_le();
    frame.push(x);
    frame.push(y);
    frame.f64_gt();
    frame.i32_or();
    return frame.pop();
  }

  i32 _func6(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_gt();
    frame.push(x);
    frame.push(y);
    frame.f64_le();
    frame.i32_or();
    return frame.pop();
  }

  i32 _func7(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_ge();
    frame.push(x);
    frame.push(y);
    frame.f64_lt();
    frame.i32_or();
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(f32, f32);
typedef FunctionType1 = i32 Function(f64, f64);
