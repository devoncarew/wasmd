// Generated from test/spec/float_exprs/float_exprs.40.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs40Module implements Module {
  FloatExprs40Module();

  @override
  final Memory memory = Memory(
    1,
    1,
  );

  @override
  late final List<Table> tables = [];

  f32 check(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.f32_load(2, 0);
    return frame.pop();
  }

  void init(i32 i, f32 x) {
    final frame = Frame(this);
    frame.push(i);
    frame.push(x);
    frame.f32_store(2, 0);
  }

  void run(i32 n, f32 z) {
    i32 i = 0;

    final frame = Frame(this);
    block_label_0:
    {
      loop_label_1:
      for (;;) {
        frame.push(i);
        frame.push(i);
        frame.f32_load(2, 0);
        frame.push(z);
        frame.f32_div();
        frame.f32_store(2, 0);
        frame.push(i);
        frame.i32_const(4);
        frame.i32_add();
        i = frame.pop();
        frame.push(i);
        frame.push(n);
        frame.i32_lt_u();
        if (frame.pop() != 0) {
          continue loop_label_1;
        }
        break;
      }
    }
  }
}

typedef FunctionType0 = void Function(i32, f32);
typedef FunctionType1 = f32 Function(i32);
