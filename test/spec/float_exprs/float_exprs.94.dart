// Generated from test/spec/float_exprs/float_exprs.94.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs94Module extends Module {
  FloatExprs94Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f64 tau(i32 arg0) => _func0(arg0);

  f64 _func0(i32 arg0) {
    f64 local0 = 0;
    f64 local1 = 0;
    f64 local2 = 0;
    f64 local3 = 0;

    local0 = 0.0;
    block_label_0:
    {
      var t0 = vm.i32_lt_s(arg0, 1);
      if (t0 != 0) break block_label_0;
      local1 = 1.0;
      local2 = 0.0;

      loop_label_1:
      for (;;) {
        var t1 = vm.f64_mul(local2, 8.0);
        local3 = t1;
        var t2 = vm.f64_add(t1, 1.0);
        var t3 = vm.f64_div(8.0, t2);
        var t4 = vm.f64_add(local3, 4.0);
        var t5 = vm.f64_div(4.0, t4);
        var t6 = vm.f64_sub(t3, t5);
        var t7 = vm.f64_add(local3, 5.0);
        var t8 = vm.f64_div(2.0, t7);
        var t9 = vm.f64_sub(t6, t8);
        var t10 = vm.f64_add(local3, 6.0);
        var t11 = vm.f64_div(2.0, t10);
        var t12 = vm.f64_sub(t9, t11);
        var t13 = vm.f64_mul(local1, t12);
        var t14 = vm.f64_add(local0, t13);
        local0 = t14;
        var t15 = vm.f64_add(local2, 1.0);
        local2 = t15;
        var t16 = vm.f64_mul(local1, 0.0625);
        local1 = t16;
        var t17 = vm.i32_add(arg0, -1);
        arg0 = t17;
        if (t17 != 0) continue loop_label_1;
        break;
      }
    }
    return local0;
  }
}

typedef FunctionType0 = f64 Function(i32);
