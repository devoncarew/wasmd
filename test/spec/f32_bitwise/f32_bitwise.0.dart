// Generated from test/spec/f32_bitwise/f32_bitwise.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class F32Bitwise0Module extends Module {
  F32Bitwise0Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 abs(f32 arg0) => _func0(arg0);
  f32 neg(f32 arg0) => _func1(arg0);
  f32 copysign(f32 arg0, f32 arg1) => _func2(arg0, arg1);

  f32 _func0(f32 x) {
    var t0 = vm.f32_abs(x);
    return t0;
  }

  f32 _func1(f32 x) {
    var t0 = vm.f32_neg(x);
    return t0;
  }

  f32 _func2(f32 x, f32 y) {
    var t0 = vm.f32_copysign(x, y);
    return t0;
  }
}

typedef FunctionType0 = f32 Function(f32);
typedef FunctionType1 = f32 Function(f32, f32);
