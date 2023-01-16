// Generated from test/spec/float_exprs/float_exprs.47.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs47Module implements Module {
  FloatExprs47Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_incorrect_correction() => _func0();
  f64 f64_incorrect_correction() => _func1();

  f32 _func0() {
    var t0 = vm.f32_add(1.3329999446868896, 1.225000023841858);
    var t1 = vm.f32_sub(t0, 1.3329999446868896);
    var t2 = vm.f32_sub(t1, 1.225000023841858);
    return t2;
  }

  f64 _func1() {
    var t0 = vm.f64_add(1.333, 1.225);
    var t1 = vm.f64_sub(t0, 1.333);
    var t2 = vm.f64_sub(t1, 1.225);
    return t2;
  }
}

typedef FunctionType0 = f32 Function();
typedef FunctionType1 = f64 Function();
