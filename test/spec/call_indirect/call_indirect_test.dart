// Generated from spec/test/core/call_indirect.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'call_indirect.0.dart' as call_indirect_0;
import 'call_indirect.1.dart' as call_indirect_1;
import 'call_indirect.35.dart' as call_indirect_35;

const String _ictm = 'indirect call type mismatch';
const String _ue = 'undefined element';

void main() {
  group('call_indirect', () {
    // module call_indirect.0.dart (line 3)
    var m0 = call_indirect_0.CallIndirect0Module();

    returns('type_i32_0', () => m0.type_i32(), 0x132);
    returns('type_i64_0', () => m0.type_i64(), 0x164);
    returns('type_f32_0', () => m0.type_f32(), $f32('45732000'));
    returns('type_f64_0', () => m0.type_f64(), $f64('40AEC80000000000'));
    returns(
      'type_f64_i32_0',
      () => m0.type_f64_i32(),
      Tuple2($f64('40AEC80000000000'), 0x20),
    );
    returns('type_index_0', () => m0.type_index(), 0x64);
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
      'type_all_f64_i32_0',
      () => m0.type_all_f64_i32(),
      Tuple2($f64('40AEC80000000000'), 0x20),
    );
    returns(
      'type_all_i32_f64_0',
      () => m0.type_all_i32_f64(),
      Tuple2(0x1, $f64('4000000000000000')),
    );
    returns(
      'type_all_i32_i64_0',
      () => m0.type_all_i32_i64(),
      Tuple2(0x2, 0x1),
    );
    returns('dispatch_0', () => m0.dispatch(0x5, 0x2), 0x2);
    returns('dispatch_1', () => m0.dispatch(0x5, 0x5), 0x5);
    returns('dispatch_2', () => m0.dispatch(0xC, 0x5), 0x78);
    returns('dispatch_3', () => m0.dispatch(0xD, 0x5), 0x8);
    returns('dispatch_4', () => m0.dispatch(0x14, 0x2), 0x2);
    traps('dispatch_5', () => m0.dispatch(0, 0x2), _ictm);
    traps('dispatch_6', () => m0.dispatch(0xF, 0x2), _ictm);
    traps('dispatch_7', () => m0.dispatch(0x20, 0x2), _ue);
    traps('dispatch_8', () => m0.dispatch($i32('FFFFFFFF'), 0x2), _ue);
    traps('dispatch_9', () => m0.dispatch($i32('48538267'), 0x2), _ue);
    returns(
      'dispatch_structural_i64_0',
      () => m0.dispatch_structural_i64(0x5),
      0x9,
    );
    returns(
      'dispatch_structural_i64_1',
      () => m0.dispatch_structural_i64(0xC),
      0x58980,
    );
    returns(
      'dispatch_structural_i64_2',
      () => m0.dispatch_structural_i64(0xD),
      0x37,
    );
    returns(
      'dispatch_structural_i64_3',
      () => m0.dispatch_structural_i64(0x14),
      0x9,
    );
    traps(
      'dispatch_structural_i64_4',
      () => m0.dispatch_structural_i64(0xB),
      _ictm,
    );
    traps(
      'dispatch_structural_i64_5',
      () => m0.dispatch_structural_i64(0x16),
      _ictm,
    );
    returns(
      'dispatch_structural_i32_0',
      () => m0.dispatch_structural_i32(0x4),
      0x9,
    );
    returns(
      'dispatch_structural_i32_1',
      () => m0.dispatch_structural_i32(0x17),
      0x58980,
    );
    returns(
      'dispatch_structural_i32_2',
      () => m0.dispatch_structural_i32(0x1A),
      0x37,
    );
    returns(
      'dispatch_structural_i32_3',
      () => m0.dispatch_structural_i32(0x13),
      0x9,
    );
    traps(
      'dispatch_structural_i32_4',
      () => m0.dispatch_structural_i32(0x9),
      _ictm,
    );
    traps(
      'dispatch_structural_i32_5',
      () => m0.dispatch_structural_i32(0x15),
      _ictm,
    );
    returns(
      'dispatch_structural_f32_0',
      () => m0.dispatch_structural_f32(0x6),
      $f32('41100000'),
    );
    returns(
      'dispatch_structural_f32_1',
      () => m0.dispatch_structural_f32(0x18),
      $f32('48B13000'),
    );
    returns(
      'dispatch_structural_f32_2',
      () => m0.dispatch_structural_f32(0x1B),
      $f32('425C0000'),
    );
    returns(
      'dispatch_structural_f32_3',
      () => m0.dispatch_structural_f32(0x15),
      $f32('41100000'),
    );
    traps(
      'dispatch_structural_f32_4',
      () => m0.dispatch_structural_f32(0x8),
      _ictm,
    );
    traps(
      'dispatch_structural_f32_5',
      () => m0.dispatch_structural_f32(0x13),
      _ictm,
    );
    returns(
      'dispatch_structural_f64_0',
      () => m0.dispatch_structural_f64(0x7),
      $f64('4022000000000000'),
    );
    returns(
      'dispatch_structural_f64_1',
      () => m0.dispatch_structural_f64(0x19),
      $f64('4116260000000000'),
    );
    returns(
      'dispatch_structural_f64_2',
      () => m0.dispatch_structural_f64(0x1C),
      $f64('404B800000000000'),
    );
    returns(
      'dispatch_structural_f64_3',
      () => m0.dispatch_structural_f64(0x16),
      $f64('4022000000000000'),
    );
    traps(
      'dispatch_structural_f64_4',
      () => m0.dispatch_structural_f64(0xA),
      _ictm,
    );
    traps(
      'dispatch_structural_f64_5',
      () => m0.dispatch_structural_f64(0x12),
      _ictm,
    );
    returns('fac_i64_0', () => m0.fac_i64(0), 0x1);
    returns('fac_i64_1', () => m0.fac_i64(0x1), 0x1);
    returns('fac_i64_2', () => m0.fac_i64(0x5), 0x78);
    returns('fac_i64_3', () => m0.fac_i64(0x19), $i64('619FB0907BC00000'));
    returns('fac_i32_0', () => m0.fac_i32(0), 0x1);
    returns('fac_i32_1', () => m0.fac_i32(0x1), 0x1);
    returns('fac_i32_2', () => m0.fac_i32(0x5), 0x78);
    returns('fac_i32_3', () => m0.fac_i32(0xA), $i32('375F00'));
    returns('fac_f32_0', () => m0.fac_f32($f32('0')), $f32('3F800000'));
    returns('fac_f32_1', () => m0.fac_f32($f32('3F800000')), $f32('3F800000'));
    returns('fac_f32_2', () => m0.fac_f32($f32('40A00000')), $f32('42F00000'));
    returns('fac_f32_3', () => m0.fac_f32($f32('41200000')), $f32('4A5D7C00'));
    returns('fac_f64_0', () => m0.fac_f64($f64('0')), $f64('3FF0000000000000'));
    returns(
      'fac_f64_1',
      () => m0.fac_f64($f64('3FF0000000000000')),
      $f64('3FF0000000000000'),
    );
    returns(
      'fac_f64_2',
      () => m0.fac_f64($f64('4014000000000000')),
      $f64('405E000000000000'),
    );
    returns(
      'fac_f64_3',
      () => m0.fac_f64($f64('4024000000000000')),
      $f64('414BAF8000000000'),
    );
    returns('fib_i64_0', () => m0.fib_i64(0), 0x1);
    returns('fib_i64_1', () => m0.fib_i64(0x1), 0x1);
    returns('fib_i64_2', () => m0.fib_i64(0x2), 0x2);
    returns('fib_i64_3', () => m0.fib_i64(0x5), 0x8);
    returns('fib_i64_4', () => m0.fib_i64(0x14), 0x2AC2);
    returns('fib_i32_0', () => m0.fib_i32(0), 0x1);
    returns('fib_i32_1', () => m0.fib_i32(0x1), 0x1);
    returns('fib_i32_2', () => m0.fib_i32(0x2), 0x2);
    returns('fib_i32_3', () => m0.fib_i32(0x5), 0x8);
    returns('fib_i32_4', () => m0.fib_i32(0x14), 0x2AC2);
    returns('fib_f32_0', () => m0.fib_f32($f32('0')), $f32('3F800000'));
    returns('fib_f32_1', () => m0.fib_f32($f32('3F800000')), $f32('3F800000'));
    returns('fib_f32_2', () => m0.fib_f32($f32('40000000')), $f32('40000000'));
    returns('fib_f32_3', () => m0.fib_f32($f32('40A00000')), $f32('41000000'));
    returns('fib_f32_4', () => m0.fib_f32($f32('41A00000')), $f32('462B0800'));
    returns('fib_f64_0', () => m0.fib_f64($f64('0')), $f64('3FF0000000000000'));
    returns(
      'fib_f64_1',
      () => m0.fib_f64($f64('3FF0000000000000')),
      $f64('3FF0000000000000'),
    );
    returns(
      'fib_f64_2',
      () => m0.fib_f64($f64('4000000000000000')),
      $f64('4000000000000000'),
    );
    returns(
      'fib_f64_3',
      () => m0.fib_f64($f64('4014000000000000')),
      $f64('4020000000000000'),
    );
    returns(
      'fib_f64_4',
      () => m0.fib_f64($f64('4034000000000000')),
      $f64('40C5610000000000'),
    );
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
    returns('as_br_if_first_0', () => m0.as_br_if_first(), 0x164);
    returns('as_br_if_last_0', () => m0.as_br_if_last(), 0x2);
    returns(
      'as_br_table_first_0',
      () => m0.as_br_table_first(),
      $f32('45732000'),
    );
    returns('as_br_table_last_0', () => m0.as_br_table_last(), 0x2);
    returns('as_store_first_0', () => m0.as_store_first(), null);
    returns('as_store_last_0', () => m0.as_store_last(), null);
    returns('as_memory_grow_value_0', () => m0.as_memory_grow_value(), 0x1);
    returns('as_return_value_0', () => m0.as_return_value(), 0x1);
    returns('as_drop_operand_0', () => m0.as_drop_operand(), null);
    returns('as_br_value_0', () => m0.as_br_value(), $f32('3F800000'));
    returns(
      'as_local_set_value_0',
      () => m0.as_local_set_value(),
      $f64('3FF0000000000000'),
    );
    returns(
      'as_local_tee_value_0',
      () => m0.as_local_tee_value(),
      $f64('3FF0000000000000'),
    );
    returns(
      'as_global_set_value_0',
      () => m0.as_global_set_value(),
      $f64('3FF0000000000000'),
    );
    returns('as_load_operand_0', () => m0.as_load_operand(), 0x1);
    returns('as_unary_operand_0', () => m0.as_unary_operand(), $f32('0'));
    returns('as_binary_left_0', () => m0.as_binary_left(), 0xB);
    returns('as_binary_right_0', () => m0.as_binary_right(), 0x9);
    returns('as_test_operand_0', () => m0.as_test_operand(), 0);
    returns('as_compare_left_0', () => m0.as_compare_left(), 0x1);
    returns('as_compare_right_0', () => m0.as_compare_right(), 0x1);
    returns('as_convert_operand_0', () => m0.as_convert_operand(), 0x1);

    // module call_indirect.1.dart (line 623)
    var m1 = call_indirect_1.CallIndirect1Module();

    returns('call_1_0', () => m1.call_1(0x2, 0x3, 0), 0x5);
    returns('call_1_1', () => m1.call_1(0x2, 0x3, 0x1), $i32('FFFFFFFF'));
    traps('call_1_2', () => m1.call_1(0x2, 0x3, 0x2), _ue);
    returns('call_2_0', () => m1.call_2(0x2, 0x3, 0), 0x6);
    returns('call_2_1', () => m1.call_2(0x2, 0x3, 0x1), 0);
    returns('call_2_2', () => m1.call_2(0x2, 0x3, 0x2), 0x2);
    traps('call_2_3', () => m1.call_2(0x2, 0x3, 0x3), _ue);
    returns('call_3_0', () => m1.call_3(0x2, 0x3, 0), $i32('FFFFFFFF'));
    returns('call_3_1', () => m1.call_3(0x2, 0x3, 0x1), 0x6);
    traps('call_3_2', () => m1.call_3(0x2, 0x3, 0x2), _ue);
    traps('call_3_3', () => m1.call_3(0x2, 0x3, 0x3), _ictm);
    traps('call_3_4', () => m1.call_3(0x2, 0x3, 0x4), _ue);

    // module call_indirect.35.dart (line 1024)
    var m2 = call_indirect_35.CallIndirect35Module();
  });
}
