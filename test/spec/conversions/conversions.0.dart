// Generated from test/spec/conversions/conversions.0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Module {
  Module();

  final Memory memory = Memory(0);

  i64 i64_extend_i32_s(i32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i64_extend_i32_s();
    return frame.pop();
  }

  i64 i64_extend_i32_u(i32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i64_extend_i32_u();
    return frame.pop();
  }

  i32 i32_wrap_i64(i64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i32_wrap_i64();
    return frame.pop();
  }

  i32 i32_trunc_f32_s(f32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i32_trunc_f32_s();
    return frame.pop();
  }

  i32 i32_trunc_f32_u(f32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i32_trunc_f32_u();
    return frame.pop();
  }

  i32 i32_trunc_f64_s(f64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i32_trunc_f64_s();
    return frame.pop();
  }

  i32 i32_trunc_f64_u(f64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i32_trunc_f64_u();
    return frame.pop();
  }

  i64 i64_trunc_f32_s(f32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i64_trunc_f32_s();
    return frame.pop();
  }

  i64 i64_trunc_f32_u(f32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i64_trunc_f32_u();
    return frame.pop();
  }

  i64 i64_trunc_f64_s(f64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i64_trunc_f64_s();
    return frame.pop();
  }

  i64 i64_trunc_f64_u(f64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i64_trunc_f64_u();
    return frame.pop();
  }

  i32 i32_trunc_sat_f32_s(f32 x) {
    final frame = Frame(memory);
    frame.push(x);
    throw 'unreachable (0xFC 0x00)';
  }

  i32 i32_trunc_sat_f32_u(f32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i32_trunc_sat_f32_u();
    return frame.pop();
  }

  i32 i32_trunc_sat_f64_s(f64 x) {
    final frame = Frame(memory);
    frame.push(x);
    throw 'unreachable (0xFC 0x02)';
  }

  i32 i32_trunc_sat_f64_u(f64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i32_trunc_sat_f64_u();
    return frame.pop();
  }

  i64 i64_trunc_sat_f32_s(f32 x) {
    final frame = Frame(memory);
    frame.push(x);
    throw 'unreachable (0xFC 0x04)';
  }

  i64 i64_trunc_sat_f32_u(f32 x) {
    final frame = Frame(memory);
    frame.push(x);
    throw 'unreachable (0xFC 0x05)';
  }

  i64 i64_trunc_sat_f64_s(f64 x) {
    final frame = Frame(memory);
    frame.push(x);
    throw 'unreachable (0xFC 0x06)';
  }

  i64 i64_trunc_sat_f64_u(f64 x) {
    final frame = Frame(memory);
    frame.push(x);
    throw 'unreachable (0xFC 0x07)';
  }

  f32 f32_convert_i32_s(i32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.f32_convert_i32_s();
    return frame.pop();
  }

  f32 f32_convert_i64_s(i64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.f32_convert_i64_s();
    return frame.pop();
  }

  f64 f64_convert_i32_s(i32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.f64_convert_i32_s();
    return frame.pop();
  }

  f64 f64_convert_i64_s(i64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.f64_convert_i64_s();
    return frame.pop();
  }

  f32 f32_convert_i32_u(i32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.f32_convert_i32_u();
    return frame.pop();
  }

  f32 f32_convert_i64_u(i64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.f32_convert_i64_u();
    return frame.pop();
  }

  f64 f64_convert_i32_u(i32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.f64_convert_i32_u();
    return frame.pop();
  }

  f64 f64_convert_i64_u(i64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.f64_convert_i64_u();
    return frame.pop();
  }

  f64 f64_promote_f32(f32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.f64_promote_f32();
    return frame.pop();
  }

  f32 f32_demote_f64(f64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.f32_demote_f64();
    return frame.pop();
  }

  f32 f32_reinterpret_i32(i32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.f32_reinterpret_i32();
    return frame.pop();
  }

  f64 f64_reinterpret_i64(i64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.f64_reinterpret_i64();
    return frame.pop();
  }

  i32 i32_reinterpret_f32(f32 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i64 i64_reinterpret_f64(f64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i64_reinterpret_f64();
    return frame.pop();
  }
}

typedef FunctionType0 = i64 Function(i32);
typedef FunctionType1 = i32 Function(i64);
typedef FunctionType2 = i32 Function(f32);
typedef FunctionType3 = i32 Function(f64);
typedef FunctionType4 = i64 Function(f32);
typedef FunctionType5 = i64 Function(f64);
typedef FunctionType6 = f32 Function(i32);
typedef FunctionType7 = f32 Function(i64);
typedef FunctionType8 = f64 Function(i32);
typedef FunctionType9 = f64 Function(i64);
typedef FunctionType10 = f64 Function(f32);
typedef FunctionType11 = f32 Function(f64);
