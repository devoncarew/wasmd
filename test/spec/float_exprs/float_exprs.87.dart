// Generated from test/spec/float_exprs/float_exprs.87.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs87Module implements Module {
  FloatExprs87Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 f32_arithmetic_nan_bitpattern(i32 arg0, i32 arg1) => _func00(arg0, arg1);
  i32 f32_canonical_nan_bitpattern(i32 arg0, i32 arg1) => _func01(arg0, arg1);
  i32 f32_nonarithmetic_nan_bitpattern(i32 arg0) => _func02(arg0);
  i64 f64_arithmetic_nan_bitpattern(i64 arg0, i64 arg1) => _func03(arg0, arg1);
  i64 f64_canonical_nan_bitpattern(i64 arg0, i64 arg1) => _func04(arg0, arg1);
  i64 f64_nonarithmetic_nan_bitpattern(i64 arg0) => _func05(arg0);
  i32 f32_no_fold_sub_zero(i32 arg0) => _func06(arg0);
  i32 f32_no_fold_neg0_sub(i32 arg0) => _func07(arg0);
  i32 f32_no_fold_mul_one(i32 arg0) => _func08(arg0);
  i32 f32_no_fold_neg1_mul(i32 arg0) => _func09(arg0);
  i32 f32_no_fold_div_one(i32 arg0) => _func10(arg0);
  i32 f32_no_fold_div_neg1(i32 arg0) => _func11(arg0);
  i64 f64_no_fold_sub_zero(i64 arg0) => _func12(arg0);
  i64 f64_no_fold_neg0_sub(i64 arg0) => _func13(arg0);
  i64 f64_no_fold_mul_one(i64 arg0) => _func14(arg0);
  i64 f64_no_fold_neg1_mul(i64 arg0) => _func15(arg0);
  i64 f64_no_fold_div_one(i64 arg0) => _func16(arg0);
  i64 f64_no_fold_div_neg1(i64 arg0) => _func17(arg0);
  i32 no_fold_promote_demote(i32 arg0) => _func18(arg0);

  i32 _func00(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_reinterpret_i32();
    frame.push(y);
    frame.f32_reinterpret_i32();
    frame.f32_div();
    frame.i32_reinterpret_f32();
    frame.i32_const(0x7fc00000);
    frame.i32_and();
    return frame.pop();
  }

  i32 _func01(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_reinterpret_i32();
    frame.push(y);
    frame.f32_reinterpret_i32();
    frame.f32_div();
    frame.i32_reinterpret_f32();
    frame.i32_const(0x7fffffff);
    frame.i32_and();
    return frame.pop();
  }

  i32 _func02(i32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_reinterpret_i32();
    frame.f32_neg();
    frame.i32_reinterpret_f32();
    return frame.pop();
  }

  i64 _func03(i64 x, i64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_reinterpret_i64();
    frame.push(y);
    frame.f64_reinterpret_i64();
    frame.f64_div();
    frame.i64_reinterpret_f64();
    frame.i64_const(0x7ff8000000000000);
    frame.i64_and();
    return frame.pop();
  }

  i64 _func04(i64 x, i64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_reinterpret_i64();
    frame.push(y);
    frame.f64_reinterpret_i64();
    frame.f64_div();
    frame.i64_reinterpret_f64();
    frame.i64_const(0x7fffffffffffffff);
    frame.i64_and();
    return frame.pop();
  }

  i64 _func05(i64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_reinterpret_i64();
    frame.f64_neg();
    frame.i64_reinterpret_f64();
    return frame.pop();
  }

  i32 _func06(i32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_reinterpret_i32();
    frame.f32_const(0.0);
    frame.f32_sub();
    frame.i32_reinterpret_f32();
    frame.i32_const(0x7fc00000);
    frame.i32_and();
    return frame.pop();
  }

  i32 _func07(i32 x) {
    final frame = Frame(this);
    frame.f32_const(-0.0);
    frame.push(x);
    frame.f32_reinterpret_i32();
    frame.f32_sub();
    frame.i32_reinterpret_f32();
    frame.i32_const(0x7fc00000);
    frame.i32_and();
    return frame.pop();
  }

  i32 _func08(i32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_reinterpret_i32();
    frame.f32_const(1.0);
    frame.f32_mul();
    frame.i32_reinterpret_f32();
    frame.i32_const(0x7fc00000);
    frame.i32_and();
    return frame.pop();
  }

  i32 _func09(i32 x) {
    final frame = Frame(this);
    frame.f32_const(-1.0);
    frame.push(x);
    frame.f32_reinterpret_i32();
    frame.f32_mul();
    frame.i32_reinterpret_f32();
    frame.i32_const(0x7fc00000);
    frame.i32_and();
    return frame.pop();
  }

  i32 _func10(i32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_reinterpret_i32();
    frame.f32_const(1.0);
    frame.f32_div();
    frame.i32_reinterpret_f32();
    frame.i32_const(0x7fc00000);
    frame.i32_and();
    return frame.pop();
  }

  i32 _func11(i32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_reinterpret_i32();
    frame.f32_const(-1.0);
    frame.f32_div();
    frame.i32_reinterpret_f32();
    frame.i32_const(0x7fc00000);
    frame.i32_and();
    return frame.pop();
  }

  i64 _func12(i64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_reinterpret_i64();
    frame.f64_const(0.0);
    frame.f64_sub();
    frame.i64_reinterpret_f64();
    frame.i64_const(0x7ff8000000000000);
    frame.i64_and();
    return frame.pop();
  }

  i64 _func13(i64 x) {
    final frame = Frame(this);
    frame.f64_const(-0.0);
    frame.push(x);
    frame.f64_reinterpret_i64();
    frame.f64_sub();
    frame.i64_reinterpret_f64();
    frame.i64_const(0x7ff8000000000000);
    frame.i64_and();
    return frame.pop();
  }

  i64 _func14(i64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_reinterpret_i64();
    frame.f64_const(1.0);
    frame.f64_mul();
    frame.i64_reinterpret_f64();
    frame.i64_const(0x7ff8000000000000);
    frame.i64_and();
    return frame.pop();
  }

  i64 _func15(i64 x) {
    final frame = Frame(this);
    frame.f64_const(-1.0);
    frame.push(x);
    frame.f64_reinterpret_i64();
    frame.f64_mul();
    frame.i64_reinterpret_f64();
    frame.i64_const(0x7ff8000000000000);
    frame.i64_and();
    return frame.pop();
  }

  i64 _func16(i64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_reinterpret_i64();
    frame.f64_const(1.0);
    frame.f64_div();
    frame.i64_reinterpret_f64();
    frame.i64_const(0x7ff8000000000000);
    frame.i64_and();
    return frame.pop();
  }

  i64 _func17(i64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_reinterpret_i64();
    frame.f64_const(-1.0);
    frame.f64_div();
    frame.i64_reinterpret_f64();
    frame.i64_const(0x7ff8000000000000);
    frame.i64_and();
    return frame.pop();
  }

  i32 _func18(i32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_reinterpret_i32();
    frame.f64_promote_f32();
    frame.f32_demote_f64();
    frame.i32_reinterpret_f32();
    frame.i32_const(0x7fc00000);
    frame.i32_and();
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(i32, i32);
typedef FunctionType1 = i32 Function(i32);
typedef FunctionType2 = i64 Function(i64, i64);
typedef FunctionType3 = i64 Function(i64);
