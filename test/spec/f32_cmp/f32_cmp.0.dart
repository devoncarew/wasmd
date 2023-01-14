// Generated from test/spec/f32_cmp/f32_cmp.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class F32Cmp0Module implements Module {
  F32Cmp0Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 eq(f32 arg0, f32 arg1) => _func0(arg0, arg1);
  i32 ne(f32 arg0, f32 arg1) => _func1(arg0, arg1);
  i32 lt(f32 arg0, f32 arg1) => _func2(arg0, arg1);
  i32 le(f32 arg0, f32 arg1) => _func3(arg0, arg1);
  i32 gt(f32 arg0, f32 arg1) => _func4(arg0, arg1);
  i32 ge(f32 arg0, f32 arg1) => _func5(arg0, arg1);

  i32 _func0(f32 x, f32 y) {
    var t0 = vm.f32_eq(x, y);
    return t0;
  }

  i32 _func1(f32 x, f32 y) {
    var t0 = vm.f32_ne(x, y);
    return t0;
  }

  i32 _func2(f32 x, f32 y) {
    var t0 = vm.f32_lt(x, y);
    return t0;
  }

  i32 _func3(f32 x, f32 y) {
    var t0 = vm.f32_le(x, y);
    return t0;
  }

  i32 _func4(f32 x, f32 y) {
    var t0 = vm.f32_gt(x, y);
    return t0;
  }

  i32 _func5(f32 x, f32 y) {
    var t0 = vm.f32_ge(x, y);
    return t0;
  }
}

typedef FunctionType0 = i32 Function(f32, f32);
