// Generated from test/spec/i64/i64.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class I640Module implements Module {
  I640Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i64 add(i64 arg0, i64 arg1) => _func00(arg0, arg1);
  i64 sub(i64 arg0, i64 arg1) => _func01(arg0, arg1);
  i64 mul(i64 arg0, i64 arg1) => _func02(arg0, arg1);
  i64 div_s(i64 arg0, i64 arg1) => _func03(arg0, arg1);
  i64 div_u(i64 arg0, i64 arg1) => _func04(arg0, arg1);
  i64 rem_s(i64 arg0, i64 arg1) => _func05(arg0, arg1);
  i64 rem_u(i64 arg0, i64 arg1) => _func06(arg0, arg1);
  i64 and(i64 arg0, i64 arg1) => _func07(arg0, arg1);
  i64 or(i64 arg0, i64 arg1) => _func08(arg0, arg1);
  i64 xor(i64 arg0, i64 arg1) => _func09(arg0, arg1);
  i64 shl(i64 arg0, i64 arg1) => _func10(arg0, arg1);
  i64 shr_s(i64 arg0, i64 arg1) => _func11(arg0, arg1);
  i64 shr_u(i64 arg0, i64 arg1) => _func12(arg0, arg1);
  i64 rotl(i64 arg0, i64 arg1) => _func13(arg0, arg1);
  i64 rotr(i64 arg0, i64 arg1) => _func14(arg0, arg1);
  i64 clz(i64 arg0) => _func15(arg0);
  i64 ctz(i64 arg0) => _func16(arg0);
  i64 popcnt(i64 arg0) => _func17(arg0);
  i64 extend8_s(i64 arg0) => _func18(arg0);
  i64 extend16_s(i64 arg0) => _func19(arg0);
  i64 extend32_s(i64 arg0) => _func20(arg0);
  i32 eqz(i64 arg0) => _func21(arg0);
  i32 eq(i64 arg0, i64 arg1) => _func22(arg0, arg1);
  i32 ne(i64 arg0, i64 arg1) => _func23(arg0, arg1);
  i32 lt_s(i64 arg0, i64 arg1) => _func24(arg0, arg1);
  i32 lt_u(i64 arg0, i64 arg1) => _func25(arg0, arg1);
  i32 le_s(i64 arg0, i64 arg1) => _func26(arg0, arg1);
  i32 le_u(i64 arg0, i64 arg1) => _func27(arg0, arg1);
  i32 gt_s(i64 arg0, i64 arg1) => _func28(arg0, arg1);
  i32 gt_u(i64 arg0, i64 arg1) => _func29(arg0, arg1);
  i32 ge_s(i64 arg0, i64 arg1) => _func30(arg0, arg1);
  i32 ge_u(i64 arg0, i64 arg1) => _func31(arg0, arg1);

  i64 _func00(i64 x, i64 y) {
    var t0 = vm.i64_add(x, y);
    return t0;
  }

  i64 _func01(i64 x, i64 y) {
    var t0 = vm.i64_sub(x, y);
    return t0;
  }

  i64 _func02(i64 x, i64 y) {
    var t0 = vm.i64_mul(x, y);
    return t0;
  }

  i64 _func03(i64 x, i64 y) {
    var t0 = vm.i64_div_s(x, y);
    return t0;
  }

  i64 _func04(i64 x, i64 y) {
    var t0 = vm.i64_div_u(x, y);
    return t0;
  }

  i64 _func05(i64 x, i64 y) {
    var t0 = vm.i64_rem_s(x, y);
    return t0;
  }

  i64 _func06(i64 x, i64 y) {
    var t0 = vm.i64_rem_u(x, y);
    return t0;
  }

  i64 _func07(i64 x, i64 y) {
    var t0 = vm.i64_and(x, y);
    return t0;
  }

  i64 _func08(i64 x, i64 y) {
    var t0 = vm.i64_or(x, y);
    return t0;
  }

  i64 _func09(i64 x, i64 y) {
    var t0 = vm.i64_xor(x, y);
    return t0;
  }

  i64 _func10(i64 x, i64 y) {
    var t0 = vm.i64_shl(x, y);
    return t0;
  }

  i64 _func11(i64 x, i64 y) {
    var t0 = vm.i64_shr_s(x, y);
    return t0;
  }

  i64 _func12(i64 x, i64 y) {
    var t0 = vm.i64_shr_u(x, y);
    return t0;
  }

  i64 _func13(i64 x, i64 y) {
    var t0 = vm.i64_rotl(x, y);
    return t0;
  }

  i64 _func14(i64 x, i64 y) {
    var t0 = vm.i64_rotr(x, y);
    return t0;
  }

  i64 _func15(i64 x) {
    var t0 = vm.i64_clz(x);
    return t0;
  }

  i64 _func16(i64 x) {
    var t0 = vm.i64_ctz(x);
    return t0;
  }

  i64 _func17(i64 x) {
    var t0 = vm.i64_popcnt(x);
    return t0;
  }

  i64 _func18(i64 x) {
    var t0 = vm.i64_extend8_s(x);
    return t0;
  }

  i64 _func19(i64 x) {
    var t0 = vm.i64_extend16_s(x);
    return t0;
  }

  i64 _func20(i64 x) {
    var t0 = vm.i64_extend32_s(x);
    return t0;
  }

  i32 _func21(i64 x) {
    var t0 = vm.i64_eqz(x);
    return t0;
  }

  i32 _func22(i64 x, i64 y) {
    var t0 = vm.i64_eq(x, y);
    return t0;
  }

  i32 _func23(i64 x, i64 y) {
    var t0 = vm.i64_ne(x, y);
    return t0;
  }

  i32 _func24(i64 x, i64 y) {
    var t0 = vm.i64_lt_s(x, y);
    return t0;
  }

  i32 _func25(i64 x, i64 y) {
    var t0 = vm.i64_lt_u(x, y);
    return t0;
  }

  i32 _func26(i64 x, i64 y) {
    var t0 = vm.i64_le_s(x, y);
    return t0;
  }

  i32 _func27(i64 x, i64 y) {
    var t0 = vm.i64_le_u(x, y);
    return t0;
  }

  i32 _func28(i64 x, i64 y) {
    var t0 = vm.i64_gt_s(x, y);
    return t0;
  }

  i32 _func29(i64 x, i64 y) {
    var t0 = vm.i64_gt_u(x, y);
    return t0;
  }

  i32 _func30(i64 x, i64 y) {
    var t0 = vm.i64_ge_s(x, y);
    return t0;
  }

  i32 _func31(i64 x, i64 y) {
    var t0 = vm.i64_ge_u(x, y);
    return t0;
  }
}

typedef FunctionType0 = i64 Function(i64, i64);
typedef FunctionType1 = i64 Function(i64);
typedef FunctionType2 = i32 Function(i64);
typedef FunctionType3 = i32 Function(i64, i64);
