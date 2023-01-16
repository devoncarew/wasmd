// Generated from test/spec/float_exprs/float_exprs.92.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs92Module extends Module {
  FloatExprs92Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_silver_means(f32 arg0) => _func0(arg0);
  f64 f64_silver_means(f64 arg0) => _func1(arg0);

  f32 _func0(f32 n) {
    var t0 = vm.f32_mul(n, n);
    var t1 = vm.f32_add(t0, 4.0);
    var t2 = vm.f32_sqrt(t1);
    var t3 = vm.f32_add(n, t2);
    var t4 = vm.f32_mul(0.5, t3);
    return t4;
  }

  f64 _func1(f64 n) {
    var t0 = vm.f64_mul(n, n);
    var t1 = vm.f64_add(t0, 4.0);
    var t2 = vm.f64_sqrt(t1);
    var t3 = vm.f64_add(n, t2);
    var t4 = vm.f64_mul(0.5, t3);
    return t4;
  }
}

typedef FunctionType0 = f32 Function(f32);
typedef FunctionType1 = f64 Function(f64);
