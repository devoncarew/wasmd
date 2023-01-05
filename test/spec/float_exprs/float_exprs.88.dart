// Generated from test/spec/float_exprs/float_exprs.88.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs88Module implements Module {
  FloatExprs88Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f64 dot_product_example(f64 x0, f64 x1, f64 x2, f64 x3, f64 y0, f64 y1, f64 y2, f64 y3) {
    final frame = Frame(this);
    frame.push(x0);
    frame.push(y0);
    frame.f64_mul();
    frame.push(x1);
    frame.push(y1);
    frame.f64_mul();
    frame.f64_add();
    frame.push(x2);
    frame.push(y2);
    frame.f64_mul();
    frame.f64_add();
    frame.push(x3);
    frame.push(y3);
    frame.f64_mul();
    frame.f64_add();
    return frame.pop();
  }

  f64 with_binary_sum_collapse(f64 x0, f64 x1, f64 x2, f64 x3, f64 y0, f64 y1, f64 y2, f64 y3) {
    final frame = Frame(this);
    frame.push(x0);
    frame.push(y0);
    frame.f64_mul();
    frame.push(x1);
    frame.push(y1);
    frame.f64_mul();
    frame.f64_add();
    frame.push(x2);
    frame.push(y2);
    frame.f64_mul();
    frame.push(x3);
    frame.push(y3);
    frame.f64_mul();
    frame.f64_add();
    frame.f64_add();
    return frame.pop();
  }
}

typedef FunctionType0 = f64 Function(f64, f64, f64, f64, f64, f64, f64, f64);
