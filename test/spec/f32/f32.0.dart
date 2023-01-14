// Generated from test/spec/f32/f32.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class F320Module implements Module {
  F320Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 add(f32 arg0, f32 arg1) => _func00(arg0, arg1);
  f32 sub(f32 arg0, f32 arg1) => _func01(arg0, arg1);
  f32 mul(f32 arg0, f32 arg1) => _func02(arg0, arg1);
  f32 div(f32 arg0, f32 arg1) => _func03(arg0, arg1);
  f32 sqrt(f32 arg0) => _func04(arg0);
  f32 min(f32 arg0, f32 arg1) => _func05(arg0, arg1);
  f32 max(f32 arg0, f32 arg1) => _func06(arg0, arg1);
  f32 ceil(f32 arg0) => _func07(arg0);
  f32 floor(f32 arg0) => _func08(arg0);
  f32 trunc(f32 arg0) => _func09(arg0);
  f32 nearest(f32 arg0) => _func10(arg0);

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

  f32 _func05(f32 x, f32 y) {
    var t0 = vm.f32_min(x, y);
    return t0;
  }

  f32 _func06(f32 x, f32 y) {
    var t0 = vm.f32_max(x, y);
    return t0;
  }

  f32 _func07(f32 x) {
    var t0 = vm.f32_ceil(x);
    return t0;
  }

  f32 _func08(f32 x) {
    var t0 = vm.f32_floor(x);
    return t0;
  }

  f32 _func09(f32 x) {
    var t0 = vm.f32_trunc(x);
    return t0;
  }

  f32 _func10(f32 x) {
    var t0 = vm.f32_nearest(x);
    return t0;
  }
}

typedef FunctionType0 = f32 Function(f32, f32);
typedef FunctionType1 = f32 Function(f32);
