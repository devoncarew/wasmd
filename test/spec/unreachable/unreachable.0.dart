// Generated from test/spec/unreachable/unreachable.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Unreachable0Module implements Module {
  Unreachable0Module() {
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
    throw Trap('unreachable');
    frame.i32_const(10);
    frame.i32_add();
    return frame.pop();
  }

  i64 as_binary_right() {
    final frame = Frame(this);
    frame.i64_const(10);
    throw Trap('unreachable');
    frame.i64_sub();
    return frame.pop();
  }

  i32 as_block_broke() {
    final frame = Frame(this);
    block_label_0:
    {
      _func00();
      frame.i32_const(1);
      frame.unwindTo(0, 1);
      break block_label_0;

      throw Trap('unreachable');
    }
    return frame.pop();
  }

  i32 as_block_first() {
    final frame = Frame(this);
    block_label_0:
    {
      throw Trap('unreachable');
      frame.i32_const(2);
    }
    return frame.pop();
  }

  void as_block_last() {
    final frame = Frame(this);
    block_label_0:
    {
      /* nop */
      _func00();
      throw Trap('unreachable');
    }
  }

  i32 as_block_mid() {
    final frame = Frame(this);
    block_label_0:
    {
      _func00();
      throw Trap('unreachable');
      frame.i32_const(2);
    }
    return frame.pop();
  }

  i32 as_block_value() {
    final frame = Frame(this);
    block_label_0:
    {
      /* nop */
      _func00();
      throw Trap('unreachable');
    }
    return frame.pop();
  }

  void as_br_if_cond() {
    final frame = Frame(this);
    block_label_0:
    {
      throw Trap('unreachable');
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
      throw Trap('unreachable');
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
      throw Trap('unreachable');
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.drop();
      frame.i32_const(7);
    }
    return frame.pop();
  }

  void as_br_table_index() {
    final frame = Frame(this);
    block_label_0:
    {
      throw Trap('unreachable');
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
      throw Trap('unreachable');
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

  i32 as_br_table_value_2() {
    final frame = Frame(this);
    block_label_0:
    {
      block_label_1:
      {
        throw Trap('unreachable');
        frame.i32_const(1);
        var t0 = frame.pop();
        switch (t0) {
          case 0:
            frame.unwindTo(0, 1);
            break block_label_1;

          default:
            frame.unwindTo(0, 1);
            break block_label_0;
        }
      }
    }
    return frame.pop();
  }

  i32 as_br_table_value_and_index() {
    final frame = Frame(this);
    block_label_0:
    {
      throw Trap('unreachable');
      var t0 = frame.pop();
      switch (t0) {
        case 0:
          frame.unwindTo(0, 1);
          break block_label_0;

        default:
          frame.unwindTo(0, 1);
          break block_label_0;
      }

      frame.i32_const(8);
    }
    return frame.pop();
  }

  i32 as_br_table_value_index() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(6);
      throw Trap('unreachable');
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
      throw Trap('unreachable');
      frame.unwindTo(0, 1);
      break block_label_0;
    }
    return frame.pop();
  }

  void as_call_first() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.i32_const(2);
    frame.i32_const(3);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func01(t0, t1, t2);
    }
  }

  void as_call_indirect_first() {
    final frame = Frame(this);
    frame.i32_const(0);
    throw Trap('unreachable');
    frame.i32_const(2);
    frame.i32_const(3);
    {
      var func = table0[frame.pop()] as FunctionType0?;
      if (func == null) throw Trap('uninitialized element');
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      func(t0, t1, t2);
    }
  }

  void as_call_indirect_func() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.i32_const(1);
    frame.i32_const(2);
    frame.i32_const(3);
    {
      var func = table0[frame.pop()] as FunctionType0?;
      if (func == null) throw Trap('uninitialized element');
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      func(t0, t1, t2);
    }
  }

  void as_call_indirect_last() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(1);
    frame.i32_const(2);
    throw Trap('unreachable');
    {
      var func = table0[frame.pop()] as FunctionType0?;
      if (func == null) throw Trap('uninitialized element');
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      func(t0, t1, t2);
    }
  }

  void as_call_indirect_mid() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(1);
    throw Trap('unreachable');
    frame.i32_const(3);
    {
      var func = table0[frame.pop()] as FunctionType0?;
      if (func == null) throw Trap('uninitialized element');
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      func(t0, t1, t2);
    }
  }

  void as_call_last() {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    throw Trap('unreachable');
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func01(t0, t1, t2);
    }
  }

  void as_call_mid() {
    final frame = Frame(this);
    frame.i32_const(1);
    throw Trap('unreachable');
    frame.i32_const(3);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func01(t0, t1, t2);
    }
  }

  i32 as_compare_left() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.f64_const(10.0);
    frame.f64_le();
    return frame.pop();
  }

  i32 as_compare_right() {
    final frame = Frame(this);
    frame.f32_const(10.0);
    throw Trap('unreachable');
    frame.f32_ne();
    return frame.pop();
  }

  i32 as_convert_operand() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.i32_wrap_i64();
    return frame.pop();
  }

  i32 as_func_first() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.i32_const(-1);
    return frame.pop();
  }

  void as_func_last() {
    final frame = Frame(this);
    _func00();
    throw Trap('unreachable');
  }

  i32 as_func_mid() {
    final frame = Frame(this);
    _func00();
    throw Trap('unreachable');
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 as_func_value() {
    final frame = Frame(this);
    _func00();
    throw Trap('unreachable');
    return frame.pop();
  }

  f32 as_global_set_value() {
    final frame = Frame(this);
    throw Trap('unreachable');
    globals.a = frame.pop();
    return frame.pop();
  }

  i32 as_if_cond() {
    final frame = Frame(this);
    throw Trap('unreachable');
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
      throw Trap('unreachable');
    }
    return frame.pop();
  }

  i32 as_if_then(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0:
    if (frame.pop() != 0) {
      throw Trap('unreachable');
    } else {
      frame.push(arg1);
    }
    return frame.pop();
  }

  i32 as_if_then_no_else(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0:
    if (frame.pop() != 0) {
      throw Trap('unreachable');
    }
    frame.push(arg1);
    return frame.pop();
  }

  i64 as_loadN_address() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.i64_load8_s(0, 0);
    return frame.pop();
  }

  f32 as_load_address() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.f32_load(2, 0);
    return frame.pop();
  }

  void as_local_set_value() {
    f32 local0 = 0;

    final frame = Frame(this);
    throw Trap('unreachable');
    local0 = frame.pop();
  }

  f32 as_local_tee_value() {
    f32 local0 = 0;

    final frame = Frame(this);
    throw Trap('unreachable');
    local0 = frame.peek();
    return frame.pop();
  }

  i32 as_loop_broke() {
    final frame = Frame(this);
    block_label_0:
    {
      loop_label_1:
      for (;;) {
        _func00();
        frame.i32_const(1);
        frame.unwindTo(0, 1);
        break block_label_0;

        throw Trap('unreachable');
        break;
      }
    }
    return frame.pop();
  }

  i32 as_loop_first() {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      throw Trap('unreachable');
      frame.i32_const(2);
      break;
    }
    return frame.pop();
  }

  void as_loop_last() {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      /* nop */
      _func00();
      throw Trap('unreachable');
      break;
    }
  }

  i32 as_loop_mid() {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      _func00();
      throw Trap('unreachable');
      frame.i32_const(2);
      break;
    }
    return frame.pop();
  }

  i32 as_memory_grow_size() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.memory_grow(0);
    return frame.pop();
  }

  i64 as_return_value() {
    final frame = Frame(this);
    throw Trap('unreachable');
    return frame.pop();
    return frame.pop();
  }

  i32 as_select_cond() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(1);
    throw Trap('unreachable');
    frame.select();
    return frame.pop();
  }

  i32 as_select_first(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.push(arg0);
    frame.push(arg1);
    frame.select();
    return frame.pop();
  }

  i32 as_select_second(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    throw Trap('unreachable');
    frame.push(arg1);
    frame.select();
    return frame.pop();
  }

  void as_storeN_address() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.i32_const(7);
    frame.i32_store8(0, 0);
  }

  void as_storeN_value() {
    final frame = Frame(this);
    frame.i32_const(2);
    throw Trap('unreachable');
    frame.i64_store16(1, 0);
  }

  void as_store_address() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.f64_const(7.0);
    frame.f64_store(3, 0);
  }

  void as_store_value() {
    final frame = Frame(this);
    frame.i32_const(2);
    throw Trap('unreachable');
    frame.i64_store(3, 0);
  }

  i32 as_test_operand() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.i32_eqz();
    return frame.pop();
  }

  f32 as_unary_operand() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.f32_neg();
    return frame.pop();
  }

  f64 type_f32() {
    final frame = Frame(this);
    throw Trap('unreachable');
    return frame.pop();
  }

  f64 type_f64() {
    final frame = Frame(this);
    throw Trap('unreachable');
    return frame.pop();
  }

  i32 type_i32() {
    final frame = Frame(this);
    throw Trap('unreachable');
    return frame.pop();
  }

  i32 type_i64() {
    final frame = Frame(this);
    throw Trap('unreachable');
    return frame.pop();
  }

  void _func00() {
    final frame = Frame(this);
  }

  void _func01(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(this);
  }

  List<Function> _initFunctionTable() {
    return [
      _func00,
      _func01,
      type_i32,
      type_i64,
      type_f32,
      type_f64,
      as_func_first,
      as_func_mid,
      as_func_last,
      as_func_value,
      as_block_first,
      as_block_mid,
      as_block_last,
      as_block_value,
      as_block_broke,
      as_loop_first,
      as_loop_mid,
      as_loop_last,
      as_loop_broke,
      as_br_value,
      as_br_if_cond,
      as_br_if_value,
      as_br_if_value_cond,
      as_br_table_index,
      as_br_table_value,
      as_br_table_value_2,
      as_br_table_value_index,
      as_br_table_value_and_index,
      as_return_value,
      as_if_cond,
      as_if_then,
      as_if_else,
      as_if_then_no_else,
      as_select_first,
      as_select_second,
      as_select_cond,
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

typedef FunctionType0 = void Function(i32, i32, i32);
typedef FunctionType1 = void Function();
typedef FunctionType2 = i32 Function();
typedef FunctionType3 = f64 Function();
typedef FunctionType4 = i64 Function();
typedef FunctionType5 = i32 Function(i32, i32);
typedef FunctionType6 = f32 Function();

class Globals {
  f32 a = 0.0;
}

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final Unreachable0Module module;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table0, 0, 0, 1, [1]); /* segment0 */
  }
}
