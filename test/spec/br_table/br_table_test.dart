// Generated from spec/test/core/br_table.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'br_table.0.dart' as br_table_0;

void main() {
  group('br_table', () {
    // module br_table.0.dart (line 3)
    var m0 = br_table_0.BrTable0Module();

    returns('type_i32_0', () => m0.type_i32(), null);
    returns('type_i64_0', () => m0.type_i64(), null);
    returns('type_f32_0', () => m0.type_f32(), null);
    returns('type_f64_0', () => m0.type_f64(), null);
    returns('type_i32_value_0', () => m0.type_i32_value(), 0x1);
    returns('type_i64_value_0', () => m0.type_i64_value(), 0x2);
    returns('type_f32_value_0', () => m0.type_f32_value(), $f32('40400000'));
    returns(
      'type_f64_value_0',
      () => m0.type_f64_value(),
      $f64('4010000000000000'),
    );
    returns('empty_0', () => m0.empty(0), 0x16);
    returns('empty_1', () => m0.empty(0x1), 0x16);
    returns('empty_2', () => m0.empty(0xB), 0x16);
    returns('empty_3', () => m0.empty($i32('FFFFFFFF')), 0x16);
    returns('empty_4', () => m0.empty($i32('FFFFFF9C')), 0x16);
    returns('empty_5', () => m0.empty($i32('FFFFFFFF')), 0x16);
    returns('empty_value_0', () => m0.empty_value(0), 0x21);
    returns('empty_value_1', () => m0.empty_value(0x1), 0x21);
    returns('empty_value_2', () => m0.empty_value(0xB), 0x21);
    returns('empty_value_3', () => m0.empty_value($i32('FFFFFFFF')), 0x21);
    returns('empty_value_4', () => m0.empty_value($i32('FFFFFF9C')), 0x21);
    returns('empty_value_5', () => m0.empty_value($i32('FFFFFFFF')), 0x21);
    returns('singleton_0', () => m0.singleton(0), 0x16);
    returns('singleton_1', () => m0.singleton(0x1), 0x14);
    returns('singleton_2', () => m0.singleton(0xB), 0x14);
    returns('singleton_3', () => m0.singleton($i32('FFFFFFFF')), 0x14);
    returns('singleton_4', () => m0.singleton($i32('FFFFFF9C')), 0x14);
    returns('singleton_5', () => m0.singleton($i32('FFFFFFFF')), 0x14);
    returns('singleton_value_0', () => m0.singleton_value(0), 0x20);
    returns('singleton_value_1', () => m0.singleton_value(0x1), 0x21);
    returns('singleton_value_2', () => m0.singleton_value(0xB), 0x21);
    returns(
      'singleton_value_3',
      () => m0.singleton_value($i32('FFFFFFFF')),
      0x21,
    );
    returns(
      'singleton_value_4',
      () => m0.singleton_value($i32('FFFFFF9C')),
      0x21,
    );
    returns(
      'singleton_value_5',
      () => m0.singleton_value($i32('FFFFFFFF')),
      0x21,
    );
    returns('multiple_0', () => m0.multiple(0), 0x67);
    returns('multiple_1', () => m0.multiple(0x1), 0x66);
    returns('multiple_2', () => m0.multiple(0x2), 0x65);
    returns('multiple_3', () => m0.multiple(0x3), 0x64);
    returns('multiple_4', () => m0.multiple(0x4), 0x68);
    returns('multiple_5', () => m0.multiple(0x5), 0x68);
    returns('multiple_6', () => m0.multiple(0x6), 0x68);
    returns('multiple_7', () => m0.multiple(0xA), 0x68);
    returns('multiple_8', () => m0.multiple($i32('FFFFFFFF')), 0x68);
    returns('multiple_9', () => m0.multiple($i32('FFFFFFFF')), 0x68);
    returns('multiple_value_0', () => m0.multiple_value(0), 0xD5);
    returns('multiple_value_1', () => m0.multiple_value(0x1), 0xD4);
    returns('multiple_value_2', () => m0.multiple_value(0x2), 0xD3);
    returns('multiple_value_3', () => m0.multiple_value(0x3), 0xD2);
    returns('multiple_value_4', () => m0.multiple_value(0x4), 0xD6);
    returns('multiple_value_5', () => m0.multiple_value(0x5), 0xD6);
    returns('multiple_value_6', () => m0.multiple_value(0x6), 0xD6);
    returns('multiple_value_7', () => m0.multiple_value(0xA), 0xD6);
    returns(
      'multiple_value_8',
      () => m0.multiple_value($i32('FFFFFFFF')),
      0xD6,
    );
    returns(
      'multiple_value_9',
      () => m0.multiple_value($i32('FFFFFFFF')),
      0xD6,
    );
    returns('large_0', () => m0.large(0), 0);
    returns('large_1', () => m0.large(0x1), 0x1);
    returns('large_2', () => m0.large(0x64), 0);
    returns('large_3', () => m0.large(0x65), 0x1);
    returns('large_4', () => m0.large(0x2710), 0);
    returns('large_5', () => m0.large(0x2711), 0x1);
    returns('large_6', () => m0.large($i32('F4240')), 0x1);
    returns('large_7', () => m0.large($i32('F4241')), 0x1);
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
    returns('as_call_first_0', () => m0.as_call_first(), 0xC);
    returns('as_call_mid_0', () => m0.as_call_mid(), 0xD);
    returns('as_call_last_0', () => m0.as_call_last(), 0xE);
    returns(
      'as_call_indirect_first_0',
      () => m0.as_call_indirect_first(),
      0x14,
    );
    returns('as_call_indirect_mid_0', () => m0.as_call_indirect_mid(), 0x15);
    returns('as_call_indirect_last_0', () => m0.as_call_indirect_last(), 0x16);
    returns('as_call_indirect_func_0', () => m0.as_call_indirect_func(), 0x17);
    returns('as_local_set_value_0', () => m0.as_local_set_value(), 0x11);
    returns('as_local_tee_value_0', () => m0.as_local_tee_value(), 0x1);
    returns('as_global_set_value_0', () => m0.as_global_set_value(), 0x1);
    returns('as_load_address_0', () => m0.as_load_address(), $f32('3FD9999A'));
    returns('as_loadN_address_0', () => m0.as_loadN_address(), 0x1E);
    returns('as_store_address_0', () => m0.as_store_address(), 0x1E);
    returns('as_store_value_0', () => m0.as_store_value(), 0x1F);
    returns('as_storeN_address_0', () => m0.as_storeN_address(), 0x20);
    returns('as_storeN_value_0', () => m0.as_storeN_value(), 0x21);
    returns(
      'as_unary_operand_0',
      () => m0.as_unary_operand(),
      $f32('4059999A'),
    );
    returns('as_binary_left_0', () => m0.as_binary_left(), 0x3);
    returns('as_binary_right_0', () => m0.as_binary_right(), 0x2D);
    returns('as_test_operand_0', () => m0.as_test_operand(), 0x2C);
    returns('as_compare_left_0', () => m0.as_compare_left(), 0x2B);
    returns('as_compare_right_0', () => m0.as_compare_right(), 0x2A);
    returns('as_convert_operand_0', () => m0.as_convert_operand(), 0x29);
    returns('as_memory_grow_size_0', () => m0.as_memory_grow_size(), 0x28);
    returns('nested_block_value_0', () => m0.nested_block_value(0), 0x13);
    returns('nested_block_value_1', () => m0.nested_block_value(0x1), 0x11);
    returns('nested_block_value_2', () => m0.nested_block_value(0x2), 0x10);
    returns('nested_block_value_3', () => m0.nested_block_value(0xA), 0x10);
    returns(
      'nested_block_value_4',
      () => m0.nested_block_value($i32('FFFFFFFF')),
      0x10,
    );
    returns('nested_block_value_5', () => m0.nested_block_value(0x186A0), 0x10);
    returns('nested_br_value_0', () => m0.nested_br_value(0), 0x8);
    returns('nested_br_value_1', () => m0.nested_br_value(0x1), 0x9);
    returns('nested_br_value_2', () => m0.nested_br_value(0x2), 0x11);
    returns('nested_br_value_3', () => m0.nested_br_value(0xB), 0x11);
    returns(
      'nested_br_value_4',
      () => m0.nested_br_value($i32('FFFFFFFC')),
      0x11,
    );
    returns(
      'nested_br_value_5',
      () => m0.nested_br_value($i32('9BD75A')),
      0x11,
    );
    returns('nested_br_if_value_0', () => m0.nested_br_if_value(0), 0x11);
    returns('nested_br_if_value_1', () => m0.nested_br_if_value(0x1), 0x9);
    returns('nested_br_if_value_2', () => m0.nested_br_if_value(0x2), 0x8);
    returns('nested_br_if_value_3', () => m0.nested_br_if_value(0x9), 0x8);
    returns(
      'nested_br_if_value_4',
      () => m0.nested_br_if_value($i32('FFFFFFF7')),
      0x8,
    );
    returns('nested_br_if_value_5', () => m0.nested_br_if_value(0xF423F), 0x8);
    returns(
      'nested_br_if_value_cond_0',
      () => m0.nested_br_if_value_cond(0),
      0x9,
    );
    returns(
      'nested_br_if_value_cond_1',
      () => m0.nested_br_if_value_cond(0x1),
      0x8,
    );
    returns(
      'nested_br_if_value_cond_2',
      () => m0.nested_br_if_value_cond(0x2),
      0x9,
    );
    returns(
      'nested_br_if_value_cond_3',
      () => m0.nested_br_if_value_cond(0x3),
      0x9,
    );
    returns(
      'nested_br_if_value_cond_4',
      () => m0.nested_br_if_value_cond($i32('FFF0BDC0')),
      0x9,
    );
    returns(
      'nested_br_if_value_cond_5',
      () => m0.nested_br_if_value_cond($i32('8FCC67')),
      0x9,
    );
    returns('nested_br_table_value_0', () => m0.nested_br_table_value(0), 0x11);
    returns(
      'nested_br_table_value_1',
      () => m0.nested_br_table_value(0x1),
      0x9,
    );
    returns(
      'nested_br_table_value_2',
      () => m0.nested_br_table_value(0x2),
      0x8,
    );
    returns(
      'nested_br_table_value_3',
      () => m0.nested_br_table_value(0x9),
      0x8,
    );
    returns(
      'nested_br_table_value_4',
      () => m0.nested_br_table_value($i32('FFFFFFF7')),
      0x8,
    );
    returns(
      'nested_br_table_value_5',
      () => m0.nested_br_table_value(0xF423F),
      0x8,
    );
    returns(
      'nested_br_table_value_index_0',
      () => m0.nested_br_table_value_index(0),
      0x9,
    );
    returns(
      'nested_br_table_value_index_1',
      () => m0.nested_br_table_value_index(0x1),
      0x8,
    );
    returns(
      'nested_br_table_value_index_2',
      () => m0.nested_br_table_value_index(0x2),
      0x9,
    );
    returns(
      'nested_br_table_value_index_3',
      () => m0.nested_br_table_value_index(0x3),
      0x9,
    );
    returns(
      'nested_br_table_value_index_4',
      () => m0.nested_br_table_value_index($i32('FFF0BDC0')),
      0x9,
    );
    returns(
      'nested_br_table_value_index_5',
      () => m0.nested_br_table_value_index($i32('8FCC67')),
      0x9,
    );
    returns(
      'nested_br_table_loop_block_0',
      () => m0.nested_br_table_loop_block(0x1),
      0x3,
    );
    returns(
      'meet_externref_0',
      () => m0.meet_externref(0, $externref('1')),
      $externref('1'),
    );
    returns(
      'meet_externref_1',
      () => m0.meet_externref(0x1, $externref('1')),
      $externref('1'),
    );
    returns(
      'meet_externref_2',
      () => m0.meet_externref(0x2, $externref('1')),
      $externref('1'),
    );
  });
}
