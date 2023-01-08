// Generated from test/spec/float_exprs/float_exprs.91.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs91Module implements Module {
  FloatExprs91Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_golden_ratio(f32 arg0, f32 arg1, f32 arg2) => _func0(arg0, arg1, arg2);
  f64 f64_golden_ratio(f64 arg0, f64 arg1, f64 arg2) => _func1(arg0, arg1, arg2);

  f32 _func0(f32 a, f32 b, f32 c) {
    final frame = Frame(this);
    frame.push(a);
    frame.push(b);
    frame.push(c);
    frame.f32_sqrt();
    frame.f32_add();
    frame.f32_mul();
    return frame.pop();
  }

  f64 _func1(f64 a, f64 b, f64 c) {
    final frame = Frame(this);
    frame.push(a);
    frame.push(b);
    frame.push(c);
    frame.f64_sqrt();
    frame.f64_add();
    frame.f64_mul();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32, f32, f32);
typedef FunctionType1 = f64 Function(f64, f64, f64);
