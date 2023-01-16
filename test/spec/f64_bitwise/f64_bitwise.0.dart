// Generated from test/spec/f64_bitwise/f64_bitwise.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class F64Bitwise0Module extends Module {
  F64Bitwise0Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f64 abs(f64 arg0) => _func0(arg0);
  f64 neg(f64 arg0) => _func1(arg0);
  f64 copysign(f64 arg0, f64 arg1) => _func2(arg0, arg1);

  f64 _func0(f64 x) {
    var t0 = vm.f64_abs(x);
    return t0;
  }

  f64 _func1(f64 x) {
    var t0 = vm.f64_neg(x);
    return t0;
  }

  f64 _func2(f64 x, f64 y) {
    var t0 = vm.f64_copysign(x, y);
    return t0;
  }
}

typedef FunctionType0 = f64 Function(f64);
typedef FunctionType1 = f64 Function(f64, f64);
