// Generated from test/spec/float_exprs/float_exprs.94.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs94Module implements Module {
  FloatExprs94Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f64 tau(i32 arg0) => _func0(arg0);

  f64 _func0(i32 arg0) {
    f64 local0 = 0;
    f64 local1 = 0;
    f64 local2 = 0;
    f64 local3 = 0;

    final frame = Frame(this);
    frame.f64_const(0.0);
    local0 = frame.pop();
    block_label_0:
    {
      frame.push(arg0);
      frame.i32_const(1);
      frame.i32_lt_s();
      if (frame.pop() != 0) {
        frame.unwindTo(0, 0);
        break block_label_0;
      }
      frame.f64_const(1.0);
      local1 = frame.pop();
      frame.f64_const(0.0);
      local2 = frame.pop();

      loop_label_1:
      for (;;) {
        frame.push(local0);
        frame.push(local1);
        frame.f64_const(8.0);
        frame.push(local2);
        frame.f64_const(8.0);
        frame.f64_mul();
        local3 = frame.peek();
        frame.f64_const(1.0);
        frame.f64_add();
        frame.f64_div();
        frame.f64_const(4.0);
        frame.push(local3);
        frame.f64_const(4.0);
        frame.f64_add();
        frame.f64_div();
        frame.f64_sub();
        frame.f64_const(2.0);
        frame.push(local3);
        frame.f64_const(5.0);
        frame.f64_add();
        frame.f64_div();
        frame.f64_sub();
        frame.f64_const(2.0);
        frame.push(local3);
        frame.f64_const(6.0);
        frame.f64_add();
        frame.f64_div();
        frame.f64_sub();
        frame.f64_mul();
        frame.f64_add();
        local0 = frame.pop();
        frame.push(local2);
        frame.f64_const(1.0);
        frame.f64_add();
        local2 = frame.pop();
        frame.push(local1);
        frame.f64_const(0.0625);
        frame.f64_mul();
        local1 = frame.pop();
        frame.push(arg0);
        frame.i32_const(-1);
        frame.i32_add();
        arg0 = frame.peek();
        if (frame.pop() != 0) {
          continue loop_label_1;
        }
        break;
      }
    }
    frame.push(local0);
    return frame.pop();
  }
}

typedef FunctionType0 = f64 Function(i32);
