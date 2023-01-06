// Generated from spec/test/core/unreachable.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'unreachable.0.dart' as unreachable_0;

const String _u = 'unreachable';

void main() {
  group('unreachable', () {
    // module unreachable.0.dart (line 3)
    var m0 = unreachable_0.Unreachable0Module();

    traps('type_i32_0', () => m0.type_i32(), _u);
    traps('type_i64_0', () => m0.type_i64(), _u);
    traps('type_f32_0', () => m0.type_f32(), _u);
    traps('type_f64_0', () => m0.type_f64(), _u);
    traps('as_func_first_0', () => m0.as_func_first(), _u);
    traps('as_func_mid_0', () => m0.as_func_mid(), _u);
    traps('as_func_last_0', () => m0.as_func_last(), _u);
    traps('as_func_value_0', () => m0.as_func_value(), _u);
    traps('as_block_first_0', () => m0.as_block_first(), _u);
    traps('as_block_mid_0', () => m0.as_block_mid(), _u);
    traps('as_block_last_0', () => m0.as_block_last(), _u);
    traps('as_block_value_0', () => m0.as_block_value(), _u);
    returns('as_block_broke_0', () => m0.as_block_broke(), 0x1);
    traps('as_loop_first_0', () => m0.as_loop_first(), _u);
    traps('as_loop_mid_0', () => m0.as_loop_mid(), _u);
    traps('as_loop_last_0', () => m0.as_loop_last(), _u);
    returns('as_loop_broke_0', () => m0.as_loop_broke(), 0x1);
    traps('as_br_value_0', () => m0.as_br_value(), _u);
    traps('as_br_if_cond_0', () => m0.as_br_if_cond(), _u);
    traps('as_br_if_value_0', () => m0.as_br_if_value(), _u);
    traps('as_br_if_value_cond_0', () => m0.as_br_if_value_cond(), _u);
    traps('as_br_table_index_0', () => m0.as_br_table_index(), _u);
    traps('as_br_table_value_0', () => m0.as_br_table_value(), _u);
    traps('as_br_table_value_2_0', () => m0.as_br_table_value_2(), _u);
    traps('as_br_table_value_index_0', () => m0.as_br_table_value_index(), _u);
    traps(
      'as_br_table_value_and_index_0',
      () => m0.as_br_table_value_and_index(),
      _u,
    );
    traps('as_return_value_0', () => m0.as_return_value(), _u);
    traps('as_if_cond_0', () => m0.as_if_cond(), _u);
    traps('as_if_then_0', () => m0.as_if_then(0x1, 0x6), _u);
    returns('as_if_then_1', () => m0.as_if_then(0, 0x6), 0x6);
    traps('as_if_else_0', () => m0.as_if_else(0, 0x6), _u);
    returns('as_if_else_1', () => m0.as_if_else(0x1, 0x6), 0x6);
    traps('as_if_then_no_else_0', () => m0.as_if_then_no_else(0x1, 0x6), _u);
    returns('as_if_then_no_else_1', () => m0.as_if_then_no_else(0, 0x6), 0x6);
    traps('as_select_first_0', () => m0.as_select_first(0, 0x6), _u);
    traps('as_select_first_1', () => m0.as_select_first(0x1, 0x6), _u);
    traps('as_select_second_0', () => m0.as_select_second(0, 0x6), _u);
    traps('as_select_second_1', () => m0.as_select_second(0x1, 0x6), _u);
    traps('as_select_cond_0', () => m0.as_select_cond(), _u);
    traps('as_call_first_0', () => m0.as_call_first(), _u);
    traps('as_call_mid_0', () => m0.as_call_mid(), _u);
    traps('as_call_last_0', () => m0.as_call_last(), _u);
    traps('as_call_indirect_func_0', () => m0.as_call_indirect_func(), _u);
    traps('as_call_indirect_first_0', () => m0.as_call_indirect_first(), _u);
    traps('as_call_indirect_mid_0', () => m0.as_call_indirect_mid(), _u);
    traps('as_call_indirect_last_0', () => m0.as_call_indirect_last(), _u);
    traps('as_local_set_value_0', () => m0.as_local_set_value(), _u);
    traps('as_local_tee_value_0', () => m0.as_local_tee_value(), _u);
    traps('as_global_set_value_0', () => m0.as_global_set_value(), _u);
    traps('as_load_address_0', () => m0.as_load_address(), _u);
    traps('as_loadN_address_0', () => m0.as_loadN_address(), _u);
    traps('as_store_address_0', () => m0.as_store_address(), _u);
    traps('as_store_value_0', () => m0.as_store_value(), _u);
    traps('as_storeN_address_0', () => m0.as_storeN_address(), _u);
    traps('as_storeN_value_0', () => m0.as_storeN_value(), _u);
    traps('as_unary_operand_0', () => m0.as_unary_operand(), _u);
    traps('as_binary_left_0', () => m0.as_binary_left(), _u);
    traps('as_binary_right_0', () => m0.as_binary_right(), _u);
    traps('as_test_operand_0', () => m0.as_test_operand(), _u);
    traps('as_compare_left_0', () => m0.as_compare_left(), _u);
    traps('as_compare_right_0', () => m0.as_compare_right(), _u);
    traps('as_convert_operand_0', () => m0.as_convert_operand(), _u);
    traps('as_memory_grow_size_0', () => m0.as_memory_grow_size(), _u);
  });
}
