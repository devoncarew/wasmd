// Generated from test/spec/float_exprs/float_exprs.40.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

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

  f32 check(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.f32_load(2, 0);
    return frame.pop();
  }
}

typedef FunctionType0 = void Function(i32, f32);
typedef FunctionType1 = f32 Function(i32);
