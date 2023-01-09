// Generated from spec/test/core/call.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'call.0.dart' as call_0;

const String _ue = 'undefined element';

void main() {
  group('call', () {
    // module call.0.dart (line 3)
    var m0 = call_0.Call0Module();

    returns('type_i32_0', () => m0.type_i32(), 0x132);
    returns('type_i64_0', () => m0.type_i64(), 0x164);
    returns('type_f32_0', () => m0.type_f32(), $f32('45732000'));
    returns('type_f64_0', () => m0.type_f64(), $f64('40AEC80000000000'));
    returns('type_i32_i64_0', () => m0.type_i32_i64(), Tuple2(0x132, 0x164));
    returns('type_first_i32_0', () => m0.type_first_i32(), 0x20);
    returns('type_first_i64_0', () => m0.type_first_i64(), 0x40);
    returns('type_first_f32_0', () => m0.type_first_f32(), $f32('3FA8F5C3'));
    returns(
      'type_first_f64_0',
      () => m0.type_first_f64(),
      $f64('3FFA3D70A3D70A3D'),
    );
    returns('type_second_i32_0', () => m0.type_second_i32(), 0x20);
    returns('type_second_i64_0', () => m0.type_second_i64(), 0x40);
    returns('type_second_f32_0', () => m0.type_second_f32(), $f32('42000000'));
    returns(
      'type_second_f64_0',
      () => m0.type_second_f64(),
      $f64('4050066666666666'),
    );
    returns(
      'type_all_i32_f64_0',
      () => m0.type_all_i32_f64(),
      Tuple2(0x20, $f64('3FFA3D70A3D70A3D')),
    );
    returns(
      'type_all_i32_i32_0',
      () => m0.type_all_i32_i32(),
      Tuple2(0x2, 0x1),
    );
    returns(
      'type_all_f32_f64_0',
      () => m0.type_all_f32_f64(),
      Tuple2($f64('4000000000000000'), $f32('3F800000')),
    );
    returns(
      'type_all_f64_i32_0',
      () => m0.type_all_f64_i32(),
      Tuple2(0x2, $f64('3FF0000000000000')),
    );
    returns('as_binary_all_operands_0', () => m0.as_binary_all_operands(), 0x7);
    returns('as_mixed_operands_0', () => m0.as_mixed_operands(), 0x20);
    returns(
      'as_call_all_operands_0',
      () => m0.as_call_all_operands(),
      Tuple2(0x3, 0x4),
    );
    returns('fac_0', () => m0.fac(0), 0x1);
    returns('fac_1', () => m0.fac(0x1), 0x1);
    returns('fac_2', () => m0.fac(0x5), 0x78);
    returns('fac_3', () => m0.fac(0x19), $i64('619FB0907BC00000'));
    returns('fac_acc_0', () => m0.fac_acc(0, 0x1), 0x1);
    returns('fac_acc_1', () => m0.fac_acc(0x1, 0x1), 0x1);
    returns('fac_acc_2', () => m0.fac_acc(0x5, 0x1), 0x78);
    returns('fac_acc_3', () => m0.fac_acc(0x19, 0x1), $i64('619FB0907BC00000'));
    returns('fib_0', () => m0.fib(0), 0x1);
    returns('fib_1', () => m0.fib(0x1), 0x1);
    returns('fib_2', () => m0.fib(0x2), 0x2);
    returns('fib_3', () => m0.fib(0x5), 0x8);
    returns('fib_4', () => m0.fib(0x14), 0x2AC2);
    returns('even_0', () => m0.even(0), 0x2C);
    returns('even_1', () => m0.even(0x1), 0x63);
    returns('even_2', () => m0.even(0x64), 0x2C);
    returns('even_3', () => m0.even(0x4D), 0x63);
    returns('odd_0', () => m0.odd(0), 0x63);
    returns('odd_1', () => m0.odd(0x1), 0x2C);
    returns('odd_2', () => m0.odd(0xC8), 0x63);
    returns('odd_3', () => m0.odd(0x4D), 0x2C);
    returns('as_select_first_0', () => m0.as_select_first(), 0x132);
    returns('as_select_mid_0', () => m0.as_select_mid(), 0x2);
    returns('as_select_last_0', () => m0.as_select_last(), 0x2);
    returns('as_if_condition_0', () => m0.as_if_condition(), 0x1);
    returns('as_br_if_first_0', () => m0.as_br_if_first(), 0x132);
    returns('as_br_if_last_0', () => m0.as_br_if_last(), 0x2);
    returns('as_br_table_first_0', () => m0.as_br_table_first(), 0x132);
    returns('as_br_table_last_0', () => m0.as_br_table_last(), 0x2);
    returns(
      'as_call_indirect_first_0',
      () => m0.as_call_indirect_first(),
      0x132,
    );
    returns('as_call_indirect_mid_0', () => m0.as_call_indirect_mid(), 0x2);
    traps('as_call_indirect_last_0', () => m0.as_call_indirect_last(), _ue);
    returns('as_store_first_0', () => m0.as_store_first(), null);
    returns('as_store_last_0', () => m0.as_store_last(), null);
    returns('as_memory_grow_value_0', () => m0.as_memory_grow_value(), 0x1);
    returns('as_return_value_0', () => m0.as_return_value(), 0x132);
    returns('as_drop_operand_0', () => m0.as_drop_operand(), null);
    returns('as_br_value_0', () => m0.as_br_value(), 0x132);
    returns('as_local_set_value_0', () => m0.as_local_set_value(), 0x132);
    returns('as_local_tee_value_0', () => m0.as_local_tee_value(), 0x132);
    returns('as_global_set_value_0', () => m0.as_global_set_value(), 0x132);
    returns('as_load_operand_0', () => m0.as_load_operand(), 0x1);
    returns('as_unary_operand_0', () => m0.as_unary_operand(), $f32('0'));
    returns('as_binary_left_0', () => m0.as_binary_left(), 0xB);
    returns('as_binary_right_0', () => m0.as_binary_right(), 0x9);
    returns('as_test_operand_0', () => m0.as_test_operand(), 0);
    returns('as_compare_left_0', () => m0.as_compare_left(), 0x1);
    returns('as_compare_right_0', () => m0.as_compare_right(), 0x1);
    returns('as_convert_operand_0', () => m0.as_convert_operand(), 0x1);
    returns(
      'return_from_long_argument_list_0',
      () => m0.return_from_long_argument_list(0x2A),
      0x2A,
    );
  });
}
