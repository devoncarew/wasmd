// Generated from test/spec/float_exprs/float_exprs.50.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs50Module implements Module {
  FloatExprs50Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 llvm_pr26746(f32 arg0) => _func0(arg0);

  f32 _func0(f32 x) {
    var t0 = vm.f32_sub(-0.0, x);
    var t1 = vm.f32_sub(0.0, t0);
    return t1;
  }
}

typedef FunctionType0 = f32 Function(f32);
