// Generated from spec/test/core/load.wast.

// ignore_for_file: unused_local_variable

import '../../src/infra.dart';
import 'load.0.dart' as load_0;

void main() {
  group('load', () {
    // module load.0.dart (line 3)
    var m0 = load_0.Module();

    returns('as_br_value_0', () => m0.as_br_value(), 0);
    returns('as_br_if_cond_0', () => m0.as_br_if_cond(), null);
    returns('as_br_if_value_0', () => m0.as_br_if_value(), 0);
    returns('as_br_if_value_cond_0', () => m0.as_br_if_value_cond(), 0x7);
    returns('as_br_table_index_0', () => m0.as_br_table_index(), null);
    returns('as_br_table_value_0', () => m0.as_br_table_value(), 0);
    returns(
      'as_br_table_value_index_0',
      () => m0.as_br_table_value_index(),
      0x6,
    );
    returns('as_return_value_0', () => m0.as_return_value(), 0);
    returns('as_if_cond_0', () => m0.as_if_cond(), 0x1);
    returns('as_if_then_0', () => m0.as_if_then(), 0);
    returns('as_if_else_0', () => m0.as_if_else(), 0);
    returns('as_select_first_0', () => m0.as_select_first(0, 0x1), 0);
    returns('as_select_second_0', () => m0.as_select_second(0, 0), 0);
    returns('as_select_cond_0', () => m0.as_select_cond(), 0x1);
    returns('as_call_first_0', () => m0.as_call_first(), i32('FFFFFFFF'));
    returns('as_call_mid_0', () => m0.as_call_mid(), i32('FFFFFFFF'));
    returns('as_call_last_0', () => m0.as_call_last(), i32('FFFFFFFF'));
    returns(
      'as_call_indirect_first_0',
      () => m0.as_call_indirect_first(),
      i32('FFFFFFFF'),
    );
    returns(
      'as_call_indirect_mid_0',
      () => m0.as_call_indirect_mid(),
      i32('FFFFFFFF'),
    );
    returns(
      'as_call_indirect_last_0',
      () => m0.as_call_indirect_last(),
      i32('FFFFFFFF'),
    );
    returns(
      'as_call_indirect_index_0',
      () => m0.as_call_indirect_index(),
      i32('FFFFFFFF'),
    );
    returns('as_local_set_value_0', () => m0.as_local_set_value(), null);
    returns('as_local_tee_value_0', () => m0.as_local_tee_value(), 0);
    returns('as_global_set_value_0', () => m0.as_global_set_value(), null);
    returns('as_load_address_0', () => m0.as_load_address(), 0);
    returns('as_loadN_address_0', () => m0.as_loadN_address(), 0);
    returns('as_store_address_0', () => m0.as_store_address(), null);
    returns('as_store_value_0', () => m0.as_store_value(), null);
    returns('as_storeN_address_0', () => m0.as_storeN_address(), null);
    returns('as_storeN_value_0', () => m0.as_storeN_value(), null);
    returns('as_unary_operand_0', () => m0.as_unary_operand(), 0x20);
    returns('as_binary_left_0', () => m0.as_binary_left(), 0xA);
    returns('as_binary_right_0', () => m0.as_binary_right(), 0xA);
    returns('as_test_operand_0', () => m0.as_test_operand(), 0x1);
    returns('as_compare_left_0', () => m0.as_compare_left(), 0x1);
    returns('as_compare_right_0', () => m0.as_compare_right(), 0x1);
    returns('as_memory_grow_size_0', () => m0.as_memory_grow_size(), 0x1);
  });
}
