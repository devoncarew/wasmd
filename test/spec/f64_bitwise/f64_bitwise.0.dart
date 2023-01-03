// Generated from test/spec/f64_bitwise/f64_bitwise.0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class F64Bitwise0Module implements Module {
  F64Bitwise0Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f64 abs(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_abs();
    return frame.pop();
  }

  f64 neg(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_neg();
    return frame.pop();
  }

  f64 copysign(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_copysign();
    return frame.pop();
  }
}

typedef FunctionType0 = f64 Function(f64);
typedef FunctionType1 = f64 Function(f64, f64);
