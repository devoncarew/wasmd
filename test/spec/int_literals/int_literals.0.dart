// Generated from test/spec/int_literals/int_literals.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class IntLiterals0Module implements Module {
  IntLiterals0Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 i32_test() => _func00();
  i32 i32_umax() => _func01();
  i32 i32_smax() => _func02();
  i32 i32_neg_smax() => _func03();
  i32 i32_smin() => _func04();
  i32 i32_alt_smin() => _func05();
  i32 i32_inc_smin() => _func06();
  i32 i32_neg_zero() => _func07();
  i32 i32_not_octal() => _func08();
  i32 i32_unsigned_decimal() => _func09();
  i32 i32_plus_sign() => _func10();
  i64 i64_test() => _func11();
  i64 i64_umax() => _func12();
  i64 i64_smax() => _func13();
  i64 i64_neg_smax() => _func14();
  i64 i64_smin() => _func15();
  i64 i64_alt_smin() => _func16();
  i64 i64_inc_smin() => _func17();
  i64 i64_neg_zero() => _func18();
  i64 i64_not_octal() => _func19();
  i64 i64_unsigned_decimal() => _func20();
  i64 i64_plus_sign() => _func21();
  i32 i32_dec_sep1() => _func22();
  i32 i32_dec_sep2() => _func23();
  i32 i32_hex_sep1() => _func24();
  i32 i32_hex_sep2() => _func25();
  i64 i64_dec_sep1() => _func26();
  i64 i64_dec_sep2() => _func27();
  i64 i64_hex_sep1() => _func28();
  i64 i64_hex_sep2() => _func29();

  i32 _func00() {
    final frame = Frame(this);
    frame.i32_const(0xbadd00d);
    return frame.pop();
    return frame.pop();
  }

  i32 _func01() {
    final frame = Frame(this);
    frame.i32_const(-1);
    return frame.pop();
    return frame.pop();
  }

  i32 _func02() {
    final frame = Frame(this);
    frame.i32_const(0x7fffffff);
    return frame.pop();
    return frame.pop();
  }

  i32 _func03() {
    final frame = Frame(this);
    frame.i32_const(-0x7fffffff);
    return frame.pop();
    return frame.pop();
  }

  i32 _func04() {
    final frame = Frame(this);
    frame.i32_const(-0x80000000);
    return frame.pop();
    return frame.pop();
  }

  i32 _func05() {
    final frame = Frame(this);
    frame.i32_const(-0x80000000);
    return frame.pop();
    return frame.pop();
  }

  i32 _func06() {
    final frame = Frame(this);
    frame.i32_const(-0x80000000);
    frame.i32_const(1);
    frame.i32_add();
    return frame.pop();
    return frame.pop();
  }

  i32 _func07() {
    final frame = Frame(this);
    frame.i32_const(0);
    return frame.pop();
    return frame.pop();
  }

  i32 _func08() {
    final frame = Frame(this);
    frame.i32_const(10);
    return frame.pop();
    return frame.pop();
  }

  i32 _func09() {
    final frame = Frame(this);
    frame.i32_const(-1);
    return frame.pop();
    return frame.pop();
  }

  i32 _func10() {
    final frame = Frame(this);
    frame.i32_const(42);
    return frame.pop();
    return frame.pop();
  }

  i64 _func11() {
    final frame = Frame(this);
    frame.i64_const(0xcabba6e0ba66a6e);
    return frame.pop();
    return frame.pop();
  }

  i64 _func12() {
    final frame = Frame(this);
    frame.i64_const(-1);
    return frame.pop();
    return frame.pop();
  }

  i64 _func13() {
    final frame = Frame(this);
    frame.i64_const(0x7fffffffffffffff);
    return frame.pop();
    return frame.pop();
  }

  i64 _func14() {
    final frame = Frame(this);
    frame.i64_const(-0x7fffffffffffffff);
    return frame.pop();
    return frame.pop();
  }

  i64 _func15() {
    final frame = Frame(this);
    frame.i64_const(-0x8000000000000000);
    return frame.pop();
    return frame.pop();
  }

  i64 _func16() {
    final frame = Frame(this);
    frame.i64_const(-0x8000000000000000);
    return frame.pop();
    return frame.pop();
  }

  i64 _func17() {
    final frame = Frame(this);
    frame.i64_const(-0x8000000000000000);
    frame.i64_const(1);
    frame.i64_add();
    return frame.pop();
    return frame.pop();
  }

  i64 _func18() {
    final frame = Frame(this);
    frame.i64_const(0);
    return frame.pop();
    return frame.pop();
  }

  i64 _func19() {
    final frame = Frame(this);
    frame.i64_const(10);
    return frame.pop();
    return frame.pop();
  }

  i64 _func20() {
    final frame = Frame(this);
    frame.i64_const(-1);
    return frame.pop();
    return frame.pop();
  }

  i64 _func21() {
    final frame = Frame(this);
    frame.i64_const(42);
    return frame.pop();
    return frame.pop();
  }

  i32 _func22() {
    final frame = Frame(this);
    frame.i32_const(0xf4240);
    return frame.pop();
  }

  i32 _func23() {
    final frame = Frame(this);
    frame.i32_const(1000);
    return frame.pop();
  }

  i32 _func24() {
    final frame = Frame(this);
    frame.i32_const(0xa0f0099);
    return frame.pop();
  }

  i32 _func25() {
    final frame = Frame(this);
    frame.i32_const(0x1aa0f);
    return frame.pop();
  }

  i64 _func26() {
    final frame = Frame(this);
    frame.i64_const(0xf4240);
    return frame.pop();
  }

  i64 _func27() {
    final frame = Frame(this);
    frame.i64_const(1000);
    return frame.pop();
  }

  i64 _func28() {
    final frame = Frame(this);
    frame.i64_const(0xaf00f00009999);
    return frame.pop();
  }

  i64 _func29() {
    final frame = Frame(this);
    frame.i64_const(0x1aa0f);
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = i64 Function();
