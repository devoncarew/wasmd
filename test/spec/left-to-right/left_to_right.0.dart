// Generated from test/spec/left-to-right/left_to_right.0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class LeftToRight0Module implements Module {
  LeftToRight0Module() {
    segments.init();
  }

  @override
  final Memory memory = Memory(1);

  final Table table0 = Table(
    8,
    8,
  );

  @override
  late final List<Table> tables = [table0];

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  i32 i32_t0(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 i32_t1(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.i32_const(-2);
    return frame.pop();
  }

  i32 i64_t0(i64 arg0, i64 arg1) {
    final frame = Frame(this);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 i64_t1(i64 arg0, i64 arg1) {
    final frame = Frame(this);
    frame.i32_const(-2);
    return frame.pop();
  }

  i32 f32_t0(f32 arg0, f32 arg1) {
    final frame = Frame(this);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 f32_t1(f32 arg0, f32 arg1) {
    final frame = Frame(this);
    frame.i32_const(-2);
    return frame.pop();
  }

  i32 f64_t0(f64 arg0, f64 arg1) {
    final frame = Frame(this);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 f64_t1(f64 arg0, f64 arg1) {
    final frame = Frame(this);
    frame.i32_const(-2);
    return frame.pop();
  }

  void reset() {
    final frame = Frame(this);
    frame.i32_const(8);
    frame.i32_const(0);
    frame.i32_store(2, 0);
  }

  void bump() {
    final frame = Frame(this);
    frame.i32_const(11);
    frame.i32_const(10);
    frame.i32_load8_u(0, 0);
    frame.i32_store8(0, 0);
    frame.i32_const(10);
    frame.i32_const(9);
    frame.i32_load8_u(0, 0);
    frame.i32_store8(0, 0);
    frame.i32_const(9);
    frame.i32_const(8);
    frame.i32_load8_u(0, 0);
    frame.i32_store8(0, 0);
    frame.i32_const(8);
    frame.i32_const(-3);
    frame.i32_store8(0, 0);
  }

  i32 get() {
    final frame = Frame(this);
    frame.i32_const(8);
    frame.i32_load(2, 0);
    return frame.pop();
  }

  i32 i32_left() {
    final frame = Frame(this);
    bump();
    frame.i32_const(8);
    frame.i32_const(1);
    frame.i32_store8(0, 0);
    frame.i32_const(0);
    return frame.pop();
  }

  i32 i32_right() {
    final frame = Frame(this);
    bump();
    frame.i32_const(8);
    frame.i32_const(2);
    frame.i32_store8(0, 0);
    frame.i32_const(1);
    return frame.pop();
  }

  i32 i32_another() {
    final frame = Frame(this);
    bump();
    frame.i32_const(8);
    frame.i32_const(3);
    frame.i32_store8(0, 0);
    frame.i32_const(1);
    return frame.pop();
  }

  i32 i32_callee() {
    final frame = Frame(this);
    bump();
    frame.i32_const(8);
    frame.i32_const(4);
    frame.i32_store8(0, 0);
    frame.i32_const(0);
    return frame.pop();
  }

  i32 i32_bool() {
    final frame = Frame(this);
    bump();
    frame.i32_const(8);
    frame.i32_const(5);
    frame.i32_store8(0, 0);
    frame.i32_const(0);
    return frame.pop();
  }

  i64 i64_left() {
    final frame = Frame(this);
    bump();
    frame.i32_const(8);
    frame.i32_const(1);
    frame.i32_store8(0, 0);
    frame.i64_const(0);
    return frame.pop();
  }

  i64 i64_right() {
    final frame = Frame(this);
    bump();
    frame.i32_const(8);
    frame.i32_const(2);
    frame.i32_store8(0, 0);
    frame.i64_const(1);
    return frame.pop();
  }

  i64 i64_another() {
    final frame = Frame(this);
    bump();
    frame.i32_const(8);
    frame.i32_const(3);
    frame.i32_store8(0, 0);
    frame.i64_const(1);
    return frame.pop();
  }

  i32 i64_callee() {
    final frame = Frame(this);
    bump();
    frame.i32_const(8);
    frame.i32_const(4);
    frame.i32_store8(0, 0);
    frame.i32_const(2);
    return frame.pop();
  }

  i32 i64_bool() {
    final frame = Frame(this);
    bump();
    frame.i32_const(8);
    frame.i32_const(5);
    frame.i32_store8(0, 0);
    frame.i32_const(0);
    return frame.pop();
  }

  f32 f32_left() {
    final frame = Frame(this);
    bump();
    frame.i32_const(8);
    frame.i32_const(1);
    frame.i32_store8(0, 0);
    frame.f32_const(0.0);
    return frame.pop();
  }

  f32 f32_right() {
    final frame = Frame(this);
    bump();
    frame.i32_const(8);
    frame.i32_const(2);
    frame.i32_store8(0, 0);
    frame.f32_const(1.0);
    return frame.pop();
  }

  f32 f32_another() {
    final frame = Frame(this);
    bump();
    frame.i32_const(8);
    frame.i32_const(3);
    frame.i32_store8(0, 0);
    frame.f32_const(1.0);
    return frame.pop();
  }

  i32 f32_callee() {
    final frame = Frame(this);
    bump();
    frame.i32_const(8);
    frame.i32_const(4);
    frame.i32_store8(0, 0);
    frame.i32_const(4);
    return frame.pop();
  }

  i32 f32_bool() {
    final frame = Frame(this);
    bump();
    frame.i32_const(8);
    frame.i32_const(5);
    frame.i32_store8(0, 0);
    frame.i32_const(0);
    return frame.pop();
  }

  f64 f64_left() {
    final frame = Frame(this);
    bump();
    frame.i32_const(8);
    frame.i32_const(1);
    frame.i32_store8(0, 0);
    frame.f64_const(0.0);
    return frame.pop();
  }

  f64 f64_right() {
    final frame = Frame(this);
    bump();
    frame.i32_const(8);
    frame.i32_const(2);
    frame.i32_store8(0, 0);
    frame.f64_const(1.0);
    return frame.pop();
  }

  f64 f64_another() {
    final frame = Frame(this);
    bump();
    frame.i32_const(8);
    frame.i32_const(3);
    frame.i32_store8(0, 0);
    frame.f64_const(1.0);
    return frame.pop();
  }

  i32 f64_callee() {
    final frame = Frame(this);
    bump();
    frame.i32_const(8);
    frame.i32_const(4);
    frame.i32_store8(0, 0);
    frame.i32_const(6);
    return frame.pop();
  }

  i32 f64_bool() {
    final frame = Frame(this);
    bump();
    frame.i32_const(8);
    frame.i32_const(5);
    frame.i32_store8(0, 0);
    frame.i32_const(0);
    return frame.pop();
  }

  void i32_dummy(i32 arg0, i32 arg1) {
    final frame = Frame(this);
  }

  void i64_dummy(i64 arg0, i64 arg1) {
    final frame = Frame(this);
  }

  void f32_dummy(f32 arg0, f32 arg1) {
    final frame = Frame(this);
  }

  void f64_dummy(f64 arg0, f64 arg1) {
    final frame = Frame(this);
  }

  i32 i32_add() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_add();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_sub() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_sub();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_mul() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_mul();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_div_s() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_div_s();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_div_u() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_div_u();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_rem_s() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_rem_s();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_rem_u() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_rem_u();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_and() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_and();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_or() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_or();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_xor() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_xor();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_shl() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_shl();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_shr_u() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_shr_u();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_shr_s() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_shr_s();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_eq() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_eq();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_ne() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_ne();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_lt_s() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_lt_s();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_le_s() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_le_s();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_lt_u() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_lt_u();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_le_u() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_le_u();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_gt_s() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_gt_s();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_ge_s() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_ge_s();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_gt_u() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_gt_u();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_ge_u() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_ge_u();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_store() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_store(2, 0);
    frame.push(get());
    return frame.pop();
  }

  i32 i32_store8() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_store8(0, 0);
    frame.push(get());
    return frame.pop();
  }

  i32 i32_store16() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_store16(1, 0);
    frame.push(get());
    return frame.pop();
  }

  i32 i32_call() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      i32_dummy(t0, t1);
    }
    frame.push(get());
    return frame.pop();
  }

  i32 i32_call_indirect() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.push(i32_callee());
    {
      var func = table0[frame.pop()]! as FunctionType0;
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1));
    }
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_select() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.push(i32_bool());
    frame.select();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_add() {
    final frame = Frame(this);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_add();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_sub() {
    final frame = Frame(this);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_sub();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_mul() {
    final frame = Frame(this);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_mul();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_div_s() {
    final frame = Frame(this);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_div_s();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_div_u() {
    final frame = Frame(this);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_div_u();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_rem_s() {
    final frame = Frame(this);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_rem_s();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_rem_u() {
    final frame = Frame(this);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_rem_u();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_and() {
    final frame = Frame(this);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_and();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_or() {
    final frame = Frame(this);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_or();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_xor() {
    final frame = Frame(this);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_xor();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_shl() {
    final frame = Frame(this);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_shl();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_shr_u() {
    final frame = Frame(this);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_shr_u();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_shr_s() {
    final frame = Frame(this);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_shr_s();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_eq() {
    final frame = Frame(this);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_eq();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_ne() {
    final frame = Frame(this);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_ne();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_lt_s() {
    final frame = Frame(this);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_lt_s();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_le_s() {
    final frame = Frame(this);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_le_s();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_lt_u() {
    final frame = Frame(this);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_lt_u();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_le_u() {
    final frame = Frame(this);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_le_u();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_gt_s() {
    final frame = Frame(this);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_gt_s();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_ge_s() {
    final frame = Frame(this);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_ge_s();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_gt_u() {
    final frame = Frame(this);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_gt_u();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_ge_u() {
    final frame = Frame(this);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_ge_u();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_store() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i64_right());
    frame.i64_store(3, 0);
    frame.push(get());
    return frame.pop();
  }

  i32 i64_store8() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i64_right());
    frame.i64_store8(0, 0);
    frame.push(get());
    return frame.pop();
  }

  i32 i64_store16() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i64_right());
    frame.i64_store16(1, 0);
    frame.push(get());
    return frame.pop();
  }

  i32 i64_store32() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(i64_right());
    frame.i64_store32(2, 0);
    frame.push(get());
    return frame.pop();
  }

  i32 i64_call() {
    final frame = Frame(this);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      i64_dummy(t0, t1);
    }
    frame.push(get());
    return frame.pop();
  }

  i32 i64_call_indirect() {
    final frame = Frame(this);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.push(i64_callee());
    {
      var func = table0[frame.pop()]! as FunctionType1;
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1));
    }
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_select() {
    final frame = Frame(this);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.push(i64_bool());
    frame.select();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f32_add() {
    final frame = Frame(this);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    frame.f32_add();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f32_sub() {
    final frame = Frame(this);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    frame.f32_sub();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f32_mul() {
    final frame = Frame(this);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    frame.f32_mul();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f32_div() {
    final frame = Frame(this);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    frame.f32_div();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f32_copysign() {
    final frame = Frame(this);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    frame.f32_copysign();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f32_eq() {
    final frame = Frame(this);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    frame.f32_eq();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f32_ne() {
    final frame = Frame(this);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    frame.f32_ne();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f32_lt() {
    final frame = Frame(this);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    frame.f32_lt();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f32_le() {
    final frame = Frame(this);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    frame.f32_le();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f32_gt() {
    final frame = Frame(this);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    frame.f32_gt();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f32_ge() {
    final frame = Frame(this);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    frame.f32_ge();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f32_min() {
    final frame = Frame(this);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    frame.f32_min();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f32_max() {
    final frame = Frame(this);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    frame.f32_max();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f32_store() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(f32_right());
    frame.f32_store(2, 0);
    frame.push(get());
    return frame.pop();
  }

  i32 f32_call() {
    final frame = Frame(this);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      f32_dummy(t0, t1);
    }
    frame.push(get());
    return frame.pop();
  }

  i32 f32_call_indirect() {
    final frame = Frame(this);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    frame.push(f32_callee());
    {
      var func = table0[frame.pop()]! as FunctionType2;
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1));
    }
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f32_select() {
    final frame = Frame(this);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    frame.push(f32_bool());
    frame.select();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f64_add() {
    final frame = Frame(this);
    reset();
    frame.push(f64_left());
    frame.push(f64_right());
    frame.f64_add();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f64_sub() {
    final frame = Frame(this);
    reset();
    frame.push(f64_left());
    frame.push(f64_right());
    frame.f64_sub();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f64_mul() {
    final frame = Frame(this);
    reset();
    frame.push(f64_left());
    frame.push(f64_right());
    frame.f64_mul();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f64_div() {
    final frame = Frame(this);
    reset();
    frame.push(f64_left());
    frame.push(f64_right());
    frame.f64_div();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f64_copysign() {
    final frame = Frame(this);
    reset();
    frame.push(f64_left());
    frame.push(f64_right());
    frame.f64_copysign();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f64_eq() {
    final frame = Frame(this);
    reset();
    frame.push(f64_left());
    frame.push(f64_right());
    frame.f64_eq();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f64_ne() {
    final frame = Frame(this);
    reset();
    frame.push(f64_left());
    frame.push(f64_right());
    frame.f64_ne();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f64_lt() {
    final frame = Frame(this);
    reset();
    frame.push(f64_left());
    frame.push(f64_right());
    frame.f64_lt();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f64_le() {
    final frame = Frame(this);
    reset();
    frame.push(f64_left());
    frame.push(f64_right());
    frame.f64_le();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f64_gt() {
    final frame = Frame(this);
    reset();
    frame.push(f64_left());
    frame.push(f64_right());
    frame.f64_gt();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f64_ge() {
    final frame = Frame(this);
    reset();
    frame.push(f64_left());
    frame.push(f64_right());
    frame.f64_ge();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f64_min() {
    final frame = Frame(this);
    reset();
    frame.push(f64_left());
    frame.push(f64_right());
    frame.f64_min();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f64_max() {
    final frame = Frame(this);
    reset();
    frame.push(f64_left());
    frame.push(f64_right());
    frame.f64_max();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f64_store() {
    final frame = Frame(this);
    reset();
    frame.push(i32_left());
    frame.push(f64_right());
    frame.f64_store(3, 0);
    frame.push(get());
    return frame.pop();
  }

  i32 f64_call() {
    final frame = Frame(this);
    reset();
    frame.push(f64_left());
    frame.push(f64_right());
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      f64_dummy(t0, t1);
    }
    frame.push(get());
    return frame.pop();
  }

  i32 f64_call_indirect() {
    final frame = Frame(this);
    reset();
    frame.push(f64_left());
    frame.push(f64_right());
    frame.push(f64_callee());
    {
      var func = table0[frame.pop()]! as FunctionType3;
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1));
    }
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f64_select() {
    final frame = Frame(this);
    reset();
    frame.push(f64_left());
    frame.push(f64_right());
    frame.push(f64_bool());
    frame.select();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 br_if() {
    final frame = Frame(this);
    block_label_0:
    {
      reset();
      frame.push(i32_left());
      frame.push(i32_right());
      frame.i32_const(0);
      frame.i32_and();
      if (frame.pop() != 0) break block_label_0;
      frame.drop();
      frame.push(get());
    }
    return frame.pop();
  }

  i32 br_table() {
    final frame = Frame(this);
    block_label_0:
    {
      reset();
      block_label_1:
      {
        frame.push(i32_left());
        frame.push(i32_right());
        var t0 = frame.pop();
        switch (t0) {
          case 0:
            break block_label_0;
          default:
            break block_label_1;
        }
      }
      frame.drop();
      frame.push(get());
    }
    return frame.pop();
  }

  List<Function> _initFunctionTable() {
    return [
      i32_t0,
      i32_t1,
      i64_t0,
      i64_t1,
      f32_t0,
      f32_t1,
      f64_t0,
      f64_t1,
      reset,
      bump,
      get,
      i32_left,
      i32_right,
      i32_another,
      i32_callee,
      i32_bool,
      i64_left,
      i64_right,
      i64_another,
      i64_callee,
      i64_bool,
      f32_left,
      f32_right,
      f32_another,
      f32_callee,
      f32_bool,
      f64_left,
      f64_right,
      f64_another,
      f64_callee,
      f64_bool,
      i32_dummy,
      i64_dummy,
      f32_dummy,
      f64_dummy,
      i32_add,
      i32_sub,
      i32_mul,
      i32_div_s,
      i32_div_u,
      i32_rem_s,
      i32_rem_u,
      i32_and,
      i32_or,
      i32_xor,
      i32_shl,
      i32_shr_u,
      i32_shr_s,
      i32_eq,
      i32_ne,
      i32_lt_s,
      i32_le_s,
      i32_lt_u,
      i32_le_u,
      i32_gt_s,
      i32_ge_s,
      i32_gt_u,
      i32_ge_u,
      i32_store,
      i32_store8,
      i32_store16,
      i32_call,
      i32_call_indirect,
      i32_select,
      i64_add,
      i64_sub,
      i64_mul,
      i64_div_s,
      i64_div_u,
      i64_rem_s,
      i64_rem_u,
      i64_and,
      i64_or,
      i64_xor,
      i64_shl,
      i64_shr_u,
      i64_shr_s,
      i64_eq,
      i64_ne,
      i64_lt_s,
      i64_le_s,
      i64_lt_u,
      i64_le_u,
      i64_gt_s,
      i64_ge_s,
      i64_gt_u,
      i64_ge_u,
      i64_store,
      i64_store8,
      i64_store16,
      i64_store32,
      i64_call,
      i64_call_indirect,
      i64_select,
      f32_add,
      f32_sub,
      f32_mul,
      f32_div,
      f32_copysign,
      f32_eq,
      f32_ne,
      f32_lt,
      f32_le,
      f32_gt,
      f32_ge,
      f32_min,
      f32_max,
      f32_store,
      f32_call,
      f32_call_indirect,
      f32_select,
      f64_add,
      f64_sub,
      f64_mul,
      f64_div,
      f64_copysign,
      f64_eq,
      f64_ne,
      f64_lt,
      f64_le,
      f64_gt,
      f64_ge,
      f64_min,
      f64_max,
      f64_store,
      f64_call,
      f64_call_indirect,
      f64_select,
      br_if,
      br_table
    ];
  }
}

typedef FunctionType0 = i32 Function(i32, i32);
typedef FunctionType1 = i32 Function(i64, i64);
typedef FunctionType2 = i32 Function(f32, f32);
typedef FunctionType3 = i32 Function(f64, f64);
typedef FunctionType4 = void Function();
typedef FunctionType5 = i32 Function();
typedef FunctionType6 = i64 Function();
typedef FunctionType7 = f32 Function();
typedef FunctionType8 = f64 Function();
typedef FunctionType9 = void Function(i32, i32);
typedef FunctionType10 = void Function(i64, i64);
typedef FunctionType11 = void Function(f32, f32);
typedef FunctionType12 = void Function(f64, f64);

class ElementSegments {
  ElementSegments(this.module);

  final LeftToRight0Module module;

  void init() {
    copyTo(module.table0, 0, 0, 8, [0, 1, 2, 3, 4, 5, 6, 7]); /* segment0 */
  }

  void copyTo(Table table, int src, int dest, int count, List<int> indexes) {
    indexes = indexes.sublist(src, src + count);
    var functions = indexes.map((i) => module.functionTable[i]).toList();
    table.copyFrom(functions, dest, count);
  }
}
