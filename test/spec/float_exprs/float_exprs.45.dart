// Generated from test/spec/float_exprs/float_exprs.45.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs45Module implements Module {
  FloatExprs45Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_no_fold_lt_select_to_abs(f32 arg0) => _func0(arg0);
  f32 f32_no_fold_le_select_to_abs(f32 arg0) => _func1(arg0);
  f32 f32_no_fold_gt_select_to_abs(f32 arg0) => _func2(arg0);
  f32 f32_no_fold_ge_select_to_abs(f32 arg0) => _func3(arg0);
  f64 f64_no_fold_lt_select_to_abs(f64 arg0) => _func4(arg0);
  f64 f64_no_fold_le_select_to_abs(f64 arg0) => _func5(arg0);
  f64 f64_no_fold_gt_select_to_abs(f64 arg0) => _func6(arg0);
  f64 f64_no_fold_ge_select_to_abs(f64 arg0) => _func7(arg0);

  f32 _func0(f32 x) {
    var t0 = vm.f32_neg(x);
    var t1 = vm.f32_lt(x, 0.0);
    var t2 = vm.select(t0, x, t1);
    return t2;
  }

  f32 _func1(f32 x) {
    var t0 = vm.f32_neg(x);
    var t1 = vm.f32_le(x, -0.0);
    var t2 = vm.select(t0, x, t1);
    return t2;
  }

  f32 _func2(f32 x) {
    var t0 = vm.f32_neg(x);
    var t1 = vm.f32_gt(x, -0.0);
    var t2 = vm.select(x, t0, t1);
    return t2;
  }

  f32 _func3(f32 x) {
    var t0 = vm.f32_neg(x);
    var t1 = vm.f32_ge(x, 0.0);
    var t2 = vm.select(x, t0, t1);
    return t2;
  }

  f64 _func4(f64 x) {
    var t0 = vm.f64_neg(x);
    var t1 = vm.f64_lt(x, 0.0);
    var t2 = vm.select(t0, x, t1);
    return t2;
  }

  f64 _func5(f64 x) {
    var t0 = vm.f64_neg(x);
    var t1 = vm.f64_le(x, -0.0);
    var t2 = vm.select(t0, x, t1);
    return t2;
  }

  f64 _func6(f64 x) {
    var t0 = vm.f64_neg(x);
    var t1 = vm.f64_gt(x, -0.0);
    var t2 = vm.select(x, t0, t1);
    return t2;
  }

  f64 _func7(f64 x) {
    var t0 = vm.f64_neg(x);
    var t1 = vm.f64_ge(x, 0.0);
    var t2 = vm.select(x, t0, t1);
    return t2;
  }
}

typedef FunctionType0 = f32 Function(f32);
typedef FunctionType1 = f64 Function(f64);
