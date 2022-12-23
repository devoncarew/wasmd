// Generated from test/wasm/int_literals.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'package:test/test.dart';
import 'package:wasmd/runtime.dart';

import 'src/infra.dart';

void main() {
  group('int_literals', () {
    final Module m = Module();

    returns('i32_test_0', m.test_i32_test_0, 0xbadd00d);
    returns('i32_umax_0', m.test_i32_umax_0, -1);
    returns('i32_smax_0', m.test_i32_smax_0, 0x7fffffff);
    returns('i32_neg_smax_0', m.test_i32_neg_smax_0, -0x7fffffff);
    returns('i32_smin_0', m.test_i32_smin_0, -0x80000000);
    returns('i32_alt_smin_0', m.test_i32_alt_smin_0, -0x80000000);
    returns('i32_inc_smin_0', m.test_i32_inc_smin_0, -0x7fffffff);
    returns('i32_neg_zero_0', m.test_i32_neg_zero_0, 0);
    returns('i32_not_octal_0', m.test_i32_not_octal_0, 10);
    returns('i32_unsigned_decimal_0', m.test_i32_unsigned_decimal_0, -1);
    returns('i32_plus_sign_0', m.test_i32_plus_sign_0, 42);
    returns('i64_test_0', m.test_i64_test_0, 0xcabba6e0ba66a6e);
    returns('i64_umax_0', m.test_i64_umax_0, -1);
    returns('i64_smax_0', m.test_i64_smax_0, 0x7fffffffffffffff);
    returns('i64_neg_smax_0', m.test_i64_neg_smax_0, -0x7fffffffffffffff);
    returns('i64_smin_0', m.test_i64_smin_0, -0x8000000000000000);
    returns('i64_alt_smin_0', m.test_i64_alt_smin_0, -0x8000000000000000);
    returns('i64_inc_smin_0', m.test_i64_inc_smin_0, -0x7fffffffffffffff);
    returns('i64_neg_zero_0', m.test_i64_neg_zero_0, 0);
    returns('i64_not_octal_0', m.test_i64_not_octal_0, 10);
    returns('i64_unsigned_decimal_0', m.test_i64_unsigned_decimal_0, -1);
    returns('i64_plus_sign_0', m.test_i64_plus_sign_0, 42);
    returns('i32_dec_sep1_0', m.test_i32_dec_sep1_0, 0xf4240);
    returns('i32_dec_sep2_0', m.test_i32_dec_sep2_0, 1000);
    returns('i32_hex_sep1_0', m.test_i32_hex_sep1_0, 0xa0f0099);
    returns('i32_hex_sep2_0', m.test_i32_hex_sep2_0, 0x1aa0f);
    returns('i64_dec_sep1_0', m.test_i64_dec_sep1_0, 0xf4240);
    returns('i64_dec_sep2_0', m.test_i64_dec_sep2_0, 1000);
    returns('i64_hex_sep1_0', m.test_i64_hex_sep1_0, 0xaf00f00009999);
    returns('i64_hex_sep2_0', m.test_i64_hex_sep2_0, 0x1aa0f);
  });
}

class Module {
  Module();

  final Memory memory = Memory(0);

  i32 i32_test() {
    final frame = Frame(memory);
    frame.i32_const(0xbadd00d);
    return frame.pop();
    return frame.pop();
  }

