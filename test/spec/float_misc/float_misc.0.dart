// Generated from test/spec/float_misc/float_misc.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatMisc0Module implements Module {
  FloatMisc0Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_abs(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_abs();
    return frame.pop();
  }

  f32 f32_add(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_add();
    return frame.pop();
  }

  f32 f32_ceil(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_ceil();
    return frame.pop();
  }

  f32 f32_copysign(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_copysign();
    return frame.pop();
  }

  f32 f32_div(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_div();
    return frame.pop();
  }

  f32 f32_floor(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_floor();
    return frame.pop();
  }

  f32 f32_max(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_max();
    return frame.pop();
  }

  f32 f32_min(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_min();
    return frame.pop();
  }

  f32 f32_mul(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_mul();
    return frame.pop();
  }

  f32 f32_nearest(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_nearest();
    return frame.pop();
  }

  f32 f32_neg(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_neg();
    return frame.pop();
  }

  f32 f32_sqrt(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_sqrt();
    return frame.pop();
  }

  f32 f32_sub(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_sub();
    return frame.pop();
  }

  f32 f32_trunc(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_trunc();
    return frame.pop();
  }

  f64 f64_abs(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_abs();
    return frame.pop();
  }

  f64 f64_add(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_add();
    return frame.pop();
  }

  f64 f64_ceil(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_ceil();
    return frame.pop();
  }

  f64 f64_copysign(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_copysign();
    return frame.pop();
  }

  f64 f64_div(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_div();
    return frame.pop();
  }

  f64 f64_floor(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_foor();
    return frame.pop();
  }

  f64 f64_max(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_max();
    return frame.pop();
  }

  f64 f64_min(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_min();
    return frame.pop();
  }

  f64 f64_mul(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_mul();
    return frame.pop();
  }

  f64 f64_nearest(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_nearest();
    return frame.pop();
  }

  f64 f64_neg(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_neg();
    return frame.pop();
  }

  f64 f64_sqrt(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_sqrt();
    return frame.pop();
  }

  f64 f64_sub(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_sub();
    return frame.pop();
  }

  f64 f64_trunc(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_trunc();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32, f32);
typedef FunctionType1 = f32 Function(f32);
typedef FunctionType2 = f64 Function(f64, f64);
typedef FunctionType3 = f64 Function(f64);
