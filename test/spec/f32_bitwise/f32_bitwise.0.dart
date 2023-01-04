// Generated from test/spec/f32_bitwise/f32_bitwise.0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class F32Bitwise0Module implements Module {
  F32Bitwise0Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 abs(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_abs();
    return frame.pop();
  }

  f32 neg(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_neg();
    return frame.pop();
  }

  f32 copysign(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_copysign();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32);
typedef FunctionType1 = f32 Function(f32, f32);