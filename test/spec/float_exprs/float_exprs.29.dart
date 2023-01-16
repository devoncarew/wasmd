// Generated from test/spec/float_exprs/float_exprs.29.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs29Module implements Module {
  FloatExprs29Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 i32_no_fold_f32_s(i32 arg0) => _func0(arg0);
  i32 i32_no_fold_f32_u(i32 arg0) => _func1(arg0);
  i64 i64_no_fold_f64_s(i64 arg0) => _func2(arg0);
  i64 i64_no_fold_f64_u(i64 arg0) => _func3(arg0);

  i32 _func0(i32 arg0) {
    var t0 = vm.f32_convert_i32_s(arg0);
    var t1 = vm.i32_trunc_f32_s(t0);
    return t1;
  }

  i32 _func1(i32 arg0) {
    var t0 = vm.f32_convert_i32_u(arg0);
    var t1 = vm.i32_trunc_f32_u(t0);
    return t1;
  }

  i64 _func2(i64 arg0) {
    var t0 = vm.f64_convert_i64_s(arg0);
    var t1 = vm.i64_trunc_f64_s(t0);
    return t1;
  }

  i64 _func3(i64 arg0) {
    var t0 = vm.f64_convert_i64_u(arg0);
    var t1 = vm.i64_trunc_f64_u(t0);
    return t1;
  }
}

typedef FunctionType0 = i32 Function(i32);
typedef FunctionType1 = i64 Function(i64);
