// Generated from test/spec/int_literals/int_literals.0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class IntLiterals0Module implements Module {
  IntLiterals0Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 i32_test() {
    final frame = Frame(this);
    frame.i32_const(0xbadd00d);
    return frame.pop();
    return frame.pop();
  }

  i32 i32_umax() {
    final frame = Frame(this);
    frame.i32_const(-1);
    return frame.pop();
    return frame.pop();
  }

  i32 i32_smax() {
    final frame = Frame(this);
    frame.i32_const(0x7fffffff);
    return frame.pop();
    return frame.pop();
  }

  i32 i32_neg_smax() {
    final frame = Frame(this);
    frame.i32_const(-0x7fffffff);
    return frame.pop();
    return frame.pop();
  }

  i32 i32_smin() {
    final frame = Frame(this);
    frame.i32_const(-0x80000000);
    return frame.pop();
    return frame.pop();
  }

  i32 i32_alt_smin() {
    final frame = Frame(this);
    frame.i32_const(-0x80000000);
    return frame.pop();
    return frame.pop();
  }

  i32 i32_inc_smin() {
    final frame = Frame(this);
    frame.i32_const(-0x80000000);
    frame.i32_const(1);
    frame.i32_add();
    return frame.pop();
    return frame.pop();
  }

  i32 i32_neg_zero() {
    final frame = Frame(this);
    frame.i32_const(0);
    return frame.pop();
    return frame.pop();
  }

  i32 i32_not_octal() {
    final frame = Frame(this);
    frame.i32_const(10);
    return frame.pop();
    return frame.pop();
  }

  i32 i32_unsigned_decimal() {
    final frame = Frame(this);
    frame.i32_const(-1);
    return frame.pop();
    return frame.pop();
  }

  i32 i32_plus_sign() {
    final frame = Frame(this);
    frame.i32_const(42);
    return frame.pop();
    return frame.pop();
  }

  i64 i64_test() {
    final frame = Frame(this);
    frame.i64_const(0xcabba6e0ba66a6e);
    return frame.pop();
    return frame.pop();
  }

  i64 i64_umax() {
    final frame = Frame(this);
    frame.i64_const(-1);
    return frame.pop();
    return frame.pop();
  }

  i64 i64_smax() {
    final frame = Frame(this);
    frame.i64_const(0x7fffffffffffffff);
    return frame.pop();
    return frame.pop();
  }

  i64 i64_neg_smax() {
    final frame = Frame(this);
    frame.i64_const(-0x7fffffffffffffff);
    return frame.pop();
    return frame.pop();
  }

  i64 i64_smin() {
    final frame = Frame(this);
    frame.i64_const(-0x8000000000000000);
    return frame.pop();
    return frame.pop();
  }

  i64 i64_alt_smin() {
    final frame = Frame(this);
    frame.i64_const(-0x8000000000000000);
    return frame.pop();
    return frame.pop();
  }

  i64 i64_inc_smin() {
    final frame = Frame(this);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(1);
    frame.i64_add();
    return frame.pop();
    return frame.pop();
  }

  i64 i64_neg_zero() {
    final frame = Frame(this);
    frame.i64_const(0);
    return frame.pop();
    return frame.pop();
  }

  i64 i64_not_octal() {
    final frame = Frame(this);
    frame.i64_const(10);
    return frame.pop();
    return frame.pop();
  }

  i64 i64_unsigned_decimal() {
    final frame = Frame(this);
    frame.i64_const(-1);
    return frame.pop();
    return frame.pop();
  }

  i64 i64_plus_sign() {
    final frame = Frame(this);
    frame.i64_const(42);
    return frame.pop();
    return frame.pop();
  }

  i32 i32_dec_sep1() {
    final frame = Frame(this);
    frame.i32_const(0xf4240);
    return frame.pop();
  }

  i32 i32_dec_sep2() {
    final frame = Frame(this);
    frame.i32_const(1000);
    return frame.pop();
  }

  i32 i32_hex_sep1() {
    final frame = Frame(this);
    frame.i32_const(0xa0f0099);
    return frame.pop();
  }

  i32 i32_hex_sep2() {
    final frame = Frame(this);
    frame.i32_const(0x1aa0f);
    return frame.pop();
  }

  i64 i64_dec_sep1() {
    final frame = Frame(this);
    frame.i64_const(0xf4240);
    return frame.pop();
  }

  i64 i64_dec_sep2() {
    final frame = Frame(this);
    frame.i64_const(1000);
    return frame.pop();
  }

  i64 i64_hex_sep1() {
    final frame = Frame(this);
    frame.i64_const(0xaf00f00009999);
    return frame.pop();
  }

  i64 i64_hex_sep2() {
    final frame = Frame(this);
    frame.i64_const(0x1aa0f);
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = i64 Function();
