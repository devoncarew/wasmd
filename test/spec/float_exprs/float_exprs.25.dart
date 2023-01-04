// Generated from test/spec/float_exprs/float_exprs.25.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs25Module implements Module {
  FloatExprs25Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_no_fold_to_hypot(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(x);
    frame.f32_mul();
    frame.push(y);
    frame.push(y);
    frame.f32_mul();
    frame.f32_add();
    frame.f32_sqrt();
    return frame.pop();
  }

  f64 f64_no_fold_to_hypot(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(x);
    frame.f64_mul();
    frame.push(y);
    frame.push(y);
    frame.f64_mul();
    frame.f64_add();
    frame.f64_sqrt();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32, f32);
typedef FunctionType1 = f64 Function(f64, f64);
