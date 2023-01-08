// Generated from test/spec/store/store.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Store0Module implements Module {
  Store0Module();

  @override
  final Memory memory = Memory(1);

  @override
  late final List<Table> tables = [];

  void as_block_value() => _func0();
  void as_loop_value() => _func1();
  void as_br_value() => _func2();
  void as_br_if_value() => _func3();
  void as_br_if_value_cond() => _func4();
  void as_br_table_value() => _func5();
  void as_return_value() => _func6();
  void as_if_then() => _func7();
  void as_if_else() => _func8();

  void _func0() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(0);
      frame.i32_const(1);
      frame.i32_store(2, 0);
    }
  }

  void _func1() {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      frame.i32_const(0);
      frame.i32_const(1);
      frame.i32_store(2, 0);
      break;
    }
  }

  void _func2() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(0);
      frame.i32_const(1);
      frame.i32_store(2, 0);
      frame.unwindTo(0, 0);
      break block_label_0;
    }
  }

  void _func3() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(0);
      frame.i32_const(1);
      frame.i32_store(2, 0);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 0);
        break block_label_0;
      }
    }
  }

  void _func4() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(6);
      frame.i32_const(0);
      frame.i32_const(1);
      frame.i32_store(2, 0);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 0);
        break block_label_0;
      }
    }
  }

  void _func5() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(0);
      frame.i32_const(1);
      frame.i32_store(2, 0);
      frame.i32_const(1);
      var t0 = frame.pop();
      switch (t0) {
        default:
          frame.unwindTo(0, 0);
          break block_label_0;
      }
    }
  }

  void _func6() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(1);
    frame.i32_store(2, 0);
  }

  void _func7() {
    final frame = Frame(this);
    frame.i32_const(1);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      frame.i32_const(1);
      frame.i32_store(2, 0);
    }
  }

  void _func8() {
    final frame = Frame(this);
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
