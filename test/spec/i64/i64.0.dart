// Generated from test/spec/i64/i64.0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Module {
  Module();

  final Memory memory = Memory(0);

  i64 add(i64 x, i64 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i64_add();
    return frame.pop();
  }

  i64 sub(i64 x, i64 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i64_sub();
    return frame.pop();
  }

  i64 mul(i64 x, i64 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i64_mul();
    return frame.pop();
  }

  i64 div_s(i64 x, i64 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i64_div_s();
    return frame.pop();
  }

  i64 div_u(i64 x, i64 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i64_div_u();
    return frame.pop();
  }

  i64 rem_s(i64 x, i64 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i64_rem_s();
    return frame.pop();
  }

  i64 rem_u(i64 x, i64 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i64_rem_u();
    return frame.pop();
  }

  i64 and(i64 x, i64 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i64_and();
    return frame.pop();
  }

  i64 or(i64 x, i64 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i64_or();
    return frame.pop();
  }

  i64 xor(i64 x, i64 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i64_xor();
    return frame.pop();
  }

  i64 shl(i64 x, i64 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i64_shl();
    return frame.pop();
  }

  i64 shr_s(i64 x, i64 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i64_shr_s();
    return frame.pop();
  }

  i64 shr_u(i64 x, i64 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i64_shr_u();
    return frame.pop();
  }

  i64 rotl(i64 x, i64 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i64_rotl();
    return frame.pop();
  }

  i64 rotr(i64 x, i64 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i64_rotr();
    return frame.pop();
  }

  i64 clz(i64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i64_clz();
    return frame.pop();
  }

  i64 ctz(i64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i64_ctz();
    return frame.pop();
  }

  i64 popcnt(i64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i64_popcnt();
    return frame.pop();
  }

  i64 extend8_s(i64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i64_extend8_s();
    return frame.pop();
  }

  i64 extend16_s(i64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i64_extend16_s();
    return frame.pop();
  }

  i64 extend32_s(i64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i64_extend32_s();
    return frame.pop();
  }

  i32 eqz(i64 x) {
    final frame = Frame(memory);
    frame.push(x);
    frame.i64_eqz();
    return frame.pop();
  }

  i32 eq(i64 x, i64 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i64_eq();
    return frame.pop();
  }

  i32 ne(i64 x, i64 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i64_ne();
    return frame.pop();
  }

  i32 lt_s(i64 x, i64 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i64_lt_s();
    return frame.pop();
  }

  i32 lt_u(i64 x, i64 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i64_lt_u();
    return frame.pop();
  }

  i32 le_s(i64 x, i64 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i64_le_s();
    return frame.pop();
  }

  i32 le_u(i64 x, i64 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i64_le_u();
    return frame.pop();
  }

  i32 gt_s(i64 x, i64 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i64_gt_s();
    return frame.pop();
  }

  i32 gt_u(i64 x, i64 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i64_gt_u();
    return frame.pop();
  }

  i32 ge_s(i64 x, i64 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i64_ge_s();
    return frame.pop();
  }

  i32 ge_u(i64 x, i64 y) {
    final frame = Frame(memory);
    frame.push(x);
    frame.push(y);
    frame.i64_ge_u();
    return frame.pop();
  }
}

typedef FunctionType0 = i64 Function(i64, i64);
typedef FunctionType1 = i64 Function(i64);
typedef FunctionType2 = i32 Function(i64);
typedef FunctionType3 = i32 Function(i64, i64);
