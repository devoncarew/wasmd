// Generated from test/spec/float_exprs/float_exprs.80.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs80Module implements Module {
  FloatExprs80Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f32_compute_radix(f32 arg0, f32 arg1) => _func0(arg0, arg1);
  f64 f64_compute_radix(f64 arg0, f64 arg1) => _func1(arg0, arg1);

  f32 _func0(f32 arg0, f32 arg1) {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      frame.push(arg0);
      frame.push(arg0);
      frame.f32_add();
      arg0 = frame.peek();
      frame.f32_const(1.0);
      frame.f32_add();
      frame.push(arg0);
      frame.f32_sub();
      frame.f32_const(-1.0);
      frame.f32_add();
      frame.f32_const(0.0);
      frame.f32_eq();
      if (frame.pop() != 0) {
        continue loop_label_0;
      }
      break;
    }

    loop_label_0:
    for (;;) {
      frame.push(arg0);
      frame.push(arg1);
      frame.f32_const(1.0);
      frame.f32_add();
      arg1 = frame.peek();
      frame.f32_add();
      frame.push(arg0);
      frame.f32_sub();
      frame.push(arg1);
      frame.f32_sub();
      frame.f32_const(0.0);
      frame.f32_ne();
      if (frame.pop() != 0) {
        continue loop_label_0;
      }
      break;
    }
    frame.push(arg1);
    return frame.pop();
  }

  f64 _func1(f64 arg0, f64 arg1) {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      frame.push(arg0);
      frame.push(arg0);
      frame.f64_add();
      arg0 = frame.peek();
      frame.f64_const(1.0);
      frame.f64_add();
      frame.push(arg0);
      frame.f64_sub();
      frame.f64_const(-1.0);
      frame.f64_add();
      frame.f64_const(0.0);
      frame.f64_eq();
      if (frame.pop() != 0) {
        continue loop_label_0;
      }
      break;
    }

    loop_label_0:
    for (;;) {
      frame.push(arg0);
      frame.push(arg1);
      frame.f64_const(1.0);
      frame.f64_add();
      arg1 = frame.peek();
      frame.f64_add();
      frame.push(arg0);
      frame.f64_sub();
      frame.push(arg1);
      frame.f64_sub();
      frame.f64_const(0.0);
      frame.f64_ne();
      if (frame.pop() != 0) {
        continue loop_label_0;
      }
      break;
    }
    frame.push(arg1);
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32, f32);
typedef FunctionType1 = f64 Function(f64, f64);
