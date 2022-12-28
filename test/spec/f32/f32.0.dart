// Generated from test/spec/f32/f32.0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class F320Module implements Module {
  F320Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 add(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_add();
    return frame.pop();
  }

  f32 sub(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_sub();
    return frame.pop();
  }

  f32 mul(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_mul();
    return frame.pop();
  }

  f32 div(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_div();
    return frame.pop();
  }

  f32 sqrt(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_sqrt();
    return frame.pop();
  }

  f32 min(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_min();
    return frame.pop();
  }

  f32 max(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_max();
    return frame.pop();
  }

  f32 ceil(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_ceil();
    return frame.pop();
  }

  f32 floor(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_floor();
    return frame.pop();
  }

  f32 trunc(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_trunc();
    return frame.pop();
  }

  f32 nearest(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_nearest();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32, f32);
typedef FunctionType1 = f32 Function(f32);
