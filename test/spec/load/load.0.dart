// Generated from test/spec/load/load.0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Module {
  Module() {
    tables = [table0];
    segments.init();
  }

  final Memory memory = Memory(1);

  final Globals globals = Globals();

  final Table table0 = Table(
    1,
    1,
  );

  late final List<Table> tables;

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  i32 as_br_value() {
    final frame = Frame(memory);
    block_label_0:
    {
      frame.i32_const(0);
      frame.i32_load(2, 0);
      break block_label_0;
    }
    return frame.pop();
  }

  void as_br_if_cond() {
    final frame = Frame(memory);
    block_label_0:
    {
      frame.i32_const(0);
      frame.i32_load(2, 0);
      if (frame.pop() != 0) break block_label_0;
    }
  }

  i32 as_br_if_value() {
    final frame = Frame(memory);
    block_label_0:
    {
      frame.i32_const(0);
      frame.i32_load(2, 0);
      frame.i32_const(1);
      if (frame.pop() != 0) break block_label_0;
      frame.drop();
      frame.i32_const(7);
    }
    return frame.pop();
  }

  i32 as_br_if_value_cond() {
    final frame = Frame(memory);
    block_label_0:
    {
      frame.i32_const(6);
      frame.i32_const(0);
      frame.i32_load(2, 0);
      if (frame.pop() != 0) break block_label_0;
      frame.drop();
      frame.i32_const(7);
    }
    return frame.pop();
  }

  void as_br_table_index() {
    final frame = Frame(memory);
    block_label_0:
    {
      frame.i32_const(0);
      frame.i32_load(2, 0);
      var t0 = frame.pop();
      switch (t0) {
        case 0:
          break block_label_0;
        case 1:
          break block_label_0;
        default:
          break block_label_0;
      }
    }
  }

  i32 as_br_table_value() {
    final frame = Frame(memory);
    block_label_0:
    {
      frame.i32_const(0);
      frame.i32_load(2, 0);
      frame.i32_const(1);
      var t0 = frame.pop();
      switch (t0) {
        case 0:
          break block_label_0;
        case 1:
          break block_label_0;
        default:
          break block_label_0;
      }

      frame.i32_const(7);
    }
    return frame.pop();
  }

  i32 as_br_table_value_index() {
    final frame = Frame(memory);
    block_label_0:
    {
      frame.i32_const(6);
      frame.i32_const(0);
      frame.i32_load(2, 0);
      var t0 = frame.pop();
      switch (t0) {
        case 0:
          break block_label_0;
        default:
          break block_label_0;
      }

      frame.i32_const(7);
    }
    return frame.pop();
  }

  i32 as_return_value() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    return frame.pop();
    return frame.pop();
  }

  i32 as_if_cond() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
    } else {
      frame.i32_const(1);
    }
    return frame.pop();
  }

  i32 as_if_then() {
    final frame = Frame(memory);
    frame.i32_const(1);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      frame.i32_load(2, 0);
    } else {
      frame.i32_const(0);
    }
    return frame.pop();
  }

  i32 as_if_else() {
    final frame = Frame(memory);
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
    } else {
      frame.i32_const(0);
      frame.i32_load(2, 0);
    }
    return frame.pop();
  }

  i32 as_select_first(i32 arg0, i32 arg1) {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    frame.push(arg0);
    frame.push(arg1);
    frame.select();
    return frame.pop();
  }

  i32 as_select_second(i32 arg0, i32 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    frame.push(arg1);
    frame.select();
    return frame.pop();
  }

  i32 as_select_cond() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(1);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    frame.select();
    return frame.pop();
  }

  i32 f(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(memory);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 as_call_first() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    frame.i32_const(2);
    frame.i32_const(3);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(f(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 as_call_mid() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    frame.i32_const(3);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(f(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 as_call_last() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(f(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 as_call_indirect_first() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    frame.i32_const(2);
    frame.i32_const(3);
    frame.i32_const(0);
    {
      var func = table0[frame.pop()]! as FunctionType0;
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 as_call_indirect_mid() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    frame.i32_const(3);
    frame.i32_const(0);
    {
      var func = table0[frame.pop()]! as FunctionType0;
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 as_call_indirect_last() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    frame.i32_const(0);
    {
      var func = table0[frame.pop()]! as FunctionType0;
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 as_call_indirect_index() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.i32_const(3);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    {
      var func = table0[frame.pop()]! as FunctionType0;
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1, t2));
    }
    return frame.pop();
  }

  void as_local_set_value() {
    i32 local0 = 0;

    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    local0 = frame.pop();
  }

  i32 as_local_tee_value() {
    i32 local0 = 0;

    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    local0 = frame.peek();
    return frame.pop();
  }

  void as_global_set_value() {
    i32 local0 = 0;

    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    globals.g = frame.pop();
  }

  i32 as_load_address() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    frame.i32_load(2, 0);
    return frame.pop();
  }

  i32 as_loadN_address() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    frame.i32_load8_s(0, 0);
    return frame.pop();
  }

  void as_store_address() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    frame.i32_const(7);
    frame.i32_store(2, 0);
  }

  void as_store_value() {
    final frame = Frame(memory);
    frame.i32_const(2);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    frame.i32_store(2, 0);
  }

  void as_storeN_address() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_load8_s(0, 0);
    frame.i32_const(7);
    frame.i32_store8(0, 0);
  }

  void as_storeN_value() {
    final frame = Frame(memory);
    frame.i32_const(2);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    frame.i32_store16(1, 0);
  }

  i32 as_unary_operand() {
    final frame = Frame(memory);
    frame.i32_const(100);
    frame.i32_load(2, 0);
    frame.i32_clz();
    return frame.pop();
  }

  i32 as_binary_left() {
    final frame = Frame(memory);
    frame.i32_const(100);
    frame.i32_load(2, 0);
    frame.i32_const(10);
    frame.i32_add();
    return frame.pop();
  }

  i32 as_binary_right() {
    final frame = Frame(memory);
    frame.i32_const(10);
    frame.i32_const(100);
    frame.i32_load(2, 0);
    frame.i32_sub();
    return frame.pop();
  }

  i32 as_test_operand() {
    final frame = Frame(memory);
    frame.i32_const(100);
    frame.i32_load(2, 0);
    frame.i32_eqz();
    return frame.pop();
  }

  i32 as_compare_left() {
    final frame = Frame(memory);
    frame.i32_const(100);
    frame.i32_load(2, 0);
    frame.i32_const(10);
    frame.i32_le_s();
    return frame.pop();
  }

  i32 as_compare_right() {
    final frame = Frame(memory);
    frame.i32_const(10);
    frame.i32_const(100);
    frame.i32_load(2, 0);
    frame.i32_ne();
    return frame.pop();
  }

  i32 as_memory_grow_size() {
    final frame = Frame(memory);
    frame.i32_const(100);
    frame.i32_load(2, 0);
    frame.memory_grow(0);
    return frame.pop();
  }

  List<Function> _initFunctionTable() {
    return [
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
      as_call_indirect_first,
      as_call_indirect_mid,
      as_call_indirect_last,
      as_call_indirect_index,
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
      as_memory_grow_size
    ];
  }
}

typedef FunctionType0 = i32 Function(i32, i32, i32);
typedef FunctionType1 = i32 Function();
typedef FunctionType2 = void Function();
typedef FunctionType3 = i32 Function(i32, i32);

class Globals {
  i32 g = 0;
}

class ElementSegments {
  ElementSegments(this.module);

  final Module module;

  void init() {
    copyTo(module.table0, 0, 0, 1, [14]); /* segment0 */
  }

  void copyTo(Table table, int src, int dest, int count, List<int> indexes) {
    indexes = indexes.sublist(src, src + count);
    var functions = indexes.map((i) => module.functionTable[i]).toList();
    table.copyFrom(functions, dest, count);
  }
}
