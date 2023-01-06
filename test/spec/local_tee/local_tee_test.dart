// Generated from spec/test/core/local_tee.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'local_tee.0.dart' as local_tee_0;

void main() {
  group('local_tee', () {
    // module local_tee.0.dart (line 3)
    var m0 = local_tee_0.LocalTee0Module();

    returns('type_local_i32_0', () => m0.type_local_i32(), 0);
    returns('type_local_i64_0', () => m0.type_local_i64(), 0);
    returns('type_local_f32_0', () => m0.type_local_f32(), $f32('0'));
    returns('type_local_f64_0', () => m0.type_local_f64(), $f64('0'));
    returns('type_param_i32_0', () => m0.type_param_i32(0x2), 0xA);
    returns('type_param_i64_0', () => m0.type_param_i64(0x3), 0xB);
    returns(
      'type_param_f32_0',
      () => m0.type_param_f32($f32('408CCCCD')),
      $f32('4131999A'),
    );
    returns(
      'type_param_f64_0',
      () => m0.type_param_f64($f64('4016000000000000')),
      $f64('4028666666666666'),
    );
    returns('as_block_first_0', () => m0.as_block_first(0), 0x1);
    returns('as_block_mid_0', () => m0.as_block_mid(0), 0x1);
    returns('as_block_last_0', () => m0.as_block_last(0), 0x1);
    returns('as_loop_first_0', () => m0.as_loop_first(0), 0x3);
    returns('as_loop_mid_0', () => m0.as_loop_mid(0), 0x4);
    returns('as_loop_last_0', () => m0.as_loop_last(0), 0x5);
    returns('as_br_value_0', () => m0.as_br_value(0), 0x9);
    returns('as_br_if_cond_0', () => m0.as_br_if_cond(0), null);
    returns('as_br_if_value_0', () => m0.as_br_if_value(0), 0x8);
    returns('as_br_if_value_cond_0', () => m0.as_br_if_value_cond(0), 0x6);
    returns('as_br_table_index_0', () => m0.as_br_table_index(0), null);
    returns('as_br_table_value_0', () => m0.as_br_table_value(0), 0xA);
    returns(
      'as_br_table_value_index_0',
      () => m0.as_br_table_value_index(0),
      0x6,
    );
    returns('as_return_value_0', () => m0.as_return_value(0), 0x7);
    returns('as_if_cond_0', () => m0.as_if_cond(0), 0);
    returns('as_if_then_0', () => m0.as_if_then(0x1), 0x3);
    returns('as_if_else_0', () => m0.as_if_else(0), 0x4);
    returns('as_select_first_0', () => m0.as_select_first(0, 0x1), 0x5);
    returns('as_select_second_0', () => m0.as_select_second(0, 0), 0x6);
    returns('as_select_cond_0', () => m0.as_select_cond(0), 0);
    returns('as_call_first_0', () => m0.as_call_first(0), $i32('FFFFFFFF'));
    returns('as_call_mid_0', () => m0.as_call_mid(0), $i32('FFFFFFFF'));
    returns('as_call_last_0', () => m0.as_call_last(0), $i32('FFFFFFFF'));
    returns(
      'as_call_indirect_first_0',
      () => m0.as_call_indirect_first(0),
      $i32('FFFFFFFF'),
    );
    returns(
      'as_call_indirect_mid_0',
      () => m0.as_call_indirect_mid(0),
      $i32('FFFFFFFF'),
    );
    returns(
      'as_call_indirect_last_0',
      () => m0.as_call_indirect_last(0),
      $i32('FFFFFFFF'),
    );
    returns(
      'as_call_indirect_index_0',
      () => m0.as_call_indirect_index(0),
      $i32('FFFFFFFF'),
    );
    returns('as_local_set_value_0', () => m0.as_local_set_value(), null);
    returns('as_local_tee_value_0', () => m0.as_local_tee_value(0), 0x1);
    returns('as_global_set_value_0', () => m0.as_global_set_value(), null);
    returns('as_load_address_0', () => m0.as_load_address(0), 0);
    returns('as_loadN_address_0', () => m0.as_loadN_address(0), 0);
    returns('as_store_address_0', () => m0.as_store_address(0), null);
    returns('as_store_value_0', () => m0.as_store_value(0), null);
    returns('as_storeN_address_0', () => m0.as_storeN_address(0), null);
    returns('as_storeN_value_0', () => m0.as_storeN_value(0), null);
    returns(
      'as_unary_operand_0',
      () => m0.as_unary_operand($f32('0')),
      $f32('FF80F1E2'),
    );
    returns('as_binary_left_0', () => m0.as_binary_left(0), 0xD);
    returns('as_binary_right_0', () => m0.as_binary_right(0), 0x6);
    returns('as_test_operand_0', () => m0.as_test_operand(0), 0x1);
    returns('as_compare_left_0', () => m0.as_compare_left(0), 0);
    returns('as_compare_right_0', () => m0.as_compare_right(0), 0x1);
    returns('as_convert_operand_0', () => m0.as_convert_operand(0), 0x29);
    returns('as_memory_grow_size_0', () => m0.as_memory_grow_size(0), 0x1);
    returns(
      'type_mixed_0',
      () => m0.type_mixed(0x1, $f32('400CCCCD'), $f64('400A666666666666'), 0x4, 0x5),
      null,
    );
    returns(
      'write_0',
      () => m0.write(0x1, $f32('40000000'), $f64('400A666666666666'), 0x4, 0x5),
      0x38,
    );
    returns(
      'result_0',
      () => m0.result($i64('FFFFFFFFFFFFFFFF'), $f32('C0000000'), $f64('C00A666666666666'), $i32('FFFFFFFC'),
          $i32('FFFFFFFB')),
      $f64('4041666666666666'),
    );
  });
}
