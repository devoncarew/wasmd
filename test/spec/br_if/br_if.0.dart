// Generated from test/spec/br_if/br_if.0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class BrIf0Module implements Module {
  BrIf0Module() {
    segments.init();
  }

  @override
  final Memory memory = Memory(1);

  final Globals globals = Globals();

  final Table table0 = Table(
    1,
    1,
  );

  @override
  late final List<Table> tables = [table0];

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  void dummy() {
    final frame = Frame(this);
  }

  void type_i32() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(0);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 0);
        break block_label_0;
      }
      frame.i32_ctz();
      frame.drop();
    }
  }

  void type_i64() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i64_const(0);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 0);
        break block_label_0;
      }
      frame.i64_ctz();
      frame.drop();
    }
  }

  void type_f32() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.f32_const(0.0);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 0);
        break block_label_0;
      }
      frame.f32_neg();
      frame.drop();
    }
  }

  void type_f64() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.f64_const(0.0);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 0);
        break block_label_0;
      }
      frame.f64_neg();
      frame.drop();
    }
  }

  i32 type_i32_value() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.i32_ctz();
    }
    return frame.pop();
  }

  i64 type_i64_value() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i64_const(2);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.i64_ctz();
    }
    return frame.pop();
  }

  f32 type_f32_value() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.f32_const(3.0);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.f32_neg();
    }
    return frame.pop();
  }

  f64 type_f64_value() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.f64_const(4.0);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.f64_neg();
    }
    return frame.pop();
  }

  i32 as_block_first(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      frame.push(arg0);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 0);
        break block_label_0;
      }
      frame.i32_const(2);
      return frame.pop();
    }
    frame.i32_const(3);
    return frame.pop();
  }

  i32 as_block_mid(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      dummy();
      frame.push(arg0);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 0);
        break block_label_0;
      }
      frame.i32_const(2);
      return frame.pop();
    }
    frame.i32_const(3);
    return frame.pop();
  }

  void as_block_last(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      dummy();
      dummy();
      frame.push(arg0);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 0);
        break block_label_0;
      }
    }
  }

  i32 as_block_first_value(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(10);
      frame.push(arg0);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.drop();
      frame.i32_const(11);
      return frame.pop();
    }
    return frame.pop();
  }

  i32 as_block_mid_value(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      dummy();
      frame.i32_const(20);
      frame.push(arg0);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.drop();
      frame.i32_const(21);
      return frame.pop();
    }
    return frame.pop();
  }

  i32 as_block_last_value(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      dummy();
      dummy();
      frame.i32_const(11);
      frame.push(arg0);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
    }
    return frame.pop();
  }

  i32 as_loop_first(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      loop_label_1:
      for (;;) {
        frame.push(arg0);
        if (frame.pop() != 0) {
          frame.unwindTo(0, 0);
          break block_label_0;
        }
        frame.i32_const(2);
        return frame.pop();
        break;
      }
    }
    frame.i32_const(3);
    return frame.pop();
  }

  i32 as_loop_mid(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      loop_label_1:
      for (;;) {
        dummy();
        frame.push(arg0);
        if (frame.pop() != 0) {
          frame.unwindTo(0, 0);
          break block_label_0;
        }
        frame.i32_const(2);
        return frame.pop();
        break;
      }
    }
    frame.i32_const(4);
    return frame.pop();
  }

  void as_loop_last(i32 arg0) {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      dummy();
      frame.push(arg0);
      return;
      break;
    }
  }

  i32 as_br_value() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      frame.i32_const(2);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.unwindTo(0, 1);
      break block_label_0;
    }
    return frame.pop();
  }

  void as_br_if_cond() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 0);
        break block_label_0;
      }
      if (frame.pop() != 0) {
        frame.unwindTo(0, 0);
        break block_label_0;
      }
    }
  }

  i32 as_br_if_value() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      frame.i32_const(2);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.i32_const(3);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.drop();
      frame.i32_const(4);
    }
    return frame.pop();
  }

  i32 as_br_if_value_cond(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(2);
      frame.i32_const(1);
      frame.push(arg0);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.drop();
      frame.i32_const(4);
    }
    return frame.pop();
  }

  void as_br_table_index() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      frame.i32_const(2);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 0);
        break block_label_0;
      }
      var t0 = frame.pop();
      switch (t0) {
        case 0:
          frame.unwindTo(0, 0);
          break block_label_0;

        case 1:
          frame.unwindTo(0, 0);
          break block_label_0;

        default:
          frame.unwindTo(0, 0);
          break block_label_0;
      }
    }
  }

  i32 as_br_table_value() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      frame.i32_const(2);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.i32_const(3);
      var t0 = frame.pop();
      switch (t0) {
        case 0:
          frame.unwindTo(0, 1);
          break block_label_0;

        case 1:
          frame.unwindTo(0, 1);
          break block_label_0;

        default:
          frame.unwindTo(0, 1);
          break block_label_0;
      }

      frame.i32_const(4);
    }
    return frame.pop();
  }

  i32 as_br_table_value_index() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(2);
      frame.i32_const(1);
      frame.i32_const(3);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      var t0 = frame.pop();
      switch (t0) {
        case 0:
          frame.unwindTo(0, 1);
          break block_label_0;

        default:
          frame.unwindTo(0, 1);
          break block_label_0;
      }

      frame.i32_const(4);
    }
    return frame.pop();
  }

  i64 as_return_value() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i64_const(1);
      frame.i32_const(2);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      return frame.pop();
    }
    return frame.pop();
  }

  i32 as_if_cond(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      frame.push(arg0);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      if_label_1:
      if (frame.pop() != 0) {
        frame.i32_const(2);
      } else {
        frame.i32_const(3);
      }
    }
    return frame.pop();
  }

  void as_if_then(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    block_label_0:
    {
      frame.push(arg0);
      if_label_1:
      if (frame.pop() != 0) {
        frame.push(arg1);
        if (frame.pop() != 0) {
          frame.unwindTo(0, 0);
          break block_label_0;
        }
      } else {
        dummy();
      }
    }
  }

  void as_if_else(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    block_label_0:
    {
      frame.push(arg0);
      if_label_1:
      if (frame.pop() != 0) {
        dummy();
      } else {
        frame.push(arg1);
        if (frame.pop() != 0) {
          frame.unwindTo(0, 0);
          break block_label_0;
        }
      }
    }
  }

  i32 as_select_first(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(3);
      frame.i32_const(10);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.i32_const(2);
      frame.push(arg0);
      frame.select();
    }
    return frame.pop();
  }

  i32 as_select_second(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      frame.i32_const(3);
      frame.i32_const(10);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.push(arg0);
      frame.select();
    }
    return frame.pop();
  }

  i32 as_select_cond() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      frame.i32_const(2);
      frame.i32_const(3);
      frame.i32_const(10);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.select();
    }
    return frame.pop();
  }

  i32 f(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(this);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 as_call_first() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(12);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.i32_const(2);
      frame.i32_const(3);
      {
        var t2 = frame.pop();
        var t1 = frame.pop();
        var t0 = frame.pop();
        frame.push(f(t0, t1, t2));
      }
    }
    return frame.pop();
  }

  i32 as_call_mid() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      frame.i32_const(13);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.i32_const(3);
      {
        var t2 = frame.pop();
        var t1 = frame.pop();
        var t0 = frame.pop();
        frame.push(f(t0, t1, t2));
      }
    }
    return frame.pop();
  }

  i32 as_call_last() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      frame.i32_const(2);
      frame.i32_const(14);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      {
        var t2 = frame.pop();
        var t1 = frame.pop();
        var t0 = frame.pop();
        frame.push(f(t0, t1, t2));
      }
    }
    return frame.pop();
  }

  i32 func(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(this);
    frame.push(arg0);
    return frame.pop();
  }

  i32 as_call_indirect_func() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(4);
      frame.i32_const(10);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.i32_const(1);
      frame.i32_const(2);
      frame.i32_const(0);
      {
        var func = table0[frame.pop()] as FunctionType0?;
        if (func == null) throw Trap('uninitialized element');
        var t2 = frame.pop();
        var t1 = frame.pop();
        var t0 = frame.pop();
        frame.push(func(t0, t1, t2));
      }
    }
    return frame.pop();
  }

  i32 as_call_indirect_first() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      frame.i32_const(4);
      frame.i32_const(10);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.i32_const(2);
      frame.i32_const(0);
      {
        var func = table0[frame.pop()] as FunctionType0?;
        if (func == null) throw Trap('uninitialized element');
        var t2 = frame.pop();
        var t1 = frame.pop();
        var t0 = frame.pop();
        frame.push(func(t0, t1, t2));
      }
    }
    return frame.pop();
  }

  i32 as_call_indirect_mid() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      frame.i32_const(2);
      frame.i32_const(4);
      frame.i32_const(10);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.i32_const(0);
      {
        var func = table0[frame.pop()] as FunctionType0?;
        if (func == null) throw Trap('uninitialized element');
        var t2 = frame.pop();
        var t1 = frame.pop();
        var t0 = frame.pop();
        frame.push(func(t0, t1, t2));
      }
    }
    return frame.pop();
  }

  i32 as_call_indirect_last() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      frame.i32_const(2);
      frame.i32_const(3);
      frame.i32_const(4);
      frame.i32_const(10);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      {
        var func = table0[frame.pop()] as FunctionType0?;
        if (func == null) throw Trap('uninitialized element');
        var t2 = frame.pop();
        var t1 = frame.pop();
        var t0 = frame.pop();
        frame.push(func(t0, t1, t2));
      }
    }
    return frame.pop();
  }

  i32 as_local_set_value(i32 arg0) {
    i32 local0 = 0;

    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(17);
      frame.push(arg0);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      arg0 = frame.pop();
      frame.i32_const(-1);
    }
    return frame.pop();
  }

  i32 as_local_tee_value(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      frame.push(arg0);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      arg0 = frame.peek();
      frame.i32_const(-1);
      return frame.pop();
    }
    return frame.pop();
  }

  i32 as_global_set_value(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      frame.push(arg0);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      globals.a = frame.pop();
      frame.i32_const(-1);
      return frame.pop();
    }
    return frame.pop();
  }

  i32 as_load_address() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.i32_load(2, 0);
    }
    return frame.pop();
  }

  i32 as_loadN_address() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(30);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.i32_load8_s(0, 0);
    }
    return frame.pop();
  }

  i32 as_store_address() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(30);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.i32_const(7);
      frame.i32_store(2, 0);
      frame.i32_const(-1);
    }
    return frame.pop();
  }

  i32 as_store_value() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(2);
      frame.i32_const(31);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.i32_store(2, 0);
      frame.i32_const(-1);
    }
    return frame.pop();
  }

  i32 as_storeN_address() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(32);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.i32_const(7);
      frame.i32_store8(0, 0);
      frame.i32_const(-1);
    }
    return frame.pop();
  }

  i32 as_storeN_value() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(2);
      frame.i32_const(33);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.i32_store16(1, 0);
      frame.i32_const(-1);
    }
    return frame.pop();
  }

  f64 as_unary_operand() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.f64_const(1.0);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.f64_neg();
    }
    return frame.pop();
  }

  i32 as_binary_left() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.i32_const(10);
      frame.i32_add();
    }
    return frame.pop();
  }

  i32 as_binary_right() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(10);
      frame.i32_const(1);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.i32_sub();
    }
    return frame.pop();
  }

  i32 as_test_operand() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(0);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.i32_eqz();
    }
    return frame.pop();
  }

  i32 as_compare_left() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.i32_const(10);
      frame.i32_le_u();
    }
    return frame.pop();
  }

  i32 as_compare_right() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(10);
      frame.i32_const(1);
      frame.i32_const(42);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.i32_ne();
    }
    return frame.pop();
  }

  i32 as_memory_grow_size() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.memory_grow(0);
    }
    return frame.pop();
  }

  i32 nested_block_value(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    block_label_0:
    {
      frame.i32_const(2);
      frame.drop();
      frame.i32_const(4);
      block_label_1:
      {
        frame.i32_const(8);
        frame.push(arg0);
        if (frame.pop() != 0) {
          frame.unwindTo(1, 1);
          break block_label_0;
        }
        frame.drop();
        frame.i32_const(16);
      }
      frame.i32_add();
    }
    frame.i32_add();
    return frame.pop();
  }

  i32 nested_br_value(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    block_label_0:
    {
      frame.i32_const(2);
      frame.drop();
      block_label_1:
      {
        frame.i32_const(8);
        frame.push(arg0);
        if (frame.pop() != 0) {
          frame.unwindTo(1, 1);
          break block_label_0;
        }
        frame.drop();
        frame.i32_const(4);
      }
      frame.unwindTo(1, 1);
      break block_label_0;

      frame.i32_const(16);
    }
    frame.i32_add();
    return frame.pop();
  }

  i32 nested_br_if_value(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    block_label_0:
    {
      frame.i32_const(2);
      frame.drop();
      block_label_1:
      {
        frame.i32_const(8);
        frame.push(arg0);
        if (frame.pop() != 0) {
          frame.unwindTo(1, 1);
          break block_label_0;
        }
        frame.drop();
        frame.i32_const(4);
      }
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(1, 1);
        break block_label_0;
      }
      frame.drop();
      frame.i32_const(16);
    }
    frame.i32_add();
    return frame.pop();
  }

  i32 nested_br_if_value_cond(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    block_label_0:
    {
      frame.i32_const(2);
      frame.drop();
      frame.i32_const(4);
      block_label_1:
      {
        frame.i32_const(8);
        frame.push(arg0);
        if (frame.pop() != 0) {
          frame.unwindTo(1, 1);
          break block_label_0;
        }
        frame.drop();
        frame.i32_const(1);
      }
      if (frame.pop() != 0) {
        frame.unwindTo(1, 1);
        break block_label_0;
      }
      frame.drop();
      frame.i32_const(16);
    }
    frame.i32_add();
    return frame.pop();
  }

  i32 nested_br_table_value(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    block_label_0:
    {
      frame.i32_const(2);
      frame.drop();
      block_label_1:
      {
        frame.i32_const(8);
        frame.push(arg0);
        if (frame.pop() != 0) {
          frame.unwindTo(1, 1);
          break block_label_0;
        }
        frame.drop();
        frame.i32_const(4);
      }
      frame.i32_const(1);
      var t0 = frame.pop();
      switch (t0) {
        default:
          frame.unwindTo(1, 1);
          break block_label_0;
      }

      frame.i32_const(16);
    }
    frame.i32_add();
    return frame.pop();
  }

  i32 nested_br_table_value_index(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    block_label_0:
    {
      frame.i32_const(2);
      frame.drop();
      frame.i32_const(4);
      block_label_1:
      {
        frame.i32_const(8);
        frame.push(arg0);
        if (frame.pop() != 0) {
          frame.unwindTo(1, 1);
          break block_label_0;
        }
        frame.drop();
        frame.i32_const(1);
      }
      var t0 = frame.pop();
      switch (t0) {
        default:
          frame.unwindTo(1, 1);
          break block_label_0;
      }

      frame.i32_const(16);
    }
    frame.i32_add();
    return frame.pop();
  }

  List<Function> _initFunctionTable() {
    return [
      dummy,
      type_i32,
      type_i64,
      type_f32,
      type_f64,
      type_i32_value,
      type_i64_value,
      type_f32_value,
      type_f64_value,
      as_block_first,
      as_block_mid,
      as_block_last,
      as_block_first_value,
      as_block_mid_value,
      as_block_last_value,
      as_loop_first,
      as_loop_mid,
      as_loop_last,
      as_br_value,
      as_br_if_cond,
      as_br_if_value,
      as_br_if_value_cond,
      as_br_table_index,
      as_br_table_value,
      as_br_table_value_index,
      as_return_value,
      as_if_cond,
      as_if_then,
      as_if_else,
      as_select_first,
      as_select_second,
      as_select_cond,
      f,
      as_call_first,
      as_call_mid,
      as_call_last,
      func,
      as_call_indirect_func,
      as_call_indirect_first,
      as_call_indirect_mid,
      as_call_indirect_last,
      as_local_set_value,
      as_local_tee_value,
      as_global_set_value,
      as_load_address,
      as_loadN_address,
      as_store_address,
      as_store_value,
      as_storeN_address,
      as_storeN_value,
      as_unary_operand,
      as_binary_left,
      as_binary_right,
      as_test_operand,
      as_compare_left,
      as_compare_right,
      as_memory_grow_size,
      nested_block_value,
      nested_br_value,
      nested_br_if_value,
      nested_br_if_value_cond,
      nested_br_table_value,
      nested_br_table_value_index
    ];
  }
}

typedef FunctionType0 = i32 Function(i32, i32, i32);
typedef FunctionType1 = void Function();
typedef FunctionType2 = i32 Function();
typedef FunctionType3 = i64 Function();
typedef FunctionType4 = f32 Function();
typedef FunctionType5 = f64 Function();
typedef FunctionType6 = i32 Function(i32);
typedef FunctionType7 = void Function(i32);
typedef FunctionType8 = void Function(i32, i32);

class Globals {
  i32 a = 10;
}

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final BrIf0Module module;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table0, 0, 0, 1, [36]); /* segment0 */
  }
}
