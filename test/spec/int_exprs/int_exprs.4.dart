// Generated from test/spec/int_exprs/int_exprs.4.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class IntExprs4Module extends Module {
  IntExprs4Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 i32_no_fold_shr_s_shl(i32 arg0) => _func0(arg0);
  i32 i32_no_fold_shr_u_shl(i32 arg0) => _func1(arg0);
  i64 i64_no_fold_shr_s_shl(i64 arg0) => _func2(arg0);
  i64 i64_no_fold_shr_u_shl(i64 arg0) => _func3(arg0);

  i32 _func0(i32 x) {
    var t0 = vm.i32_shr_s(x, 1);
    var t1 = vm.i32_shl(t0, 1);
    return t1;
  }

  i32 _func1(i32 x) {
    var t0 = vm.i32_shr_u(x, 1);
    var t1 = vm.i32_shl(t0, 1);
    return t1;
  }

  i64 _func2(i64 x) {
    var t0 = vm.i64_shr_s(x, 1);
    var t1 = vm.i64_shl(t0, 1);
    return t1;
  }

  i64 _func3(i64 x) {
    var t0 = vm.i64_shr_u(x, 1);
    var t1 = vm.i64_shl(t0, 1);
    return t1;
  }
}

typedef FunctionType0 = i32 Function(i32);
typedef FunctionType1 = i64 Function(i64);
