// Generated from spec/test/core/select.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'select.0.dart' as select_0;
import 'select.29.dart' as select_29;

const String _ue = 'undefined element';

void main() {
  group('select', () {
    // module select.0.dart (line 1)
    var m0 = select_0.Select0Module();

    returns('select_i32_0', () => m0.select_i32(0x1, 0x2, 0x1), 0x1);
    returns('select_i64_0', () => m0.select_i64(0x2, 0x1, 0x1), 0x2);
    returns(
      'select_f32_0',
      () => m0.select_f32($f32('3F800000'), $f32('40000000'), 0x1),
      $f32('3F800000'),
    );
    returns(
      'select_f64_0',
      () => m0.select_f64($f64('3FF0000000000000'), $f64('4000000000000000'), 0x1),
      $f64('3FF0000000000000'),
    );
    returns('select_i32_1', () => m0.select_i32(0x1, 0x2, 0), 0x2);
    returns('select_i32_2', () => m0.select_i32(0x2, 0x1, 0), 0x1);
    returns(
      'select_i64_1',
      () => m0.select_i64(0x2, 0x1, $i32('FFFFFFFF')),
      0x2,
    );
    returns(
      'select_i64_2',
      () => m0.select_i64(0x2, 0x1, $i32('F0F0F0F0')),
      0x2,
    );
    returns(
      'select_f32_1',
      () => m0.select_f32($f32('7FC00000'), $f32('3F800000'), 0x1),
      $f32('7FC00000'),
    );
    returns(
      'select_f32_2',
      () => m0.select_f32($f32('7F820304'), $f32('3F800000'), 0x1),
      $f32('7F820304'),
    );
    returns(
      'select_f32_3',
      () => m0.select_f32($f32('7FC00000'), $f32('3F800000'), 0),
      $f32('3F800000'),
    );
    returns(
      'select_f32_4',
      () => m0.select_f32($f32('7F820304'), $f32('3F800000'), 0),
      $f32('3F800000'),
    );
    returns(
      'select_f32_5',
      () => m0.select_f32($f32('40000000'), $f32('7FC00000'), 0x1),
      $f32('40000000'),
    );
    returns(
      'select_f32_6',
      () => m0.select_f32($f32('40000000'), $f32('7F820304'), 0x1),
      $f32('40000000'),
    );
    returns(
      'select_f32_7',
      () => m0.select_f32($f32('40000000'), $f32('7FC00000'), 0),
      $f32('7FC00000'),
    );
    returns(
      'select_f32_8',
      () => m0.select_f32($f32('40000000'), $f32('7F820304'), 0),
      $f32('7F820304'),
    );
    returns(
      'select_f64_1',
      () => m0.select_f64($f64('7FF8000000000000'), $f64('3FF0000000000000'), 0x1),
      $f64('7FF8000000000000'),
    );
    returns(
      'select_f64_2',
      () => m0.select_f64($f64('7FF0000000020304'), $f64('3FF0000000000000'), 0x1),
      $f64('7FF0000000020304'),
    );
    returns(
      'select_f64_3',
      () => m0.select_f64($f64('7FF8000000000000'), $f64('3FF0000000000000'), 0),
      $f64('3FF0000000000000'),
    );
    returns(
      'select_f64_4',
      () => m0.select_f64($f64('7FF0000000020304'), $f64('3FF0000000000000'), 0),
      $f64('3FF0000000000000'),
    );
    returns(
      'select_f64_5',
      () => m0.select_f64($f64('4000000000000000'), $f64('7FF8000000000000'), 0x1),
      $f64('4000000000000000'),
    );
    returns(
      'select_f64_6',
      () => m0.select_f64($f64('4000000000000000'), $f64('7FF0000000020304'), 0x1),
      $f64('4000000000000000'),
    );
    returns(
      'select_f64_7',
      () => m0.select_f64($f64('4000000000000000'), $f64('7FF8000000000000'), 0),
      $f64('7FF8000000000000'),
    );
    returns(
      'select_f64_8',
      () => m0.select_f64($f64('4000000000000000'), $f64('7FF0000000020304'), 0),
      $f64('7FF0000000020304'),
    );
    returns('select_i32_t_0', () => m0.select_i32_t(0x1, 0x2, 0x1), 0x1);
    returns('select_i64_t_0', () => m0.select_i64_t(0x2, 0x1, 0x1), 0x2);
    returns(
      'select_f32_t_0',
      () => m0.select_f32_t($f32('3F800000'), $f32('40000000'), 0x1),
      $f32('3F800000'),
    );
    returns(
      'select_f64_t_0',
      () => m0.select_f64_t($f64('3FF0000000000000'), $f64('4000000000000000'), 0x1),
      $f64('3FF0000000000000'),
    );
    returns('select_funcref_0', () => m0.select_funcref(null, null, 0x1), null);
    returns(
      'select_externref_0',
      () => m0.select_externref($externref('1'), $externref('2'), 0x1),
      $externref('1'),
    );
    returns('select_i32_t_1', () => m0.select_i32_t(0x1, 0x2, 0), 0x2);
    returns('select_i32_t_2', () => m0.select_i32_t(0x2, 0x1, 0), 0x1);
    returns(
      'select_i64_t_1',
      () => m0.select_i64_t(0x2, 0x1, $i32('FFFFFFFF')),
      0x2,
    );
    returns(
      'select_i64_t_2',
      () => m0.select_i64_t(0x2, 0x1, $i32('F0F0F0F0')),
      0x2,
    );
    returns(
      'select_externref_1',
      () => m0.select_externref($externref('1'), $externref('2'), 0),
      $externref('2'),
    );
    returns(
      'select_externref_2',
      () => m0.select_externref($externref('2'), $externref('1'), 0),
      $externref('1'),
    );
    returns(
      'select_f32_t_1',
      () => m0.select_f32_t($f32('7FC00000'), $f32('3F800000'), 0x1),
      $f32('7FC00000'),
    );
    returns(
      'select_f32_t_2',
      () => m0.select_f32_t($f32('7F820304'), $f32('3F800000'), 0x1),
      $f32('7F820304'),
    );
    returns(
      'select_f32_t_3',
      () => m0.select_f32_t($f32('7FC00000'), $f32('3F800000'), 0),
      $f32('3F800000'),
    );
    returns(
      'select_f32_t_4',
      () => m0.select_f32_t($f32('7F820304'), $f32('3F800000'), 0),
      $f32('3F800000'),
    );
    returns(
      'select_f32_t_5',
      () => m0.select_f32_t($f32('40000000'), $f32('7FC00000'), 0x1),
      $f32('40000000'),
    );
    returns(
      'select_f32_t_6',
      () => m0.select_f32_t($f32('40000000'), $f32('7F820304'), 0x1),
      $f32('40000000'),
    );
    returns(
      'select_f32_t_7',
      () => m0.select_f32_t($f32('40000000'), $f32('7FC00000'), 0),
      $f32('7FC00000'),
    );
    returns(
      'select_f32_t_8',
      () => m0.select_f32_t($f32('40000000'), $f32('7F820304'), 0),
      $f32('7F820304'),
    );
    returns(
      'select_f64_t_1',
      () => m0.select_f64_t($f64('7FF8000000000000'), $f64('3FF0000000000000'), 0x1),
      $f64('7FF8000000000000'),
    );
    returns(
      'select_f64_t_2',
      () => m0.select_f64_t($f64('7FF0000000020304'), $f64('3FF0000000000000'), 0x1),
      $f64('7FF0000000020304'),
    );
    returns(
      'select_f64_t_3',
      () => m0.select_f64_t($f64('7FF8000000000000'), $f64('3FF0000000000000'), 0),
      $f64('3FF0000000000000'),
    );
    returns(
      'select_f64_t_4',
      () => m0.select_f64_t($f64('7FF0000000020304'), $f64('3FF0000000000000'), 0),
      $f64('3FF0000000000000'),
    );
    returns(
      'select_f64_t_5',
      () => m0.select_f64_t($f64('4000000000000000'), $f64('7FF8000000000000'), 0x1),
      $f64('4000000000000000'),
    );
    returns(
      'select_f64_t_6',
      () => m0.select_f64_t($f64('4000000000000000'), $f64('7FF0000000020304'), 0x1),
      $f64('4000000000000000'),
    );
    returns(
      'select_f64_t_7',
      () => m0.select_f64_t($f64('4000000000000000'), $f64('7FF8000000000000'), 0),
      $f64('7FF8000000000000'),
    );
    returns(
      'select_f64_t_8',
      () => m0.select_f64_t($f64('4000000000000000'), $f64('7FF0000000020304'), 0),
      $f64('7FF0000000020304'),
    );
    returns('as_select_first_0', () => m0.as_select_first(0), 0x1);
    returns('as_select_first_1', () => m0.as_select_first(0x1), 0);
    returns('as_select_mid_0', () => m0.as_select_mid(0), 0x2);
    returns('as_select_mid_1', () => m0.as_select_mid(0x1), 0x2);
    returns('as_select_last_0', () => m0.as_select_last(0), 0x2);
    returns('as_select_last_1', () => m0.as_select_last(0x1), 0x3);
    returns('as_loop_first_0', () => m0.as_loop_first(0), 0x3);
    returns('as_loop_first_1', () => m0.as_loop_first(0x1), 0x2);
    returns('as_loop_mid_0', () => m0.as_loop_mid(0), 0x3);
    returns('as_loop_mid_1', () => m0.as_loop_mid(0x1), 0x2);
    returns('as_loop_last_0', () => m0.as_loop_last(0), 0x3);
    returns('as_loop_last_1', () => m0.as_loop_last(0x1), 0x2);
    returns('as_if_condition_0', () => m0.as_if_condition(0), null);
    returns('as_if_condition_1', () => m0.as_if_condition(0x1), null);
    returns('as_if_then_0', () => m0.as_if_then(0), 0x3);
    returns('as_if_then_1', () => m0.as_if_then(0x1), 0x2);
    returns('as_if_else_0', () => m0.as_if_else(0), 0x3);
    returns('as_if_else_1', () => m0.as_if_else(0x1), 0x2);
    returns('as_br_if_first_0', () => m0.as_br_if_first(0), 0x3);
    returns('as_br_if_first_1', () => m0.as_br_if_first(0x1), 0x2);
    returns('as_br_if_last_0', () => m0.as_br_if_last(0), 0x2);
    returns('as_br_if_last_1', () => m0.as_br_if_last(0x1), 0x2);
    returns('as_br_table_first_0', () => m0.as_br_table_first(0), 0x3);
    returns('as_br_table_first_1', () => m0.as_br_table_first(0x1), 0x2);
    returns('as_br_table_last_0', () => m0.as_br_table_last(0), 0x2);
    returns('as_br_table_last_1', () => m0.as_br_table_last(0x1), 0x2);
    returns(
      'as_call_indirect_first_0',
      () => m0.as_call_indirect_first(0),
      0x3,
    );
    returns(
      'as_call_indirect_first_1',
      () => m0.as_call_indirect_first(0x1),
      0x2,
    );
    returns('as_call_indirect_mid_0', () => m0.as_call_indirect_mid(0), 0x1);
    returns('as_call_indirect_mid_1', () => m0.as_call_indirect_mid(0x1), 0x1);
    traps('as_call_indirect_last_0', () => m0.as_call_indirect_last(0), _ue);
    traps('as_call_indirect_last_1', () => m0.as_call_indirect_last(0x1), _ue);
    returns('as_store_first_0', () => m0.as_store_first(0), null);
    returns('as_store_first_1', () => m0.as_store_first(0x1), null);
    returns('as_store_last_0', () => m0.as_store_last(0), null);
    returns('as_store_last_1', () => m0.as_store_last(0x1), null);
    returns('as_memory_grow_value_0', () => m0.as_memory_grow_value(0), 0x1);
    returns('as_memory_grow_value_1', () => m0.as_memory_grow_value(0x1), 0x3);
    returns('as_call_value_0', () => m0.as_call_value(0), 0x2);
    returns('as_call_value_1', () => m0.as_call_value(0x1), 0x1);
    returns('as_return_value_0', () => m0.as_return_value(0), 0x2);
    returns('as_return_value_1', () => m0.as_return_value(0x1), 0x1);
    returns('as_drop_operand_0', () => m0.as_drop_operand(0), null);
    returns('as_drop_operand_1', () => m0.as_drop_operand(0x1), null);
    returns('as_br_value_0', () => m0.as_br_value(0), 0x2);
    returns('as_br_value_1', () => m0.as_br_value(0x1), 0x1);
    returns('as_local_set_value_0', () => m0.as_local_set_value(0), 0x2);
    returns('as_local_set_value_1', () => m0.as_local_set_value(0x1), 0x1);
    returns('as_local_tee_value_0', () => m0.as_local_tee_value(0), 0x2);
    returns('as_local_tee_value_1', () => m0.as_local_tee_value(0x1), 0x1);
    returns('as_global_set_value_0', () => m0.as_global_set_value(0), 0x2);
    returns('as_global_set_value_1', () => m0.as_global_set_value(0x1), 0x1);
    returns('as_load_operand_0', () => m0.as_load_operand(0), 0x1);
    returns('as_load_operand_1', () => m0.as_load_operand(0x1), 0x1);
    returns('as_unary_operand_0', () => m0.as_unary_operand(0), 0);
    returns('as_unary_operand_1', () => m0.as_unary_operand(0x1), 0x1);
    returns('as_binary_operand_0', () => m0.as_binary_operand(0), 0x4);
    returns('as_binary_operand_1', () => m0.as_binary_operand(0x1), 0x1);
    returns('as_test_operand_0', () => m0.as_test_operand(0), 0);
    returns('as_test_operand_1', () => m0.as_test_operand(0x1), 0x1);
    returns('as_compare_left_0', () => m0.as_compare_left(0), 0);
    returns('as_compare_left_1', () => m0.as_compare_left(0x1), 0x1);
    returns('as_compare_right_0', () => m0.as_compare_right(0), 0);
    returns('as_compare_right_1', () => m0.as_compare_right(0x1), 0x1);
    returns('as_convert_operand_0', () => m0.as_convert_operand(0), 0);
    returns('as_convert_operand_1', () => m0.as_convert_operand(0x1), 0x1);

    // module select.29.dart (line 518)
    var m1 = select_29.Select29Module();
  });
}
