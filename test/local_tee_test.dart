// Generated from test/wasm/local_tee.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'package:test/test.dart';
import 'package:wasmd/runtime.dart';

import 'src/infra.dart';

void main() {
  group('local_tee', () {
    final Module m = Module();
    final Globals g = m.globals;

    returns('test_type_local_i32_0', m.test_type_local_i32_0, 0);
    returns('test_type_local_i64_0', m.test_type_local_i64_0, 0);
    returns('test_type_local_f32_0', m.test_type_local_f32_0,
        g.expect_type_local_f32_0);
    returns('test_type_local_f64_0', m.test_type_local_f64_0,
        g.expect_type_local_f64_0);
    returns('test_type_param_i32_0', m.test_type_param_i32_0, 10);
    returns('test_type_param_i64_0', m.test_type_param_i64_0, 11);
    returns('test_type_param_f32_0', m.test_type_param_f32_0,
        g.expect_type_param_f32_0);
    returns('test_type_param_f64_0', m.test_type_param_f64_0,
        g.expect_type_param_f64_0);
    returns('test_as_block_first_0', m.test_as_block_first_0, 1);
    returns('test_as_block_mid_0', m.test_as_block_mid_0, 1);
    returns('test_as_block_last_0', m.test_as_block_last_0, 1);
    returns('test_as_loop_first_0', m.test_as_loop_first_0, 3);
    returns('test_as_loop_mid_0', m.test_as_loop_mid_0, 4);
    returns('test_as_loop_last_0', m.test_as_loop_last_0, 5);
    returns('test_as_br_value_0', m.test_as_br_value_0, 9);
    returns('test_as_br_if_cond_0', m.test_as_br_if_cond_0);
    returns('test_as_br_if_value_0', m.test_as_br_if_value_0, 8);
    returns('test_as_br_if_value_cond_0', m.test_as_br_if_value_cond_0, 6);
    returns('test_as_br_table_index_0', m.test_as_br_table_index_0);
    returns('test_as_br_table_value_0', m.test_as_br_table_value_0, 10);
    returns(
        'test_as_br_table_value_index_0', m.test_as_br_table_value_index_0, 6);
    returns('test_as_return_value_0', m.test_as_return_value_0, 7);
    returns('test_as_if_cond_0', m.test_as_if_cond_0, 0);
    returns('test_as_if_then_0', m.test_as_if_then_0, 3);
    returns('test_as_if_else_0', m.test_as_if_else_0, 4);
    returns('test_as_select_first_0', m.test_as_select_first_0, 5);
    returns('test_as_select_second_0', m.test_as_select_second_0, 6);
    returns('test_as_select_cond_0', m.test_as_select_cond_0, 0);
    returns('test_as_call_first_0', m.test_as_call_first_0, -1);
    returns('test_as_call_mid_0', m.test_as_call_mid_0, -1);
    returns('test_as_call_last_0', m.test_as_call_last_0, -1);
    returns(
        'test_as_call_indirect_first_0', m.test_as_call_indirect_first_0, -1);
    returns('test_as_call_indirect_mid_0', m.test_as_call_indirect_mid_0, -1);
    returns('test_as_call_indirect_last_0', m.test_as_call_indirect_last_0, -1);
    returns(
        'test_as_call_indirect_index_0', m.test_as_call_indirect_index_0, -1);
    returns('test_as_local_set_value_0', m.test_as_local_set_value_0);
    returns('test_as_local_tee_value_0', m.test_as_local_tee_value_0, 1);
    returns('test_as_global_set_value_0', m.test_as_global_set_value_0);
    returns('test_as_load_address_0', m.test_as_load_address_0, 0);
    returns('test_as_loadN_address_0', m.test_as_loadN_address_0, 0);
    returns('test_as_store_address_0', m.test_as_store_address_0);
    returns('test_as_store_value_0', m.test_as_store_value_0);
    returns('test_as_storeN_address_0', m.test_as_storeN_address_0);
    returns('test_as_storeN_value_0', m.test_as_storeN_value_0);
    returns('test_as_unary_operand_0', m.test_as_unary_operand_0,
        g.expect_as_unary_operand_0);
    returns('test_as_binary_left_0', m.test_as_binary_left_0, 13);
    returns('test_as_binary_right_0', m.test_as_binary_right_0, 6);
    returns('test_as_test_operand_0', m.test_as_test_operand_0, 1);
    returns('test_as_compare_left_0', m.test_as_compare_left_0, 0);
    returns('test_as_compare_right_0', m.test_as_compare_right_0, 1);
    returns('test_as_convert_operand_0', m.test_as_convert_operand_0, 41);
    returns('test_as_memory_grow_size_0', m.test_as_memory_grow_size_0, 1);
    returns('test_type_mixed_0', m.test_type_mixed_0);
    returns('test_write_0', m.test_write_0, 56);
    returns('test_result_0', m.test_result_0, g.expect_result_0);
  });
}

