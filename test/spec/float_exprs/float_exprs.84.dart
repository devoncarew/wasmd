// Generated from test/spec/float_exprs/float_exprs.84.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs84Module implements Module {
  FloatExprs84Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_epsilon() => _func0();
  f64 f64_epsilon() => _func1();

  f32 _func0() {
    var t0 = vm.f32_div(4.0, 3.0);
    var t1 = vm.f32_sub(t0, 1.0);
    var t2 = vm.f32_mul(3.0, t1);
    var t3 = vm.f32_sub(1.0, t2);
    return t3;
  }

  f64 _func1() {
    var t0 = vm.f64_div(4.0, 3.0);
    var t1 = vm.f64_sub(t0, 1.0);
    var t2 = vm.f64_mul(3.0, t1);
    var t3 = vm.f64_sub(1.0, t2);
    return t3;
  }
}

typedef FunctionType0 = f32 Function();
typedef FunctionType1 = f64 Function();
