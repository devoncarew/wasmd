// Generated from test/spec/int_exprs/int_exprs.15.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class IntExprs15Module extends Module {
  IntExprs15Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 i32_rem_s_3(i32 arg0) => _func0(arg0);
  i32 i32_rem_u_3(i32 arg0) => _func1(arg0);
  i64 i64_rem_s_3(i64 arg0) => _func2(arg0);
  i64 i64_rem_u_3(i64 arg0) => _func3(arg0);

  i32 _func0(i32 x) {
    var t0 = vm.i32_rem_s(x, 3);
    return t0;
  }

  i32 _func1(i32 x) {
    var t0 = vm.i32_rem_u(x, 3);
    return t0;
  }

  i64 _func2(i64 x) {
    var t0 = vm.i64_rem_s(x, 3);
    return t0;
  }

  i64 _func3(i64 x) {
    var t0 = vm.i64_rem_u(x, 3);
    return t0;
  }
}

typedef FunctionType0 = i32 Function(i32);
typedef FunctionType1 = i64 Function(i64);
