// Generated from test/spec/float_exprs/float_exprs.6.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs6Module implements Module {
  FloatExprs6Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_no_fold_mul_one(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f32_const(1.0);
    frame.f32_mul();
    return frame.pop();
  }

  f64 f64_no_fold_mul_one(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_const(1.0);
    frame.f64_mul();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32);
typedef FunctionType1 = f64 Function(f64);