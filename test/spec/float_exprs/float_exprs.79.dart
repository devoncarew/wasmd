// Generated from test/spec/float_exprs/float_exprs.79.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs79Module implements Module {
  FloatExprs79Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_sqrt(f32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.f32_sqrt();
    return frame.pop();
  }

  f32 f32_xkcd_sqrt_2(f32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.f32_div();
    frame.push(arg2);
    frame.push(arg3);
    frame.push(arg2);
    frame.f32_sub();
    frame.f32_div();
    frame.f32_add();
    return frame.pop();
  }

  f32 f32_xkcd_sqrt_3(f32 arg0, f32 arg1, f32 arg2) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.f32_mul();
    frame.push(arg2);
    frame.f32_div();
    return frame.pop();
  }

  f32 f32_xkcd_sqrt_5(f32 arg0, f32 arg1, f32 arg2) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.f32_div();
    frame.push(arg2);
    frame.push(arg0);
    frame.f32_div();
    frame.f32_add();
    return frame.pop();
  }

  f32 f32_xkcd_better_sqrt_5(f32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.push(arg2);
    frame.f32_mul();
    frame.f32_add();
    frame.push(arg3);
    frame.push(arg1);
    frame.push(arg2);
    frame.f32_mul();
    frame.f32_sub();
    frame.f32_div();
    return frame.pop();
  }

  f64 f64_sqrt(f64 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.f64_sqrt();
    return frame.pop();
  }

  f64 f64_xkcd_sqrt_2(f64 arg0, f64 arg1, f64 arg2, f64 arg3) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.f64_div();
    frame.push(arg2);
    frame.push(arg3);
    frame.push(arg2);
    frame.f64_sub();
    frame.f64_div();
    frame.f64_add();
    return frame.pop();
  }

  f64 f64_xkcd_sqrt_3(f64 arg0, f64 arg1, f64 arg2) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.f64_mul();
    frame.push(arg2);
    frame.f64_div();
    return frame.pop();
  }

  f64 f64_xkcd_sqrt_5(f64 arg0, f64 arg1, f64 arg2) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.f64_div();
    frame.push(arg2);
    frame.push(arg0);
    frame.f64_div();
    frame.f64_add();
    return frame.pop();
  }

  f64 f64_xkcd_better_sqrt_5(f64 arg0, f64 arg1, f64 arg2, f64 arg3) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.push(arg2);
    frame.f64_mul();
    frame.f64_add();
    frame.push(arg3);
    frame.push(arg1);
    frame.push(arg2);
    frame.f64_mul();
    frame.f64_sub();
    frame.f64_div();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32);
typedef FunctionType1 = f32 Function(f32, f32, f32, f32);
typedef FunctionType2 = f32 Function(f32, f32, f32);
typedef FunctionType3 = f64 Function(f64);
typedef FunctionType4 = f64 Function(f64, f64, f64, f64);
typedef FunctionType5 = f64 Function(f64, f64, f64);
