// Generated from spec/test/core/br_if.wast.

// ignore_for_file: non_constant_identifier_names, unused_local_variable

import '../../src/infra.dart';
import 'br_if.0.dart' as br_if_0;

void main() {
  group('br_if', () {
    // module br_if.0.dart (line 3)
    var m0 = br_if_0.BrIf0Module();

    returns('type_i32_0', () => m0.type_i32(), null);
    returns('type_i64_0', () => m0.type_i64(), null);
    returns('type_f32_0', () => m0.type_f32(), null);
    returns('type_f64_0', () => m0.type_f64(), null);
    returns('type_i32_value_0', () => m0.type_i32_value(), 0x1);
    returns('type_i64_value_0', () => m0.type_i64_value(), 0x2);
    returns('type_f32_value_0', () => m0.type_f32_value(), f32('40400000'));
    returns(
      'type_f64_value_0',
      () => m0.type_f64_value(),
      f64('4010000000000000'),
    );
    returns('as_block_first_0', () => m0.as_block_first(0), 0x2);
    returns('as_block_first_1', () => m0.as_block_first(0x1), 0x3);
    returns('as_block_mid_0', () => m0.as_block_mid(0), 0x2);
    returns('as_block_mid_1', () => m0.as_block_mid(0x1), 0x3);
    returns('as_block_last_0', () => m0.as_block_last(0), null);
    returns('as_block_last_1', () => m0.as_block_last(0x1), null);
    returns('as_block_first_value_0', () => m0.as_block_first_value(0), 0xB);
    returns('as_block_first_value_1', () => m0.as_block_first_value(0x1), 0xA);
    returns('as_block_mid_value_0', () => m0.as_block_mid_value(0), 0x15);
    returns('as_block_mid_value_1', () => m0.as_block_mid_value(0x1), 0x14);
    returns('as_block_last_value_0', () => m0.as_block_last_value(0), 0xB);
    returns('as_block_last_value_1', () => m0.as_block_last_value(0x1), 0xB);
    returns('as_loop_first_0', () => m0.as_loop_first(0), 0x2);
    returns('as_loop_first_1', () => m0.as_loop_first(0x1), 0x3);
    returns('as_loop_mid_0', () => m0.as_loop_mid(0), 0x2);
    returns('as_loop_mid_1', () => m0.as_loop_mid(0x1), 0x4);
    returns('as_loop_last_0', () => m0.as_loop_last(0), null);
    returns('as_loop_last_1', () => m0.as_loop_last(0x1), null);
    returns('as_br_value_0', () => m0.as_br_value(), 0x1);
    returns('as_br_if_cond_0', () => m0.as_br_if_cond(), null);
    returns('as_br_if_value_0', () => m0.as_br_if_value(), 0x1);
    returns('as_br_if_value_cond_0', () => m0.as_br_if_value_cond(0), 0x2);
    returns('as_br_if_value_cond_1', () => m0.as_br_if_value_cond(0x1), 0x1);
    returns('as_br_table_index_0', () => m0.as_br_table_index(), null);
    returns('as_br_table_value_0', () => m0.as_br_table_value(), 0x1);
    returns(
      'as_br_table_value_index_0',
      () => m0.as_br_table_value_index(),
      0x1,
    );
    returns('as_return_value_0', () => m0.as_return_value(), 0x1);
    returns('as_if_cond_0', () => m0.as_if_cond(0), 0x2);
    returns('as_if_cond_1', () => m0.as_if_cond(0x1), 0x1);
    returns('as_if_then_0', () => m0.as_if_then(0, 0), null);
    returns('as_if_then_1', () => m0.as_if_then(0x4, 0), null);
    returns('as_if_then_2', () => m0.as_if_then(0, 0x1), null);
    returns('as_if_then_3', () => m0.as_if_then(0x4, 0x1), null);
    returns('as_if_else_0', () => m0.as_if_else(0, 0), null);
    returns('as_if_else_1', () => m0.as_if_else(0x3, 0), null);
    returns('as_if_else_2', () => m0.as_if_else(0, 0x1), null);
    returns('as_if_else_3', () => m0.as_if_else(0x3, 0x1), null);
    returns('as_select_first_0', () => m0.as_select_first(0), 0x3);
    returns('as_select_first_1', () => m0.as_select_first(0x1), 0x3);
    returns('as_select_second_0', () => m0.as_select_second(0), 0x3);
    returns('as_select_second_1', () => m0.as_select_second(0x1), 0x3);
    returns('as_select_cond_0', () => m0.as_select_cond(), 0x3);
    returns('as_call_first_0', () => m0.as_call_first(), 0xC);
    returns('as_call_mid_0', () => m0.as_call_mid(), 0xD);
    returns('as_call_last_0', () => m0.as_call_last(), 0xE);
    returns('as_call_indirect_func_0', () => m0.as_call_indirect_func(), 0x4);
    returns('as_call_indirect_first_0', () => m0.as_call_indirect_first(), 0x4);
    returns('as_call_indirect_mid_0', () => m0.as_call_indirect_mid(), 0x4);
    returns('as_call_indirect_last_0', () => m0.as_call_indirect_last(), 0x4);
    returns(
      'as_local_set_value_0',
      () => m0.as_local_set_value(0),
      i32('FFFFFFFF'),
    );
    returns('as_local_set_value_1', () => m0.as_local_set_value(0x1), 0x11);
    returns(
      'as_local_tee_value_0',
      () => m0.as_local_tee_value(0),
      i32('FFFFFFFF'),
    );
    returns('as_local_tee_value_1', () => m0.as_local_tee_value(0x1), 0x1);
    returns(
      'as_global_set_value_0',
      () => m0.as_global_set_value(0),
      i32('FFFFFFFF'),
    );
    returns('as_global_set_value_1', () => m0.as_global_set_value(0x1), 0x1);
    returns('as_load_address_0', () => m0.as_load_address(), 0x1);
    returns('as_loadN_address_0', () => m0.as_loadN_address(), 0x1E);
    returns('as_store_address_0', () => m0.as_store_address(), 0x1E);
    returns('as_store_value_0', () => m0.as_store_value(), 0x1F);
    returns('as_storeN_address_0', () => m0.as_storeN_address(), 0x20);
    returns('as_storeN_value_0', () => m0.as_storeN_value(), 0x21);
    returns(
      'as_unary_operand_0',
      () => m0.as_unary_operand(),
      f64('3FF0000000000000'),
    );
    returns('as_binary_left_0', () => m0.as_binary_left(), 0x1);
    returns('as_binary_right_0', () => m0.as_binary_right(), 0x1);
    returns('as_test_operand_0', () => m0.as_test_operand(), 0);
    returns('as_compare_left_0', () => m0.as_compare_left(), 0x1);
    returns('as_compare_right_0', () => m0.as_compare_right(), 0x1);
    returns('as_memory_grow_size_0', () => m0.as_memory_grow_size(), 0x1);
    returns('nested_block_value_0', () => m0.nested_block_value(0), 0x15);
    returns('nested_block_value_1', () => m0.nested_block_value(0x1), 0x9);
    returns('nested_br_value_0', () => m0.nested_br_value(0), 0x5);
    returns('nested_br_value_1', () => m0.nested_br_value(0x1), 0x9);
    returns('nested_br_if_value_0', () => m0.nested_br_if_value(0), 0x5);
    returns('nested_br_if_value_1', () => m0.nested_br_if_value(0x1), 0x9);
    returns(
      'nested_br_if_value_cond_0',
      () => m0.nested_br_if_value_cond(0),
      0x5,
    );
    returns(
      'nested_br_if_value_cond_1',
      () => m0.nested_br_if_value_cond(0x1),
      0x9,
    );
    returns('nested_br_table_value_0', () => m0.nested_br_table_value(0), 0x5);
    returns(
      'nested_br_table_value_1',
      () => m0.nested_br_table_value(0x1),
      0x9,
    );
    returns(
      'nested_br_table_value_index_0',
      () => m0.nested_br_table_value_index(0),
      0x5,
    );
    returns(
      'nested_br_table_value_index_1',
      () => m0.nested_br_table_value_index(0x1),
      0x9,
    );
  });
}
