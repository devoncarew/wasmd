// Generated from test/spec/float_exprs/float_exprs.82.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs82Module implements Module {
  FloatExprs82Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 f32_no_fold_add_le_monotonicity(f32 arg0, f32 arg1, f32 arg2) => _func0(arg0, arg1, arg2);
  i32 f32_no_fold_add_ge_monotonicity(f32 arg0, f32 arg1, f32 arg2) => _func1(arg0, arg1, arg2);
  i32 f64_no_fold_add_le_monotonicity(f64 arg0, f64 arg1, f64 arg2) => _func2(arg0, arg1, arg2);
  i32 f64_no_fold_add_ge_monotonicity(f64 arg0, f64 arg1, f64 arg2) => _func3(arg0, arg1, arg2);

  i32 _func0(f32 x, f32 y, f32 z) {
    var t0 = vm.f32_add(x, z);
    var t1 = vm.f32_add(y, z);
    var t2 = vm.f32_le(t0, t1);
    return t2;
  }

  i32 _func1(f32 x, f32 y, f32 z) {
    var t0 = vm.f32_add(x, z);
    var t1 = vm.f32_add(y, z);
    var t2 = vm.f32_ge(t0, t1);
    return t2;
  }

  i32 _func2(f64 x, f64 y, f64 z) {
    var t0 = vm.f64_add(x, z);
    var t1 = vm.f64_add(y, z);
    var t2 = vm.f64_le(t0, t1);
    return t2;
  }

  i32 _func3(f64 x, f64 y, f64 z) {
    var t0 = vm.f64_add(x, z);
    var t1 = vm.f64_add(y, z);
    var t2 = vm.f64_ge(t0, t1);
    return t2;
  }
}

typedef FunctionType0 = i32 Function(f32, f32, f32);
typedef FunctionType1 = i32 Function(f64, f64, f64);
