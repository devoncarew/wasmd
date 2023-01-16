// Generated from test/spec/float_exprs/float_exprs.83.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs83Module implements Module {
  FloatExprs83Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 f32_not_lt(f32 arg0, f32 arg1) => _func0(arg0, arg1);
  i32 f32_not_le(f32 arg0, f32 arg1) => _func1(arg0, arg1);
  i32 f32_not_gt(f32 arg0, f32 arg1) => _func2(arg0, arg1);
  i32 f32_not_ge(f32 arg0, f32 arg1) => _func3(arg0, arg1);
  i32 f64_not_lt(f64 arg0, f64 arg1) => _func4(arg0, arg1);
  i32 f64_not_le(f64 arg0, f64 arg1) => _func5(arg0, arg1);
  i32 f64_not_gt(f64 arg0, f64 arg1) => _func6(arg0, arg1);
  i32 f64_not_ge(f64 arg0, f64 arg1) => _func7(arg0, arg1);

  i32 _func0(f32 x, f32 y) {
    var t0 = vm.f32_lt(x, y);
    var t1 = vm.i32_eqz(t0);
    return t1;
  }

  i32 _func1(f32 x, f32 y) {
    var t0 = vm.f32_le(x, y);
    var t1 = vm.i32_eqz(t0);
    return t1;
  }

  i32 _func2(f32 x, f32 y) {
    var t0 = vm.f32_gt(x, y);
    var t1 = vm.i32_eqz(t0);
    return t1;
  }

  i32 _func3(f32 x, f32 y) {
    var t0 = vm.f32_ge(x, y);
    var t1 = vm.i32_eqz(t0);
    return t1;
  }

  i32 _func4(f64 x, f64 y) {
    var t0 = vm.f64_lt(x, y);
    var t1 = vm.i32_eqz(t0);
    return t1;
  }

  i32 _func5(f64 x, f64 y) {
    var t0 = vm.f64_le(x, y);
    var t1 = vm.i32_eqz(t0);
    return t1;
  }

  i32 _func6(f64 x, f64 y) {
    var t0 = vm.f64_gt(x, y);
    var t1 = vm.i32_eqz(t0);
    return t1;
  }

  i32 _func7(f64 x, f64 y) {
    var t0 = vm.f64_ge(x, y);
    var t1 = vm.i32_eqz(t0);
    return t1;
  }
}

typedef FunctionType0 = i32 Function(f32, f32);
typedef FunctionType1 = i32 Function(f64, f64);
