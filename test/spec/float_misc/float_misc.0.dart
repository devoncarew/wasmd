// Generated from test/spec/float_misc/float_misc.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatMisc0Module extends Module {
  FloatMisc0Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_add(f32 arg0, f32 arg1) => _func00(arg0, arg1);
  f32 f32_sub(f32 arg0, f32 arg1) => _func01(arg0, arg1);
  f32 f32_mul(f32 arg0, f32 arg1) => _func02(arg0, arg1);
  f32 f32_div(f32 arg0, f32 arg1) => _func03(arg0, arg1);
  f32 f32_sqrt(f32 arg0) => _func04(arg0);
  f32 f32_abs(f32 arg0) => _func05(arg0);
  f32 f32_neg(f32 arg0) => _func06(arg0);
  f32 f32_copysign(f32 arg0, f32 arg1) => _func07(arg0, arg1);
  f32 f32_ceil(f32 arg0) => _func08(arg0);
  f32 f32_floor(f32 arg0) => _func09(arg0);
  f32 f32_trunc(f32 arg0) => _func10(arg0);
  f32 f32_nearest(f32 arg0) => _func11(arg0);
  f32 f32_min(f32 arg0, f32 arg1) => _func12(arg0, arg1);
  f32 f32_max(f32 arg0, f32 arg1) => _func13(arg0, arg1);
  f64 f64_add(f64 arg0, f64 arg1) => _func14(arg0, arg1);
  f64 f64_sub(f64 arg0, f64 arg1) => _func15(arg0, arg1);
  f64 f64_mul(f64 arg0, f64 arg1) => _func16(arg0, arg1);
  f64 f64_div(f64 arg0, f64 arg1) => _func17(arg0, arg1);
  f64 f64_sqrt(f64 arg0) => _func18(arg0);
  f64 f64_abs(f64 arg0) => _func19(arg0);
  f64 f64_neg(f64 arg0) => _func20(arg0);
  f64 f64_copysign(f64 arg0, f64 arg1) => _func21(arg0, arg1);
  f64 f64_ceil(f64 arg0) => _func22(arg0);
  f64 f64_floor(f64 arg0) => _func23(arg0);
  f64 f64_trunc(f64 arg0) => _func24(arg0);
  f64 f64_nearest(f64 arg0) => _func25(arg0);
  f64 f64_min(f64 arg0, f64 arg1) => _func26(arg0, arg1);
  f64 f64_max(f64 arg0, f64 arg1) => _func27(arg0, arg1);

  f32 _func00(f32 x, f32 y) {
    var t0 = vm.f32_add(x, y);
    return t0;
  }

  f32 _func01(f32 x, f32 y) {
    var t0 = vm.f32_sub(x, y);
    return t0;
  }

  f32 _func02(f32 x, f32 y) {
    var t0 = vm.f32_mul(x, y);
    return t0;
  }

  f32 _func03(f32 x, f32 y) {
    var t0 = vm.f32_div(x, y);
    return t0;
  }

  f32 _func04(f32 x) {
    var t0 = vm.f32_sqrt(x);
    return t0;
  }

  f32 _func05(f32 x) {
    var t0 = vm.f32_abs(x);
    return t0;
  }

  f32 _func06(f32 x) {
    var t0 = vm.f32_neg(x);
    return t0;
  }

  f32 _func07(f32 x, f32 y) {
    var t0 = vm.f32_copysign(x, y);
    return t0;
  }

  f32 _func08(f32 x) {
    var t0 = vm.f32_ceil(x);
    return t0;
  }

  f32 _func09(f32 x) {
    var t0 = vm.f32_floor(x);
    return t0;
  }

  f32 _func10(f32 x) {
    var t0 = vm.f32_trunc(x);
    return t0;
  }

  f32 _func11(f32 x) {
    var t0 = vm.f32_nearest(x);
    return t0;
  }

  f32 _func12(f32 x, f32 y) {
    var t0 = vm.f32_min(x, y);
    return t0;
  }

  f32 _func13(f32 x, f32 y) {
    var t0 = vm.f32_max(x, y);
    return t0;
  }

  f64 _func14(f64 x, f64 y) {
    var t0 = vm.f64_add(x, y);
    return t0;
  }

  f64 _func15(f64 x, f64 y) {
    var t0 = vm.f64_sub(x, y);
    return t0;
  }

  f64 _func16(f64 x, f64 y) {
    var t0 = vm.f64_mul(x, y);
    return t0;
  }

  f64 _func17(f64 x, f64 y) {
    var t0 = vm.f64_div(x, y);
    return t0;
  }

  f64 _func18(f64 x) {
    var t0 = vm.f64_sqrt(x);
    return t0;
  }

  f64 _func19(f64 x) {
    var t0 = vm.f64_abs(x);
    return t0;
  }

  f64 _func20(f64 x) {
    var t0 = vm.f64_neg(x);
    return t0;
  }

  f64 _func21(f64 x, f64 y) {
    var t0 = vm.f64_copysign(x, y);
    return t0;
  }

  f64 _func22(f64 x) {
    var t0 = vm.f64_ceil(x);
    return t0;
  }

  f64 _func23(f64 x) {
    var t0 = vm.f64_foor(x);
    return t0;
  }

  f64 _func24(f64 x) {
    var t0 = vm.f64_trunc(x);
    return t0;
  }

  f64 _func25(f64 x) {
    var t0 = vm.f64_nearest(x);
    return t0;
  }

  f64 _func26(f64 x, f64 y) {
    var t0 = vm.f64_min(x, y);
    return t0;
  }

  f64 _func27(f64 x, f64 y) {
    var t0 = vm.f64_max(x, y);
    return t0;
  }
}

typedef FunctionType0 = f32 Function(f32, f32);
typedef FunctionType1 = f32 Function(f32);
typedef FunctionType2 = f64 Function(f64, f64);
typedef FunctionType3 = f64 Function(f64);
