// Generated from test/spec/float_exprs/float_exprs.2.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs2Module implements Module {
  FloatExprs2Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_no_fold_add_zero(f32 arg0) => _func0(arg0);
  f64 f64_no_fold_add_zero(f64 arg0) => _func1(arg0);

  f32 _func0(f32 x) {
    var t0 = vm.f32_add(x, 0.0);
    return t0;
  }

  f64 _func1(f64 x) {
    var t0 = vm.f64_add(x, 0.0);
    return t0;
  }
}

typedef FunctionType0 = f32 Function(f32);
typedef FunctionType1 = f64 Function(f64);