class Module {
  Module() {
    tables = [table0];
    elementSegments.init(this);
  }

  final Memory memory = Memory(1);

  final Globals globals = Globals();

  final Table table0 = Table(
    1,
    1,
  );

  late final List<Table> tables;

  final ElementSegments elementSegments = ElementSegments();

  i32 type_local_i32() {
    i32 local0 = 0;

    final frame = Frame(memory);
    frame.i32_const(0);
    local0 = frame.peek();
    return frame.pop();
  }

  i64 type_local_i64() {
    i64 local0 = 0;

    final frame = Frame(memory);
    frame.i64_const(0);
    local0 = frame.peek();
    return frame.pop();
  }

  f32 type_local_f32() {
    f32 local0 = 0;

    final frame = Frame(memory);
    frame.f32_const(0.0);
    local0 = frame.peek();
    return frame.pop();
  }

  f64 type_local_f64() {
    f64 local0 = 0;

    final frame = Frame(memory);
    frame.f64_const(0.0);
    local0 = frame.peek();
    return frame.pop();
  }

  i32 type_param_i32(i32 arg0) {
    final frame = Frame(memory);
    frame.i32_const(10);
    arg0 = frame.peek();
    return frame.pop();
  }

  i64 type_param_i64(i64 arg0) {
    final frame = Frame(memory);
    frame.i64_const(11);
    arg0 = frame.peek();
    return frame.pop();
  }

  f32 type_param_f32(f32 arg0) {
    final frame = Frame(memory);
    frame.f32_const(11.100000381469727);
    arg0 = frame.peek();
    return frame.pop();
  }

  f64 type_param_f64(f64 arg0) {
    final frame = Frame(memory);
    frame.f64_const(12.2);
    arg0 = frame.peek();
    return frame.pop();
  }

  void type_mixed(i64 arg0, f32 arg1, f64 arg2, i32 arg3, i32 arg4) {
    f32 local0 = 0;
    i64 local1 = 0;
    i64 local2 = 0;
    f64 local3 = 0;

    final frame = Frame(memory);
    frame.i64_const(0);
    arg0 = frame.peek();
    frame.i64_eqz();
    frame.drop();
    frame.f32_const(0.0);
    arg1 = frame.peek();
    frame.f32_neg();
    frame.drop();
    frame.f64_const(0.0);
    arg2 = frame.peek();
    frame.f64_neg();
    frame.drop();
    frame.i32_const(0);
    arg3 = frame.peek();
    frame.i32_eqz();
    frame.drop();
    frame.i32_const(0);
    arg4 = frame.peek();
    frame.i32_eqz();
    frame.drop();
    frame.f32_const(0.0);
    local0 = frame.peek();
    frame.f32_neg();
    frame.drop();
    frame.i64_const(0);
    local1 = frame.peek();
    frame.i64_eqz();
    frame.drop();
    frame.i64_const(0);
    local2 = frame.peek();
    frame.i64_eqz();
    frame.drop();
    frame.f64_const(0.0);
    local3 = frame.peek();
    frame.f64_neg();
    frame.drop();
  }

