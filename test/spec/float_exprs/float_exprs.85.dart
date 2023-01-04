// Generated from test/spec/float_exprs/float_exprs.85.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs85Module implements Module {
  FloatExprs85Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_epsilon() {
    f32 x = 0;
    f32 result = 0;

    final frame = Frame(this);
    frame.f32_const(1.0);
    x = frame.pop();

    loop_label_0:
    for (;;) {
      frame.push(x);
      result = frame.peek();
      frame.f32_const(0.5);
      frame.f32_mul();
      x = frame.peek();
      frame.f32_const(1.0);
      frame.f32_add();
      frame.f32_const(1.0);
      frame.f32_gt();
      if (frame.pop() != 0) {
        continue loop_label_0;
      }
      break;
    }
    frame.push(result);
    return frame.pop();
  }

  f64 f64_epsilon() {
    f64 x = 0;
    f64 result = 0;

    final frame = Frame(this);
    frame.f64_const(1.0);
    x = frame.pop();

    loop_label_0:
    for (;;) {
      frame.push(x);
      result = frame.peek();
      frame.f64_const(0.5);
      frame.f64_mul();
      x = frame.peek();
      frame.f64_const(1.0);
      frame.f64_add();
      frame.f64_const(1.0);
      frame.f64_gt();
      if (frame.pop() != 0) {
        continue loop_label_0;
      }
      break;
    }
    frame.push(result);
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function();
typedef FunctionType1 = f64 Function();
