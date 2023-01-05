// Generated from test/spec/f64_cmp/f64_cmp.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class F64Cmp0Module implements Module {
  F64Cmp0Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 eq(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_eq();
    return frame.pop();
  }

  i32 ge(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_ge();
    return frame.pop();
  }

  i32 gt(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_gt();
    return frame.pop();
  }

  i32 le(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_le();
    return frame.pop();
  }

  i32 lt(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_lt();
    return frame.pop();
  }

  i32 ne(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_ne();
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(f64, f64);
