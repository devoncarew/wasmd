// Generated from spec/test/core/func.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'func.0.dart' as func_0;
import 'func.1.dart' as func_1;
import 'func.4.dart' as func_4;
import 'func.5.dart' as func_5;

void main() {
  group('func', () {
    // module func.0.dart (line 3)
    var m0 = func_0.Func0Module();

    returns('type_use_1_0', () => m0.type_use_1(), null);
    returns('type_use_2_0', () => m0.type_use_2(), 0);
    returns('type_use_3_0', () => m0.type_use_3(0x1), null);
    returns(
      'type_use_4_0',
      () => m0.type_use_4(0x1, $f64('3FF0000000000000'), 0x1),
      0,
    );
    returns('type_use_5_0', () => m0.type_use_5(), 0);
    returns('type_use_6_0', () => m0.type_use_6(0x1), null);
    returns(
      'type_use_7_0',
      () => m0.type_use_7(0x1, $f64('3FF0000000000000'), 0x1),
      0,
    );
    returns('local_first_i32_0', () => m0.local_first_i32(), 0);
    returns('local_first_i64_0', () => m0.local_first_i64(), 0);
    returns('local_first_f32_0', () => m0.local_first_f32(), $f32('0'));
    returns('local_first_f64_0', () => m0.local_first_f64(), $f64('0'));
    returns('local_second_i32_0', () => m0.local_second_i32(), 0);
    returns('local_second_i64_0', () => m0.local_second_i64(), 0);
    returns('local_second_f32_0', () => m0.local_second_f32(), $f32('0'));
    returns('local_second_f64_0', () => m0.local_second_f64(), $f64('0'));
    returns('local_mixed_0', () => m0.local_mixed(), $f64('0'));
    returns('param_first_i32_0', () => m0.param_first_i32(0x2, 0x3), 0x2);
    returns('param_first_i64_0', () => m0.param_first_i64(0x2, 0x3), 0x2);
    returns(
      'param_first_f32_0',
      () => m0.param_first_f32($f32('40000000'), $f32('40400000')),
      $f32('40000000'),
    );
    returns(
      'param_first_f64_0',
      () => m0.param_first_f64($f64('4000000000000000'), $f64('4008000000000000')),
      $f64('4000000000000000'),
    );
    returns('param_second_i32_0', () => m0.param_second_i32(0x2, 0x3), 0x3);
    returns('param_second_i64_0', () => m0.param_second_i64(0x2, 0x3), 0x3);
    returns(
      'param_second_f32_0',
      () => m0.param_second_f32($f32('40000000'), $f32('40400000')),
      $f32('40400000'),
    );
    returns(
      'param_second_f64_0',
      () => m0.param_second_f64($f64('4000000000000000'), $f64('4008000000000000')),
      $f64('4008000000000000'),
    );
    returns(
      'param_mixed_0',
      () => m0.param_mixed($f32('3F800000'), 0x2, 0x3, 0x4, $f64('4016000000000000'), 0x6),
      $f64('4016000000000000'),
    );
    returns('empty_0', () => m0.empty(), null);
    returns('value_void_0', () => m0.value_void(), null);
    returns('value_i32_0', () => m0.value_i32(), 0x4D);
    returns('value_i64_0', () => m0.value_i64(), 0x1E61);
    returns('value_f32_0', () => m0.value_f32(), $f32('429B6666'));
    returns('value_f64_0', () => m0.value_f64(), $f64('40537147AE147AE1'));
    returns(
      'value_i32_f64_0',
      () => m0.value_i32_f64(),
      Tuple2(0x4D, $f64('401C000000000000')),
    );
    returns(
      'value_i32_i32_i32_0',
      () => m0.value_i32_i32_i32(),
      Tuple3(0x1, 0x2, 0x3),
    );
    returns('value_block_void_0', () => m0.value_block_void(), null);
    returns('value_block_i32_0', () => m0.value_block_i32(), 0x4D);
    returns(
      'value_block_i32_i64_0',
      () => m0.value_block_i32_i64(),
      Tuple2(0x1, 0x2),
    );
    returns('return_empty_0', () => m0.return_empty(), null);
    returns('return_i32_0', () => m0.return_i32(), 0x4E);
    returns('return_i64_0', () => m0.return_i64(), 0x1EC6);
    returns('return_f32_0', () => m0.return_f32(), $f32('429D6666'));
    returns('return_f64_0', () => m0.return_f64(), $f64('4053B1EB851EB852'));
    returns(
      'return_i32_f64_0',
      () => m0.return_i32_f64(),
      Tuple2(0x4E, $f64('4053B1EB851EB852')),
    );
    returns(
      'return_i32_i32_i32_0',
      () => m0.return_i32_i32_i32(),
      Tuple3(0x1, 0x2, 0x3),
    );
    returns('return_block_i32_0', () => m0.return_block_i32(), 0x4D);
    returns(
      'return_block_i32_i64_0',
      () => m0.return_block_i32_i64(),
      Tuple2(0x1, 0x2),
    );
    returns('break_empty_0', () => m0.break_empty(), null);
    returns('break_i32_0', () => m0.break_i32(), 0x4F);
    returns('break_i64_0', () => m0.break_i64(), 0x1F2B);
    returns('break_f32_0', () => m0.break_f32(), $f32('429FCCCD'));
    returns('break_f64_0', () => m0.break_f64(), $f64('4053F28F5C28F5C3'));
    returns(
      'break_i32_f64_0',
      () => m0.break_i32_f64(),
      Tuple2(0x4F, $f64('4053F28F5C28F5C3')),
    );
    returns(
      'break_i32_i32_i32_0',
      () => m0.break_i32_i32_i32(),
      Tuple3(0x1, 0x2, 0x3),
    );
    returns('break_block_i32_0', () => m0.break_block_i32(), 0x4D);
    returns(
      'break_block_i32_i64_0',
      () => m0.break_block_i32_i64(),
      Tuple2(0x1, 0x2),
    );
    returns('break_br_if_empty_0', () => m0.break_br_if_empty(0), null);
    returns('break_br_if_empty_1', () => m0.break_br_if_empty(0x2), null);
    returns('break_br_if_num_0', () => m0.break_br_if_num(0), 0x33);
    returns('break_br_if_num_1', () => m0.break_br_if_num(0x1), 0x32);
    returns(
      'break_br_if_num_num_0',
      () => m0.break_br_if_num_num(0),
      Tuple2(0x33, 0x34),
    );
    returns(
      'break_br_if_num_num_1',
      () => m0.break_br_if_num_num(0x1),
      Tuple2(0x32, 0x33),
    );
    returns('break_br_table_empty_0', () => m0.break_br_table_empty(0), null);
    returns('break_br_table_empty_1', () => m0.break_br_table_empty(0x1), null);
    returns('break_br_table_empty_2', () => m0.break_br_table_empty(0x5), null);
    returns(
      'break_br_table_empty_3',
      () => m0.break_br_table_empty($i32('FFFFFFFF')),
      null,
    );
    returns('break_br_table_num_0', () => m0.break_br_table_num(0), 0x32);
    returns('break_br_table_num_1', () => m0.break_br_table_num(0x1), 0x32);
    returns('break_br_table_num_2', () => m0.break_br_table_num(0xA), 0x32);
    returns(
      'break_br_table_num_3',
      () => m0.break_br_table_num($i32('FFFFFF9C')),
      0x32,
    );
    returns(
      'break_br_table_num_num_0',
      () => m0.break_br_table_num_num(0),
      Tuple2(0x32, 0x33),
    );
    returns(
      'break_br_table_num_num_1',
      () => m0.break_br_table_num_num(0x1),
      Tuple2(0x32, 0x33),
    );
    returns(
      'break_br_table_num_num_2',
      () => m0.break_br_table_num_num(0xA),
      Tuple2(0x32, 0x33),
    );
    returns(
      'break_br_table_num_num_3',
      () => m0.break_br_table_num_num($i32('FFFFFF9C')),
      Tuple2(0x32, 0x33),
    );
    returns(
      'break_br_table_nested_empty_0',
      () => m0.break_br_table_nested_empty(0),
      null,
    );
    returns(
      'break_br_table_nested_empty_1',
      () => m0.break_br_table_nested_empty(0x1),
      null,
    );
    returns(
      'break_br_table_nested_empty_2',
      () => m0.break_br_table_nested_empty(0x3),
      null,
    );
    returns(
      'break_br_table_nested_empty_3',
      () => m0.break_br_table_nested_empty($i32('FFFFFFFE')),
      null,
    );
    returns(
      'break_br_table_nested_num_0',
      () => m0.break_br_table_nested_num(0),
      0x34,
    );
    returns(
      'break_br_table_nested_num_1',
      () => m0.break_br_table_nested_num(0x1),
      0x32,
    );
    returns(
      'break_br_table_nested_num_2',
      () => m0.break_br_table_nested_num(0x2),
      0x34,
    );
    returns(
      'break_br_table_nested_num_3',
      () => m0.break_br_table_nested_num($i32('FFFFFFFD')),
      0x34,
    );
    returns(
      'break_br_table_nested_num_num_0',
      () => m0.break_br_table_nested_num_num(0),
      Tuple2(0x65, 0x34),
    );
    returns(
      'break_br_table_nested_num_num_1',
      () => m0.break_br_table_nested_num_num(0x1),
      Tuple2(0x32, 0x33),
    );
    returns(
      'break_br_table_nested_num_num_2',
      () => m0.break_br_table_nested_num_num(0x2),
      Tuple2(0x65, 0x34),
    );
    returns(
      'break_br_table_nested_num_num_3',
      () => m0.break_br_table_nested_num_num($i32('FFFFFFFD')),
      Tuple2(0x65, 0x34),
    );
    returns(
      'large_sig_0',
      () => m0.large_sig(
          0,
          0x1,
          $f32('40000000'),
          $f32('40400000'),
          0x4,
          $f64('4014000000000000'),
          $f32('40C00000'),
          0x7,
          0x8,
          0x9,
          $f32('41200000'),
          $f64('4026000000000000'),
          $f64('4028000000000000'),
          $f64('402A000000000000'),
          0xE,
          0xF,
          $f32('41800000')),
      Tuple16(
          $f64('4014000000000000'),
          $f32('40000000'),
          0,
          0x8,
          0x7,
          0x1,
          $f32('40400000'),
          0x9,
          0x4,
          $f32('40C00000'),
          $f64('402A000000000000'),
          $f64('4026000000000000'),
          0xF,
          $f32('41800000'),
          0xE,
          $f64('4028000000000000')),
    );
    returns('init_local_i32_0', () => m0.init_local_i32(), 0);
    returns('init_local_i64_0', () => m0.init_local_i64(), 0);
    returns('init_local_f32_0', () => m0.init_local_f32(), $f32('0'));
    returns('init_local_f64_0', () => m0.init_local_f64(), $f64('0'));

    // module func.1.dart (line 422)
    var m1 = func_1.Func1Module();

    // module func.4.dart (line 459)
    var m2 = func_4.Func4Module();

    returns('f_0', () => m2.f(0x2A), 0);
    returns('g_0', () => m2.g(0x2A), 0);
    returns('p_0', () => m2.p(), 0x2A);

    // module func.5.dart (line 488)
    var m3 = func_5.Func5Module();

    returns(
      'signature_explicit_reused_0',
      () => m3.signature_explicit_reused(),
      null,
    );
    returns(
      'signature_implicit_reused_0',
      () => m3.signature_implicit_reused(),
      null,
    );
    returns(
      'signature_explicit_duplicate_0',
      () => m3.signature_explicit_duplicate(),
      null,
    );
    returns(
      'signature_implicit_duplicate_0',
      () => m3.signature_implicit_duplicate(),
      null,
    );
  });
}
