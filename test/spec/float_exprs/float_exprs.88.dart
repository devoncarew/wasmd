// Generated from test/spec/float_exprs/float_exprs.88.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs88Module implements Module {
  FloatExprs88Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f64 dot_product_example(f64 arg0, f64 arg1, f64 arg2, f64 arg3, f64 arg4, f64 arg5, f64 arg6, f64 arg7) =>
      _func0(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
  f64 with_binary_sum_collapse(
          f64 arg0, f64 arg1, f64 arg2, f64 arg3, f64 arg4, f64 arg5, f64 arg6, f64 arg7) =>
      _func1(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7);

  f64 _func0(f64 x0, f64 x1, f64 x2, f64 x3, f64 y0, f64 y1, f64 y2, f64 y3) {
    var t0 = vm.f64_mul(x0, y0);
    var t1 = vm.f64_mul(x1, y1);
    var t2 = vm.f64_add(t0, t1);
    var t3 = vm.f64_mul(x2, y2);
    var t4 = vm.f64_add(t2, t3);
    var t5 = vm.f64_mul(x3, y3);
    var t6 = vm.f64_add(t4, t5);
    return t6;
  }

  f64 _func1(f64 x0, f64 x1, f64 x2, f64 x3, f64 y0, f64 y1, f64 y2, f64 y3) {
    var t0 = vm.f64_mul(x0, y0);
    var t1 = vm.f64_mul(x1, y1);
    var t2 = vm.f64_add(t0, t1);
    var t3 = vm.f64_mul(x2, y2);
    var t4 = vm.f64_mul(x3, y3);
    var t5 = vm.f64_add(t3, t4);
    var t6 = vm.f64_add(t2, t5);
    return t6;
  }
}

typedef FunctionType0 = f64 Function(f64, f64, f64, f64, f64, f64, f64, f64);
