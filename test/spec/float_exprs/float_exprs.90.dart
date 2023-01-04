// Generated from test/spec/float_exprs/float_exprs.90.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs90Module implements Module {
  FloatExprs90Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_division_by_small_number(f32 a, f32 b, f32 c) {
    final frame = Frame(this);
    frame.push(a);
    frame.push(b);
    frame.push(c);
    frame.f32_div();
    frame.f32_sub();
    return frame.pop();
  }

  f64 f64_division_by_small_number(f64 a, f64 b, f64 c) {
    final frame = Frame(this);
    frame.push(a);
    frame.push(b);
    frame.push(c);
    frame.f64_div();
    frame.f64_sub();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32, f32, f32);
typedef FunctionType1 = f64 Function(f64, f64, f64);
