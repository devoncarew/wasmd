// Generated from test/spec/float_exprs/float_exprs.35.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs35Module implements Module {
  FloatExprs35Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f64 no_fold_demote_promote(f64 arg0) => _func0(arg0);

  f64 _func0(f64 x) {
    var t0 = vm.f32_demote_f64(x);
    var t1 = vm.f64_promote_f32(t0);
    return t1;
  }
}

typedef FunctionType0 = f64 Function(f64);
