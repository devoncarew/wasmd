// Generated from test/spec/float_exprs/float_exprs.49.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs49Module implements Module {
  FloatExprs49Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f64 calculate() {
    f64 x = 0;
    f64 r = 0;
    f64 q = 0;
    f64 z0 = 0;
    f64 z1 = 0;

    final frame = Frame(this);
    frame.f64_const(156.25);
    x = frame.pop();
    frame.f64_const(208.333333334);
    r = frame.pop();
    frame.f64_const(1.77951304201);
    q = frame.pop();
    frame.push(r);
    frame.f64_neg();
    frame.push(x);
    frame.f64_mul();
    frame.push(x);
    frame.push(q);
    frame.f64_mul();
    frame.push(r);
    frame.f64_sub();
    frame.f64_div();
    z0 = frame.pop();
    frame.push(r);
    frame.f64_neg();
    frame.push(x);
    frame.f64_mul();
    frame.push(x);
    frame.push(q);
    frame.f64_mul();
    frame.push(r);
    frame.f64_sub();
    frame.f64_div();
    z1 = frame.pop();
    block_label_0:
    {
      frame.push(z0);
      frame.push(z1);
      frame.f64_eq();
      if (frame.pop() != 0) {
        frame.unwindTo(0, 0);
        break block_label_0;
      }
      throw Trap('unreachable');
    }
    frame.push(z1);
    return frame.pop();
  }
}

typedef FunctionType0 = f64 Function();
