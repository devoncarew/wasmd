// Generated from test/spec/float_exprs/float_exprs.76.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs76Module extends Module {
  FloatExprs76Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 f32_recoding_eq(f32 arg0, f32 arg1) => _func0(arg0, arg1);
  i32 f32_recoding_le(f32 arg0, f32 arg1) => _func1(arg0, arg1);
  i32 f32_recoding_lt(f32 arg0, f32 arg1) => _func2(arg0, arg1);
  i32 f64_recoding_eq(f64 arg0, f64 arg1) => _func3(arg0, arg1);
  i32 f64_recoding_le(f64 arg0, f64 arg1) => _func4(arg0, arg1);
  i32 f64_recoding_lt(f64 arg0, f64 arg1) => _func5(arg0, arg1);
  f32 recoding_demote(f64 arg0, f32 arg1) => _func6(arg0, arg1);

  i32 _func0(f32 x, f32 y) {
    var t0 = vm.f32_mul(x, y);
    var t1 = vm.f32_eq(t0, x);
    return t1;
  }

  i32 _func1(f32 x, f32 y) {
    var t0 = vm.f32_mul(x, y);
    var t1 = vm.f32_le(t0, x);
    return t1;
  }

  i32 _func2(f32 x, f32 y) {
    var t0 = vm.f32_mul(x, y);
    var t1 = vm.f32_lt(t0, x);
    return t1;
  }

  i32 _func3(f64 x, f64 y) {
    var t0 = vm.f64_mul(x, y);
    var t1 = vm.f64_eq(t0, x);
    return t1;
  }

  i32 _func4(f64 x, f64 y) {
    var t0 = vm.f64_mul(x, y);
    var t1 = vm.f64_le(t0, x);
    return t1;
  }

  i32 _func5(f64 x, f64 y) {
    var t0 = vm.f64_mul(x, y);
    var t1 = vm.f64_lt(t0, x);
    return t1;
  }

  f32 _func6(f64 x, f32 y) {
    var t0 = vm.f32_demote_f64(x);
    var t1 = vm.f32_mul(t0, y);
    return t1;
  }
}

typedef FunctionType0 = i32 Function(f32, f32);
typedef FunctionType1 = i32 Function(f64, f64);
typedef FunctionType2 = f32 Function(f64, f32);
