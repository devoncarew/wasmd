// Generated from test/spec/float_exprs/float_exprs.76.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs76Module implements Module {
  FloatExprs76Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 f32_recoding_eq(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_mul();
    frame.push(x);
    frame.f32_eq();
    return frame.pop();
  }

  i32 f32_recoding_le(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_mul();
    frame.push(x);
    frame.f32_le();
    return frame.pop();
  }

  i32 f32_recoding_lt(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_mul();
    frame.push(x);
    frame.f32_lt();
    return frame.pop();
  }

  i32 f64_recoding_eq(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_mul();
    frame.push(x);
    frame.f64_eq();
    return frame.pop();
  }

  i32 f64_recoding_le(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_mul();
    frame.push(x);
    frame.f64_le();
    return frame.pop();
  }

  i32 f64_recoding_lt(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_mul();
    frame.push(x);
    frame.f64_lt();
    return frame.pop();
  }

  f32 recoding_demote(f64 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_demote_f64();
    frame.push(y);
    frame.f32_mul();
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(f32, f32);
typedef FunctionType1 = i32 Function(f64, f64);
typedef FunctionType2 = f32 Function(f64, f32);
