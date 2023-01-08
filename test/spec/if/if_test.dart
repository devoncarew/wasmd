// Generated from spec/test/core/if.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'if.0.dart' as if_0;

const String _ue = 'undefined element';

void main() {
  group('if', () {
    // module if.0.dart (line 3)
    var m0 = if_0.If0Module();

    returns('empty_0', () => m0.empty(0), null);
    returns('empty_1', () => m0.empty(0x1), null);
    returns('empty_2', () => m0.empty(0x64), null);
    returns('empty_3', () => m0.empty($i32('FFFFFFFE')), null);
    returns('singular_0', () => m0.singular(0), 0x8);
    returns('singular_1', () => m0.singular(0x1), 0x7);
    returns('singular_2', () => m0.singular(0xA), 0x7);
    returns('singular_3', () => m0.singular($i32('FFFFFFF6')), 0x7);
    returns('multi_0', () => m0.multi(0), Tuple2(0x9, $i32('FFFFFFFF')));
    returns('multi_1', () => m0.multi(0x1), Tuple2(0x8, 0x1));
    returns('multi_2', () => m0.multi(0xD), Tuple2(0x8, 0x1));
    returns('multi_3', () => m0.multi($i32('FFFFFFFB')), Tuple2(0x8, 0x1));
    returns('nested_0', () => m0.nested(0, 0), 0xB);
    returns('nested_1', () => m0.nested(0x1, 0), 0xA);
    returns('nested_2', () => m0.nested(0, 0x1), 0xA);
    returns('nested_3', () => m0.nested(0x3, 0x2), 0x9);
    returns('nested_4', () => m0.nested(0, $i32('FFFFFF9C')), 0xA);
    returns('nested_5', () => m0.nested(0xA, 0xA), 0x9);
    returns('nested_6', () => m0.nested(0, $i32('FFFFFFFF')), 0xA);
    returns(
      'nested_7',
      () => m0.nested($i32('FFFFFF91'), $i32('FFFFFFFE')),
      0x9,
    );
    returns('as_select_first_0', () => m0.as_select_first(0), 0);
    returns('as_select_first_1', () => m0.as_select_first(0x1), 0x1);
    returns('as_select_mid_0', () => m0.as_select_mid(0), 0x2);
    returns('as_select_mid_1', () => m0.as_select_mid(0x1), 0x2);
    returns('as_select_last_0', () => m0.as_select_last(0), 0x3);
    returns('as_select_last_1', () => m0.as_select_last(0x1), 0x2);
    returns('as_loop_first_0', () => m0.as_loop_first(0), 0);
    returns('as_loop_first_1', () => m0.as_loop_first(0x1), 0x1);
    returns('as_loop_mid_0', () => m0.as_loop_mid(0), 0);
    returns('as_loop_mid_1', () => m0.as_loop_mid(0x1), 0x1);
    returns('as_loop_last_0', () => m0.as_loop_last(0), 0);
    returns('as_loop_last_1', () => m0.as_loop_last(0x1), 0x1);
    returns('as_if_condition_0', () => m0.as_if_condition(0), 0x3);
    returns('as_if_condition_1', () => m0.as_if_condition(0x1), 0x2);
    returns('as_br_if_first_0', () => m0.as_br_if_first(0), 0);
    returns('as_br_if_first_1', () => m0.as_br_if_first(0x1), 0x1);
    returns('as_br_if_last_0', () => m0.as_br_if_last(0), 0x3);
    returns('as_br_if_last_1', () => m0.as_br_if_last(0x1), 0x2);
    returns('as_br_table_first_0', () => m0.as_br_table_first(0), 0);
    returns('as_br_table_first_1', () => m0.as_br_table_first(0x1), 0x1);
    returns('as_br_table_last_0', () => m0.as_br_table_last(0), 0x2);
    returns('as_br_table_last_1', () => m0.as_br_table_last(0x1), 0x2);
    returns('as_call_indirect_first_0', () => m0.as_call_indirect_first(0), 0);
    returns(
      'as_call_indirect_first_1',
      () => m0.as_call_indirect_first(0x1),
      0x1,
    );
    returns('as_call_indirect_mid_0', () => m0.as_call_indirect_mid(0), 0x2);
    returns('as_call_indirect_mid_1', () => m0.as_call_indirect_mid(0x1), 0x2);
    returns('as_call_indirect_last_0', () => m0.as_call_indirect_last(0), 0x2);
    traps('as_call_indirect_last_1', () => m0.as_call_indirect_last(0x1), _ue);
    returns('as_store_first_0', () => m0.as_store_first(0), null);
    returns('as_store_first_1', () => m0.as_store_first(0x1), null);
    returns('as_store_last_0', () => m0.as_store_last(0), null);
    returns('as_store_last_1', () => m0.as_store_last(0x1), null);
    returns('as_memory_grow_value_0', () => m0.as_memory_grow_value(0), 0x1);
    returns('as_memory_grow_value_1', () => m0.as_memory_grow_value(0x1), 0x1);
    returns('as_call_value_0', () => m0.as_call_value(0), 0);
    returns('as_call_value_1', () => m0.as_call_value(0x1), 0x1);
    returns('as_return_value_0', () => m0.as_return_value(0), 0);
    returns('as_return_value_1', () => m0.as_return_value(0x1), 0x1);
    returns('as_drop_operand_0', () => m0.as_drop_operand(0), null);
    returns('as_drop_operand_1', () => m0.as_drop_operand(0x1), null);
    returns('as_br_value_0', () => m0.as_br_value(0), 0);
    returns('as_br_value_1', () => m0.as_br_value(0x1), 0x1);
    returns('as_local_set_value_0', () => m0.as_local_set_value(0), 0);
    returns('as_local_set_value_1', () => m0.as_local_set_value(0x1), 0x1);
    returns('as_local_tee_value_0', () => m0.as_local_tee_value(0), 0);
    returns('as_local_tee_value_1', () => m0.as_local_tee_value(0x1), 0x1);
    returns('as_global_set_value_0', () => m0.as_global_set_value(0), 0);
    returns('as_global_set_value_1', () => m0.as_global_set_value(0x1), 0x1);
    returns('as_load_operand_0', () => m0.as_load_operand(0), 0);
    returns('as_load_operand_1', () => m0.as_load_operand(0x1), 0);
    returns('as_unary_operand_0', () => m0.as_unary_operand(0), 0);
    returns('as_unary_operand_1', () => m0.as_unary_operand(0x1), 0);
    returns(
      'as_unary_operand_2',
      () => m0.as_unary_operand($i32('FFFFFFFF')),
      0,
    );
    returns('as_binary_operand_0', () => m0.as_binary_operand(0, 0), 0xF);
    returns(
      'as_binary_operand_1',
      () => m0.as_binary_operand(0, 0x1),
      $i32('FFFFFFF4'),
    );
    returns(
      'as_binary_operand_2',
      () => m0.as_binary_operand(0x1, 0),
      $i32('FFFFFFF1'),
    );
    returns('as_binary_operand_3', () => m0.as_binary_operand(0x1, 0x1), 0xC);
    returns('as_test_operand_0', () => m0.as_test_operand(0), 0x1);
    returns('as_test_operand_1', () => m0.as_test_operand(0x1), 0);
    returns('as_compare_operand_0', () => m0.as_compare_operand(0, 0), 0x1);
    returns('as_compare_operand_1', () => m0.as_compare_operand(0, 0x1), 0);
    returns('as_compare_operand_2', () => m0.as_compare_operand(0x1, 0), 0x1);
    returns('as_compare_operand_3', () => m0.as_compare_operand(0x1, 0x1), 0);
    returns(
      'as_binary_operands_0',
      () => m0.as_binary_operands(0),
      $i32('FFFFFFF4'),
    );
    returns('as_binary_operands_1', () => m0.as_binary_operands(0x1), 0xC);
    returns('as_compare_operands_0', () => m0.as_compare_operands(0), 0x1);
    returns('as_compare_operands_1', () => m0.as_compare_operands(0x1), 0);
    returns(
      'as_mixed_operands_0',
      () => m0.as_mixed_operands(0),
      $i32('FFFFFFFD'),
    );
    returns('as_mixed_operands_1', () => m0.as_mixed_operands(0x1), 0x1B);
    returns('break_bare_0', () => m0.break_bare(), 0x13);
    returns('break_value_0', () => m0.break_value(0x1), 0x12);
    returns('break_value_1', () => m0.break_value(0), 0x15);
    returns(
      'break_multi_value_0',
      () => m0.break_multi_value(0),
      Tuple3($i32('FFFFFFEE'), 0x12, $i64('FFFFFFFFFFFFFFEE')),
    );
    returns(
      'break_multi_value_1',
      () => m0.break_multi_value(0x1),
      Tuple3(0x12, $i32('FFFFFFEE'), 0x12),
    );
    returns('param_0', () => m0.param(0), $i32('FFFFFFFF'));
    returns('param_1', () => m0.param(0x1), 0x3);
    returns('params_0', () => m0.params(0), $i32('FFFFFFFF'));
    returns('params_1', () => m0.params(0x1), 0x3);
    returns('params_id_0', () => m0.params_id(0), 0x3);
    returns('params_id_1', () => m0.params_id(0x1), 0x3);
    returns('param_break_0', () => m0.param_break(0), $i32('FFFFFFFF'));
    returns('param_break_1', () => m0.param_break(0x1), 0x3);
    returns('params_break_0', () => m0.params_break(0), $i32('FFFFFFFF'));
    returns('params_break_1', () => m0.params_break(0x1), 0x3);
    returns('params_id_break_0', () => m0.params_id_break(0), 0x3);
    returns('params_id_break_1', () => m0.params_id_break(0x1), 0x3);
    returns('effects_0', () => m0.effects(0x1), $i32('FFFFFFF2'));
    returns('effects_1', () => m0.effects(0), $i32('FFFFFFFA'));
    returns(
      'add64_u_with_carry_0',
      () => m0.add64_u_with_carry(0, 0, 0),
      Tuple2(0, 0),
    );
    returns(
      'add64_u_with_carry_1',
      () => m0.add64_u_with_carry(0x64, 0x7C, 0),
      Tuple2(0xE0, 0),
    );
    returns(
      'add64_u_with_carry_2',
      () => m0.add64_u_with_carry($i64('FFFFFFFFFFFFFFFF'), 0, 0),
      Tuple2($i64('FFFFFFFFFFFFFFFF'), 0),
    );
    returns(
      'add64_u_with_carry_3',
      () => m0.add64_u_with_carry($i64('FFFFFFFFFFFFFFFF'), 0x1, 0),
      Tuple2(0, 0x1),
    );
    returns(
      'add64_u_with_carry_4',
      () => m0.add64_u_with_carry($i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF'), 0),
      Tuple2($i64('FFFFFFFFFFFFFFFE'), 0x1),
    );
    returns(
      'add64_u_with_carry_5',
      () => m0.add64_u_with_carry($i64('FFFFFFFFFFFFFFFF'), 0, 0x1),
      Tuple2(0, 0x1),
    );
    returns(
      'add64_u_with_carry_6',
      () => m0.add64_u_with_carry($i64('FFFFFFFFFFFFFFFF'), 0x1, 0x1),
      Tuple2(0x1, 0x1),
    );
    returns(
      'add64_u_with_carry_7',
      () => m0.add64_u_with_carry($i64('8000000000000000'), $i64('8000000000000000'), 0),
      Tuple2(0, 0x1),
    );
    returns('add64_u_saturated_0', () => m0.add64_u_saturated(0, 0), 0);
    returns(
      'add64_u_saturated_1',
      () => m0.add64_u_saturated(0x4CE, 0x17),
      0x4E5,
    );
    returns(
      'add64_u_saturated_2',
      () => m0.add64_u_saturated($i64('FFFFFFFFFFFFFFFF'), 0),
      $i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'add64_u_saturated_3',
      () => m0.add64_u_saturated($i64('FFFFFFFFFFFFFFFF'), 0x1),
      $i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'add64_u_saturated_4',
      () => m0.add64_u_saturated($i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')),
      $i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'add64_u_saturated_5',
      () => m0.add64_u_saturated($i64('8000000000000000'), $i64('8000000000000000')),
      $i64('FFFFFFFFFFFFFFFF'),
    );
    returns('type_use_0', () => m0.type_use(), null);
  });
}
