// Generated from test/spec/float_exprs/float_exprs.92.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs92Module implements Module {
  FloatExprs92Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_silver_means(f32 n) {
    final frame = Frame(this);
    frame.f32_const(0.5);
    frame.push(n);
    frame.push(n);
    frame.push(n);
    frame.f32_mul();
    frame.f32_const(4.0);
    frame.f32_add();
    frame.f32_sqrt();
    frame.f32_add();
    frame.f32_mul();
    return frame.pop();
  }

  f64 f64_silver_means(f64 n) {
    final frame = Frame(this);
    frame.f64_const(0.5);
    frame.push(n);
    frame.push(n);
    frame.push(n);
    frame.f64_mul();
    frame.f64_const(4.0);
    frame.f64_add();
    frame.f64_sqrt();
    frame.f64_add();
    frame.f64_mul();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32);
typedef FunctionType1 = f64 Function(f64);
