// Generated from test/spec/float_exprs/float_exprs.51.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs51Module implements Module {
  FloatExprs51Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 llvm_pr27153(i32 arg0) => _func0(arg0);

  f32 _func0(i32 x) {
    var t0 = vm.i32_and(x, 0xfffffff);
    var t1 = vm.f32_convert_i32_s(t0);
    var t2 = vm.f32_add(t1, -8388608.0);
    return t2;
  }
}

typedef FunctionType0 = f32 Function(i32);
