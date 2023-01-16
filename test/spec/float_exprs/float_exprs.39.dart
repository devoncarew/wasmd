// Generated from test/spec/float_exprs/float_exprs.39.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs39Module extends Module {
  FloatExprs39Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_i32_no_fold_trunc_s_convert_s(f32 arg0) => _func00(arg0);
  f32 f32_i32_no_fold_trunc_u_convert_s(f32 arg0) => _func01(arg0);
  f32 f32_i32_no_fold_trunc_s_convert_u(f32 arg0) => _func02(arg0);
  f32 f32_i32_no_fold_trunc_u_convert_u(f32 arg0) => _func03(arg0);
  f64 f64_i32_no_fold_trunc_s_convert_s(f64 arg0) => _func04(arg0);
  f64 f64_i32_no_fold_trunc_u_convert_s(f64 arg0) => _func05(arg0);
  f64 f64_i32_no_fold_trunc_s_convert_u(f64 arg0) => _func06(arg0);
  f64 f64_i32_no_fold_trunc_u_convert_u(f64 arg0) => _func07(arg0);
  f32 f32_i64_no_fold_trunc_s_convert_s(f32 arg0) => _func08(arg0);
  f32 f32_i64_no_fold_trunc_u_convert_s(f32 arg0) => _func09(arg0);
  f32 f32_i64_no_fold_trunc_s_convert_u(f32 arg0) => _func10(arg0);
  f32 f32_i64_no_fold_trunc_u_convert_u(f32 arg0) => _func11(arg0);
  f64 f64_i64_no_fold_trunc_s_convert_s(f64 arg0) => _func12(arg0);
  f64 f64_i64_no_fold_trunc_u_convert_s(f64 arg0) => _func13(arg0);
  f64 f64_i64_no_fold_trunc_s_convert_u(f64 arg0) => _func14(arg0);
  f64 f64_i64_no_fold_trunc_u_convert_u(f64 arg0) => _func15(arg0);

  f32 _func00(f32 x) {
    var t0 = vm.i32_trunc_f32_s(x);
    var t1 = vm.f32_convert_i32_s(t0);
    return t1;
  }

  f32 _func01(f32 x) {
    var t0 = vm.i32_trunc_f32_u(x);
    var t1 = vm.f32_convert_i32_s(t0);
    return t1;
  }

  f32 _func02(f32 x) {
    var t0 = vm.i32_trunc_f32_s(x);
    var t1 = vm.f32_convert_i32_u(t0);
    return t1;
  }

  f32 _func03(f32 x) {
    var t0 = vm.i32_trunc_f32_u(x);
    var t1 = vm.f32_convert_i32_u(t0);
    return t1;
  }

  f64 _func04(f64 x) {
    var t0 = vm.i32_trunc_f64_s(x);
    var t1 = vm.f64_convert_i32_s(t0);
    return t1;
  }

  f64 _func05(f64 x) {
    var t0 = vm.i32_trunc_f64_u(x);
    var t1 = vm.f64_convert_i32_s(t0);
    return t1;
  }

  f64 _func06(f64 x) {
    var t0 = vm.i32_trunc_f64_s(x);
    var t1 = vm.f64_convert_i32_u(t0);
    return t1;
  }

  f64 _func07(f64 x) {
    var t0 = vm.i32_trunc_f64_u(x);
    var t1 = vm.f64_convert_i32_u(t0);
    return t1;
  }

  f32 _func08(f32 x) {
    var t0 = vm.i64_trunc_f32_s(x);
    var t1 = vm.f32_convert_i64_s(t0);
    return t1;
  }

  f32 _func09(f32 x) {
    var t0 = vm.i64_trunc_f32_u(x);
    var t1 = vm.f32_convert_i64_s(t0);
    return t1;
  }

  f32 _func10(f32 x) {
    var t0 = vm.i64_trunc_f32_s(x);
    var t1 = vm.f32_convert_i64_u(t0);
    return t1;
  }

  f32 _func11(f32 x) {
    var t0 = vm.i64_trunc_f32_u(x);
    var t1 = vm.f32_convert_i64_u(t0);
    return t1;
  }

  f64 _func12(f64 x) {
    var t0 = vm.i64_trunc_f64_s(x);
    var t1 = vm.f64_convert_i64_s(t0);
    return t1;
  }

  f64 _func13(f64 x) {
    var t0 = vm.i64_trunc_f64_u(x);
    var t1 = vm.f64_convert_i64_s(t0);
    return t1;
  }

  f64 _func14(f64 x) {
    var t0 = vm.i64_trunc_f64_s(x);
    var t1 = vm.f64_convert_i64_u(t0);
    return t1;
  }

  f64 _func15(f64 x) {
    var t0 = vm.i64_trunc_f64_u(x);
    var t1 = vm.f64_convert_i64_u(t0);
    return t1;
  }
}

typedef FunctionType0 = f32 Function(f32);
typedef FunctionType1 = f64 Function(f64);
