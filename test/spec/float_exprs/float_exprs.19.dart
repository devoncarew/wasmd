// Generated from test/spec/float_exprs/float_exprs.19.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs19Module implements Module {
  FloatExprs19Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_no_regroup_div_mul(f32 x, f32 y, f32 z) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.push(z);
    frame.f32_div();
    frame.f32_mul();
    return frame.pop();
  }

  f64 f64_no_regroup_div_mul(f64 x, f64 y, f64 z) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.push(z);
    frame.f64_div();
    frame.f64_mul();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32, f32, f32);
typedef FunctionType1 = f64 Function(f64, f64, f64);
