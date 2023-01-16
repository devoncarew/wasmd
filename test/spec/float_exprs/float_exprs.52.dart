// Generated from test/spec/float_exprs/float_exprs.52.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs52Module implements Module {
  FloatExprs52Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 llvm_pr27036(i32 arg0, i32 arg1) => _func0(arg0, arg1);

  f32 _func0(i32 x, i32 y) {
    var t0 = vm.i32_or(x, -0x17e0035);
    var t1 = vm.f32_convert_i32_s(t0);
    var t2 = vm.i32_and(y, 0xe40000);
    var t3 = vm.f32_convert_i32_s(t2);
    var t4 = vm.f32_add(t1, t3);
    return t4;
  }
}

typedef FunctionType0 = f32 Function(i32, i32);