  i32 i32_umax() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    return frame.pop();
    return frame.pop();
  }

  i32 i32_smax() {
    final frame = Frame(memory);
    frame.i32_const(0x7fffffff);
    return frame.pop();
    return frame.pop();
  }

  i32 i32_neg_smax() {
    final frame = Frame(memory);
    frame.i32_const(-0x7fffffff);
    return frame.pop();
    return frame.pop();
  }

  i32 i32_smin() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    return frame.pop();
    return frame.pop();
  }

  i32 i32_alt_smin() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    return frame.pop();
    return frame.pop();
  }

  i32 i32_inc_smin() {
    final frame = Frame(memory);
    frame.i32_const(-0x80000000);
    frame.i32_const(1);
    frame.i32_add();
    return frame.pop();
    return frame.pop();
  }

  i32 i32_neg_zero() {
    final frame = Frame(memory);
    frame.i32_const(0);
    return frame.pop();
    return frame.pop();
  }

  i32 i32_not_octal() {
    final frame = Frame(memory);
    frame.i32_const(10);
    return frame.pop();
    return frame.pop();
  }

  i32 i32_unsigned_decimal() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    return frame.pop();
    return frame.pop();
  }

  i32 i32_plus_sign() {
    final frame = Frame(memory);
    frame.i32_const(42);
    return frame.pop();
    return frame.pop();
  }

  i64 i64_test() {
    final frame = Frame(memory);
    frame.i64_const(0xcabba6e0ba66a6e);
    return frame.pop();
    return frame.pop();
  }

  i64 i64_umax() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    return frame.pop();
    return frame.pop();
  }

  i64 i64_smax() {
    final frame = Frame(memory);
    frame.i64_const(0x7fffffffffffffff);
    return frame.pop();
    return frame.pop();
  }

  i64 i64_neg_smax() {
    final frame = Frame(memory);
    frame.i64_const(-0x7fffffffffffffff);
    return frame.pop();
    return frame.pop();
  }

  i64 i64_smin() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    return frame.pop();
    return frame.pop();
  }

  i64 i64_alt_smin() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    return frame.pop();
    return frame.pop();
  }

  i64 i64_inc_smin() {
    final frame = Frame(memory);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(1);
    frame.i64_add();
    return frame.pop();
    return frame.pop();
  }

  i64 i64_neg_zero() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
    return frame.pop();
  }

  i64 i64_not_octal() {
    final frame = Frame(memory);
    frame.i64_const(10);
    return frame.pop();
    return frame.pop();
  }

  i64 i64_unsigned_decimal() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    return frame.pop();
    return frame.pop();
  }

  i64 i64_plus_sign() {
    final frame = Frame(memory);
    frame.i64_const(42);
    return frame.pop();
    return frame.pop();
  }

  i32 i32_dec_sep1() {
    final frame = Frame(memory);
    frame.i32_const(0xf4240);
    return frame.pop();
  }

  i32 i32_dec_sep2() {
    final frame = Frame(memory);
    frame.i32_const(1000);
    return frame.pop();
  }

  i32 i32_hex_sep1() {
    final frame = Frame(memory);
    frame.i32_const(0xa0f0099);
    return frame.pop();
  }

  i32 i32_hex_sep2() {
    final frame = Frame(memory);
    frame.i32_const(0x1aa0f);
    return frame.pop();
  }

  i64 i64_dec_sep1() {
    final frame = Frame(memory);
    frame.i64_const(0xf4240);
    return frame.pop();
  }

  i64 i64_dec_sep2() {
    final frame = Frame(memory);
    frame.i64_const(1000);
    return frame.pop();
  }

  i64 i64_hex_sep1() {
    final frame = Frame(memory);
    frame.i64_const(0xaf00f00009999);
    return frame.pop();
  }

  i64 i64_hex_sep2() {
    final frame = Frame(memory);
    frame.i64_const(0x1aa0f);
    return frame.pop();
  }

  i32 test_i32_test_0() {
    final frame = Frame(memory);
    frame.push(i32_test());
    return frame.pop();
  }

  i32 test_i32_umax_0() {
    final frame = Frame(memory);
    frame.push(i32_umax());
    return frame.pop();
  }

  i32 test_i32_smax_0() {
    final frame = Frame(memory);
    frame.push(i32_smax());
    return frame.pop();
  }

  i32 test_i32_neg_smax_0() {
    final frame = Frame(memory);
    frame.push(i32_neg_smax());
    return frame.pop();
  }

  i32 test_i32_smin_0() {
    final frame = Frame(memory);
    frame.push(i32_smin());
    return frame.pop();
  }

  i32 test_i32_alt_smin_0() {
    final frame = Frame(memory);
    frame.push(i32_alt_smin());
    return frame.pop();
  }

  i32 test_i32_inc_smin_0() {
    final frame = Frame(memory);
    frame.push(i32_inc_smin());
    return frame.pop();
  }

  i32 test_i32_neg_zero_0() {
    final frame = Frame(memory);
    frame.push(i32_neg_zero());
    return frame.pop();
  }

  i32 test_i32_not_octal_0() {
    final frame = Frame(memory);
    frame.push(i32_not_octal());
    return frame.pop();
  }

  i32 test_i32_unsigned_decimal_0() {
    final frame = Frame(memory);
    frame.push(i32_unsigned_decimal());
    return frame.pop();
  }

  i32 test_i32_plus_sign_0() {
    final frame = Frame(memory);
    frame.push(i32_plus_sign());
    return frame.pop();
  }

  i64 test_i64_test_0() {
    final frame = Frame(memory);
    frame.push(i64_test());
    return frame.pop();
  }

  i64 test_i64_umax_0() {
    final frame = Frame(memory);
    frame.push(i64_umax());
    return frame.pop();
  }

  i64 test_i64_smax_0() {
    final frame = Frame(memory);
    frame.push(i64_smax());
    return frame.pop();
  }

  i64 test_i64_neg_smax_0() {
    final frame = Frame(memory);
    frame.push(i64_neg_smax());
    return frame.pop();
  }

  i64 test_i64_smin_0() {
    final frame = Frame(memory);
    frame.push(i64_smin());
    return frame.pop();
  }

  i64 test_i64_alt_smin_0() {
    final frame = Frame(memory);
    frame.push(i64_alt_smin());
    return frame.pop();
  }

  i64 test_i64_inc_smin_0() {
    final frame = Frame(memory);
    frame.push(i64_inc_smin());
    return frame.pop();
  }

  i64 test_i64_neg_zero_0() {
    final frame = Frame(memory);
    frame.push(i64_neg_zero());
    return frame.pop();
  }

  i64 test_i64_not_octal_0() {
    final frame = Frame(memory);
    frame.push(i64_not_octal());
    return frame.pop();
  }

  i64 test_i64_unsigned_decimal_0() {
    final frame = Frame(memory);
    frame.push(i64_unsigned_decimal());
    return frame.pop();
  }

  i64 test_i64_plus_sign_0() {
    final frame = Frame(memory);
    frame.push(i64_plus_sign());
    return frame.pop();
  }

  i32 test_i32_dec_sep1_0() {
    final frame = Frame(memory);
    frame.push(i32_dec_sep1());
    return frame.pop();
  }

  i32 test_i32_dec_sep2_0() {
    final frame = Frame(memory);
    frame.push(i32_dec_sep2());
    return frame.pop();
  }

  i32 test_i32_hex_sep1_0() {
    final frame = Frame(memory);
    frame.push(i32_hex_sep1());
    return frame.pop();
  }

  i32 test_i32_hex_sep2_0() {
    final frame = Frame(memory);
    frame.push(i32_hex_sep2());
    return frame.pop();
  }

  i64 test_i64_dec_sep1_0() {
    final frame = Frame(memory);
    frame.push(i64_dec_sep1());
    return frame.pop();
  }

  i64 test_i64_dec_sep2_0() {
    final frame = Frame(memory);
    frame.push(i64_dec_sep2());
    return frame.pop();
  }

  i64 test_i64_hex_sep1_0() {
    final frame = Frame(memory);
    frame.push(i64_hex_sep1());
    return frame.pop();
  }

  i64 test_i64_hex_sep2_0() {
    final frame = Frame(memory);
    frame.push(i64_hex_sep2());
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = i64 Function();
