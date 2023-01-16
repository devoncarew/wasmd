// Generated from test/spec/float_exprs/float_exprs.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs0Module extends Module {
  FloatExprs0Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f64 f64_no_contraction(f64 arg0, f64 arg1, f64 arg2) => _func0(arg0, arg1, arg2);

  f64 _func0(f64 x, f64 y, f64 z) {
    var t0 = vm.f64_mul(x, y);
    var t1 = vm.f64_add(t0, z);
    return t1;
  }
}

typedef FunctionType0 = f64 Function(f64, f64, f64);
