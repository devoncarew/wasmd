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

  f32 f32_add(f32 arg0, f32 arg1) => _func00(arg0, arg1);
  f32 f32_sub(f32 arg0, f32 arg1) => _func01(arg0, arg1);
  f32 f32_mul(f32 arg0, f32 arg1) => _func02(arg0, arg1);
  f32 f32_div(f32 arg0, f32 arg1) => _func03(arg0, arg1);
  f32 f32_sqrt(f32 arg0) => _func04(arg0);
  f32 f32_abs(f32 arg0) => _func05(arg0);
  f32 f32_neg(f32 arg0) => _func06(arg0);
  f32 f32_copysign(f32 arg0, f32 arg1) => _func07(arg0, arg1);
  f32 f32_ceil(f32 arg0) => _func08(arg0);
  f32 f32_floor(f32 arg0) => _func09(arg0);
  f32 f32_trunc(f32 arg0) => _func10(arg0);
  f32 f32_nearest(f32 arg0) => _func11(arg0);
  f32 f32_min(f32 arg0, f32 arg1) => _func12(arg0, arg1);
  f32 f32_max(f32 arg0, f32 arg1) => _func13(arg0, arg1);
  f64 f64_add(f64 arg0, f64 arg1) => _func14(arg0, arg1);
  f64 f64_sub(f64 arg0, f64 arg1) => _func15(arg0, arg1);
  f64 f64_mul(f64 arg0, f64 arg1) => _func16(arg0, arg1);
  f64 f64_div(f64 arg0, f64 arg1) => _func17(arg0, arg1);
  f64 f64_sqrt(f64 arg0) => _func18(arg0);
  f64 f64_abs(f64 arg0) => _func19(arg0);
  f64 f64_neg(f64 arg0) => _func20(arg0);
  f64 f64_copysign(f64 arg0, f64 arg1) => _func21(arg0, arg1);
  f64 f64_ceil(f64 arg0) => _func22(arg0);
  f64 f64_floor(f64 arg0) => _func23(arg0);
  f64 f64_trunc(f64 arg0) => _func24(arg0);
  f64 f64_nearest(f64 arg0) => _func25(arg0);
  f64 f64_min(f64 arg0, f64 arg1) => _func26(arg0, arg1);
  f64 f64_max(f64 arg0, f64 arg1) => _func27(arg0, arg1);

  f32 _func00(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_add();
    return frame.pop();
  }

  f32 _func01(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_sub();
    return frame.pop();
  }

  f32 _func02(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_mul();
    return frame.pop();
  }

  f32 _func03(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_div();
    return frame.pop();
  }

  f32 _func04(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_sqrt();
    return frame.pop();
  }

  f32 _func05(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_abs();
    return frame.pop();
  }

  f32 _func06(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_neg();
    return frame.pop();
  }

  f32 _func07(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_copysign();
    return frame.pop();
  }

  f32 _func08(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_ceil();
    return frame.pop();
  }

  f32 _func09(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_floor();
    return frame.pop();
  }

  f32 _func10(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_trunc();
    return frame.pop();
  }

  f32 _func11(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_nearest();
    return frame.pop();
  }

  f32 _func12(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_min();
    return frame.pop();
  }

  f32 _func13(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_max();
    return frame.pop();
  }

  f64 _func14(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_add();
    return frame.pop();
  }

  f64 _func15(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_sub();
    return frame.pop();
  }

  f64 _func16(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_mul();
    return frame.pop();
  }

  f64 _func17(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_div();
    return frame.pop();
  }

  f64 _func18(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_sqrt();
    return frame.pop();
  }

  f64 _func19(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_abs();
    return frame.pop();
  }

  f64 _func20(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_neg();
    return frame.pop();
  }

  f64 _func21(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_copysign();
    return frame.pop();
  }

  f64 _func22(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_ceil();
    return frame.pop();
  }

  f64 _func23(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_foor();
    return frame.pop();
  }

  f64 _func24(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_trunc();
    return frame.pop();
  }

  f64 _func25(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_nearest();
    return frame.pop();
  }

  f64 _func26(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_min();
    return frame.pop();
  }

  f64 _func27(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_max();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32, f32);
typedef FunctionType1 = f32 Function(f32);
typedef FunctionType2 = f64 Function(f64, f64);
typedef FunctionType3 = f64 Function(f64);
