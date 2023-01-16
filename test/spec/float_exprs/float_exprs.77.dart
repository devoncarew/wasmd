// Generated from test/spec/float_exprs/float_exprs.77.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs77Module extends Module {
  FloatExprs77Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 f32_no_extended_precision_div(f32 arg0, f32 arg1, f32 arg2) => _func0(arg0, arg1, arg2);
  i32 f64_no_extended_precision_div(f64 arg0, f64 arg1, f64 arg2) => _func1(arg0, arg1, arg2);

  i32 _func0(f32 x, f32 y, f32 z) {
    var t0 = vm.f32_div(x, y);
    var t1 = vm.f32_eq(t0, z);
    return t1;
  }

  i32 _func1(f64 x, f64 y, f64 z) {
    var t0 = vm.f64_div(x, y);
    var t1 = vm.f64_eq(t0, z);
    return t1;
  }
}

typedef FunctionType0 = i32 Function(f32, f32, f32);
typedef FunctionType1 = i32 Function(f64, f64, f64);
