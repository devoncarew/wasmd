// Generated from test/spec/left-to-right/left_to_right.0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Module {
  Module() {
    tables = [table0];
    segments.init();
  }

  final Memory memory = Memory(1);

  final Table table0 = Table(
    8,
    8,
  );

  late final List<Table> tables;

  late final ElementSegments segments = ElementSegments(this);

  i32 i32_t0(i32 arg0, i32 arg1) {
    final frame = Frame(memory);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 i32_t1(i32 arg0, i32 arg1) {
    final frame = Frame(memory);
    frame.i32_const(-2);
    return frame.pop();
  }

  i32 i64_t0(i64 arg0, i64 arg1) {
    final frame = Frame(memory);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 i64_t1(i64 arg0, i64 arg1) {
    final frame = Frame(memory);
    frame.i32_const(-2);
    return frame.pop();
  }

  i32 f32_t0(f32 arg0, f32 arg1) {
    final frame = Frame(memory);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 f32_t1(f32 arg0, f32 arg1) {
    final frame = Frame(memory);
    frame.i32_const(-2);
    return frame.pop();
  }

  i32 f64_t0(f64 arg0, f64 arg1) {
    final frame = Frame(memory);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 f64_t1(f64 arg0, f64 arg1) {
    final frame = Frame(memory);
    frame.i32_const(-2);
    return frame.pop();
  }

  void reset() {
    final frame = Frame(memory);
    frame.i32_const(8);
    frame.i32_const(0);
    frame.i32_store(2, 0);
  }

  void bump() {
    final frame = Frame(memory);
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
    final frame = Frame(memory);
    frame.i32_const(8);
    frame.i32_load(2, 0);
    return frame.pop();
  }

  i32 i32_left() {
    final frame = Frame(memory);
    bump();
    frame.i32_const(8);
    frame.i32_const(1);
    frame.i32_store8(0, 0);
    frame.i32_const(0);
    return frame.pop();
  }

  i32 i32_right() {
    final frame = Frame(memory);
    bump();
    frame.i32_const(8);
    frame.i32_const(2);
    frame.i32_store8(0, 0);
    frame.i32_const(1);
    return frame.pop();
  }

  i32 i32_another() {
    final frame = Frame(memory);
    bump();
    frame.i32_const(8);
    frame.i32_const(3);
    frame.i32_store8(0, 0);
    frame.i32_const(1);
    return frame.pop();
  }

  i32 i32_callee() {
    final frame = Frame(memory);
    bump();
    frame.i32_const(8);
    frame.i32_const(4);
    frame.i32_store8(0, 0);
    frame.i32_const(0);
    return frame.pop();
  }

  i32 i32_bool() {
    final frame = Frame(memory);
    bump();
    frame.i32_const(8);
    frame.i32_const(5);
    frame.i32_store8(0, 0);
    frame.i32_const(0);
    return frame.pop();
  }

  i64 i64_left() {
    final frame = Frame(memory);
    bump();
    frame.i32_const(8);
    frame.i32_const(1);
    frame.i32_store8(0, 0);
    frame.i64_const(0);
    return frame.pop();
  }

  i64 i64_right() {
    final frame = Frame(memory);
    bump();
    frame.i32_const(8);
    frame.i32_const(2);
    frame.i32_store8(0, 0);
    frame.i64_const(1);
    return frame.pop();
  }

  i64 i64_another() {
    final frame = Frame(memory);
    bump();
    frame.i32_const(8);
    frame.i32_const(3);
    frame.i32_store8(0, 0);
    frame.i64_const(1);
    return frame.pop();
  }

  i32 i64_callee() {
    final frame = Frame(memory);
    bump();
    frame.i32_const(8);
    frame.i32_const(4);
    frame.i32_store8(0, 0);
    frame.i32_const(2);
    return frame.pop();
  }

  i32 i64_bool() {
    final frame = Frame(memory);
    bump();
    frame.i32_const(8);
    frame.i32_const(5);
    frame.i32_store8(0, 0);
    frame.i32_const(0);
    return frame.pop();
  }

  f32 f32_left() {
    final frame = Frame(memory);
    bump();
    frame.i32_const(8);
    frame.i32_const(1);
    frame.i32_store8(0, 0);
    frame.f32_const(0.0);
    return frame.pop();
  }

  f32 f32_right() {
    final frame = Frame(memory);
    bump();
    frame.i32_const(8);
    frame.i32_const(2);
    frame.i32_store8(0, 0);
    frame.f32_const(1.0);
    return frame.pop();
  }

  f32 f32_another() {
    final frame = Frame(memory);
    bump();
    frame.i32_const(8);
    frame.i32_const(3);
    frame.i32_store8(0, 0);
    frame.f32_const(1.0);
    return frame.pop();
  }

  i32 f32_callee() {
    final frame = Frame(memory);
    bump();
    frame.i32_const(8);
    frame.i32_const(4);
    frame.i32_store8(0, 0);
    frame.i32_const(4);
    return frame.pop();
  }

  i32 f32_bool() {
    final frame = Frame(memory);
    bump();
    frame.i32_const(8);
    frame.i32_const(5);
    frame.i32_store8(0, 0);
    frame.i32_const(0);
    return frame.pop();
  }

  f64 f64_left() {
    final frame = Frame(memory);
    bump();
    frame.i32_const(8);
    frame.i32_const(1);
    frame.i32_store8(0, 0);
    frame.f64_const(0.0);
    return frame.pop();
  }

  f64 f64_right() {
    final frame = Frame(memory);
    bump();
    frame.i32_const(8);
    frame.i32_const(2);
    frame.i32_store8(0, 0);
    frame.f64_const(1.0);
    return frame.pop();
  }

  f64 f64_another() {
    final frame = Frame(memory);
    bump();
    frame.i32_const(8);
    frame.i32_const(3);
    frame.i32_store8(0, 0);
    frame.f64_const(1.0);
    return frame.pop();
  }

  i32 f64_callee() {
    final frame = Frame(memory);
    bump();
    frame.i32_const(8);
    frame.i32_const(4);
    frame.i32_store8(0, 0);
    frame.i32_const(6);
    return frame.pop();
  }

  i32 f64_bool() {
    final frame = Frame(memory);
    bump();
    frame.i32_const(8);
    frame.i32_const(5);
    frame.i32_store8(0, 0);
    frame.i32_const(0);
    return frame.pop();
  }

  void i32_dummy(i32 arg0, i32 arg1) {
    final frame = Frame(memory);
  }

  void i64_dummy(i64 arg0, i64 arg1) {
    final frame = Frame(memory);
  }

  void f32_dummy(f32 arg0, f32 arg1) {
    final frame = Frame(memory);
  }

  void f64_dummy(f64 arg0, f64 arg1) {
    final frame = Frame(memory);
  }

  i32 i32_add() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_add();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_sub() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_sub();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_mul() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_mul();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_div_s() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_div_s();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_div_u() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_div_u();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_rem_s() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_rem_s();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_rem_u() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_rem_u();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_and() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_and();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_or() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_or();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_xor() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_xor();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_shl() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_shl();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_shr_u() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_shr_u();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_shr_s() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_shr_s();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_eq() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_eq();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_ne() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_ne();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_lt_s() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_lt_s();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_le_s() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_le_s();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_lt_u() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_lt_u();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_le_u() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_le_u();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_gt_s() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_gt_s();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_ge_s() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_ge_s();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_gt_u() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_gt_u();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_ge_u() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_ge_u();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i32_store() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_store(2, 0);
    frame.push(get());
    return frame.pop();
  }

  i32 i32_store8() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_store8(0, 0);
    frame.push(get());
    return frame.pop();
  }

  i32 i32_store16() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i32_right());
    frame.i32_store16(1, 0);
    frame.push(get());
    return frame.pop();
  }

  i32 i32_call() {
    final frame = Frame(memory);
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
    final frame = Frame(memory);
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
    final frame = Frame(memory);
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
    final frame = Frame(memory);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_add();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_sub() {
    final frame = Frame(memory);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_sub();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_mul() {
    final frame = Frame(memory);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_mul();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_div_s() {
    final frame = Frame(memory);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_div_s();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_div_u() {
    final frame = Frame(memory);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_div_u();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_rem_s() {
    final frame = Frame(memory);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_rem_s();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_rem_u() {
    final frame = Frame(memory);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_rem_u();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_and() {
    final frame = Frame(memory);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_and();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_or() {
    final frame = Frame(memory);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_or();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_xor() {
    final frame = Frame(memory);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_xor();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_shl() {
    final frame = Frame(memory);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_shl();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_shr_u() {
    final frame = Frame(memory);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_shr_u();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_shr_s() {
    final frame = Frame(memory);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_shr_s();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_eq() {
    final frame = Frame(memory);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_eq();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_ne() {
    final frame = Frame(memory);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_ne();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_lt_s() {
    final frame = Frame(memory);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_lt_s();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_le_s() {
    final frame = Frame(memory);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_le_s();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_lt_u() {
    final frame = Frame(memory);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_lt_u();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_le_u() {
    final frame = Frame(memory);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_le_u();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_gt_s() {
    final frame = Frame(memory);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_gt_s();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_ge_s() {
    final frame = Frame(memory);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_ge_s();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_gt_u() {
    final frame = Frame(memory);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_gt_u();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_ge_u() {
    final frame = Frame(memory);
    reset();
    frame.push(i64_left());
    frame.push(i64_right());
    frame.i64_ge_u();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 i64_store() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i64_right());
    frame.i64_store(3, 0);
    frame.push(get());
    return frame.pop();
  }

  i32 i64_store8() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i64_right());
    frame.i64_store8(0, 0);
    frame.push(get());
    return frame.pop();
  }

  i32 i64_store16() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i64_right());
    frame.i64_store16(1, 0);
    frame.push(get());
    return frame.pop();
  }

  i32 i64_store32() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(i64_right());
    frame.i64_store32(2, 0);
    frame.push(get());
    return frame.pop();
  }

  i32 i64_call() {
    final frame = Frame(memory);
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
    final frame = Frame(memory);
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
    final frame = Frame(memory);
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
    final frame = Frame(memory);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    frame.f32_add();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f32_sub() {
    final frame = Frame(memory);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    frame.f32_sub();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f32_mul() {
    final frame = Frame(memory);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    frame.f32_mul();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f32_div() {
    final frame = Frame(memory);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    frame.f32_div();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f32_copysign() {
    final frame = Frame(memory);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    frame.f32_copysign();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f32_eq() {
    final frame = Frame(memory);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    frame.f32_eq();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f32_ne() {
    final frame = Frame(memory);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    frame.f32_ne();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f32_lt() {
    final frame = Frame(memory);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    frame.f32_lt();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f32_le() {
    final frame = Frame(memory);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    frame.f32_le();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f32_gt() {
    final frame = Frame(memory);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    frame.f32_gt();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f32_ge() {
    final frame = Frame(memory);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    frame.f32_ge();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f32_min() {
    final frame = Frame(memory);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    frame.f32_min();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f32_max() {
    final frame = Frame(memory);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    frame.f32_max();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f32_store() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(f32_right());
    frame.f32_store(2, 0);
    frame.push(get());
    return frame.pop();
  }

  i32 f32_call() {
    final frame = Frame(memory);
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
    final frame = Frame(memory);
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
    final frame = Frame(memory);
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
    final frame = Frame(memory);
    reset();
    frame.push(f64_left());
    frame.push(f64_right());
    frame.f64_add();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f64_sub() {
    final frame = Frame(memory);
    reset();
    frame.push(f64_left());
    frame.push(f64_right());
    frame.f64_sub();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f64_mul() {
    final frame = Frame(memory);
    reset();
    frame.push(f64_left());
    frame.push(f64_right());
    frame.f64_mul();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f64_div() {
    final frame = Frame(memory);
    reset();
    frame.push(f64_left());
    frame.push(f64_right());
    frame.f64_div();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f64_copysign() {
    final frame = Frame(memory);
    reset();
    frame.push(f64_left());
    frame.push(f64_right());
    frame.f64_copysign();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f64_eq() {
    final frame = Frame(memory);
    reset();
    frame.push(f64_left());
    frame.push(f64_right());
    frame.f64_eq();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f64_ne() {
    final frame = Frame(memory);
    reset();
    frame.push(f64_left());
    frame.push(f64_right());
    frame.f64_ne();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f64_lt() {
    final frame = Frame(memory);
    reset();
    frame.push(f64_left());
    frame.push(f64_right());
    frame.f64_lt();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f64_le() {
    final frame = Frame(memory);
    reset();
    frame.push(f64_left());
    frame.push(f64_right());
    frame.f64_le();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f64_gt() {
    final frame = Frame(memory);
    reset();
    frame.push(f64_left());
    frame.push(f64_right());
    frame.f64_gt();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f64_ge() {
    final frame = Frame(memory);
    reset();
    frame.push(f64_left());
    frame.push(f64_right());
    frame.f64_ge();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f64_min() {
    final frame = Frame(memory);
    reset();
    frame.push(f64_left());
    frame.push(f64_right());
    frame.f64_min();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f64_max() {
    final frame = Frame(memory);
    reset();
    frame.push(f64_left());
    frame.push(f64_right());
    frame.f64_max();
    frame.drop();
    frame.push(get());
    return frame.pop();
  }

  i32 f64_store() {
    final frame = Frame(memory);
    reset();
    frame.push(i32_left());
    frame.push(f64_right());
    frame.f64_store(3, 0);
    frame.push(get());
    return frame.pop();
  }

  i32 f64_call() {
    final frame = Frame(memory);
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
    final frame = Frame(memory);
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
    final frame = Frame(memory);
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
    final frame = Frame(memory);
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
    final frame = Frame(memory);
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
  ElementSegments(this.module) {
    functionTable = [
      module.i32_t0,
      module.i32_t1,
      module.i64_t0,
      module.i64_t1,
      module.f32_t0,
      module.f32_t1,
      module.f64_t0,
      module.f64_t1,
      module.reset,
      module.bump,
      module.get,
      module.i32_left,
      module.i32_right,
      module.i32_another,
      module.i32_callee,
      module.i32_bool,
      module.i64_left,
      module.i64_right,
      module.i64_another,
      module.i64_callee,
      module.i64_bool,
      module.f32_left,
      module.f32_right,
      module.f32_another,
      module.f32_callee,
      module.f32_bool,
      module.f64_left,
      module.f64_right,
      module.f64_another,
      module.f64_callee,
      module.f64_bool,
      module.i32_dummy,
      module.i64_dummy,
      module.f32_dummy,
      module.f64_dummy,
      module.i32_add,
      module.i32_sub,
      module.i32_mul,
      module.i32_div_s,
      module.i32_div_u,
      module.i32_rem_s,
      module.i32_rem_u,
      module.i32_and,
      module.i32_or,
      module.i32_xor,
      module.i32_shl,
      module.i32_shr_u,
      module.i32_shr_s,
      module.i32_eq,
      module.i32_ne,
      module.i32_lt_s,
      module.i32_le_s,
      module.i32_lt_u,
      module.i32_le_u,
      module.i32_gt_s,
      module.i32_ge_s,
      module.i32_gt_u,
      module.i32_ge_u,
      module.i32_store,
      module.i32_store8,
      module.i32_store16,
      module.i32_call,
      module.i32_call_indirect,
      module.i32_select,
      module.i64_add,
      module.i64_sub,
      module.i64_mul,
      module.i64_div_s,
      module.i64_div_u,
      module.i64_rem_s,
      module.i64_rem_u,
      module.i64_and,
      module.i64_or,
      module.i64_xor,
      module.i64_shl,
      module.i64_shr_u,
      module.i64_shr_s,
      module.i64_eq,
      module.i64_ne,
      module.i64_lt_s,
      module.i64_le_s,
      module.i64_lt_u,
      module.i64_le_u,
      module.i64_gt_s,
      module.i64_ge_s,
      module.i64_gt_u,
      module.i64_ge_u,
      module.i64_store,
      module.i64_store8,
      module.i64_store16,
      module.i64_store32,
      module.i64_call,
      module.i64_call_indirect,
      module.i64_select,
      module.f32_add,
      module.f32_sub,
      module.f32_mul,
      module.f32_div,
      module.f32_copysign,
      module.f32_eq,
      module.f32_ne,
      module.f32_lt,
      module.f32_le,
      module.f32_gt,
      module.f32_ge,
      module.f32_min,
      module.f32_max,
      module.f32_store,
      module.f32_call,
      module.f32_call_indirect,
      module.f32_select,
      module.f64_add,
      module.f64_sub,
      module.f64_mul,
      module.f64_div,
      module.f64_copysign,
      module.f64_eq,
      module.f64_ne,
      module.f64_lt,
      module.f64_le,
      module.f64_gt,
      module.f64_ge,
      module.f64_min,
      module.f64_max,
      module.f64_store,
      module.f64_call,
      module.f64_call_indirect,
      module.f64_select,
      module.br_if,
      module.br_table
    ];
  }

  final Module module;

  late final List<Function> functionTable;

  void init() {
    copyTo(module.table0, 0, 0, 8, [0, 1, 2, 3, 4, 5, 6, 7]); /* segment0 */
  }

  void copyTo(Table table, int src, int dest, int count, List<int> indexes) {
    indexes = indexes.sublist(src, src + count);
    var functions = indexes.map((i) => functionTable[i]).toList();
    table.copyFrom(functions, dest, count);
  }
}
