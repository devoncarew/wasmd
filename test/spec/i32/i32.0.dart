// Generated from test/spec/i32/i32.0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class I320Module implements Module {
  I320Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 add(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.i32_add();
    return frame.pop();
  }

  i32 sub(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.i32_sub();
    return frame.pop();
  }

  i32 mul(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.i32_mul();
    return frame.pop();
  }

  i32 div_s(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.i32_div_s();
    return frame.pop();
  }

  i32 div_u(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.i32_div_u();
    return frame.pop();
  }

  i32 rem_s(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.i32_rem_s();
    return frame.pop();
  }

  i32 rem_u(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.i32_rem_u();
    return frame.pop();
  }

  i32 and(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.i32_and();
    return frame.pop();
  }

  i32 or(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.i32_or();
    return frame.pop();
  }

  i32 xor(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.i32_xor();
    return frame.pop();
  }

  i32 shl(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.i32_shl();
    return frame.pop();
  }

  i32 shr_s(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.i32_shr_s();
    return frame.pop();
  }

  i32 shr_u(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.i32_shr_u();
    return frame.pop();
  }

  i32 rotl(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.i32_rotl();
    return frame.pop();
  }

  i32 rotr(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.i32_rotr();
    return frame.pop();
  }

  i32 clz(i32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_clz();
    return frame.pop();
  }

  i32 ctz(i32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_ctz();
    return frame.pop();
  }

  i32 popcnt(i32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_popcnt();
    return frame.pop();
  }

  i32 extend8_s(i32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_extend8_s();
    return frame.pop();
  }

  i32 extend16_s(i32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_extend16_s();
    return frame.pop();
  }

  i32 eqz(i32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_eqz();
    return frame.pop();
  }

  i32 eq(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.i32_eq();
    return frame.pop();
  }

  i32 ne(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.i32_ne();
    return frame.pop();
  }

  i32 lt_s(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.i32_lt_s();
    return frame.pop();
  }

  i32 lt_u(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.i32_lt_u();
    return frame.pop();
  }

  i32 le_s(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.i32_le_s();
    return frame.pop();
  }

  i32 le_u(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.i32_le_u();
    return frame.pop();
  }

  i32 gt_s(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.i32_gt_s();
    return frame.pop();
  }

  i32 gt_u(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.i32_gt_u();
    return frame.pop();
  }

  i32 ge_s(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.i32_ge_s();
    return frame.pop();
  }

  i32 ge_u(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.i32_ge_u();
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(i32, i32);
typedef FunctionType1 = i32 Function(i32);
