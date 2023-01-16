// Generated from test/spec/float_exprs/float_exprs.85.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs85Module implements Module {
  FloatExprs85Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_epsilon() => _func0();
  f64 f64_epsilon() => _func1();

  f32 _func0() {
    f32 x = 0;
    f32 result = 0;

    x = 1.0;

    loop_label_0:
    for (;;) {
      result = x;
      var t0 = vm.f32_mul(x, 0.5);
      x = t0;
      var t1 = vm.f32_add(t0, 1.0);
      var t2 = vm.f32_gt(t1, 1.0);
      if (t2 != 0) continue loop_label_0;
      break;
    }
    return result;
  }

  f64 _func1() {
    f64 x = 0;
    f64 result = 0;

    x = 1.0;

    loop_label_0:
    for (;;) {
      result = x;
      var t0 = vm.f64_mul(x, 0.5);
      x = t0;
      var t1 = vm.f64_add(t0, 1.0);
      var t2 = vm.f64_gt(t1, 1.0);
      if (t2 != 0) continue loop_label_0;
      break;
    }
    return result;
  }
}

typedef FunctionType0 = f32 Function();
typedef FunctionType1 = f64 Function();