  i64 write(i64 arg0, f32 arg1, f64 arg2, i32 arg3, i32 arg4) {
    f32 local0 = 0;
    i64 local1 = 0;
    i64 local2 = 0;
    f64 local3 = 0;

    final frame = Frame(memory);
    frame.f32_const(-0.30000001192092896);
    arg1 = frame.peek();
    frame.drop();
    frame.i32_const(40);
    arg3 = frame.peek();
    frame.drop();
    frame.i32_const(-7);
    arg4 = frame.peek();
    frame.drop();
    frame.f32_const(5.5);
    local0 = frame.peek();
    frame.drop();
    frame.i64_const(6);
    local1 = frame.peek();
    frame.drop();
    frame.f64_const(8.0);
    local3 = frame.peek();
    frame.drop();
    frame.push(arg0);
    frame.f64_convert_i64_u();
    frame.push(arg1);
    frame.f64_promote_f32();
    frame.push(arg2);
    frame.push(arg3);
    frame.f64_convert_i32_u();
    frame.push(arg4);
    frame.f64_convert_i32_s();
    frame.push(local0);
    frame.f64_promote_f32();
    frame.push(local1);
    frame.f64_convert_i64_u();
    frame.push(local2);
    frame.f64_convert_i64_u();
    frame.push(local3);
    frame.f64_add();
    frame.f64_add();
    frame.f64_add();
    frame.f64_add();
    frame.f64_add();
    frame.f64_add();
    frame.f64_add();
    frame.f64_add();
    frame.i64_trunc_f64_s();
    return frame.pop();
  }

  f64 result(i64 arg0, f32 arg1, f64 arg2, i32 arg3, i32 arg4) {
    f32 local0 = 0;
    i64 local1 = 0;
    i64 local2 = 0;
    f64 local3 = 0;

    final frame = Frame(memory);
    frame.i64_const(1);
    arg0 = frame.peek();
    frame.f64_convert_i64_u();
    frame.f32_const(2.0);
    arg1 = frame.peek();
    frame.f64_promote_f32();
    frame.f64_const(3.3);
    arg2 = frame.peek();
    frame.i32_const(4);
    arg3 = frame.peek();
    frame.f64_convert_i32_u();
    frame.i32_const(5);
    arg4 = frame.peek();
    frame.f64_convert_i32_s();
    frame.f32_const(5.5);
    local0 = frame.peek();
    frame.f64_promote_f32();
    frame.i64_const(6);
    local1 = frame.peek();
    frame.f64_convert_i64_u();
    frame.i64_const(0);
    local2 = frame.peek();
    frame.f64_convert_i64_u();
    frame.f64_const(8.0);
    local3 = frame.peek();
    frame.f64_add();
    frame.f64_add();
    frame.f64_add();
    frame.f64_add();
    frame.f64_add();
    frame.f64_add();
    frame.f64_add();
    frame.f64_add();
    return frame.pop();
  }

  void dummy() {
    final frame = Frame(memory);
  }

  i32 as_block_first(i32 arg0) {
    final frame = Frame(memory);
    block_label_0:
    {
      frame.i32_const(1);
      arg0 = frame.peek();
      dummy();
    }
    return frame.pop();
  }

  i32 as_block_mid(i32 arg0) {
    final frame = Frame(memory);
    block_label_0:
    {
      dummy();
      frame.i32_const(1);
      arg0 = frame.peek();
      dummy();
    }
    return frame.pop();
  }

  i32 as_block_last(i32 arg0) {
    final frame = Frame(memory);
    block_label_0:
    {
      dummy();
      dummy();
      frame.i32_const(1);
      arg0 = frame.peek();
    }
    return frame.pop();
  }

  i32 as_loop_first(i32 arg0) {
    final frame = Frame(memory);

    loop_label_0:
    for (;;) {
      frame.i32_const(3);
      arg0 = frame.peek();
      dummy();
      break;
    }
    return frame.pop();
  }

  i32 as_loop_mid(i32 arg0) {
    final frame = Frame(memory);

    loop_label_0:
    for (;;) {
      dummy();
      frame.i32_const(4);
      arg0 = frame.peek();
      dummy();
      break;
    }
    return frame.pop();
  }

  i32 as_loop_last(i32 arg0) {
    final frame = Frame(memory);

    loop_label_0:
    for (;;) {
      dummy();
      dummy();
      frame.i32_const(5);
      arg0 = frame.peek();
      break;
    }
    return frame.pop();
  }

  i32 as_br_value(i32 arg0) {
    final frame = Frame(memory);
    block_label_0:
    {
      frame.i32_const(9);
      arg0 = frame.peek();
      break block_label_0;
    }
    return frame.pop();
  }

