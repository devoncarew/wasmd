// Generated from test/spec/float_exprs/float_exprs.26.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs26Module implements Module {
  FloatExprs26Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_no_approximate_reciprocal(f32 x) {
    final frame = Frame(this);
    frame.f32_const(1.0);
    frame.push(x);
    frame.f32_div();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32);
