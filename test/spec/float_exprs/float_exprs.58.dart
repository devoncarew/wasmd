// Generated from test/spec/float_exprs/float_exprs.58.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs58Module implements Module {
  FloatExprs58Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_no_algebraic_factoring(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(x);
    frame.f32_mul();
    frame.push(y);
    frame.push(y);
    frame.f32_mul();
    frame.f32_sub();
    return frame.pop();
  }

  f64 f64_no_algebraic_factoring(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(x);
    frame.f64_mul();
    frame.push(y);
    frame.push(y);
    frame.f64_mul();
    frame.f64_sub();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32, f32);
typedef FunctionType1 = f64 Function(f64, f64);
