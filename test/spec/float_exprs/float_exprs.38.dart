// Generated from test/spec/float_exprs/float_exprs.38.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs38Module extends Module {
  FloatExprs38Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 no_demote_mixed_sub(f64 arg0, f32 arg1) => _func0(arg0, arg1);

  f32 _func0(f64 x, f32 y) {
    var t0 = vm.f64_promote_f32(y);
    var t1 = vm.f64_sub(x, t0);
    var t2 = vm.f32_demote_f64(t1);
    return t2;
  }
}

typedef FunctionType0 = f32 Function(f64, f32);
