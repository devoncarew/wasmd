// Generated from spec/test/core/nop.wast.

// ignore_for_file: unused_local_variable

import '../../src/infra.dart';
import 'nop.0.dart' as nop_0;

void main() {
  group('nop', () {
    // module nop.0.dart
    var m0 = nop_0.Module();

    returns('as_func_first_0', () => m0.as_func_first(), 0x1);
    returns('as_func_mid_0', () => m0.as_func_mid(), 0x2);
    returns('as_func_last_0', () => m0.as_func_last(), 0x3);
    returns('as_func_everywhere_0', () => m0.as_func_everywhere(), 0x4);
    returns('as_drop_first_0', () => m0.as_drop_first(0), null);
    returns('as_drop_last_0', () => m0.as_drop_last(0), null);
    returns('as_drop_everywhere_0', () => m0.as_drop_everywhere(0), null);
    returns('as_select_first_0', () => m0.as_select_first(0x3), 0x3);
    returns('as_select_mid1_0', () => m0.as_select_mid1(0x3), 0x3);
    returns('as_select_mid2_0', () => m0.as_select_mid2(0x3), 0x3);
    returns('as_select_last_0', () => m0.as_select_last(0x3), 0x3);
    returns('as_select_everywhere_0', () => m0.as_select_everywhere(0x3), 0x3);
    returns('as_block_first_0', () => m0.as_block_first(), 0x2);
    returns('as_block_mid_0', () => m0.as_block_mid(), 0x2);
    returns('as_block_last_0', () => m0.as_block_last(), 0x3);
    returns('as_block_everywhere_0', () => m0.as_block_everywhere(), 0x4);
    returns('as_loop_first_0', () => m0.as_loop_first(), 0x2);
    returns('as_loop_mid_0', () => m0.as_loop_mid(), 0x2);
    returns('as_loop_last_0', () => m0.as_loop_last(), 0x3);
    returns('as_loop_everywhere_0', () => m0.as_loop_everywhere(), 0x4);
    returns('as_if_condition_0', () => m0.as_if_condition(0), null);
    returns(
      'as_if_condition_1',
      () => m0.as_if_condition(i32('FFFFFFFF')),
      null,
    );
    returns('as_if_then_0', () => m0.as_if_then(0), null);
    returns('as_if_then_1', () => m0.as_if_then(0x4), null);
    returns('as_if_else_0', () => m0.as_if_else(0), null);
    returns('as_if_else_1', () => m0.as_if_else(0x3), null);
    returns('as_br_first_0', () => m0.as_br_first(0x5), 0x5);
    returns('as_br_last_0', () => m0.as_br_last(0x6), 0x6);
    returns('as_br_everywhere_0', () => m0.as_br_everywhere(0x7), 0x7);
    returns('as_br_if_first_0', () => m0.as_br_if_first(0x4), 0x4);
    returns('as_br_if_mid_0', () => m0.as_br_if_mid(0x5), 0x5);
    returns('as_br_if_last_0', () => m0.as_br_if_last(0x6), 0x6);
    returns('as_br_if_everywhere_0', () => m0.as_br_if_everywhere(0x7), 0x7);
    returns('as_br_table_first_0', () => m0.as_br_table_first(0x4), 0x4);
    returns('as_br_table_mid_0', () => m0.as_br_table_mid(0x5), 0x5);
    returns('as_br_table_last_0', () => m0.as_br_table_last(0x6), 0x6);
    returns(
      'as_br_table_everywhere_0',
      () => m0.as_br_table_everywhere(0x7),
      0x7,
    );
    returns('as_return_first_0', () => m0.as_return_first(0x5), 0x5);
    returns('as_return_last_0', () => m0.as_return_last(0x6), 0x6);
    returns('as_return_everywhere_0', () => m0.as_return_everywhere(0x7), 0x7);
    returns('as_call_first_0', () => m0.as_call_first(0x3, 0x1, 0x2), 0x2);
    returns('as_call_mid1_0', () => m0.as_call_mid1(0x3, 0x1, 0x2), 0x2);
    returns('as_call_mid2_0', () => m0.as_call_mid2(0, 0x3, 0x1), 0x2);
    returns(
      'as_call_last_0',
      () => m0.as_call_last(0xA, 0x9, i32('FFFFFFFF')),
      0x14,
    );
    returns(
      'as_call_everywhere_0',
      () => m0.as_call_everywhere(0x2, 0x1, 0x5),
      i32('FFFFFFFE'),
    );
    returns('as_unary_first_0', () => m0.as_unary_first(0x1E), 0x1);
    returns('as_unary_last_0', () => m0.as_unary_last(0x1E), 0x1);
    returns('as_unary_everywhere_0', () => m0.as_unary_everywhere(0xC), 0x2);
    returns('as_binary_first_0', () => m0.as_binary_first(0x3), 0x6);
    returns('as_binary_mid_0', () => m0.as_binary_mid(0x3), 0x6);
    returns('as_binary_last_0', () => m0.as_binary_last(0x3), 0x6);
    returns('as_binary_everywhere_0', () => m0.as_binary_everywhere(0x3), 0x6);
    returns('as_test_first_0', () => m0.as_test_first(0), 0x1);
    returns('as_test_last_0', () => m0.as_test_last(0), 0x1);
    returns('as_test_everywhere_0', () => m0.as_test_everywhere(0), 0x1);
    returns('as_compare_first_0', () => m0.as_compare_first(0x3), 0);
    returns('as_compare_mid_0', () => m0.as_compare_mid(0x3), 0);
    returns('as_compare_last_0', () => m0.as_compare_last(0x3), 0);
    returns(
      'as_compare_everywhere_0',
      () => m0.as_compare_everywhere(0x3),
      0x1,
    );
    returns('as_memory_grow_first_0', () => m0.as_memory_grow_first(0), 0x1);
    returns('as_memory_grow_last_0', () => m0.as_memory_grow_last(0x2), 0x1);
    returns(
      'as_memory_grow_everywhere_0',
      () => m0.as_memory_grow_everywhere(0xC),
      0x3,
    );
    returns('as_call_indirect_first_0', () => m0.as_call_indirect_first(), 0x1);
    returns('as_call_indirect_mid1_0', () => m0.as_call_indirect_mid1(), 0x1);
    returns('as_call_indirect_mid2_0', () => m0.as_call_indirect_mid2(), 0x1);
    returns('as_call_indirect_last_0', () => m0.as_call_indirect_last(), 0x1);
    returns(
      'as_call_indirect_everywhere_0',
      () => m0.as_call_indirect_everywhere(),
      0x1,
    );
    returns('as_local_set_first_0', () => m0.as_local_set_first(0x1), 0x2);
    returns('as_local_set_last_0', () => m0.as_local_set_last(0x1), 0x2);
    returns(
      'as_local_set_everywhere_0',
      () => m0.as_local_set_everywhere(0x1),
      0x2,
    );
    returns('as_local_tee_first_0', () => m0.as_local_tee_first(0x1), 0x2);
    returns('as_local_tee_last_0', () => m0.as_local_tee_last(0x1), 0x2);
    returns(
      'as_local_tee_everywhere_0',
      () => m0.as_local_tee_everywhere(0x1),
      0x2,
    );
    returns('as_global_set_first_0', () => m0.as_global_set_first(), 0x2);
    returns('as_global_set_last_0', () => m0.as_global_set_last(), 0x2);
    returns(
      'as_global_set_everywhere_0',
      () => m0.as_global_set_everywhere(),
      0x2,
    );
    returns('as_load_first_0', () => m0.as_load_first(0x64), 0);
    returns('as_load_last_0', () => m0.as_load_last(0x64), 0);
    returns('as_load_everywhere_0', () => m0.as_load_everywhere(0x64), 0);
    returns('as_store_first_0', () => m0.as_store_first(0, 0x1), null);
    returns('as_store_mid_0', () => m0.as_store_mid(0, 0x2), null);
    returns('as_store_last_0', () => m0.as_store_last(0, 0x3), null);
    returns(
      'as_store_everywhere_0',
      () => m0.as_store_everywhere(0, 0x4),
      null,
    );
  });
}
