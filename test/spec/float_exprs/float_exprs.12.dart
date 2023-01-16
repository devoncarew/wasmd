// Generated from test/spec/float_exprs/float_exprs.12.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs12Module implements Module {
  FloatExprs12Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 f32_no_fold_eq_self(f32 arg0) => _func0(arg0);
  i32 f64_no_fold_eq_self(f64 arg0) => _func1(arg0);

  i32 _func0(f32 x) {
    var t0 = vm.f32_eq(x, x);
    return t0;
  }

  i32 _func1(f64 x) {
    var t0 = vm.f64_eq(x, x);
    return t0;
  }
}

typedef FunctionType0 = i32 Function(f32);
typedef FunctionType1 = i32 Function(f64);
