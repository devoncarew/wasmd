// Generated from test/spec/float_exprs/float_exprs.40.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs40Module extends Module {
  FloatExprs40Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(
    1,
    1,
  );

  @override
  late final List<Table> tables = [];

  void init(i32 arg0, f32 arg1) => _func0(arg0, arg1);
  void run(i32 arg0, f32 arg1) => _func1(arg0, arg1);
  f32 check(i32 arg0) => _func2(arg0);

  void _func0(i32 i, f32 x) {
    vm.f32_store(2, 0, i, x);
  }

  void _func1(i32 n, f32 z) {
    i32 i = 0;

    block_label_0:
    {
      loop_label_1:
      for (;;) {
        var t0 = vm.f32_load(2, 0, i);
        var t1 = vm.f32_div(t0, z);
        vm.f32_store(2, 0, i, t1);
        var t2 = vm.i32_add(i, 4);
        i = t2;
        var t3 = vm.i32_lt_u(i, n);
        if (t3 != 0) continue loop_label_1;
        break;
      }
    }
  }

  f32 _func2(i32 i) {
    var t0 = vm.f32_load(2, 0, i);
    return t0;
  }
}

typedef FunctionType0 = void Function(i32, f32);
typedef FunctionType1 = f32 Function(i32);
