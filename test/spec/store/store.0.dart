// Generated from test/spec/store/store.0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Module {
  Module();

  final Memory memory = Memory(1);

  void as_block_value() {
    final frame = Frame(memory);
    block_label_0:
    {
      frame.i32_const(0);
      frame.i32_const(1);
      frame.i32_store(2, 0);
    }
  }

  void as_loop_value() {
    final frame = Frame(memory);

    loop_label_0:
    for (;;) {
      frame.i32_const(0);
      frame.i32_const(1);
      frame.i32_store(2, 0);
      break;
    }
  }

  void as_br_value() {
    final frame = Frame(memory);
    block_label_0:
    {
      frame.i32_const(0);
      frame.i32_const(1);
      frame.i32_store(2, 0);
      break block_label_0;
    }
  }

  void as_br_if_value() {
    final frame = Frame(memory);
    block_label_0:
    {
      frame.i32_const(0);
      frame.i32_const(1);
      frame.i32_store(2, 0);
      frame.i32_const(1);
      if (frame.pop() != 0) break block_label_0;
    }
  }

  void as_br_if_value_cond() {
    final frame = Frame(memory);
    block_label_0:
    {
      frame.i32_const(6);
      frame.i32_const(0);
      frame.i32_const(1);
      frame.i32_store(2, 0);
      if (frame.pop() != 0) break block_label_0;
    }
  }

  void as_br_table_value() {
    final frame = Frame(memory);
    block_label_0:
    {
      frame.i32_const(0);
      frame.i32_const(1);
      frame.i32_store(2, 0);
      frame.i32_const(1);
      var t0 = frame.pop();
      switch (t0) {
        default:
          break block_label_0;
      }
    }
  }

  void as_return_value() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(1);
    frame.i32_store(2, 0);
  }

  void as_if_then() {
    final frame = Frame(memory);
    frame.i32_const(1);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      frame.i32_const(1);
      frame.i32_store(2, 0);
    }
  }

  void as_if_else() {
    final frame = Frame(memory);
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
    } else {
      frame.i32_const(0);
      frame.i32_const(1);
      frame.i32_store(2, 0);
    }
  }
}

typedef FunctionType0 = void Function();
