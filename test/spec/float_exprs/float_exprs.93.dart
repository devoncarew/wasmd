// Generated from test/spec/float_exprs/float_exprs.93.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs93Module implements Module {
  FloatExprs93Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 point_four(f64 four, f64 ten) {
    final frame = Frame(this);
    frame.push(four);
    frame.push(ten);
    frame.f64_div();
    frame.f64_const(0.4);
    frame.f64_lt();
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(f64, f64);