  void as_br_if_cond(i32 arg0) {
    final frame = Frame(memory);
    block_label_0:
    {
      frame.i32_const(1);
      arg0 = frame.peek();
      if (frame.pop() != 0) break block_label_0;
    }
  }

  i32 as_br_if_value(i32 arg0) {
    final frame = Frame(memory);
    block_label_0:
    {
      frame.i32_const(8);
      arg0 = frame.peek();
      frame.i32_const(1);
      if (frame.pop() != 0) break block_label_0;
      frame.drop();
      frame.i32_const(7);
    }
    return frame.pop();
  }

  i32 as_br_if_value_cond(i32 arg0) {
    final frame = Frame(memory);
    block_label_0:
    {
      frame.i32_const(6);
      frame.i32_const(9);
      arg0 = frame.peek();
      if (frame.pop() != 0) break block_label_0;
      frame.drop();
      frame.i32_const(7);
    }
    return frame.pop();
  }

  void as_br_table_index(i32 arg0) {
    final frame = Frame(memory);
    block_label_0:
    {
      frame.i32_const(0);
      arg0 = frame.peek();
      throw 'unreachable (0x0E)';
    }
  }

  i32 as_br_table_value(i32 arg0) {
    final frame = Frame(memory);
    block_label_0:
    {
      frame.i32_const(10);
      arg0 = frame.peek();
      frame.i32_const(1);
      throw 'unreachable (0x0E)';
    }
  }

  i32 as_br_table_value_index(i32 arg0) {
    final frame = Frame(memory);
    block_label_0:
    {
      frame.i32_const(6);
      frame.i32_const(11);
      arg0 = frame.peek();
      throw 'unreachable (0x0E)';
    }
  }

  i32 as_return_value(i32 arg0) {
    final frame = Frame(memory);
    frame.i32_const(7);
    arg0 = frame.peek();
    return frame.pop();
    return frame.pop();
  }

