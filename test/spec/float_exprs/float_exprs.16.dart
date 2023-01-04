// Generated from test/spec/float_exprs/float_exprs.16.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs16Module implements Module {
  FloatExprs16Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_no_fold_div_3(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_const(3.0);
    frame.f32_div();
    return frame.pop();
  }

  f64 f64_no_fold_div_3(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_const(3.0);
    frame.f64_div();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32);
typedef FunctionType1 = f64 Function(f64);
