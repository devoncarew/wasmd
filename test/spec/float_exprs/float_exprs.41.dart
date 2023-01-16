// Generated from test/spec/float_exprs/float_exprs.41.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs41Module implements Module {
  FloatExprs41Module() {
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

  void init(i32 arg0, f64 arg1) => _func0(arg0, arg1);
  void run(i32 arg0, f64 arg1) => _func1(arg0, arg1);
  f64 check(i32 arg0) => _func2(arg0);

  void _func0(i32 i, f64 x) {
    var t0 = vm.f64_store(3, 0, i, x);
  }

  void _func1(i32 n, f64 z) {
    i32 i = 0;

    block_label_0:
    {
      loop_label_1:
      for (;;) {
        var t0 = vm.f64_load(3, 0, i);
        var t1 = vm.f64_div(t0, z);
        var t2 = vm.f64_store(3, 0, i, t1);
        var t3 = vm.i32_add(i, 8);
        i = t3;
        var t4 = vm.i32_lt_u(i, n);
        if (t4 != 0) continue loop_label_1;
        break;
      }
    }
  }

  f64 _func2(i32 i) {
    var t0 = vm.f64_load(3, 0, i);
    return t0;
  }
}

typedef FunctionType0 = void Function(i32, f64);
typedef FunctionType1 = f64 Function(i32);
