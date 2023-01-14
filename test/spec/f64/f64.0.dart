// Generated from test/spec/f64/f64.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class F640Module implements Module {
  F640Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f64 add(f64 arg0, f64 arg1) => _func00(arg0, arg1);
  f64 sub(f64 arg0, f64 arg1) => _func01(arg0, arg1);
  f64 mul(f64 arg0, f64 arg1) => _func02(arg0, arg1);
  f64 div(f64 arg0, f64 arg1) => _func03(arg0, arg1);
  f64 sqrt(f64 arg0) => _func04(arg0);
  f64 min(f64 arg0, f64 arg1) => _func05(arg0, arg1);
  f64 max(f64 arg0, f64 arg1) => _func06(arg0, arg1);
  f64 ceil(f64 arg0) => _func07(arg0);
  f64 floor(f64 arg0) => _func08(arg0);
  f64 trunc(f64 arg0) => _func09(arg0);
  f64 nearest(f64 arg0) => _func10(arg0);

  f64 _func00(f64 x, f64 y) {
    var t0 = vm.f64_add(x, y);
    return t0;
  }

  f64 _func01(f64 x, f64 y) {
    var t0 = vm.f64_sub(x, y);
    return t0;
  }

  f64 _func02(f64 x, f64 y) {
    var t0 = vm.f64_mul(x, y);
    return t0;
  }

  f64 _func03(f64 x, f64 y) {
    var t0 = vm.f64_div(x, y);
    return t0;
  }

  f64 _func04(f64 x) {
    var t0 = vm.f64_sqrt(x);
    return t0;
  }

  f64 _func05(f64 x, f64 y) {
    var t0 = vm.f64_min(x, y);
    return t0;
  }

  f64 _func06(f64 x, f64 y) {
    var t0 = vm.f64_max(x, y);
    return t0;
  }

  f64 _func07(f64 x) {
    var t0 = vm.f64_ceil(x);
    return t0;
  }

  f64 _func08(f64 x) {
    var t0 = vm.f64_foor(x);
    return t0;
  }

  f64 _func09(f64 x) {
    var t0 = vm.f64_trunc(x);
    return t0;
  }

  f64 _func10(f64 x) {
    var t0 = vm.f64_nearest(x);
    return t0;
  }
}

typedef FunctionType0 = f64 Function(f64, f64);
typedef FunctionType1 = f64 Function(f64);
