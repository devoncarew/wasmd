// Generated from test/spec/float_exprs/float_exprs.44.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs44Module extends Module {
  FloatExprs44Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_no_fold_lt_if(f32 arg0, f32 arg1) => _func0(arg0, arg1);
  f32 f32_no_fold_le_if(f32 arg0, f32 arg1) => _func1(arg0, arg1);
  f32 f32_no_fold_gt_if(f32 arg0, f32 arg1) => _func2(arg0, arg1);
  f32 f32_no_fold_ge_if(f32 arg0, f32 arg1) => _func3(arg0, arg1);
  f64 f64_no_fold_lt_if(f64 arg0, f64 arg1) => _func4(arg0, arg1);
  f64 f64_no_fold_le_if(f64 arg0, f64 arg1) => _func5(arg0, arg1);
  f64 f64_no_fold_gt_if(f64 arg0, f64 arg1) => _func6(arg0, arg1);
  f64 f64_no_fold_ge_if(f64 arg0, f64 arg1) => _func7(arg0, arg1);

  f32 _func0(f32 x, f32 y) {
    var t0 = vm.f32_lt(x, y);

    var block0 = 0.0; // => f32
    if_label_0:
    if (t0 != 0) {
      block0 = x;
    } else {
      block0 = y;
    }
    return block0;
  }

  f32 _func1(f32 x, f32 y) {
    var t0 = vm.f32_le(x, y);

    var block0 = 0.0; // => f32
    if_label_0:
    if (t0 != 0) {
      block0 = x;
    } else {
      block0 = y;
    }
    return block0;
  }

  f32 _func2(f32 x, f32 y) {
    var t0 = vm.f32_gt(x, y);

    var block0 = 0.0; // => f32
    if_label_0:
    if (t0 != 0) {
      block0 = x;
    } else {
      block0 = y;
    }
    return block0;
  }

  f32 _func3(f32 x, f32 y) {
    var t0 = vm.f32_ge(x, y);

    var block0 = 0.0; // => f32
    if_label_0:
    if (t0 != 0) {
      block0 = x;
    } else {
      block0 = y;
    }
    return block0;
  }

  f64 _func4(f64 x, f64 y) {
    var t0 = vm.f64_lt(x, y);

    var block0 = 0.0; // => f64
    if_label_0:
    if (t0 != 0) {
      block0 = x;
    } else {
      block0 = y;
    }
    return block0;
  }

  f64 _func5(f64 x, f64 y) {
    var t0 = vm.f64_le(x, y);

    var block0 = 0.0; // => f64
    if_label_0:
    if (t0 != 0) {
      block0 = x;
    } else {
      block0 = y;
    }
    return block0;
  }

  f64 _func6(f64 x, f64 y) {
    var t0 = vm.f64_gt(x, y);

    var block0 = 0.0; // => f64
    if_label_0:
    if (t0 != 0) {
      block0 = x;
    } else {
      block0 = y;
    }
    return block0;
  }

  f64 _func7(f64 x, f64 y) {
    var t0 = vm.f64_ge(x, y);

    var block0 = 0.0; // => f64
    if_label_0:
    if (t0 != 0) {
      block0 = x;
    } else {
      block0 = y;
    }
    return block0;
  }
}

typedef FunctionType0 = f32 Function(f32, f32);
typedef FunctionType1 = f64 Function(f64, f64);
