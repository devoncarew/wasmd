// Generated from test/wasm/left-to-right.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'package:test/test.dart';
import 'package:wasmd/runtime.dart';

import 'src/infra.dart';

void main() {
  group('left-to-right', () {
    final Module m = Module();

    returns('i32_add_0', m.test_i32_add_0, 258);
    returns('i64_add_0', m.test_i64_add_0, 258);
    returns('i32_sub_0', m.test_i32_sub_0, 258);
    returns('i64_sub_0', m.test_i64_sub_0, 258);
    returns('i32_mul_0', m.test_i32_mul_0, 258);
    returns('i64_mul_0', m.test_i64_mul_0, 258);
    returns('i32_div_s_0', m.test_i32_div_s_0, 258);
    returns('i64_div_s_0', m.test_i64_div_s_0, 258);
    returns('i32_div_u_0', m.test_i32_div_u_0, 258);
    returns('i64_div_u_0', m.test_i64_div_u_0, 258);
    returns('i32_rem_s_0', m.test_i32_rem_s_0, 258);
    returns('i64_rem_s_0', m.test_i64_rem_s_0, 258);
    returns('i32_rem_u_0', m.test_i32_rem_u_0, 258);
    returns('i64_rem_u_0', m.test_i64_rem_u_0, 258);
    returns('i32_and_0', m.test_i32_and_0, 258);
    returns('i64_and_0', m.test_i64_and_0, 258);
    returns('i32_or_0', m.test_i32_or_0, 258);
    returns('i64_or_0', m.test_i64_or_0, 258);
    returns('i32_xor_0', m.test_i32_xor_0, 258);
    returns('i64_xor_0', m.test_i64_xor_0, 258);
    returns('i32_shl_0', m.test_i32_shl_0, 258);
    returns('i64_shl_0', m.test_i64_shl_0, 258);
    returns('i32_shr_u_0', m.test_i32_shr_u_0, 258);
    returns('i64_shr_u_0', m.test_i64_shr_u_0, 258);
    returns('i32_shr_s_0', m.test_i32_shr_s_0, 258);
    returns('i64_shr_s_0', m.test_i64_shr_s_0, 258);
    returns('i32_eq_0', m.test_i32_eq_0, 258);
    returns('i64_eq_0', m.test_i64_eq_0, 258);
    returns('i32_ne_0', m.test_i32_ne_0, 258);
    returns('i64_ne_0', m.test_i64_ne_0, 258);
    returns('i32_lt_s_0', m.test_i32_lt_s_0, 258);
    returns('i64_lt_s_0', m.test_i64_lt_s_0, 258);
    returns('i32_le_s_0', m.test_i32_le_s_0, 258);
    returns('i64_le_s_0', m.test_i64_le_s_0, 258);
    returns('i32_lt_u_0', m.test_i32_lt_u_0, 258);
    returns('i64_lt_u_0', m.test_i64_lt_u_0, 258);
    returns('i32_le_u_0', m.test_i32_le_u_0, 258);
    returns('i64_le_u_0', m.test_i64_le_u_0, 258);
    returns('i32_gt_s_0', m.test_i32_gt_s_0, 258);
    returns('i64_gt_s_0', m.test_i64_gt_s_0, 258);
    returns('i32_ge_s_0', m.test_i32_ge_s_0, 258);
    returns('i64_ge_s_0', m.test_i64_ge_s_0, 258);
    returns('i32_gt_u_0', m.test_i32_gt_u_0, 258);
    returns('i64_gt_u_0', m.test_i64_gt_u_0, 258);
    returns('i32_ge_u_0', m.test_i32_ge_u_0, 258);
    returns('i64_ge_u_0', m.test_i64_ge_u_0, 258);
    returns('i32_store_0', m.test_i32_store_0, 258);
    returns('i64_store_0', m.test_i64_store_0, 258);
    returns('i32_store8_0', m.test_i32_store8_0, 258);
    returns('i64_store8_0', m.test_i64_store8_0, 258);
    returns('i32_store16_0', m.test_i32_store16_0, 258);
    returns('i64_store16_0', m.test_i64_store16_0, 258);
    returns('i64_store32_0', m.test_i64_store32_0, 258);
    returns('i32_call_0', m.test_i32_call_0, 258);
    returns('i64_call_0', m.test_i64_call_0, 258);
    returns('i32_call_indirect_0', m.test_i32_call_indirect_0, 0x10204);
    returns('i64_call_indirect_0', m.test_i64_call_indirect_0, 0x10204);
    returns('i32_select_0', m.test_i32_select_0, 0x10205);
    returns('i64_select_0', m.test_i64_select_0, 0x10205);
    returns('f32_add_0', m.test_f32_add_0, 258);
    returns('f64_add_0', m.test_f64_add_0, 258);
    returns('f32_sub_0', m.test_f32_sub_0, 258);
    returns('f64_sub_0', m.test_f64_sub_0, 258);
    returns('f32_mul_0', m.test_f32_mul_0, 258);
    returns('f64_mul_0', m.test_f64_mul_0, 258);
    returns('f32_div_0', m.test_f32_div_0, 258);
    returns('f64_div_0', m.test_f64_div_0, 258);
    returns('f32_copysign_0', m.test_f32_copysign_0, 258);
    returns('f64_copysign_0', m.test_f64_copysign_0, 258);
    returns('f32_eq_0', m.test_f32_eq_0, 258);
    returns('f64_eq_0', m.test_f64_eq_0, 258);
    returns('f32_ne_0', m.test_f32_ne_0, 258);
    returns('f64_ne_0', m.test_f64_ne_0, 258);
    returns('f32_lt_0', m.test_f32_lt_0, 258);
    returns('f64_lt_0', m.test_f64_lt_0, 258);
    returns('f32_le_0', m.test_f32_le_0, 258);
    returns('f64_le_0', m.test_f64_le_0, 258);
    returns('f32_gt_0', m.test_f32_gt_0, 258);
    returns('f64_gt_0', m.test_f64_gt_0, 258);
    returns('f32_ge_0', m.test_f32_ge_0, 258);
    returns('f64_ge_0', m.test_f64_ge_0, 258);
    returns('f32_min_0', m.test_f32_min_0, 258);
    returns('f64_min_0', m.test_f64_min_0, 258);
    returns('f32_max_0', m.test_f32_max_0, 258);
    returns('f64_max_0', m.test_f64_max_0, 258);
    returns('f32_store_0', m.test_f32_store_0, 258);
    returns('f64_store_0', m.test_f64_store_0, 258);
    returns('f32_call_0', m.test_f32_call_0, 258);
    returns('f64_call_0', m.test_f64_call_0, 258);
    returns('f32_call_indirect_0', m.test_f32_call_indirect_0, 0x10204);
    returns('f64_call_indirect_0', m.test_f64_call_indirect_0, 0x10204);
    returns('f32_select_0', m.test_f32_select_0, 0x10205);
    returns('f64_select_0', m.test_f64_select_0, 0x10205);
    returns('br_if_0', m.test_br_if_0, 258);
    returns('br_table_0', m.test_br_table_0, 258);
  });
}

