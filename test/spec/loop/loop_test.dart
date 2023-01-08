// Generated from spec/test/core/loop.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'loop.0.dart' as loop_0;

void main() {
  group('loop', () {
    // module loop.0.dart (line 3)
    var m0 = loop_0.Loop0Module();

    returns('empty_0', () => m0.empty(), null);
    returns('singular_0', () => m0.singular(), 0x7);
    returns('multi_0', () => m0.multi(), 0x8);
    returns('nested_0', () => m0.nested(), 0x9);
    returns('deep_0', () => m0.deep(), 0x96);
    returns('as_select_first_0', () => m0.as_select_first(), 0x1);
    returns('as_select_mid_0', () => m0.as_select_mid(), 0x2);
    returns('as_select_last_0', () => m0.as_select_last(), 0x2);
    returns('as_if_condition_0', () => m0.as_if_condition(), null);
    returns('as_if_then_0', () => m0.as_if_then(), 0x1);
    returns('as_if_else_0', () => m0.as_if_else(), 0x2);
    returns('as_br_if_first_0', () => m0.as_br_if_first(), 0x1);
    returns('as_br_if_last_0', () => m0.as_br_if_last(), 0x2);
    returns('as_br_table_first_0', () => m0.as_br_table_first(), 0x1);
    returns('as_br_table_last_0', () => m0.as_br_table_last(), 0x2);
    returns('as_call_indirect_first_0', () => m0.as_call_indirect_first(), 0x1);
    returns('as_call_indirect_mid_0', () => m0.as_call_indirect_mid(), 0x2);
    returns('as_call_indirect_last_0', () => m0.as_call_indirect_last(), 0x1);
    returns('as_store_first_0', () => m0.as_store_first(), null);
    returns('as_store_last_0', () => m0.as_store_last(), null);
    returns('as_memory_grow_value_0', () => m0.as_memory_grow_value(), 0x1);
    returns('as_call_value_0', () => m0.as_call_value(), 0x1);
    returns('as_return_value_0', () => m0.as_return_value(), 0x1);
    returns('as_drop_operand_0', () => m0.as_drop_operand(), null);
    returns('as_br_value_0', () => m0.as_br_value(), 0x1);
    returns('as_local_set_value_0', () => m0.as_local_set_value(), 0x1);
    returns('as_local_tee_value_0', () => m0.as_local_tee_value(), 0x1);
    returns('as_global_set_value_0', () => m0.as_global_set_value(), 0x1);
    returns('as_load_operand_0', () => m0.as_load_operand(), 0x1);
    returns('as_unary_operand_0', () => m0.as_unary_operand(), 0);
    returns('as_binary_operand_0', () => m0.as_binary_operand(), 0xC);
    returns('as_test_operand_0', () => m0.as_test_operand(), 0);
    returns('as_compare_operand_0', () => m0.as_compare_operand(), 0);
    returns('as_binary_operands_0', () => m0.as_binary_operands(), 0xC);
    returns('as_compare_operands_0', () => m0.as_compare_operands(), 0);
    returns('as_mixed_operands_0', () => m0.as_mixed_operands(), 0x1B);
    returns('break_bare_0', () => m0.break_bare(), 0x13);
    returns('break_value_0', () => m0.break_value(), 0x12);
    returns(
      'break_multi_value_0',
      () => m0.break_multi_value(),
      Tuple3(0x12, $i32('FFFFFFEE'), 0x12),
    );
    returns('break_repeated_0', () => m0.break_repeated(), 0x12);
    returns('break_inner_0', () => m0.break_inner(), 0x1F);
    returns('param_0', () => m0.param(), 0x3);
    returns('params_0', () => m0.params(), 0x3);
    returns('params_id_0', () => m0.params_id(), 0x3);
    returns('param_break_0', () => m0.param_break(), 0xD);
    returns('params_break_0', () => m0.params_break(), 0xC);
    returns('params_id_break_0', () => m0.params_id_break(), 0x3);
    returns('effects_0', () => m0.effects(), 0x1);
    returns('while_0', () => m0.$while(0), 0x1);
    returns('while_1', () => m0.$while(0x1), 0x1);
    returns('while_2', () => m0.$while(0x2), 0x2);
    returns('while_3', () => m0.$while(0x3), 0x6);
    returns('while_4', () => m0.$while(0x5), 0x78);
    returns('while_5', () => m0.$while(0x14), $i64('21C3677C82B40000'));
    returns('for_0', () => m0.$for(0), 0x1);
    returns('for_1', () => m0.$for(0x1), 0x1);
    returns('for_2', () => m0.$for(0x2), 0x2);
    returns('for_3', () => m0.$for(0x3), 0x6);
    returns('for_4', () => m0.$for(0x5), 0x78);
    returns('for_5', () => m0.$for(0x14), $i64('21C3677C82B40000'));
    returns(
      'nesting_0',
      () => m0.nesting($f32('0'), $f32('40E00000')),
      $f32('0'),
    );
    returns(
      'nesting_1',
      () => m0.nesting($f32('40E00000'), $f32('0')),
      $f32('0'),
    );
    returns(
      'nesting_2',
      () => m0.nesting($f32('3F800000'), $f32('3F800000')),
      $f32('3F800000'),
    );
    returns(
      'nesting_3',
      () => m0.nesting($f32('3F800000'), $f32('40000000')),
      $f32('40000000'),
    );
    returns(
      'nesting_4',
      () => m0.nesting($f32('3F800000'), $f32('40400000')),
      $f32('40800000'),
    );
    returns(
      'nesting_5',
      () => m0.nesting($f32('3F800000'), $f32('40800000')),
      $f32('40C00000'),
    );
    returns(
      'nesting_6',
      () => m0.nesting($f32('3F800000'), $f32('42C80000')),
      $f32('451F6000'),
    );
    returns(
      'nesting_7',
      () => m0.nesting($f32('3F800000'), $f32('42CA0000')),
      $f32('45229000'),
    );
    returns(
      'nesting_8',
      () => m0.nesting($f32('40000000'), $f32('3F800000')),
      $f32('3F800000'),
    );
    returns(
      'nesting_9',
      () => m0.nesting($f32('40400000'), $f32('3F800000')),
      $f32('3F800000'),
    );
    returns(
      'nesting_10',
      () => m0.nesting($f32('41200000'), $f32('3F800000')),
      $f32('3F800000'),
    );
    returns(
      'nesting_11',
      () => m0.nesting($f32('40000000'), $f32('40000000')),
      $f32('40400000'),
    );
    returns(
      'nesting_12',
      () => m0.nesting($f32('40000000'), $f32('40400000')),
      $f32('40800000'),
    );
    returns(
      'nesting_13',
      () => m0.nesting($f32('40E00000'), $f32('40800000')),
      $f32('4124F3CF'),
    );
    returns(
      'nesting_14',
      () => m0.nesting($f32('40E00000'), $f32('42C80000')),
      $f32('4588EC62'),
    );
    returns(
      'nesting_15',
      () => m0.nesting($f32('40E00000'), $f32('42CA0000')),
      $f32('45229000'),
    );
    returns('type_use_0', () => m0.type_use(), null);
  });
}
