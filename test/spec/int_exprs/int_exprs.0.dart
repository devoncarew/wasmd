// Generated from test/spec/int_exprs/int_exprs.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class IntExprs0Module extends Module {
  IntExprs0Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 i32_no_fold_cmp_s_offset(i32 arg0, i32 arg1) => _func0(arg0, arg1);
  i32 i32_no_fold_cmp_u_offset(i32 arg0, i32 arg1) => _func1(arg0, arg1);
  i32 i64_no_fold_cmp_s_offset(i64 arg0, i64 arg1) => _func2(arg0, arg1);
  i32 i64_no_fold_cmp_u_offset(i64 arg0, i64 arg1) => _func3(arg0, arg1);

  i32 _func0(i32 x, i32 y) {
    var t0 = vm.i32_add(x, 1);
    var t1 = vm.i32_add(y, 1);
    var t2 = vm.i32_lt_s(t0, t1);
    return t2;
  }

  i32 _func1(i32 x, i32 y) {
    var t0 = vm.i32_add(x, 1);
    var t1 = vm.i32_add(y, 1);
    var t2 = vm.i32_lt_u(t0, t1);
    return t2;
  }

  i32 _func2(i64 x, i64 y) {
    var t0 = vm.i64_add(x, 1);
    var t1 = vm.i64_add(y, 1);
    var t2 = vm.i64_lt_s(t0, t1);
    return t2;
  }

  i32 _func3(i64 x, i64 y) {
    var t0 = vm.i64_add(x, 1);
    var t1 = vm.i64_add(y, 1);
    var t2 = vm.i64_lt_u(t0, t1);
    return t2;
  }
}

typedef FunctionType0 = i32 Function(i32, i32);
typedef FunctionType1 = i32 Function(i64, i64);
