// Generated from test/spec/float_exprs/float_exprs.93.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs93Module implements Module {
  FloatExprs93Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 point_four(f64 arg0, f64 arg1) => _func0(arg0, arg1);

  i32 _func0(f64 four, f64 ten) {
    var t0 = vm.f64_div(four, ten);
    var t1 = vm.f64_lt(t0, 0.4);
    return t1;
  }
}

typedef FunctionType0 = i32 Function(f64, f64);
