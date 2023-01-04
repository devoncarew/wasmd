// Generated from test/spec/float_exprs/float_exprs.0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs0Module implements Module {
  FloatExprs0Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f64 f64_no_contraction(f64 x, f64 y, f64 z) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_mul();
    frame.push(z);
    frame.f64_add();
    return frame.pop();
  }
}

typedef FunctionType0 = f64 Function(f64, f64, f64);
