// Generated from test/spec/float_exprs/float_exprs.21.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs21Module implements Module {
  FloatExprs21Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_no_reassociate_add(f32 x, f32 y, f32 z, f32 w) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_add();
    frame.push(z);
    frame.f32_add();
    frame.push(w);
    frame.f32_add();
    return frame.pop();
  }

  f64 f64_no_reassociate_add(f64 x, f64 y, f64 z, f64 w) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_add();
    frame.push(z);
    frame.f64_add();
    frame.push(w);
    frame.f64_add();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32, f32, f32, f32);
typedef FunctionType1 = f64 Function(f64, f64, f64, f64);
