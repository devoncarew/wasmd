// Generated from test/spec/float_exprs/float_exprs.53.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs53Module implements Module {
  FloatExprs53Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f64 thepast0(f64 arg0, f64 arg1, f64 arg2, f64 arg3) => _func0(arg0, arg1, arg2, arg3);
  f64 thepast1(f64 arg0, f64 arg1, f64 arg2) => _func1(arg0, arg1, arg2);
  f32 thepast2(f32 arg0, f32 arg1, f32 arg2) => _func2(arg0, arg1, arg2);

  f64 _func0(f64 a, f64 b, f64 c, f64 d) {
    var t0 = vm.f64_mul(a, b);
    var t1 = vm.f64_mul(c, d);
    var t2 = vm.f64_div(t0, t1);
    return t2;
  }

  f64 _func1(f64 a, f64 b, f64 c) {
    var t0 = vm.f64_mul(a, b);
    var t1 = vm.f64_sub(t0, c);
    return t1;
  }

  f32 _func2(f32 a, f32 b, f32 c) {
    var t0 = vm.f32_mul(a, b);
    var t1 = vm.f32_mul(t0, c);
    return t1;
  }
}

typedef FunctionType0 = f64 Function(f64, f64, f64, f64);
typedef FunctionType1 = f64 Function(f64, f64, f64);
typedef FunctionType2 = f32 Function(f32, f32, f32);
