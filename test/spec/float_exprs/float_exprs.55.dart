// Generated from test/spec/float_exprs/float_exprs.55.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs55Module implements Module {
  FloatExprs55Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_sqrt_minus_2(f32 arg0) => _func0(arg0);
  f64 f64_sqrt_minus_2(f64 arg0) => _func1(arg0);

  f32 _func0(f32 x) {
    var t0 = vm.f32_sqrt(x);
    var t1 = vm.f32_sub(t0, 2.0);
    return t1;
  }

  f64 _func1(f64 x) {
    var t0 = vm.f64_sqrt(x);
    var t1 = vm.f64_sub(t0, 2.0);
    return t1;
  }
}

typedef FunctionType0 = f32 Function(f32);
typedef FunctionType1 = f64 Function(f64);
