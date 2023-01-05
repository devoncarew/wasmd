// Generated from test/spec/float_exprs/float_exprs.24.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs24Module implements Module {
  FloatExprs24Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_no_fold_div_neg0(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_const(-0.0);
    frame.f32_div();
    return frame.pop();
  }

  f64 f64_no_fold_div_neg0(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_const(-0.0);
    frame.f64_div();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32);
typedef FunctionType1 = f64 Function(f64);
