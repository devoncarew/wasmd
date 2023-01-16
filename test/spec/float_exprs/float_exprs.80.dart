// Generated from test/spec/float_exprs/float_exprs.80.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs80Module extends Module {
  FloatExprs80Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_compute_radix(f32 arg0, f32 arg1) => _func0(arg0, arg1);
  f64 f64_compute_radix(f64 arg0, f64 arg1) => _func1(arg0, arg1);

  f32 _func0(f32 arg0, f32 arg1) {
    loop_label_0:
    for (;;) {
      var t0 = vm.f32_add(arg0, arg0);
      arg0 = t0;
      var t1 = vm.f32_add(t0, 1.0);
      var t2 = vm.f32_sub(t1, arg0);
      var t3 = vm.f32_add(t2, -1.0);
      var t4 = vm.f32_eq(t3, 0.0);
      if (t4 != 0) continue loop_label_0;
      break;
    }

    loop_label_0:
    for (;;) {
      var t5 = vm.f32_add(arg1, 1.0);
      arg1 = t5;
      var t6 = vm.f32_add(arg0, t5);
      var t7 = vm.f32_sub(t6, arg0);
      var t8 = vm.f32_sub(t7, arg1);
      var t9 = vm.f32_ne(t8, 0.0);
      if (t9 != 0) continue loop_label_0;
      break;
    }
    return arg1;
  }

  f64 _func1(f64 arg0, f64 arg1) {
    loop_label_0:
    for (;;) {
      var t0 = vm.f64_add(arg0, arg0);
      arg0 = t0;
      var t1 = vm.f64_add(t0, 1.0);
      var t2 = vm.f64_sub(t1, arg0);
      var t3 = vm.f64_add(t2, -1.0);
      var t4 = vm.f64_eq(t3, 0.0);
      if (t4 != 0) continue loop_label_0;
      break;
    }

    loop_label_0:
    for (;;) {
      var t5 = vm.f64_add(arg1, 1.0);
      arg1 = t5;
      var t6 = vm.f64_add(arg0, t5);
      var t7 = vm.f64_sub(t6, arg0);
      var t8 = vm.f64_sub(t7, arg1);
      var t9 = vm.f64_ne(t8, 0.0);
      if (t9 != 0) continue loop_label_0;
      break;
    }
    return arg1;
  }
}

typedef FunctionType0 = f32 Function(f32, f32);
typedef FunctionType1 = f64 Function(f64, f64);
