// Generated from test/spec/float_exprs/float_exprs.48.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs48Module implements Module {
  FloatExprs48Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 calculate() {
    f32 x = 0;
    f32 r = 0;
    f32 q = 0;
    f32 z0 = 0;
    f32 z1 = 0;

    final frame = Frame(this);
    frame.f32_const(156.25);
    x = frame.pop();
    frame.f32_const(208.3333282470703);
    r = frame.pop();
    frame.f32_const(1.7795130014419556);
    q = frame.pop();
    frame.push(r);
    frame.f32_neg();
    frame.push(x);
    frame.f32_mul();
    frame.push(x);
    frame.push(q);
    frame.f32_mul();
    frame.push(r);
    frame.f32_sub();
    frame.f32_div();
    z0 = frame.pop();
    frame.push(r);
    frame.f32_neg();
    frame.push(x);
    frame.f32_mul();
    frame.push(x);
    frame.push(q);
    frame.f32_mul();
    frame.push(r);
    frame.f32_sub();
    frame.f32_div();
    z1 = frame.pop();
    block_label_0:
    {
      frame.push(z0);
      frame.push(z1);
      frame.f32_eq();
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

typedef FunctionType0 = f32 Function();