  i32 as_if_cond(i32 arg0) {
    final frame = Frame(memory);
    frame.i32_const(2);
    arg0 = frame.peek();
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
    } else {
      frame.i32_const(1);
    }
    return frame.pop();
  }

  i32 as_if_then(i32 arg0) {
    final frame = Frame(memory);
    frame.push(arg0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(3);
      arg0 = frame.peek();
    } else {
      frame.push(arg0);
    }
    return frame.pop();
  }

  i32 as_if_else(i32 arg0) {
    final frame = Frame(memory);
    frame.push(arg0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.push(arg0);
    } else {
      frame.i32_const(4);
      arg0 = frame.peek();
    }
    return frame.pop();
  }

  i32 as_select_first(i32 arg0, i32 arg1) {
    final frame = Frame(memory);
    frame.i32_const(5);
    arg0 = frame.peek();
    frame.push(arg0);
    frame.push(arg1);
    frame.select();
    return frame.pop();
  }

  i32 as_select_second(i32 arg0, i32 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.i32_const(6);
    arg0 = frame.peek();
    frame.push(arg1);
    frame.select();
    return frame.pop();
  }

  i32 as_select_cond(i32 arg0) {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(1);
    frame.i32_const(7);
    arg0 = frame.peek();
    frame.select();
    return frame.pop();
  }

  i32 f(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(memory);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 as_call_first(i32 arg0) {
    final frame = Frame(memory);
    frame.i32_const(12);
    arg0 = frame.peek();
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

  i32 as_call_mid(i32 arg0) {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(13);
    arg0 = frame.peek();
    frame.i32_const(3);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(f(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 as_call_last(i32 arg0) {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.i32_const(14);
    arg0 = frame.peek();
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(f(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 as_call_indirect_first(i32 arg0) {
    final frame = Frame(memory);
    frame.i32_const(1);
    arg0 = frame.peek();
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

  i32 as_call_indirect_mid(i32 arg0) {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(2);
    arg0 = frame.peek();
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

  i32 as_call_indirect_last(i32 arg0) {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.i32_const(3);
    arg0 = frame.peek();
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

  i32 as_call_indirect_index(i32 arg0) {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.i32_const(3);
    frame.i32_const(0);
    arg0 = frame.peek();
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
    frame.i32_const(1);
    local0 = frame.peek();
    local0 = frame.pop();
  }

  i32 as_local_tee_value(i32 arg0) {
    final frame = Frame(memory);
    frame.i32_const(1);
    arg0 = frame.peek();
    arg0 = frame.peek();
    return frame.pop();
  }

  void as_global_set_value() {
    i32 local0 = 0;

    final frame = Frame(memory);
    frame.i32_const(1);
    local0 = frame.peek();
    globals.g = frame.pop();
  }

  i32 as_load_address(i32 arg0) {
    final frame = Frame(memory);
    frame.i32_const(1);
    arg0 = frame.peek();
    frame.i32_load(2, 0);
    return frame.pop();
  }

  i32 as_loadN_address(i32 arg0) {
    final frame = Frame(memory);
    frame.i32_const(3);
    arg0 = frame.peek();
    frame.i32_load8_s(0, 0);
    return frame.pop();
  }

  void as_store_address(i32 arg0) {
    final frame = Frame(memory);
    frame.i32_const(30);
    arg0 = frame.peek();
    frame.i32_const(7);
    frame.i32_store(2, 0);
  }

  void as_store_value(i32 arg0) {
    final frame = Frame(memory);
    frame.i32_const(2);
    frame.i32_const(1);
    arg0 = frame.peek();
    frame.i32_store(2, 0);
  }

  void as_storeN_address(i32 arg0) {
    final frame = Frame(memory);
    frame.i32_const(1);
    arg0 = frame.peek();
    frame.i32_const(7);
    frame.i32_store8(0, 0);
  }

  void as_storeN_value(i32 arg0) {
    final frame = Frame(memory);
    frame.i32_const(2);
    frame.i32_const(1);
    arg0 = frame.peek();
    frame.i32_store16(1, 0);
  }

  f32 as_unary_operand(f32 arg0) {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    arg0 = frame.peek();
    frame.f32_neg();
    return frame.pop();
  }

  i32 as_binary_left(i32 arg0) {
    final frame = Frame(memory);
    frame.i32_const(3);
    arg0 = frame.peek();
    frame.i32_const(10);
    frame.i32_add();
    return frame.pop();
  }

  i32 as_binary_right(i32 arg0) {
    final frame = Frame(memory);
    frame.i32_const(10);
    frame.i32_const(4);
    arg0 = frame.peek();
    frame.i32_sub();
    return frame.pop();
  }

  i32 as_test_operand(i32 arg0) {
    final frame = Frame(memory);
    frame.i32_const(0);
    arg0 = frame.peek();
    frame.i32_eqz();
    return frame.pop();
  }

  i32 as_compare_left(i32 arg0) {
    final frame = Frame(memory);
    frame.i32_const(43);
    arg0 = frame.peek();
    frame.i32_const(10);
    frame.i32_le_s();
    return frame.pop();
  }

  i32 as_compare_right(i32 arg0) {
    final frame = Frame(memory);
    frame.i32_const(10);
    frame.i32_const(42);
    arg0 = frame.peek();
    frame.i32_ne();
    return frame.pop();
  }

  i32 as_convert_operand(i64 arg0) {
    final frame = Frame(memory);
    frame.i64_const(41);
    arg0 = frame.peek();
    frame.i32_wrap_i64();
    return frame.pop();
  }

  i32 as_memory_grow_size(i32 arg0) {
    final frame = Frame(memory);
    frame.i32_const(40);
    arg0 = frame.peek();
    frame.memory_grow(0);
    return frame.pop();
  }

  i32 test_type_local_i32_0() {
    final frame = Frame(memory);
    frame.push(type_local_i32());
    return frame.pop();
  }

  i64 test_type_local_i64_0() {
    final frame = Frame(memory);
    frame.push(type_local_i64());
    return frame.pop();
  }

  f32 test_type_local_f32_0() {
    final frame = Frame(memory);
    frame.push(type_local_f32());
    return frame.pop();
  }

  f64 test_type_local_f64_0() {
    final frame = Frame(memory);
    frame.push(type_local_f64());
    return frame.pop();
  }

  i32 test_type_param_i32_0() {
    final frame = Frame(memory);
    frame.i32_const(2);
    {
      var t0 = frame.pop();
      frame.push(type_param_i32(t0));
    }
    return frame.pop();
  }

  i64 test_type_param_i64_0() {
    final frame = Frame(memory);
    frame.i64_const(3);
    {
      var t0 = frame.pop();
      frame.push(type_param_i64(t0));
    }
    return frame.pop();
  }

  f32 test_type_param_f32_0() {
    final frame = Frame(memory);
    frame.f32_const(4.400000095367432);
    {
      var t0 = frame.pop();
      frame.push(type_param_f32(t0));
    }
    return frame.pop();
  }

  f64 test_type_param_f64_0() {
    final frame = Frame(memory);
    frame.f64_const(5.5);
    {
      var t0 = frame.pop();
      frame.push(type_param_f64(t0));
    }
    return frame.pop();
  }

  i32 test_as_block_first_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_block_first(t0));
    }
    return frame.pop();
  }

  i32 test_as_block_mid_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_block_mid(t0));
    }
    return frame.pop();
  }

  i32 test_as_block_last_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_block_last(t0));
    }
    return frame.pop();
  }

  i32 test_as_loop_first_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_loop_first(t0));
    }
    return frame.pop();
  }

  i32 test_as_loop_mid_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_loop_mid(t0));
    }
    return frame.pop();
  }

  i32 test_as_loop_last_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_loop_last(t0));
    }
    return frame.pop();
  }

  i32 test_as_br_value_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_br_value(t0));
    }
    return frame.pop();
  }

  void test_as_br_if_cond_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      as_br_if_cond(t0);
    }
  }

  i32 test_as_br_if_value_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_br_if_value(t0));
    }
    return frame.pop();
  }

  i32 test_as_br_if_value_cond_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_br_if_value_cond(t0));
    }
    return frame.pop();
  }

  void test_as_br_table_index_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      as_br_table_index(t0);
    }
  }

  i32 test_as_br_table_value_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_br_table_value(t0));
    }
    return frame.pop();
  }

  i32 test_as_br_table_value_index_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_br_table_value_index(t0));
    }
    return frame.pop();
  }

  i32 test_as_return_value_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_return_value(t0));
    }
    return frame.pop();
  }

  i32 test_as_if_cond_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_if_cond(t0));
    }
    return frame.pop();
  }

  i32 test_as_if_then_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      frame.push(as_if_then(t0));
    }
    return frame.pop();
  }

  i32 test_as_if_else_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_if_else(t0));
    }
    return frame.pop();
  }

  i32 test_as_select_first_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(as_select_first(t0, t1));
    }
    return frame.pop();
  }

  i32 test_as_select_second_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(as_select_second(t0, t1));
    }
    return frame.pop();
  }

  i32 test_as_select_cond_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_select_cond(t0));
    }
    return frame.pop();
  }

  i32 test_as_call_first_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_call_first(t0));
    }
    return frame.pop();
  }

  i32 test_as_call_mid_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_call_mid(t0));
    }
    return frame.pop();
  }

  i32 test_as_call_last_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_call_last(t0));
    }
    return frame.pop();
  }

  i32 test_as_call_indirect_first_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_call_indirect_first(t0));
    }
    return frame.pop();
  }

  i32 test_as_call_indirect_mid_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_call_indirect_mid(t0));
    }
    return frame.pop();
  }

  i32 test_as_call_indirect_last_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_call_indirect_last(t0));
    }
    return frame.pop();
  }

  i32 test_as_call_indirect_index_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_call_indirect_index(t0));
    }
    return frame.pop();
  }

  void test_as_local_set_value_0() {
    final frame = Frame(memory);
    as_local_set_value();
  }

  i32 test_as_local_tee_value_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_local_tee_value(t0));
    }
    return frame.pop();
  }

  void test_as_global_set_value_0() {
    final frame = Frame(memory);
    as_global_set_value();
  }

  i32 test_as_load_address_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_load_address(t0));
    }
    return frame.pop();
  }

  i32 test_as_loadN_address_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_loadN_address(t0));
    }
    return frame.pop();
  }

  void test_as_store_address_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      as_store_address(t0);
    }
  }

  void test_as_store_value_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      as_store_value(t0);
    }
  }

  void test_as_storeN_address_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      as_storeN_address(t0);
    }
  }

  void test_as_storeN_value_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      as_storeN_value(t0);
    }
  }

  f32 test_as_unary_operand_0() {
    final frame = Frame(memory);
    frame.f32_const(0.0);
    {
      var t0 = frame.pop();
      frame.push(as_unary_operand(t0));
    }
    return frame.pop();
  }

  i32 test_as_binary_left_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_binary_left(t0));
    }
    return frame.pop();
  }

  i32 test_as_binary_right_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_binary_right(t0));
    }
    return frame.pop();
  }

  i32 test_as_test_operand_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_test_operand(t0));
    }
    return frame.pop();
  }

  i32 test_as_compare_left_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_compare_left(t0));
    }
    return frame.pop();
  }

  i32 test_as_compare_right_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_compare_right(t0));
    }
    return frame.pop();
  }

  i32 test_as_convert_operand_0() {
    final frame = Frame(memory);
    frame.i64_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_convert_operand(t0));
    }
    return frame.pop();
  }

  i32 test_as_memory_grow_size_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_memory_grow_size(t0));
    }
    return frame.pop();
  }

  void test_type_mixed_0() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.f32_const(2.200000047683716);
    frame.f64_const(3.3);
    frame.i32_const(4);
    frame.i32_const(5);
    {
      var t4 = frame.pop();
      var t3 = frame.pop();
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      type_mixed(t0, t1, t2, t3, t4);
    }
  }

  i64 test_write_0() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.f32_const(2.0);
    frame.f64_const(3.3);
    frame.i32_const(4);
    frame.i32_const(5);
    {
      var t4 = frame.pop();
      var t3 = frame.pop();
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(write(t0, t1, t2, t3, t4));
    }
    return frame.pop();
  }

  f64 test_result_0() {
    final frame = Frame(memory);
    frame.i64_const(-1);
    frame.f32_const(-2.0);
    frame.f64_const(-3.3);
    frame.i32_const(-4);
    frame.i32_const(-5);
    {
      var t4 = frame.pop();
      var t3 = frame.pop();
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(result(t0, t1, t2, t3, t4));
    }
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(i32, i32, i32);
typedef FunctionType1 = i32 Function();
typedef FunctionType2 = i64 Function();
typedef FunctionType3 = f32 Function();
typedef FunctionType4 = f64 Function();
typedef FunctionType5 = i32 Function(i32);
typedef FunctionType6 = i64 Function(i64);
typedef FunctionType7 = f32 Function(f32);
typedef FunctionType8 = f64 Function(f64);
typedef FunctionType9 = void Function(i64, f32, f64, i32, i32);
typedef FunctionType10 = i64 Function(i64, f32, f64, i32, i32);
typedef FunctionType11 = f64 Function(i64, f32, f64, i32, i32);
typedef FunctionType12 = void Function();
typedef FunctionType13 = void Function(i32);
typedef FunctionType14 = i32 Function(i32, i32);
typedef FunctionType15 = i32 Function(i64);

class Globals {
  i32 g = 0;

  final f32 expect_type_local_f32_0 = _initExpect_type_local_f32_0();

  final f64 expect_type_local_f64_0 = _initExpect_type_local_f64_0();

  final f32 expect_type_param_f32_0 = _initExpect_type_param_f32_0();

  final f64 expect_type_param_f64_0 = _initExpect_type_param_f64_0();

  final f32 expect_as_unary_operand_0 = _initExpect_as_unary_operand_0();

  final f64 expect_result_0 = _initExpect_result_0();

  static final Memory memory = Memory(0);

  static f32 _initExpect_type_local_f32_0() {
    final frame = Frame(memory);
    frame.f32_const(0.0);
    return frame.pop();
  }

  static f64 _initExpect_type_local_f64_0() {
    final frame = Frame(memory);
    frame.f64_const(0.0);
    return frame.pop();
  }

  static f32 _initExpect_type_param_f32_0() {
    final frame = Frame(memory);
    frame.f32_const(11.100000381469727);
    return frame.pop();
  }

  static f64 _initExpect_type_param_f64_0() {
    final frame = Frame(memory);
    frame.f64_const(12.2);
    return frame.pop();
  }

  static f32 _initExpect_as_unary_operand_0() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    return frame.pop();
  }

  static f64 _initExpect_result_0() {
    final frame = Frame(memory);
    frame.f64_const(34.8);
    return frame.pop();
  }
}

class ElementSegments {
  void init(Module module) {
    i32 offset;

    // element segment 0
    offset = 0;
    module.table0.funcRefs[offset + 0] = module.f;
  }
}