class Module {
  Module() {
    tables = [table0];
    elementSegments.init(this);
  }

  final Memory memory = Memory(1);

  final Table table0 = Table(
    8,
    8,
  );

  late final List<Table> tables;

  final ElementSegments elementSegments = ElementSegments();

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
    throw 'unreachable (0x92)';
  }

  i32 f32_sub() {
    final frame = Frame(memory);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    throw 'unreachable (0x93)';
  }

  i32 f32_mul() {
    final frame = Frame(memory);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    throw 'unreachable (0x94)';
  }

  i32 f32_div() {
    final frame = Frame(memory);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    throw 'unreachable (0x95)';
  }

  i32 f32_copysign() {
    final frame = Frame(memory);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    throw 'unreachable (0x98)';
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
    throw 'unreachable (0x96)';
  }

  i32 f32_max() {
    final frame = Frame(memory);
    reset();
    frame.push(f32_left());
    frame.push(f32_right());
    throw 'unreachable (0x97)';
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

  i32 test_i32_add_0() {
    final frame = Frame(memory);
    frame.push(i32_add());
    return frame.pop();
  }

  i32 test_i64_add_0() {
    final frame = Frame(memory);
    frame.push(i64_add());
    return frame.pop();
  }

  i32 test_i32_sub_0() {
    final frame = Frame(memory);
    frame.push(i32_sub());
    return frame.pop();
  }

  i32 test_i64_sub_0() {
    final frame = Frame(memory);
    frame.push(i64_sub());
    return frame.pop();
  }

  i32 test_i32_mul_0() {
    final frame = Frame(memory);
    frame.push(i32_mul());
    return frame.pop();
  }

  i32 test_i64_mul_0() {
    final frame = Frame(memory);
    frame.push(i64_mul());
    return frame.pop();
  }

  i32 test_i32_div_s_0() {
    final frame = Frame(memory);
    frame.push(i32_div_s());
    return frame.pop();
  }

  i32 test_i64_div_s_0() {
    final frame = Frame(memory);
    frame.push(i64_div_s());
    return frame.pop();
  }

  i32 test_i32_div_u_0() {
    final frame = Frame(memory);
    frame.push(i32_div_u());
    return frame.pop();
  }

  i32 test_i64_div_u_0() {
    final frame = Frame(memory);
    frame.push(i64_div_u());
    return frame.pop();
  }

  i32 test_i32_rem_s_0() {
    final frame = Frame(memory);
    frame.push(i32_rem_s());
    return frame.pop();
  }

  i32 test_i64_rem_s_0() {
    final frame = Frame(memory);
    frame.push(i64_rem_s());
    return frame.pop();
  }

  i32 test_i32_rem_u_0() {
    final frame = Frame(memory);
    frame.push(i32_rem_u());
    return frame.pop();
  }

  i32 test_i64_rem_u_0() {
    final frame = Frame(memory);
    frame.push(i64_rem_u());
    return frame.pop();
  }

  i32 test_i32_and_0() {
    final frame = Frame(memory);
    frame.push(i32_and());
    return frame.pop();
  }

  i32 test_i64_and_0() {
    final frame = Frame(memory);
    frame.push(i64_and());
    return frame.pop();
  }

  i32 test_i32_or_0() {
    final frame = Frame(memory);
    frame.push(i32_or());
    return frame.pop();
  }

  i32 test_i64_or_0() {
    final frame = Frame(memory);
    frame.push(i64_or());
    return frame.pop();
  }

  i32 test_i32_xor_0() {
    final frame = Frame(memory);
    frame.push(i32_xor());
    return frame.pop();
  }

  i32 test_i64_xor_0() {
    final frame = Frame(memory);
    frame.push(i64_xor());
    return frame.pop();
  }

  i32 test_i32_shl_0() {
    final frame = Frame(memory);
    frame.push(i32_shl());
    return frame.pop();
  }

  i32 test_i64_shl_0() {
    final frame = Frame(memory);
    frame.push(i64_shl());
    return frame.pop();
  }

  i32 test_i32_shr_u_0() {
    final frame = Frame(memory);
    frame.push(i32_shr_u());
    return frame.pop();
  }

  i32 test_i64_shr_u_0() {
    final frame = Frame(memory);
    frame.push(i64_shr_u());
    return frame.pop();
  }

  i32 test_i32_shr_s_0() {
    final frame = Frame(memory);
    frame.push(i32_shr_s());
    return frame.pop();
  }

  i32 test_i64_shr_s_0() {
    final frame = Frame(memory);
    frame.push(i64_shr_s());
    return frame.pop();
  }

  i32 test_i32_eq_0() {
    final frame = Frame(memory);
    frame.push(i32_eq());
    return frame.pop();
  }

  i32 test_i64_eq_0() {
    final frame = Frame(memory);
    frame.push(i64_eq());
    return frame.pop();
  }

  i32 test_i32_ne_0() {
    final frame = Frame(memory);
    frame.push(i32_ne());
    return frame.pop();
  }

  i32 test_i64_ne_0() {
    final frame = Frame(memory);
    frame.push(i64_ne());
    return frame.pop();
  }

  i32 test_i32_lt_s_0() {
    final frame = Frame(memory);
    frame.push(i32_lt_s());
    return frame.pop();
  }

  i32 test_i64_lt_s_0() {
    final frame = Frame(memory);
    frame.push(i64_lt_s());
    return frame.pop();
  }

  i32 test_i32_le_s_0() {
    final frame = Frame(memory);
    frame.push(i32_le_s());
    return frame.pop();
  }

  i32 test_i64_le_s_0() {
    final frame = Frame(memory);
    frame.push(i64_le_s());
    return frame.pop();
  }

  i32 test_i32_lt_u_0() {
    final frame = Frame(memory);
    frame.push(i32_lt_u());
    return frame.pop();
  }

  i32 test_i64_lt_u_0() {
    final frame = Frame(memory);
    frame.push(i64_lt_u());
    return frame.pop();
  }

  i32 test_i32_le_u_0() {
    final frame = Frame(memory);
    frame.push(i32_le_u());
    return frame.pop();
  }

  i32 test_i64_le_u_0() {
    final frame = Frame(memory);
    frame.push(i64_le_u());
    return frame.pop();
  }

  i32 test_i32_gt_s_0() {
    final frame = Frame(memory);
    frame.push(i32_gt_s());
    return frame.pop();
  }

  i32 test_i64_gt_s_0() {
    final frame = Frame(memory);
    frame.push(i64_gt_s());
    return frame.pop();
  }

  i32 test_i32_ge_s_0() {
    final frame = Frame(memory);
    frame.push(i32_ge_s());
    return frame.pop();
  }

  i32 test_i64_ge_s_0() {
    final frame = Frame(memory);
    frame.push(i64_ge_s());
    return frame.pop();
  }

  i32 test_i32_gt_u_0() {
    final frame = Frame(memory);
    frame.push(i32_gt_u());
    return frame.pop();
  }

  i32 test_i64_gt_u_0() {
    final frame = Frame(memory);
    frame.push(i64_gt_u());
    return frame.pop();
  }

  i32 test_i32_ge_u_0() {
    final frame = Frame(memory);
    frame.push(i32_ge_u());
    return frame.pop();
  }

  i32 test_i64_ge_u_0() {
    final frame = Frame(memory);
    frame.push(i64_ge_u());
    return frame.pop();
  }

  i32 test_i32_store_0() {
    final frame = Frame(memory);
    frame.push(i32_store());
    return frame.pop();
  }

  i32 test_i64_store_0() {
    final frame = Frame(memory);
    frame.push(i64_store());
    return frame.pop();
  }

  i32 test_i32_store8_0() {
    final frame = Frame(memory);
    frame.push(i32_store8());
    return frame.pop();
  }

  i32 test_i64_store8_0() {
    final frame = Frame(memory);
    frame.push(i64_store8());
    return frame.pop();
  }

  i32 test_i32_store16_0() {
    final frame = Frame(memory);
    frame.push(i32_store16());
    return frame.pop();
  }

  i32 test_i64_store16_0() {
    final frame = Frame(memory);
    frame.push(i64_store16());
    return frame.pop();
  }

  i32 test_i64_store32_0() {
    final frame = Frame(memory);
    frame.push(i64_store32());
    return frame.pop();
  }

  i32 test_i32_call_0() {
    final frame = Frame(memory);
    frame.push(i32_call());
    return frame.pop();
  }

  i32 test_i64_call_0() {
    final frame = Frame(memory);
    frame.push(i64_call());
    return frame.pop();
  }

  i32 test_i32_call_indirect_0() {
    final frame = Frame(memory);
    frame.push(i32_call_indirect());
    return frame.pop();
  }

  i32 test_i64_call_indirect_0() {
    final frame = Frame(memory);
    frame.push(i64_call_indirect());
    return frame.pop();
  }

  i32 test_i32_select_0() {
    final frame = Frame(memory);
    frame.push(i32_select());
    return frame.pop();
  }

  i32 test_i64_select_0() {
    final frame = Frame(memory);
    frame.push(i64_select());
    return frame.pop();
  }

  i32 test_f32_add_0() {
    final frame = Frame(memory);
    frame.push(f32_add());
    return frame.pop();
  }

  i32 test_f64_add_0() {
    final frame = Frame(memory);
    frame.push(f64_add());
    return frame.pop();
  }

  i32 test_f32_sub_0() {
    final frame = Frame(memory);
    frame.push(f32_sub());
    return frame.pop();
  }

  i32 test_f64_sub_0() {
    final frame = Frame(memory);
    frame.push(f64_sub());
    return frame.pop();
  }

  i32 test_f32_mul_0() {
    final frame = Frame(memory);
    frame.push(f32_mul());
    return frame.pop();
  }

  i32 test_f64_mul_0() {
    final frame = Frame(memory);
    frame.push(f64_mul());
    return frame.pop();
  }

  i32 test_f32_div_0() {
    final frame = Frame(memory);
    frame.push(f32_div());
    return frame.pop();
  }

  i32 test_f64_div_0() {
    final frame = Frame(memory);
    frame.push(f64_div());
    return frame.pop();
  }

  i32 test_f32_copysign_0() {
    final frame = Frame(memory);
    frame.push(f32_copysign());
    return frame.pop();
  }

  i32 test_f64_copysign_0() {
    final frame = Frame(memory);
    frame.push(f64_copysign());
    return frame.pop();
  }

  i32 test_f32_eq_0() {
    final frame = Frame(memory);
    frame.push(f32_eq());
    return frame.pop();
  }

  i32 test_f64_eq_0() {
    final frame = Frame(memory);
    frame.push(f64_eq());
    return frame.pop();
  }

  i32 test_f32_ne_0() {
    final frame = Frame(memory);
    frame.push(f32_ne());
    return frame.pop();
  }

  i32 test_f64_ne_0() {
    final frame = Frame(memory);
    frame.push(f64_ne());
    return frame.pop();
  }

  i32 test_f32_lt_0() {
    final frame = Frame(memory);
    frame.push(f32_lt());
    return frame.pop();
  }

  i32 test_f64_lt_0() {
    final frame = Frame(memory);
    frame.push(f64_lt());
    return frame.pop();
  }

  i32 test_f32_le_0() {
    final frame = Frame(memory);
    frame.push(f32_le());
    return frame.pop();
  }

  i32 test_f64_le_0() {
    final frame = Frame(memory);
    frame.push(f64_le());
    return frame.pop();
  }

  i32 test_f32_gt_0() {
    final frame = Frame(memory);
    frame.push(f32_gt());
    return frame.pop();
  }

  i32 test_f64_gt_0() {
    final frame = Frame(memory);
    frame.push(f64_gt());
    return frame.pop();
  }

  i32 test_f32_ge_0() {
    final frame = Frame(memory);
    frame.push(f32_ge());
    return frame.pop();
  }

  i32 test_f64_ge_0() {
    final frame = Frame(memory);
    frame.push(f64_ge());
    return frame.pop();
  }

  i32 test_f32_min_0() {
    final frame = Frame(memory);
    frame.push(f32_min());
    return frame.pop();
  }

  i32 test_f64_min_0() {
    final frame = Frame(memory);
    frame.push(f64_min());
    return frame.pop();
  }

  i32 test_f32_max_0() {
    final frame = Frame(memory);
    frame.push(f32_max());
    return frame.pop();
  }

  i32 test_f64_max_0() {
    final frame = Frame(memory);
    frame.push(f64_max());
    return frame.pop();
  }

  i32 test_f32_store_0() {
    final frame = Frame(memory);
    frame.push(f32_store());
    return frame.pop();
  }

  i32 test_f64_store_0() {
    final frame = Frame(memory);
    frame.push(f64_store());
    return frame.pop();
  }

  i32 test_f32_call_0() {
    final frame = Frame(memory);
    frame.push(f32_call());
    return frame.pop();
  }

  i32 test_f64_call_0() {
    final frame = Frame(memory);
    frame.push(f64_call());
    return frame.pop();
  }

  i32 test_f32_call_indirect_0() {
    final frame = Frame(memory);
    frame.push(f32_call_indirect());
    return frame.pop();
  }

  i32 test_f64_call_indirect_0() {
    final frame = Frame(memory);
    frame.push(f64_call_indirect());
    return frame.pop();
  }

  i32 test_f32_select_0() {
    final frame = Frame(memory);
    frame.push(f32_select());
    return frame.pop();
  }

  i32 test_f64_select_0() {
    final frame = Frame(memory);
    frame.push(f64_select());
    return frame.pop();
  }

  i32 test_br_if_0() {
    final frame = Frame(memory);
    frame.push(br_if());
    return frame.pop();
  }

  i32 test_br_table_0() {
    final frame = Frame(memory);
    frame.push(br_table());
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
  void init(Module module) {
    i32 offset;

    // element segment 0
    offset = 0;
    module.table0.funcRefs[offset + 0] = module.i32_t0;
    module.table0.funcRefs[offset + 1] = module.i32_t1;
    module.table0.funcRefs[offset + 2] = module.i64_t0;
    module.table0.funcRefs[offset + 3] = module.i64_t1;
    module.table0.funcRefs[offset + 4] = module.f32_t0;
    module.table0.funcRefs[offset + 5] = module.f32_t1;
    module.table0.funcRefs[offset + 6] = module.f64_t0;
    module.table0.funcRefs[offset + 7] = module.f64_t1;
  }
}
