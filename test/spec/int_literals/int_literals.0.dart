// Generated from test/spec/int_literals/int_literals.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class IntLiterals0Module extends Module {
  IntLiterals0Module() {
    vm = VM(this);
  }

  late final VM vm;

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
    return 0xbadd00d;
  }

  i32 _func01() {
    return -1;
  }

  i32 _func02() {
    return 0x7fffffff;
  }

  i32 _func03() {
    return -0x7fffffff;
  }

  i32 _func04() {
    return -0x80000000;
  }

  i32 _func05() {
    return -0x80000000;
  }

  i32 _func06() {
    var t0 = vm.i32_add(-0x80000000, 1);
    return t0;
  }

  i32 _func07() {
    return 0;
  }

  i32 _func08() {
    return 10;
  }

  i32 _func09() {
    return -1;
  }

  i32 _func10() {
    return 42;
  }

  i64 _func11() {
    return 0xcabba6e0ba66a6e;
  }

  i64 _func12() {
    return -1;
  }

  i64 _func13() {
    return 0x7fffffffffffffff;
  }

  i64 _func14() {
    return -0x7fffffffffffffff;
  }

  i64 _func15() {
    return -0x8000000000000000;
  }

  i64 _func16() {
    return -0x8000000000000000;
  }

  i64 _func17() {
    var t0 = vm.i64_add(-0x8000000000000000, 1);
    return t0;
  }

  i64 _func18() {
    return 0;
  }

  i64 _func19() {
    return 10;
  }

  i64 _func20() {
    return -1;
  }

  i64 _func21() {
    return 42;
  }

  i32 _func22() {
    return 0xf4240;
  }

  i32 _func23() {
    return 1000;
  }

  i32 _func24() {
    return 0xa0f0099;
  }

  i32 _func25() {
    return 0x1aa0f;
  }

  i64 _func26() {
    return 0xf4240;
  }

  i64 _func27() {
    return 1000;
  }

  i64 _func28() {
    return 0xaf00f00009999;
  }

  i64 _func29() {
    return 0x1aa0f;
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = i64 Function();
