// Generated from test/spec/int_exprs/int_exprs.5.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class IntExprs5Module extends Module {
  IntExprs5Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 i32_no_fold_div_s_mul(i32 arg0) => _func0(arg0);
  i32 i32_no_fold_div_u_mul(i32 arg0) => _func1(arg0);
  i64 i64_no_fold_div_s_mul(i64 arg0) => _func2(arg0);
  i64 i64_no_fold_div_u_mul(i64 arg0) => _func3(arg0);

  i32 _func0(i32 x) {
    var t0 = vm.i32_div_s(x, 6);
    var t1 = vm.i32_mul(t0, 6);
    return t1;
  }

  i32 _func1(i32 x) {
    var t0 = vm.i32_div_u(x, 6);
    var t1 = vm.i32_mul(t0, 6);
    return t1;
  }

  i64 _func2(i64 x) {
    var t0 = vm.i64_div_s(x, 6);
    var t1 = vm.i64_mul(t0, 6);
    return t1;
  }

  i64 _func3(i64 x) {
    var t0 = vm.i64_div_u(x, 6);
    var t1 = vm.i64_mul(t0, 6);
    return t1;
  }
}

typedef FunctionType0 = i32 Function(i32);
typedef FunctionType1 = i64 Function(i64);
