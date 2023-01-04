// Generated from test/spec/float_exprs/float_exprs.70.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs70Module implements Module {
  FloatExprs70Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_no_fold_add_divs(f32 x, f32 y, f32 z) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(z);
    frame.f32_div();
    frame.push(y);
    frame.push(z);
    frame.f32_div();
    frame.f32_add();
    return frame.pop();
  }

  f64 f64_no_fold_add_divs(f64 x, f64 y, f64 z) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(z);
    frame.f64_div();
    frame.push(y);
    frame.push(z);
    frame.f64_div();
    frame.f64_add();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32, f32, f32);
typedef FunctionType1 = f64 Function(f64, f64, f64);
