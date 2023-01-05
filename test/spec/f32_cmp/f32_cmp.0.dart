// Generated from test/spec/f32_cmp/f32_cmp.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class F32Cmp0Module implements Module {
  F32Cmp0Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 eq(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_eq();
    return frame.pop();
  }

  i32 ge(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_ge();
    return frame.pop();
  }

  i32 gt(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_gt();
    return frame.pop();
  }

  i32 le(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_le();
    return frame.pop();
  }

  i32 lt(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_lt();
    return frame.pop();
  }

  i32 ne(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_ne();
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(f32, f32);
