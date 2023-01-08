// Generated from test/spec/float_exprs/float_exprs.77.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs77Module implements Module {
  FloatExprs77Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 f32_no_extended_precision_div(f32 arg0, f32 arg1, f32 arg2) => _func0(arg0, arg1, arg2);
  i32 f64_no_extended_precision_div(f64 arg0, f64 arg1, f64 arg2) => _func1(arg0, arg1, arg2);

  i32 _func0(f32 x, f32 y, f32 z) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_div();
    frame.push(z);
    frame.f32_eq();
    return frame.pop();
  }

  i32 _func1(f64 x, f64 y, f64 z) {
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
