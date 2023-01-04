// Generated from test/spec/float_exprs/float_exprs.39.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs39Module implements Module {
  FloatExprs39Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_i32_no_fold_trunc_s_convert_s(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_trunc_f32_s();
    frame.f32_convert_i32_s();
    return frame.pop();
  }

  f32 f32_i32_no_fold_trunc_u_convert_s(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_trunc_f32_u();
    frame.f32_convert_i32_s();
    return frame.pop();
  }

  f32 f32_i32_no_fold_trunc_s_convert_u(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_trunc_f32_s();
    frame.f32_convert_i32_u();
    return frame.pop();
  }

  f32 f32_i32_no_fold_trunc_u_convert_u(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_trunc_f32_u();
    frame.f32_convert_i32_u();
    return frame.pop();
  }

  f64 f64_i32_no_fold_trunc_s_convert_s(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_trunc_f64_s();
    frame.f64_convert_i32_s();
    return frame.pop();
  }

  f64 f64_i32_no_fold_trunc_u_convert_s(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_trunc_f64_u();
    frame.f64_convert_i32_s();
    return frame.pop();
  }

  f64 f64_i32_no_fold_trunc_s_convert_u(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_trunc_f64_s();
    frame.f64_convert_i32_u();
    return frame.pop();
  }

  f64 f64_i32_no_fold_trunc_u_convert_u(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_trunc_f64_u();
    frame.f64_convert_i32_u();
    return frame.pop();
  }

  f32 f32_i64_no_fold_trunc_s_convert_s(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i64_trunc_f32_s();
    frame.f32_convert_i64_s();
    return frame.pop();
  }

  f32 f32_i64_no_fold_trunc_u_convert_s(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i64_trunc_f32_u();
    frame.f32_convert_i64_s();
    return frame.pop();
  }

  f32 f32_i64_no_fold_trunc_s_convert_u(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i64_trunc_f32_s();
    frame.f32_convert_i64_u();
    return frame.pop();
  }

  f32 f32_i64_no_fold_trunc_u_convert_u(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i64_trunc_f32_u();
    frame.f32_convert_i64_u();
    return frame.pop();
  }

  f64 f64_i64_no_fold_trunc_s_convert_s(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i64_trunc_f64_s();
    frame.f64_convert_i64_s();
    return frame.pop();
  }

  f64 f64_i64_no_fold_trunc_u_convert_s(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i64_trunc_f64_u();
    frame.f64_convert_i64_s();
    return frame.pop();
  }

  f64 f64_i64_no_fold_trunc_s_convert_u(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i64_trunc_f64_s();
    frame.f64_convert_i64_u();
    return frame.pop();
  }

  f64 f64_i64_no_fold_trunc_u_convert_u(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i64_trunc_f64_u();
    frame.f64_convert_i64_u();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32);
typedef FunctionType1 = f64 Function(f64);
