// Generated from spec/test/core/block.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'block.0.dart' as block_0;

void main() {
  group('block', () {
    // module block.0.dart (line 3)
    var m0 = block_0.Block0Module();

    returns('empty_0', () => m0.empty(), null);
    returns('singular_0', () => m0.singular(), 0x7);
    returns('multi_0', () => m0.multi(), 0x8);
    returns('nested_0', () => m0.nested(), 0x9);
    returns('deep_0', () => m0.deep(), 0x96);
    returns('as_select_first_0', () => m0.as_select_first(), 0x1);
    returns('as_select_mid_0', () => m0.as_select_mid(), 0x2);
    returns('as_select_last_0', () => m0.as_select_last(), 0x2);
    returns('as_loop_first_0', () => m0.as_loop_first(), 0x1);
    returns('as_loop_mid_0', () => m0.as_loop_mid(), 0x1);
    returns('as_loop_last_0', () => m0.as_loop_last(), 0x1);
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
    returns('break_inner_0', () => m0.break_inner(), 0xF);
    returns('param_0', () => m0.param(), 0x3);
    returns('params_0', () => m0.params(), 0x3);
    returns('params_id_0', () => m0.params_id(), 0x3);
    returns('param_break_0', () => m0.param_break(), 0x3);
    returns('params_break_0', () => m0.params_break(), 0x3);
    returns('params_id_break_0', () => m0.params_id_break(), 0x3);
    returns('effects_0', () => m0.effects(), 0x1);
    returns('type_use_0', () => m0.type_use(), null);
  });
}
