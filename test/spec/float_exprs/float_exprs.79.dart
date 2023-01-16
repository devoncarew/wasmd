// Generated from test/spec/float_exprs/float_exprs.79.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs79Module extends Module {
  FloatExprs79Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_sqrt(f32 arg0) => _func00(arg0);
  f32 f32_xkcd_sqrt_2(f32 arg0, f32 arg1, f32 arg2, f32 arg3) => _func01(arg0, arg1, arg2, arg3);
  f32 f32_xkcd_sqrt_3(f32 arg0, f32 arg1, f32 arg2) => _func02(arg0, arg1, arg2);
  f32 f32_xkcd_sqrt_5(f32 arg0, f32 arg1, f32 arg2) => _func03(arg0, arg1, arg2);
  f32 f32_xkcd_better_sqrt_5(f32 arg0, f32 arg1, f32 arg2, f32 arg3) => _func04(arg0, arg1, arg2, arg3);
  f64 f64_sqrt(f64 arg0) => _func05(arg0);
  f64 f64_xkcd_sqrt_2(f64 arg0, f64 arg1, f64 arg2, f64 arg3) => _func06(arg0, arg1, arg2, arg3);
  f64 f64_xkcd_sqrt_3(f64 arg0, f64 arg1, f64 arg2) => _func07(arg0, arg1, arg2);
  f64 f64_xkcd_sqrt_5(f64 arg0, f64 arg1, f64 arg2) => _func08(arg0, arg1, arg2);
  f64 f64_xkcd_better_sqrt_5(f64 arg0, f64 arg1, f64 arg2, f64 arg3) => _func09(arg0, arg1, arg2, arg3);

  f32 _func00(f32 arg0) {
    var t0 = vm.f32_sqrt(arg0);
    return t0;
  }

  f32 _func01(f32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    var t0 = vm.f32_div(arg0, arg1);
    var t1 = vm.f32_sub(arg3, arg2);
    var t2 = vm.f32_div(arg2, t1);
    var t3 = vm.f32_add(t0, t2);
    return t3;
  }

  f32 _func02(f32 arg0, f32 arg1, f32 arg2) {
    var t0 = vm.f32_mul(arg0, arg1);
    var t1 = vm.f32_div(t0, arg2);
    return t1;
  }

  f32 _func03(f32 arg0, f32 arg1, f32 arg2) {
    var t0 = vm.f32_div(arg0, arg1);
    var t1 = vm.f32_div(arg2, arg0);
    var t2 = vm.f32_add(t0, t1);
    return t2;
  }

  f32 _func04(f32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    var t0 = vm.f32_mul(arg1, arg2);
    var t1 = vm.f32_add(arg0, t0);
    var t2 = vm.f32_mul(arg1, arg2);
    var t3 = vm.f32_sub(arg3, t2);
    var t4 = vm.f32_div(t1, t3);
    return t4;
  }

  f64 _func05(f64 arg0) {
    var t0 = vm.f64_sqrt(arg0);
    return t0;
  }

  f64 _func06(f64 arg0, f64 arg1, f64 arg2, f64 arg3) {
    var t0 = vm.f64_div(arg0, arg1);
    var t1 = vm.f64_sub(arg3, arg2);
    var t2 = vm.f64_div(arg2, t1);
    var t3 = vm.f64_add(t0, t2);
    return t3;
  }

  f64 _func07(f64 arg0, f64 arg1, f64 arg2) {
    var t0 = vm.f64_mul(arg0, arg1);
    var t1 = vm.f64_div(t0, arg2);
    return t1;
  }

  f64 _func08(f64 arg0, f64 arg1, f64 arg2) {
    var t0 = vm.f64_div(arg0, arg1);
    var t1 = vm.f64_div(arg2, arg0);
    var t2 = vm.f64_add(t0, t1);
    return t2;
  }

  f64 _func09(f64 arg0, f64 arg1, f64 arg2, f64 arg3) {
    var t0 = vm.f64_mul(arg1, arg2);
    var t1 = vm.f64_add(arg0, t0);
    var t2 = vm.f64_mul(arg1, arg2);
    var t3 = vm.f64_sub(arg3, t2);
    var t4 = vm.f64_div(t1, t3);
    return t4;
  }
}

typedef FunctionType0 = f32 Function(f32);
typedef FunctionType1 = f32 Function(f32, f32, f32, f32);
typedef FunctionType2 = f32 Function(f32, f32, f32);
typedef FunctionType3 = f64 Function(f64);
typedef FunctionType4 = f64 Function(f64, f64, f64, f64);
typedef FunctionType5 = f64 Function(f64, f64, f64);
