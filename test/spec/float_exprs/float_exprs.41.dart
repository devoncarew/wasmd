// Generated from test/spec/float_exprs/float_exprs.41.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs41Module implements Module {
  FloatExprs41Module();

  @override
  final Memory memory = Memory(
    1,
    1,
  );

  @override
  late final List<Table> tables = [];

  void init(i32 i, f64 x) {
    final frame = Frame(this);
    frame.push(i);
    frame.push(x);
    frame.f64_store(3, 0);
  }

  void run(i32 n, f64 z) {
    i32 i = 0;

    final frame = Frame(this);
    block_label_0:
    {
      loop_label_1:
      for (;;) {
        frame.push(i);
        frame.push(i);
        frame.f64_load(3, 0);
        frame.push(z);
        frame.f64_div();
        frame.f64_store(3, 0);
        frame.push(i);
        frame.i32_const(8);
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

  f64 check(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.f64_load(3, 0);
    return frame.pop();
  }
}

typedef FunctionType0 = void Function(i32, f64);
typedef FunctionType1 = f64 Function(i32);
