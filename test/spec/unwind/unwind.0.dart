// Generated from test/spec/unwind/unwind.0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Unwind0Module implements Module {
  Unwind0Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  void func_unwind_by_unreachable() {
    final frame = Frame(this);
    frame.i32_const(3);
    frame.i64_const(1);
    throw Trap('unreachable');
  }

  void func_unwind_by_br() {
    final frame = Frame(this);
    frame.i32_const(3);
    frame.i64_const(1);
    return;
  }

  i32 func_unwind_by_br_value() {
    final frame = Frame(this);
    frame.i32_const(3);
    frame.i64_const(1);
    frame.i32_const(9);
    return frame.pop();
    return frame.pop();
  }

  void func_unwind_by_br_if() {
    final frame = Frame(this);
    frame.i32_const(3);
    frame.i64_const(1);
    frame.i32_const(1);
    if (frame.pop() != 0) {
      return;
    }
    frame.drop();
    frame.drop();
  }

  i32 func_unwind_by_br_if_value() {
    final frame = Frame(this);
    frame.i32_const(3);
    frame.i64_const(1);
    frame.i32_const(9);
    frame.i32_const(1);
    if (frame.pop() != 0) {
      return frame.pop();
    }
    frame.drop();
    frame.drop();
    return frame.pop();
  }

  void func_unwind_by_br_table() {
    final frame = Frame(this);
    frame.i32_const(3);
    frame.i64_const(1);
    frame.i32_const(0);
    var t0 = frame.pop();
    switch (t0) {
      default:
        return;
    }
  }

  i32 func_unwind_by_br_table_value() {
    final frame = Frame(this);
    frame.i32_const(3);
    frame.i64_const(1);
    frame.i32_const(9);
    frame.i32_const(0);
    var t0 = frame.pop();
    switch (t0) {
      default:
        return frame.pop();
    }

    return frame.pop();
  }

  i32 func_unwind_by_return() {
    final frame = Frame(this);
    frame.i32_const(3);
    frame.i64_const(1);
    frame.i32_const(9);
    return frame.pop();
    return frame.pop();
  }

  void block_unwind_by_unreachable() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(3);
      frame.i64_const(1);
      throw Trap('unreachable');
    }
  }

  i32 block_unwind_by_br() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(3);
      frame.i64_const(1);
      frame.unwindTo(0, 0);
      break block_label_0;
    }
    frame.i32_const(9);
    return frame.pop();
  }

  i32 block_unwind_by_br_value() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(3);
      frame.i64_const(1);
      frame.i32_const(9);
      frame.unwindTo(0, 1);
      break block_label_0;
    }
    return frame.pop();
  }

  i32 block_unwind_by_br_if() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(3);
      frame.i64_const(1);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 0);
        break block_label_0;
      }
      frame.drop();
      frame.drop();
    }
    frame.i32_const(9);
    return frame.pop();
  }

  i32 block_unwind_by_br_if_value() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(3);
      frame.i64_const(1);
      frame.i32_const(9);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.drop();
      frame.drop();
    }
    return frame.pop();
  }

  i32 block_unwind_by_br_table() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(3);
      frame.i64_const(1);
      frame.i32_const(0);
      var t0 = frame.pop();
      switch (t0) {
        default:
          frame.unwindTo(0, 0);
          break block_label_0;
      }
    }
    frame.i32_const(9);
    return frame.pop();
  }

  i32 block_unwind_by_br_table_value() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(3);
      frame.i64_const(1);
      frame.i32_const(9);
      frame.i32_const(0);
      var t0 = frame.pop();
      switch (t0) {
        default:
          frame.unwindTo(0, 1);
          break block_label_0;
      }
    }
    return frame.pop();
  }

  i32 block_unwind_by_return() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(3);
      frame.i64_const(1);
      frame.i32_const(9);
      return frame.pop();
    }
    return frame.pop();
  }

  i32 block_nested_unwind_by_unreachable() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(3);
      block_label_1:
      {
        frame.i64_const(1);
        throw Trap('unreachable');
      }
    }
    return frame.pop();
  }

  i32 block_nested_unwind_by_br() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(3);
      block_label_1:
      {
        frame.i64_const(1);
        frame.unwindTo(0, 0);
        break block_label_0;
      }
      frame.drop();
    }
    frame.i32_const(9);
    return frame.pop();
  }

  i32 block_nested_unwind_by_br_value() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(3);
      block_label_1:
      {
        frame.i64_const(1);
        frame.i32_const(9);
        frame.unwindTo(0, 1);
        break block_label_0;
      }
    }
    return frame.pop();
  }

  i32 block_nested_unwind_by_br_if() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(3);
      block_label_1:
      {
        frame.i64_const(1);
        frame.i32_const(1);
        if (frame.pop() != 0) {
          frame.unwindTo(0, 0);
          break block_label_0;
        }
        frame.drop();
      }
      frame.drop();
    }
    frame.i32_const(9);
    return frame.pop();
  }

  i32 block_nested_unwind_by_br_if_value() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(3);
      block_label_1:
      {
        frame.i64_const(1);
        frame.i32_const(9);
        frame.i32_const(1);
        if (frame.pop() != 0) {
          frame.unwindTo(0, 1);
          break block_label_0;
        }
        frame.drop();
        frame.drop();
      }
    }
    return frame.pop();
  }

  i32 block_nested_unwind_by_br_table() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(3);
      block_label_1:
      {
        frame.i64_const(1);
        frame.i32_const(1);
        var t0 = frame.pop();
        switch (t0) {
          default:
            frame.unwindTo(0, 0);
            break block_label_0;
        }
      }
      frame.drop();
    }
    frame.i32_const(9);
    return frame.pop();
  }

  i32 block_nested_unwind_by_br_table_value() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(3);
      block_label_1:
      {
        frame.i64_const(1);
        frame.i32_const(9);
        frame.i32_const(1);
        var t0 = frame.pop();
        switch (t0) {
          default:
            frame.unwindTo(0, 1);
            break block_label_0;
        }
      }
    }
    return frame.pop();
  }

  i32 block_nested_unwind_by_return() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(3);
      block_label_1:
      {
        frame.i64_const(1);
        frame.i32_const(9);
        return frame.pop();
      }
    }
    return frame.pop();
  }

  i32 unary_after_unreachable() {
    final frame = Frame(this);
    frame.f32_const(0.0);
    throw Trap('unreachable');
    frame.i64_eqz();
    return frame.pop();
  }

  i32 unary_after_br() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.f32_const(0.0);
      frame.i32_const(9);
      frame.unwindTo(0, 1);
      break block_label_0;

      frame.i64_eqz();
    }
    return frame.pop();
  }

  i32 unary_after_br_if() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i64_const(0);
      frame.i32_const(9);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.drop();
      frame.i64_eqz();
    }
    return frame.pop();
  }

  i32 unary_after_br_table() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.f32_const(0.0);
      frame.i32_const(9);
      frame.i32_const(0);
      var t0 = frame.pop();
      switch (t0) {
        case 0:
          frame.unwindTo(0, 1);
          break block_label_0;

        default:
          frame.unwindTo(0, 1);
          break block_label_0;
      }

      frame.i64_eqz();
    }
    return frame.pop();
  }

  i32 unary_after_return() {
    final frame = Frame(this);
    frame.f32_const(0.0);
    frame.i32_const(9);
    return frame.pop();
    frame.i64_eqz();
    return frame.pop();
  }

  i32 binary_after_unreachable() {
    final frame = Frame(this);
    frame.f32_const(0.0);
    frame.f64_const(1.0);
    throw Trap('unreachable');
    frame.i64_eq();
    return frame.pop();
  }

  i32 binary_after_br() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.f32_const(0.0);
      frame.f64_const(1.0);
      frame.i32_const(9);
      frame.unwindTo(0, 1);
      break block_label_0;

      frame.i64_eq();
    }
    return frame.pop();
  }

  i32 binary_after_br_if() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i64_const(0);
      frame.i64_const(1);
      frame.i32_const(9);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.drop();
      frame.i64_eq();
    }
    return frame.pop();
  }

  i32 binary_after_br_table() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.f32_const(0.0);
      frame.f64_const(1.0);
      frame.i32_const(9);
      frame.i32_const(0);
      var t0 = frame.pop();
      switch (t0) {
        default:
          frame.unwindTo(0, 1);
          break block_label_0;
      }

      frame.i64_eq();
    }
    return frame.pop();
  }

  i32 binary_after_return() {
    final frame = Frame(this);
    frame.f32_const(0.0);
    frame.f64_const(1.0);
    frame.i32_const(9);
    return frame.pop();
    frame.i64_eq();
    return frame.pop();
  }

  i32 select_after_unreachable() {
    final frame = Frame(this);
    frame.f32_const(0.0);
    frame.f64_const(1.0);
    frame.i64_const(0);
    throw Trap('unreachable');
    frame.select();
    return frame.pop();
  }

  i32 select_after_br() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.f32_const(0.0);
      frame.f64_const(1.0);
      frame.i64_const(0);
      frame.i32_const(9);
      frame.unwindTo(0, 1);
      break block_label_0;

      frame.select();
    }
    return frame.pop();
  }

  i32 select_after_br_if() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(0);
      frame.i32_const(1);
      frame.i32_const(0);
      frame.i32_const(9);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.drop();
      frame.select();
    }
    return frame.pop();
  }

  i32 select_after_br_table() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.f32_const(0.0);
      frame.f64_const(1.0);
      frame.i64_const(0);
      frame.i32_const(9);
      frame.i32_const(0);
      var t0 = frame.pop();
      switch (t0) {
        default:
          frame.unwindTo(0, 1);
          break block_label_0;
      }

      frame.select();
    }
    return frame.pop();
  }

  i32 select_after_return() {
    final frame = Frame(this);
    frame.f32_const(0.0);
    frame.f64_const(1.0);
    frame.i64_const(1);
    frame.i32_const(9);
    return frame.pop();
    frame.select();
    return frame.pop();
  }

  i32 block_value_after_unreachable() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.f32_const(0.0);
      throw Trap('unreachable');
    }
    return frame.pop();
  }

  i32 block_value_after_br() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.f32_const(0.0);
      frame.i32_const(9);
      frame.unwindTo(0, 1);
      break block_label_0;
    }
    return frame.pop();
  }

  i32 block_value_after_br_if() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(0);
      frame.i32_const(9);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.drop();
    }
    return frame.pop();
  }

  i32 block_value_after_br_table() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.f32_const(0.0);
      frame.i32_const(9);
      frame.i32_const(0);
      var t0 = frame.pop();
      switch (t0) {
        case 0:
          frame.unwindTo(0, 1);
          break block_label_0;

        default:
          frame.unwindTo(0, 1);
          break block_label_0;
      }
    }
    return frame.pop();
  }

  i32 block_value_after_return() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.f32_const(0.0);
      frame.i32_const(9);
      return frame.pop();
    }
    return frame.pop();
  }

  i32 loop_value_after_unreachable() {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      frame.f32_const(0.0);
      throw Trap('unreachable');
      break;
    }
    return frame.pop();
  }

  i32 loop_value_after_br() {
    final frame = Frame(this);
    block_label_0:
    {
      loop_label_1:
      for (;;) {
        frame.f32_const(0.0);
        frame.i32_const(9);
        frame.unwindTo(0, 1);
        break block_label_0;

        break;
      }
    }
    return frame.pop();
  }

  i32 loop_value_after_br_if() {
    final frame = Frame(this);
    block_label_0:
    {
      loop_label_1:
      for (;;) {
        frame.i32_const(0);
        frame.i32_const(9);
        frame.i32_const(1);
        if (frame.pop() != 0) {
          frame.unwindTo(0, 1);
          break block_label_0;
        }
        frame.drop();
        break;
      }
    }
    return frame.pop();
  }

  i32 loop_value_after_br_table() {
    final frame = Frame(this);
    block_label_0:
    {
      loop_label_1:
      for (;;) {
        frame.f32_const(0.0);
        frame.i32_const(9);
        frame.i32_const(0);
        var t0 = frame.pop();
        switch (t0) {
          case 0:
            frame.unwindTo(0, 1);
            break block_label_0;

          default:
            frame.unwindTo(0, 1);
            break block_label_0;
        }

        break;
      }
    }
    return frame.pop();
  }

  i32 loop_value_after_return() {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      frame.f32_const(0.0);
      frame.i32_const(9);
      return frame.pop();
      break;
    }
    return frame.pop();
  }
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = i32 Function();
