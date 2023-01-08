// Generated from test/spec/unwind/unwind.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Unwind0Module implements Module {
  Unwind0Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  void func_unwind_by_unreachable() => _func00();
  void func_unwind_by_br() => _func01();
  i32 func_unwind_by_br_value() => _func02();
  void func_unwind_by_br_if() => _func03();
  i32 func_unwind_by_br_if_value() => _func04();
  void func_unwind_by_br_table() => _func05();
  i32 func_unwind_by_br_table_value() => _func06();
  i32 func_unwind_by_return() => _func07();
  void block_unwind_by_unreachable() => _func08();
  i32 block_unwind_by_br() => _func09();
  i32 block_unwind_by_br_value() => _func10();
  i32 block_unwind_by_br_if() => _func11();
  i32 block_unwind_by_br_if_value() => _func12();
  i32 block_unwind_by_br_table() => _func13();
  i32 block_unwind_by_br_table_value() => _func14();
  i32 block_unwind_by_return() => _func15();
  i32 block_nested_unwind_by_unreachable() => _func16();
  i32 block_nested_unwind_by_br() => _func17();
  i32 block_nested_unwind_by_br_value() => _func18();
  i32 block_nested_unwind_by_br_if() => _func19();
  i32 block_nested_unwind_by_br_if_value() => _func20();
  i32 block_nested_unwind_by_br_table() => _func21();
  i32 block_nested_unwind_by_br_table_value() => _func22();
  i32 block_nested_unwind_by_return() => _func23();
  i32 unary_after_unreachable() => _func24();
  i32 unary_after_br() => _func25();
  i32 unary_after_br_if() => _func26();
  i32 unary_after_br_table() => _func27();
  i32 unary_after_return() => _func28();
  i32 binary_after_unreachable() => _func29();
  i32 binary_after_br() => _func30();
  i32 binary_after_br_if() => _func31();
  i32 binary_after_br_table() => _func32();
  i32 binary_after_return() => _func33();
  i32 select_after_unreachable() => _func34();
  i32 select_after_br() => _func35();
  i32 select_after_br_if() => _func36();
  i32 select_after_br_table() => _func37();
  i32 select_after_return() => _func38();
  i32 block_value_after_unreachable() => _func39();
  i32 block_value_after_br() => _func40();
  i32 block_value_after_br_if() => _func41();
  i32 block_value_after_br_table() => _func42();
  i32 block_value_after_return() => _func43();
  i32 loop_value_after_unreachable() => _func44();
  i32 loop_value_after_br() => _func45();
  i32 loop_value_after_br_if() => _func46();
  i32 loop_value_after_br_table() => _func47();
  i32 loop_value_after_return() => _func48();

  void _func00() {
    final frame = Frame(this);
    frame.i32_const(3);
    frame.i64_const(1);
    throw Trap('unreachable');
  }

  void _func01() {
    final frame = Frame(this);
    frame.i32_const(3);
    frame.i64_const(1);
    return;
  }

  i32 _func02() {
    final frame = Frame(this);
    frame.i32_const(3);
    frame.i64_const(1);
    frame.i32_const(9);
    return frame.pop();
    return frame.pop();
  }

  void _func03() {
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

  i32 _func04() {
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

  void _func05() {
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

  i32 _func06() {
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

  i32 _func07() {
    final frame = Frame(this);
    frame.i32_const(3);
    frame.i64_const(1);
    frame.i32_const(9);
    return frame.pop();
    return frame.pop();
  }

  void _func08() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(3);
      frame.i64_const(1);
      throw Trap('unreachable');
    }
  }

  i32 _func09() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(3);
      frame.i64_const(1);
      break block_label_0;
    }
    frame.i32_const(9);
    return frame.pop();
  }

  i32 _func10() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(3);
      frame.i64_const(1);
      frame.i32_const(9);
      break block_label_0;
    }
    return frame.pop();
  }

  i32 _func11() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(3);
      frame.i64_const(1);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.drop();
      frame.drop();
    }
    frame.i32_const(9);
    return frame.pop();
  }

  i32 _func12() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(3);
      frame.i64_const(1);
      frame.i32_const(9);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.drop();
      frame.drop();
    }
    return frame.pop();
  }

  i32 _func13() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(3);
      frame.i64_const(1);
      frame.i32_const(0);
      var t0 = frame.pop();
      switch (t0) {
        default:
          break block_label_0;
      }
    }
    frame.i32_const(9);
    return frame.pop();
  }

  i32 _func14() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(3);
      frame.i64_const(1);
      frame.i32_const(9);
      frame.i32_const(0);
      var t0 = frame.pop();
      switch (t0) {
        default:
          break block_label_0;
      }
    }
    return frame.pop();
  }

  i32 _func15() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(3);
      frame.i64_const(1);
      frame.i32_const(9);
      return frame.pop();
    }
    return frame.pop();
  }

  i32 _func16() {
    final frame = Frame(this);
    block_label_0: // => i32
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

  i32 _func17() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(3);
      block_label_1:
      {
        frame.i64_const(1);
        break block_label_0;
      }
      frame.drop();
    }
    frame.i32_const(9);
    return frame.pop();
  }

  i32 _func18() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(3);
      block_label_1:
      {
        frame.i64_const(1);
        frame.i32_const(9);
        break block_label_0;
      }
    }
    return frame.pop();
  }

  i32 _func19() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(3);
      block_label_1:
      {
        frame.i64_const(1);
        frame.i32_const(1);
        if (frame.pop() != 0) {
          break block_label_0;
        }
        frame.drop();
      }
      frame.drop();
    }
    frame.i32_const(9);
    return frame.pop();
  }

  i32 _func20() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(3);
      block_label_1:
      {
        frame.i64_const(1);
        frame.i32_const(9);
        frame.i32_const(1);
        if (frame.pop() != 0) {
          break block_label_0;
        }
        frame.drop();
        frame.drop();
      }
    }
    return frame.pop();
  }

  i32 _func21() {
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
            break block_label_0;
        }
      }
      frame.drop();
    }
    frame.i32_const(9);
    return frame.pop();
  }

  i32 _func22() {
    final frame = Frame(this);
    block_label_0: // => i32
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
            break block_label_0;
        }
      }
    }
    return frame.pop();
  }

  i32 _func23() {
    final frame = Frame(this);
    block_label_0: // => i32
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

  i32 _func24() {
    final frame = Frame(this);
    frame.f32_const(0.0);
    throw Trap('unreachable');
    frame.i64_eqz();
    return frame.pop();
  }

  i32 _func25() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.f32_const(0.0);
      frame.i32_const(9);
      break block_label_0;

      frame.i64_eqz();
    }
    return frame.pop();
  }

  i32 _func26() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i64_const(0);
      frame.i32_const(9);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.drop();
      frame.i64_eqz();
    }
    return frame.pop();
  }

  i32 _func27() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.f32_const(0.0);
      frame.i32_const(9);
      frame.i32_const(0);
      var t0 = frame.pop();
      switch (t0) {
        case 0:
          break block_label_0;

        default:
          break block_label_0;
      }

      frame.i64_eqz();
    }
    return frame.pop();
  }

  i32 _func28() {
    final frame = Frame(this);
    frame.f32_const(0.0);
    frame.i32_const(9);
    return frame.pop();
    frame.i64_eqz();
    return frame.pop();
  }

  i32 _func29() {
    final frame = Frame(this);
    frame.f32_const(0.0);
    frame.f64_const(1.0);
    throw Trap('unreachable');
    frame.i64_eq();
    return frame.pop();
  }

  i32 _func30() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.f32_const(0.0);
      frame.f64_const(1.0);
      frame.i32_const(9);
      break block_label_0;

      frame.i64_eq();
    }
    return frame.pop();
  }

  i32 _func31() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i64_const(0);
      frame.i64_const(1);
      frame.i32_const(9);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.drop();
      frame.i64_eq();
    }
    return frame.pop();
  }

  i32 _func32() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.f32_const(0.0);
      frame.f64_const(1.0);
      frame.i32_const(9);
      frame.i32_const(0);
      var t0 = frame.pop();
      switch (t0) {
        default:
          break block_label_0;
      }

      frame.i64_eq();
    }
    return frame.pop();
  }

  i32 _func33() {
    final frame = Frame(this);
    frame.f32_const(0.0);
    frame.f64_const(1.0);
    frame.i32_const(9);
    return frame.pop();
    frame.i64_eq();
    return frame.pop();
  }

  i32 _func34() {
    final frame = Frame(this);
    frame.f32_const(0.0);
    frame.f64_const(1.0);
    frame.i64_const(0);
    throw Trap('unreachable');
    frame.select();
    return frame.pop();
  }

  i32 _func35() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.f32_const(0.0);
      frame.f64_const(1.0);
      frame.i64_const(0);
      frame.i32_const(9);
      break block_label_0;

      frame.select();
    }
    return frame.pop();
  }

  i32 _func36() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(0);
      frame.i32_const(1);
      frame.i32_const(0);
      frame.i32_const(9);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.drop();
      frame.select();
    }
    return frame.pop();
  }

  i32 _func37() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.f32_const(0.0);
      frame.f64_const(1.0);
      frame.i64_const(0);
      frame.i32_const(9);
      frame.i32_const(0);
      var t0 = frame.pop();
      switch (t0) {
        default:
          break block_label_0;
      }

      frame.select();
    }
    return frame.pop();
  }

  i32 _func38() {
    final frame = Frame(this);
    frame.f32_const(0.0);
    frame.f64_const(1.0);
    frame.i64_const(1);
    frame.i32_const(9);
    return frame.pop();
    frame.select();
    return frame.pop();
  }

  i32 _func39() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.f32_const(0.0);
      throw Trap('unreachable');
    }
    return frame.pop();
  }

  i32 _func40() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.f32_const(0.0);
      frame.i32_const(9);
      break block_label_0;
    }
    return frame.pop();
  }

  i32 _func41() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(0);
      frame.i32_const(9);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.drop();
    }
    return frame.pop();
  }

  i32 _func42() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.f32_const(0.0);
      frame.i32_const(9);
      frame.i32_const(0);
      var t0 = frame.pop();
      switch (t0) {
        case 0:
          break block_label_0;

        default:
          break block_label_0;
      }
    }
    return frame.pop();
  }

  i32 _func43() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.f32_const(0.0);
      frame.i32_const(9);
      return frame.pop();
    }
    return frame.pop();
  }

  i32 _func44() {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      frame.f32_const(0.0);
      throw Trap('unreachable');
      break;
    }
    return frame.pop();
  }

  i32 _func45() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      loop_label_1:
      for (;;) {
        frame.f32_const(0.0);
        frame.i32_const(9);
        break block_label_0;

        break;
      }
    }
    return frame.pop();
  }

  i32 _func46() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      loop_label_1:
      for (;;) {
        frame.i32_const(0);
        frame.i32_const(9);
        frame.i32_const(1);
        if (frame.pop() != 0) {
          break block_label_0;
        }
        frame.drop();
        break;
      }
    }
    return frame.pop();
  }

  i32 _func47() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      loop_label_1:
      for (;;) {
        frame.f32_const(0.0);
        frame.i32_const(9);
        frame.i32_const(0);
        var t0 = frame.pop();
        switch (t0) {
          case 0:
            break block_label_0;

          default:
            break block_label_0;
        }

        break;
      }
    }
    return frame.pop();
  }

  i32 _func48() {
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
