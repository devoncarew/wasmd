// Generated from test/spec/conversions/conversions.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class Conversions0Module extends Module {
  Conversions0Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i64 i64_extend_i32_s(i32 arg0) => _func00(arg0);
  i64 i64_extend_i32_u(i32 arg0) => _func01(arg0);
  i32 i32_wrap_i64(i64 arg0) => _func02(arg0);
  i32 i32_trunc_f32_s(f32 arg0) => _func03(arg0);
  i32 i32_trunc_f32_u(f32 arg0) => _func04(arg0);
  i32 i32_trunc_f64_s(f64 arg0) => _func05(arg0);
  i32 i32_trunc_f64_u(f64 arg0) => _func06(arg0);
  i64 i64_trunc_f32_s(f32 arg0) => _func07(arg0);
  i64 i64_trunc_f32_u(f32 arg0) => _func08(arg0);
  i64 i64_trunc_f64_s(f64 arg0) => _func09(arg0);
  i64 i64_trunc_f64_u(f64 arg0) => _func10(arg0);
  i32 i32_trunc_sat_f32_s(f32 arg0) => _func11(arg0);
  i32 i32_trunc_sat_f32_u(f32 arg0) => _func12(arg0);
  i32 i32_trunc_sat_f64_s(f64 arg0) => _func13(arg0);
  i32 i32_trunc_sat_f64_u(f64 arg0) => _func14(arg0);
  i64 i64_trunc_sat_f32_s(f32 arg0) => _func15(arg0);
  i64 i64_trunc_sat_f32_u(f32 arg0) => _func16(arg0);
  i64 i64_trunc_sat_f64_s(f64 arg0) => _func17(arg0);
  i64 i64_trunc_sat_f64_u(f64 arg0) => _func18(arg0);
  f32 f32_convert_i32_s(i32 arg0) => _func19(arg0);
  f32 f32_convert_i64_s(i64 arg0) => _func20(arg0);
  f64 f64_convert_i32_s(i32 arg0) => _func21(arg0);
  f64 f64_convert_i64_s(i64 arg0) => _func22(arg0);
  f32 f32_convert_i32_u(i32 arg0) => _func23(arg0);
  f32 f32_convert_i64_u(i64 arg0) => _func24(arg0);
  f64 f64_convert_i32_u(i32 arg0) => _func25(arg0);
  f64 f64_convert_i64_u(i64 arg0) => _func26(arg0);
  f64 f64_promote_f32(f32 arg0) => _func27(arg0);
  f32 f32_demote_f64(f64 arg0) => _func28(arg0);
  f32 f32_reinterpret_i32(i32 arg0) => _func29(arg0);
  f64 f64_reinterpret_i64(i64 arg0) => _func30(arg0);
  i32 i32_reinterpret_f32(f32 arg0) => _func31(arg0);
  i64 i64_reinterpret_f64(f64 arg0) => _func32(arg0);

  i64 _func00(i32 x) {
    var t0 = vm.i64_extend_i32_s(x);
    return t0;
  }

  i64 _func01(i32 x) {
    var t0 = vm.i64_extend_i32_u(x);
    return t0;
  }

  i32 _func02(i64 x) {
    var t0 = vm.i32_wrap_i64(x);
    return t0;
  }

  i32 _func03(f32 x) {
    var t0 = vm.i32_trunc_f32_s(x);
    return t0;
  }

  i32 _func04(f32 x) {
    var t0 = vm.i32_trunc_f32_u(x);
    return t0;
  }

  i32 _func05(f64 x) {
    var t0 = vm.i32_trunc_f64_s(x);
    return t0;
  }

  i32 _func06(f64 x) {
    var t0 = vm.i32_trunc_f64_u(x);
    return t0;
  }

  i64 _func07(f32 x) {
    var t0 = vm.i64_trunc_f32_s(x);
    return t0;
  }

  i64 _func08(f32 x) {
    var t0 = vm.i64_trunc_f32_u(x);
    return t0;
  }

  i64 _func09(f64 x) {
    var t0 = vm.i64_trunc_f64_s(x);
    return t0;
  }

  i64 _func10(f64 x) {
    var t0 = vm.i64_trunc_f64_u(x);
    return t0;
  }

  i32 _func11(f32 x) {
    var t0 = vm.i32_trunc_sat_f32_s(x);
    return t0;
  }

  i32 _func12(f32 x) {
    var t0 = vm.i32_trunc_sat_f32_u(x);
    return t0;
  }

  i32 _func13(f64 x) {
    var t0 = vm.i32_trunc_sat_f64_s(x);
    return t0;
  }

  i32 _func14(f64 x) {
    var t0 = vm.i32_trunc_sat_f64_u(x);
    return t0;
  }

  i64 _func15(f32 x) {
    var t0 = vm.i64_trunc_sat_f32_s(x);
    return t0;
  }

  i64 _func16(f32 x) {
    var t0 = vm.i64_trunc_sat_f32_u(x);
    return t0;
  }

  i64 _func17(f64 x) {
    var t0 = vm.i64_trunc_sat_f64_s(x);
    return t0;
  }

  i64 _func18(f64 x) {
    var t0 = vm.i64_trunc_sat_f64_u(x);
    return t0;
  }

  f32 _func19(i32 x) {
    var t0 = vm.f32_convert_i32_s(x);
    return t0;
  }

  f32 _func20(i64 x) {
    var t0 = vm.f32_convert_i64_s(x);
    return t0;
  }

  f64 _func21(i32 x) {
    var t0 = vm.f64_convert_i32_s(x);
    return t0;
  }

  f64 _func22(i64 x) {
    var t0 = vm.f64_convert_i64_s(x);
    return t0;
  }

  f32 _func23(i32 x) {
    var t0 = vm.f32_convert_i32_u(x);
    return t0;
  }

  f32 _func24(i64 x) {
    var t0 = vm.f32_convert_i64_u(x);
    return t0;
  }

  f64 _func25(i32 x) {
    var t0 = vm.f64_convert_i32_u(x);
    return t0;
  }

  f64 _func26(i64 x) {
    var t0 = vm.f64_convert_i64_u(x);
    return t0;
  }

  f64 _func27(f32 x) {
    var t0 = vm.f64_promote_f32(x);
    return t0;
  }

  f32 _func28(f64 x) {
    var t0 = vm.f32_demote_f64(x);
    return t0;
  }

  f32 _func29(i32 x) {
    var t0 = vm.f32_reinterpret_i32(x);
    return t0;
  }

  f64 _func30(i64 x) {
    var t0 = vm.f64_reinterpret_i64(x);
    return t0;
  }

  i32 _func31(f32 x) {
    var t0 = vm.i32_reinterpret_f32(x);
    return t0;
  }

  i64 _func32(f64 x) {
    var t0 = vm.i64_reinterpret_f64(x);
    return t0;
  }
}

typedef FunctionType0 = i64 Function(i32);
typedef FunctionType1 = i32 Function(i64);
typedef FunctionType2 = i32 Function(f32);
typedef FunctionType3 = i32 Function(f64);
typedef FunctionType4 = i64 Function(f32);
typedef FunctionType5 = i64 Function(f64);
typedef FunctionType6 = f32 Function(i32);
typedef FunctionType7 = f32 Function(i64);
typedef FunctionType8 = f64 Function(i32);
typedef FunctionType9 = f64 Function(i64);
typedef FunctionType10 = f64 Function(f32);
typedef FunctionType11 = f32 Function(f64);
