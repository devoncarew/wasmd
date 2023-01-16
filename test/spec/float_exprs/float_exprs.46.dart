// Generated from test/spec/float_exprs/float_exprs.46.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs46Module implements Module {
  FloatExprs46Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_no_fold_lt_if_to_abs(f32 arg0) => _func0(arg0);
  f32 f32_no_fold_le_if_to_abs(f32 arg0) => _func1(arg0);
  f32 f32_no_fold_gt_if_to_abs(f32 arg0) => _func2(arg0);
  f32 f32_no_fold_ge_if_to_abs(f32 arg0) => _func3(arg0);
  f64 f64_no_fold_lt_if_to_abs(f64 arg0) => _func4(arg0);
  f64 f64_no_fold_le_if_to_abs(f64 arg0) => _func5(arg0);
  f64 f64_no_fold_gt_if_to_abs(f64 arg0) => _func6(arg0);
  f64 f64_no_fold_ge_if_to_abs(f64 arg0) => _func7(arg0);

  f32 _func0(f32 x) {
    var t0 = vm.f32_lt(x, 0.0);

    var block0 = 0.0; // => f32
    if_label_0:
    if (t0 != 0) {
      var t1 = vm.f32_neg(x);
      block0 = t1;
    } else {
      block0 = x;
    }
    return block0;
  }

  f32 _func1(f32 x) {
    var t0 = vm.f32_le(x, -0.0);

    var block0 = 0.0; // => f32
    if_label_0:
    if (t0 != 0) {
      var t1 = vm.f32_neg(x);
      block0 = t1;
    } else {
      block0 = x;
    }
    return block0;
  }

  f32 _func2(f32 x) {
    var t0 = vm.f32_gt(x, -0.0);

    var block0 = 0.0; // => f32
    if_label_0:
    if (t0 != 0) {
      block0 = x;
    } else {
      var t1 = vm.f32_neg(x);
      block0 = t1;
    }
    return block0;
  }

  f32 _func3(f32 x) {
    var t0 = vm.f32_ge(x, 0.0);

    var block0 = 0.0; // => f32
    if_label_0:
    if (t0 != 0) {
      block0 = x;
    } else {
      var t1 = vm.f32_neg(x);
      block0 = t1;
    }
    return block0;
  }

  f64 _func4(f64 x) {
    var t0 = vm.f64_lt(x, 0.0);

    var block0 = 0.0; // => f64
    if_label_0:
    if (t0 != 0) {
      var t1 = vm.f64_neg(x);
      block0 = t1;
    } else {
      block0 = x;
    }
    return block0;
  }

  f64 _func5(f64 x) {
    var t0 = vm.f64_le(x, -0.0);

    var block0 = 0.0; // => f64
    if_label_0:
    if (t0 != 0) {
      var t1 = vm.f64_neg(x);
      block0 = t1;
    } else {
      block0 = x;
    }
    return block0;
  }

  f64 _func6(f64 x) {
    var t0 = vm.f64_gt(x, -0.0);

    var block0 = 0.0; // => f64
    if_label_0:
    if (t0 != 0) {
      block0 = x;
    } else {
      var t1 = vm.f64_neg(x);
      block0 = t1;
    }
    return block0;
  }

  f64 _func7(f64 x) {
    var t0 = vm.f64_ge(x, 0.0);

    var block0 = 0.0; // => f64
    if_label_0:
    if (t0 != 0) {
      block0 = x;
    } else {
      var t1 = vm.f64_neg(x);
      block0 = t1;
    }
    return block0;
  }
}

typedef FunctionType0 = f32 Function(f32);
typedef FunctionType1 = f64 Function(f64);
