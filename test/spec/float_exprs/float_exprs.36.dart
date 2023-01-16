// Generated from test/spec/float_exprs/float_exprs.36.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs36Module extends Module {
  FloatExprs36Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 no_fold_promote_demote(f32 arg0) => _func0(arg0);

  f32 _func0(f32 x) {
    var t0 = vm.f64_promote_f32(x);
    var t1 = vm.f32_demote_f64(t0);
    return t1;
  }
}

typedef FunctionType0 = f32 Function(f32);
