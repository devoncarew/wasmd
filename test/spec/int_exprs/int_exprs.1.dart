// Generated from test/spec/int_exprs/int_exprs.1.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class IntExprs1Module extends Module {
  IntExprs1Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i64 i64_no_fold_wrap_extend_s(i64 arg0) => _func0(arg0);

  i64 _func0(i64 x) {
    var t0 = vm.i32_wrap_i64(x);
    var t1 = vm.i64_extend_i32_s(t0);
    return t1;
  }
}

typedef FunctionType0 = i64 Function(i64);
