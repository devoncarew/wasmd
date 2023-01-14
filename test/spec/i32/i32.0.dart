// Generated from test/spec/i32/i32.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class I320Module implements Module {
  I320Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 add(i32 arg0, i32 arg1) => _func00(arg0, arg1);
  i32 sub(i32 arg0, i32 arg1) => _func01(arg0, arg1);
  i32 mul(i32 arg0, i32 arg1) => _func02(arg0, arg1);
  i32 div_s(i32 arg0, i32 arg1) => _func03(arg0, arg1);
  i32 div_u(i32 arg0, i32 arg1) => _func04(arg0, arg1);
  i32 rem_s(i32 arg0, i32 arg1) => _func05(arg0, arg1);
  i32 rem_u(i32 arg0, i32 arg1) => _func06(arg0, arg1);
  i32 and(i32 arg0, i32 arg1) => _func07(arg0, arg1);
  i32 or(i32 arg0, i32 arg1) => _func08(arg0, arg1);
  i32 xor(i32 arg0, i32 arg1) => _func09(arg0, arg1);
  i32 shl(i32 arg0, i32 arg1) => _func10(arg0, arg1);
  i32 shr_s(i32 arg0, i32 arg1) => _func11(arg0, arg1);
  i32 shr_u(i32 arg0, i32 arg1) => _func12(arg0, arg1);
  i32 rotl(i32 arg0, i32 arg1) => _func13(arg0, arg1);
  i32 rotr(i32 arg0, i32 arg1) => _func14(arg0, arg1);
  i32 clz(i32 arg0) => _func15(arg0);
  i32 ctz(i32 arg0) => _func16(arg0);
  i32 popcnt(i32 arg0) => _func17(arg0);
  i32 extend8_s(i32 arg0) => _func18(arg0);
  i32 extend16_s(i32 arg0) => _func19(arg0);
  i32 eqz(i32 arg0) => _func20(arg0);
  i32 eq(i32 arg0, i32 arg1) => _func21(arg0, arg1);
  i32 ne(i32 arg0, i32 arg1) => _func22(arg0, arg1);
  i32 lt_s(i32 arg0, i32 arg1) => _func23(arg0, arg1);
  i32 lt_u(i32 arg0, i32 arg1) => _func24(arg0, arg1);
  i32 le_s(i32 arg0, i32 arg1) => _func25(arg0, arg1);
  i32 le_u(i32 arg0, i32 arg1) => _func26(arg0, arg1);
  i32 gt_s(i32 arg0, i32 arg1) => _func27(arg0, arg1);
  i32 gt_u(i32 arg0, i32 arg1) => _func28(arg0, arg1);
  i32 ge_s(i32 arg0, i32 arg1) => _func29(arg0, arg1);
  i32 ge_u(i32 arg0, i32 arg1) => _func30(arg0, arg1);

  i32 _func00(i32 x, i32 y) {
    var t0 = vm.i32_add(x, y);
    return t0;
  }

  i32 _func01(i32 x, i32 y) {
    var t0 = vm.i32_sub(x, y);
    return t0;
  }

  i32 _func02(i32 x, i32 y) {
    var t0 = vm.i32_mul(x, y);
    return t0;
  }

  i32 _func03(i32 x, i32 y) {
    var t0 = vm.i32_div_s(x, y);
    return t0;
  }

  i32 _func04(i32 x, i32 y) {
    var t0 = vm.i32_div_u(x, y);
    return t0;
  }

  i32 _func05(i32 x, i32 y) {
    var t0 = vm.i32_rem_s(x, y);
    return t0;
  }

  i32 _func06(i32 x, i32 y) {
    var t0 = vm.i32_rem_u(x, y);
    return t0;
  }

  i32 _func07(i32 x, i32 y) {
    var t0 = vm.i32_and(x, y);
    return t0;
  }

  i32 _func08(i32 x, i32 y) {
    var t0 = vm.i32_or(x, y);
    return t0;
  }

  i32 _func09(i32 x, i32 y) {
    var t0 = vm.i32_xor(x, y);
    return t0;
  }

  i32 _func10(i32 x, i32 y) {
    var t0 = vm.i32_shl(x, y);
    return t0;
  }

  i32 _func11(i32 x, i32 y) {
    var t0 = vm.i32_shr_s(x, y);
    return t0;
  }

  i32 _func12(i32 x, i32 y) {
    var t0 = vm.i32_shr_u(x, y);
    return t0;
  }

  i32 _func13(i32 x, i32 y) {
    var t0 = vm.i32_rotl(x, y);
    return t0;
  }

  i32 _func14(i32 x, i32 y) {
    var t0 = vm.i32_rotr(x, y);
    return t0;
  }

  i32 _func15(i32 x) {
    var t0 = vm.i32_clz(x);
    return t0;
  }

  i32 _func16(i32 x) {
    var t0 = vm.i32_ctz(x);
    return t0;
  }

  i32 _func17(i32 x) {
    var t0 = vm.i32_popcnt(x);
    return t0;
  }

  i32 _func18(i32 x) {
    var t0 = vm.i32_extend8_s(x);
    return t0;
  }

  i32 _func19(i32 x) {
    var t0 = vm.i32_extend16_s(x);
    return t0;
  }

  i32 _func20(i32 x) {
    var t0 = vm.i32_eqz(x);
    return t0;
  }

  i32 _func21(i32 x, i32 y) {
    var t0 = vm.i32_eq(x, y);
    return t0;
  }

  i32 _func22(i32 x, i32 y) {
    var t0 = vm.i32_ne(x, y);
    return t0;
  }

  i32 _func23(i32 x, i32 y) {
    var t0 = vm.i32_lt_s(x, y);
    return t0;
  }

  i32 _func24(i32 x, i32 y) {
    var t0 = vm.i32_lt_u(x, y);
    return t0;
  }

  i32 _func25(i32 x, i32 y) {
    var t0 = vm.i32_le_s(x, y);
    return t0;
  }

  i32 _func26(i32 x, i32 y) {
    var t0 = vm.i32_le_u(x, y);
    return t0;
  }

  i32 _func27(i32 x, i32 y) {
    var t0 = vm.i32_gt_s(x, y);
    return t0;
  }

  i32 _func28(i32 x, i32 y) {
    var t0 = vm.i32_gt_u(x, y);
    return t0;
  }

  i32 _func29(i32 x, i32 y) {
    var t0 = vm.i32_ge_s(x, y);
    return t0;
  }

  i32 _func30(i32 x, i32 y) {
    var t0 = vm.i32_ge_u(x, y);
    return t0;
  }
}

typedef FunctionType0 = i32 Function(i32, i32);
typedef FunctionType1 = i32 Function(i32);
