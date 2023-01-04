// Generated from test/spec/float_exprs/float_exprs.56.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs56Module implements Module {
  FloatExprs56Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_no_fold_recip_recip(f32 x) {
    final frame = Frame(this);
    frame.f32_const(1.0);
    frame.f32_const(1.0);
    frame.push(x);
    frame.f32_div();
    frame.f32_div();
    return frame.pop();
  }

  f64 f64_no_fold_recip_recip(f64 x) {
    final frame = Frame(this);
    frame.f64_const(1.0);
    frame.f64_const(1.0);
    frame.push(x);
    frame.f64_div();
    frame.f64_div();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32);
typedef FunctionType1 = f64 Function(f64);
