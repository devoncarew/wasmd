// Generated from spec/test/core/br.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'br.0.dart' as br_0;

void main() {
  group('br', () {
    // module br.0.dart (line 3)
    var m0 = br_0.Br0Module();

    returns('type_i32_0', () => m0.type_i32(), null);
    returns('type_i64_0', () => m0.type_i64(), null);
    returns('type_f32_0', () => m0.type_f32(), null);
    returns('type_f64_0', () => m0.type_f64(), null);
    returns('type_i32_i32_0', () => m0.type_i32_i32(), null);
    returns('type_i64_i64_0', () => m0.type_i64_i64(), null);
    returns('type_f32_f32_0', () => m0.type_f32_f32(), null);
    returns('type_f64_f64_0', () => m0.type_f64_f64(), null);
    returns('type_i32_value_0', () => m0.type_i32_value(), 0x1);
    returns('type_i64_value_0', () => m0.type_i64_value(), 0x2);
    returns('type_f32_value_0', () => m0.type_f32_value(), $f32('40400000'));
    returns(
      'type_f64_value_0',
      () => m0.type_f64_value(),
      $f64('4010000000000000'),
    );
    returns(
      'type_f64_f64_value_0',
      () => m0.type_f64_f64_value(),
      Tuple2($f64('4010000000000000'), $f64('4014000000000000')),
    );
    returns('as_block_first_0', () => m0.as_block_first(), null);
    returns('as_block_mid_0', () => m0.as_block_mid(), null);
    returns('as_block_last_0', () => m0.as_block_last(), null);
    returns('as_block_value_0', () => m0.as_block_value(), 0x2);
    returns('as_loop_first_0', () => m0.as_loop_first(), 0x3);
    returns('as_loop_mid_0', () => m0.as_loop_mid(), 0x4);
    returns('as_loop_last_0', () => m0.as_loop_last(), 0x5);
    returns('as_br_value_0', () => m0.as_br_value(), 0x9);
    returns('as_br_if_cond_0', () => m0.as_br_if_cond(), null);
    returns('as_br_if_value_0', () => m0.as_br_if_value(), 0x8);
    returns('as_br_if_value_cond_0', () => m0.as_br_if_value_cond(), 0x9);
    returns('as_br_table_index_0', () => m0.as_br_table_index(), null);
    returns('as_br_table_value_0', () => m0.as_br_table_value(), 0xA);
    returns(
      'as_br_table_value_index_0',
      () => m0.as_br_table_value_index(),
      0xB,
    );
    returns('as_return_value_0', () => m0.as_return_value(), 0x7);
    returns(
      'as_return_values_0',
      () => m0.as_return_values(),
      Tuple2(0x2, 0x7),
    );
    returns('as_if_cond_0', () => m0.as_if_cond(), 0x2);
    returns('as_if_then_0', () => m0.as_if_then(0x1, 0x6), 0x3);
    returns('as_if_then_1', () => m0.as_if_then(0, 0x6), 0x6);
    returns('as_if_else_0', () => m0.as_if_else(0, 0x6), 0x4);
    returns('as_if_else_1', () => m0.as_if_else(0x1, 0x6), 0x6);
    returns('as_select_first_0', () => m0.as_select_first(0, 0x6), 0x5);
    returns('as_select_first_1', () => m0.as_select_first(0x1, 0x6), 0x5);
    returns('as_select_second_0', () => m0.as_select_second(0, 0x6), 0x6);
    returns('as_select_second_1', () => m0.as_select_second(0x1, 0x6), 0x6);
    returns('as_select_cond_0', () => m0.as_select_cond(), 0x7);
    returns('as_select_all_0', () => m0.as_select_all(), 0x8);
    returns('as_call_first_0', () => m0.as_call_first(), 0xC);
    returns('as_call_mid_0', () => m0.as_call_mid(), 0xD);
    returns('as_call_last_0', () => m0.as_call_last(), 0xE);
    returns('as_call_all_0', () => m0.as_call_all(), 0xF);
    returns('as_call_indirect_func_0', () => m0.as_call_indirect_func(), 0x14);
    returns(
      'as_call_indirect_first_0',
      () => m0.as_call_indirect_first(),
      0x15,
    );
    returns('as_call_indirect_mid_0', () => m0.as_call_indirect_mid(), 0x16);
    returns('as_call_indirect_last_0', () => m0.as_call_indirect_last(), 0x17);
    returns('as_call_indirect_all_0', () => m0.as_call_indirect_all(), 0x18);
    returns('as_local_set_value_0', () => m0.as_local_set_value(), 0x11);
    returns('as_local_tee_value_0', () => m0.as_local_tee_value(), 0x1);
    returns('as_global_set_value_0', () => m0.as_global_set_value(), 0x1);
    returns('as_load_address_0', () => m0.as_load_address(), $f32('3FD9999A'));
    returns('as_loadN_address_0', () => m0.as_loadN_address(), 0x1E);
    returns('as_store_address_0', () => m0.as_store_address(), 0x1E);
    returns('as_store_value_0', () => m0.as_store_value(), 0x1F);
    returns('as_store_both_0', () => m0.as_store_both(), 0x20);
    returns('as_storeN_address_0', () => m0.as_storeN_address(), 0x20);
    returns('as_storeN_value_0', () => m0.as_storeN_value(), 0x21);
    returns('as_storeN_both_0', () => m0.as_storeN_both(), 0x22);
    returns(
      'as_unary_operand_0',
      () => m0.as_unary_operand(),
      $f32('4059999A'),
    );
    returns('as_binary_left_0', () => m0.as_binary_left(), 0x3);
    returns('as_binary_right_0', () => m0.as_binary_right(), 0x2D);
    returns('as_binary_both_0', () => m0.as_binary_both(), 0x2E);
    returns('as_test_operand_0', () => m0.as_test_operand(), 0x2C);
    returns('as_compare_left_0', () => m0.as_compare_left(), 0x2B);
    returns('as_compare_right_0', () => m0.as_compare_right(), 0x2A);
    returns('as_compare_both_0', () => m0.as_compare_both(), 0x2C);
    returns('as_convert_operand_0', () => m0.as_convert_operand(), 0x29);
    returns('as_memory_grow_size_0', () => m0.as_memory_grow_size(), 0x28);
    returns('nested_block_value_0', () => m0.nested_block_value(), 0x9);
    returns('nested_br_value_0', () => m0.nested_br_value(), 0x9);
    returns('nested_br_if_value_0', () => m0.nested_br_if_value(), 0x9);
    returns(
      'nested_br_if_value_cond_0',
      () => m0.nested_br_if_value_cond(),
      0x9,
    );
    returns('nested_br_table_value_0', () => m0.nested_br_table_value(), 0x9);
    returns(
      'nested_br_table_value_index_0',
      () => m0.nested_br_table_value_index(),
      0x9,
    );
  });
}
