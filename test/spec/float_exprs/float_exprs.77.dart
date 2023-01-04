// Generated from test/spec/float_exprs/float_exprs.77.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs77Module implements Module {
  FloatExprs77Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 f32_no_extended_precision_div(f32 x, f32 y, f32 z) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_div();
    frame.push(z);
    frame.f32_eq();
    return frame.pop();
  }

  i32 f64_no_extended_precision_div(f64 x, f64 y, f64 z) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_div();
    frame.push(z);
    frame.f64_eq();
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(f32, f32, f32);
typedef FunctionType1 = i32 Function(f64, f64, f64);
