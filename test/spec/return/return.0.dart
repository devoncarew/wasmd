// Generated from test/spec/return/return.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Return0Module implements Module {
  Return0Module() {
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

  i32 as_binary_left() {
    final frame = Frame(this);
    frame.i32_const(3);
    return frame.pop();
    frame.i32_const(10);
    frame.i32_add();
    return frame.pop();
  }

  i64 as_binary_right() {
    final frame = Frame(this);
    frame.i64_const(10);
    frame.i64_const(45);
    return frame.pop();
    frame.i64_sub();
    return frame.pop();
  }

  void as_block_first() {
    final frame = Frame(this);
    block_label_0:
    {
      _func00();
    }
  }

  void as_block_last() {
    final frame = Frame(this);
    block_label_0:
    {
      /* nop */
      _func00();
    }
  }

  void as_block_mid() {
    final frame = Frame(this);
    block_label_0:
    {
      _func00();

      _func00();
    }
  }

  i32 as_block_value() {
    final frame = Frame(this);
    block_label_0:
    {
      /* nop */
      _func00();
      frame.i32_const(2);
      return frame.pop();
    }
    return frame.pop();
  }

  void as_br_if_cond() {
    final frame = Frame(this);
    block_label_0:
    {
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
      frame.i32_const(8);
      return frame.pop();
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.drop();
      frame.i32_const(7);
    }
    return frame.pop();
  }

  i32 as_br_if_value_cond() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(6);
      frame.i32_const(9);
      return frame.pop();
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.drop();
      frame.i32_const(7);
    }
    return frame.pop();
  }

  i64 as_br_table_index() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i64_const(9);
      return frame.pop();
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
    frame.i64_const(-1);
    return frame.pop();
  }

  i32 as_br_table_value() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(10);
      return frame.pop();
      frame.i32_const(1);
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

      frame.i32_const(7);
    }
    return frame.pop();
  }

  i32 as_br_table_value_index() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(6);
      frame.i32_const(11);
      return frame.pop();
      var t0 = frame.pop();
      switch (t0) {
        case 0:
          frame.unwindTo(0, 1);
          break block_label_0;

        default:
          frame.unwindTo(0, 1);
          break block_label_0;
      }

      frame.i32_const(7);
    }
    return frame.pop();
  }

  i32 as_br_value() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(9);
      return frame.pop();
      frame.unwindTo(0, 1);
      break block_label_0;
    }
    return frame.pop();
  }

  i32 as_call_first() {
    final frame = Frame(this);
    frame.i32_const(12);
    return frame.pop();
    frame.i32_const(2);
    frame.i32_const(3);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(_func36(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 as_call_indirect_first() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(21);
    return frame.pop();
    frame.i32_const(2);
    frame.i32_const(3);
    {
      var func = table0[frame.pop()] as FunctionType0?;
      if (func == null) throw Trap('uninitialized element');
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 as_call_indirect_func() {
    final frame = Frame(this);
    frame.i32_const(20);
    return frame.pop();
    frame.i32_const(1);
    frame.i32_const(2);
    frame.i32_const(3);
    {
      var func = table0[frame.pop()] as FunctionType0?;
      if (func == null) throw Trap('uninitialized element');
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 as_call_indirect_last() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.i32_const(23);
    return frame.pop();
    {
      var func = table0[frame.pop()] as FunctionType0?;
      if (func == null) throw Trap('uninitialized element');
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 as_call_indirect_mid() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(1);
    frame.i32_const(22);
    return frame.pop();
    frame.i32_const(3);
    {
      var func = table0[frame.pop()] as FunctionType0?;
      if (func == null) throw Trap('uninitialized element');
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 as_call_last() {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.i32_const(14);
    return frame.pop();
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(_func36(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 as_call_mid() {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(13);
    return frame.pop();
    frame.i32_const(3);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(_func36(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 as_compare_left() {
    final frame = Frame(this);
    frame.i32_const(43);
    return frame.pop();
    frame.f64_const(10.0);
    frame.f64_le();
    return frame.pop();
  }

  i32 as_compare_right() {
    final frame = Frame(this);
    frame.f32_const(10.0);
    frame.i32_const(42);
    return frame.pop();
    frame.f32_ne();
    return frame.pop();
  }

  i32 as_convert_operand() {
    final frame = Frame(this);
    frame.i32_const(41);
    return frame.pop();
    frame.i32_wrap_i64();
    return frame.pop();
  }

  i32 as_func_first() {
    final frame = Frame(this);
    frame.i32_const(1);
    return frame.pop();
    frame.i32_const(2);
    return frame.pop();
  }

  void as_func_last() {
    final frame = Frame(this);
    /* nop */
    _func00();
  }

  i32 as_func_mid() {
    final frame = Frame(this);
    _func00();
    frame.i32_const(2);
    return frame.pop();
    frame.i32_const(3);
    return frame.pop();
  }

  i32 as_func_value() {
    final frame = Frame(this);
    /* nop */
    _func00();
    frame.i32_const(3);
    return frame.pop();
    return frame.pop();
  }

  i32 as_global_set_value() {
    final frame = Frame(this);
    frame.i32_const(1);
    return frame.pop();
    globals.a = frame.pop();
    return frame.pop();
  }

  i32 as_if_cond() {
    final frame = Frame(this);
    frame.i32_const(2);
    return frame.pop();
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
    } else {
      frame.i32_const(1);
    }
    return frame.pop();
  }

  i32 as_if_else(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.push(arg1);
    } else {
      frame.i32_const(4);
      return frame.pop();
    }
    return frame.pop();
  }

  i32 as_if_then(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(3);
      return frame.pop();
    } else {
      frame.push(arg1);
    }
    return frame.pop();
  }

  i64 as_loadN_address() {
    final frame = Frame(this);
    frame.i64_const(30);
    return frame.pop();
    frame.i64_load8_s(0, 0);
    return frame.pop();
  }

  f32 as_load_address() {
    final frame = Frame(this);
    frame.f32_const(1.7000000476837158);
    return frame.pop();
    frame.f32_load(2, 0);
    return frame.pop();
  }

  i32 as_local_set_value() {
    f32 local0 = 0;

    final frame = Frame(this);
    frame.i32_const(17);
    return frame.pop();
    local0 = frame.pop();
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 as_local_tee_value() {
    i32 local0 = 0;

    final frame = Frame(this);
    frame.i32_const(1);
    return frame.pop();
    local0 = frame.peek();
    return frame.pop();
  }

  i32 as_loop_first() {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      frame.i32_const(3);
      return frame.pop();
      frame.i32_const(2);
      break;
    }
    return frame.pop();
  }

  i32 as_loop_last() {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      /* nop */
      _func00();
      frame.i32_const(5);
      return frame.pop();
      break;
    }
    return frame.pop();
  }

  i32 as_loop_mid() {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      _func00();
      frame.i32_const(4);
      return frame.pop();
      frame.i32_const(2);
      break;
    }
    return frame.pop();
  }

  i32 as_memory_grow_size() {
    final frame = Frame(this);
    frame.i32_const(40);
    return frame.pop();
    frame.memory_grow(0);
    return frame.pop();
  }

  i64 as_return_value() {
    final frame = Frame(this);
    frame.i64_const(7);
    return frame.pop();
    return frame.pop();
    return frame.pop();
  }

  i32 as_select_cond() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(1);
    frame.i32_const(7);
    return frame.pop();
    frame.select();
    return frame.pop();
  }

  i32 as_select_first(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.i32_const(5);
    return frame.pop();
    frame.push(arg0);
    frame.push(arg1);
    frame.select();
    return frame.pop();
  }

  i32 as_select_second(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.i32_const(6);
    return frame.pop();
    frame.push(arg1);
    frame.select();
    return frame.pop();
  }

  i32 as_storeN_address() {
    final frame = Frame(this);
    frame.i32_const(32);
    return frame.pop();
    frame.i32_const(7);
    frame.i32_store8(0, 0);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 as_storeN_value() {
    final frame = Frame(this);
    frame.i32_const(2);
    frame.i32_const(33);
    return frame.pop();
    frame.i64_store16(1, 0);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 as_store_address() {
    final frame = Frame(this);
    frame.i32_const(30);
    return frame.pop();
    frame.f64_const(7.0);
    frame.f64_store(3, 0);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 as_store_value() {
    final frame = Frame(this);
    frame.i32_const(2);
    frame.i32_const(31);
    return frame.pop();
    frame.i64_store(3, 0);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 as_test_operand() {
    final frame = Frame(this);
    frame.i32_const(44);
    return frame.pop();
    frame.i32_eqz();
    return frame.pop();
  }

  f32 as_unary_operand() {
    final frame = Frame(this);
    frame.f32_const(3.4000000953674316);
    return frame.pop();
    frame.f32_neg();
    return frame.pop();
  }

  void nullary() {
    final frame = Frame(this);
  }

  void type_f32() {
    final frame = Frame(this);

    frame.f32_neg();
    frame.drop();
  }

  f32 type_f32_value() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.f32_const(3.0);
      return frame.pop();
      frame.f32_neg();
    }
    return frame.pop();
  }

  void type_f64() {
    final frame = Frame(this);

    frame.f64_neg();
    frame.drop();
  }

  f64 type_f64_value() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.f64_const(4.0);
      return frame.pop();
      frame.f64_neg();
    }
    return frame.pop();
  }

  void type_i32() {
    final frame = Frame(this);

    frame.i32_ctz();
    frame.drop();
  }

  i32 type_i32_value() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      return frame.pop();
      frame.i32_ctz();
    }
    return frame.pop();
  }

  void type_i64() {
    final frame = Frame(this);

    frame.i64_ctz();
    frame.drop();
  }

  i64 type_i64_value() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i64_const(2);
      return frame.pop();
      frame.i64_ctz();
    }
    return frame.pop();
  }

  f64 unary() {
    final frame = Frame(this);
    frame.f64_const(3.0);
    return frame.pop();
    return frame.pop();
  }

  void _func00() {
    final frame = Frame(this);
  }

  i32 _func36(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(this);
    frame.i32_const(-1);
    return frame.pop();
  }

  List<Function> _initFunctionTable() {
    return [
      _func00,
      type_i32,
      type_i64,
      type_f32,
      type_f64,
      type_i32_value,
      type_i64_value,
      type_f32_value,
      type_f64_value,
      nullary,
      unary,
      as_func_first,
      as_func_mid,
      as_func_last,
      as_func_value,
      as_block_first,
      as_block_mid,
      as_block_last,
      as_block_value,
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
      _func36,
      as_call_first,
      as_call_mid,
      as_call_last,
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
      as_convert_operand,
      as_memory_grow_size
    ];
  }
}

typedef FunctionType0 = i32 Function(i32, i32, i32);
typedef FunctionType1 = void Function();
typedef FunctionType2 = i32 Function();
typedef FunctionType3 = i64 Function();
typedef FunctionType4 = f32 Function();
typedef FunctionType5 = f64 Function();
typedef FunctionType6 = i32 Function(i32, i32);

class Globals {
  i32 a = 0;
}

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final Return0Module module;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table0, 0, 0, 1, [36]); /* segment0 */
  }
}
