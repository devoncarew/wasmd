// Generated from spec/test/core/float_literals.wast.

// ignore_for_file: non_constant_identifier_names, unused_local_variable

import '../../src/infra.dart';
import 'float_literals.0.dart' as float_literals_0;
import 'float_literals.1.dart' as float_literals_1;

void main() {
  group('float_literals', () {
    // module float_literals.0.dart (line 3)
    var m0 = float_literals_0.FloatLiterals0Module();

    returns('f32_nan_0', () => m0.f32_nan(), i32('7FC00000'));
    returns('f32_positive_nan_0', () => m0.f32_positive_nan(), i32('7FC00000'));
    returns('f32_negative_nan_0', () => m0.f32_negative_nan(), i32('FFC00000'));
    returns('f32_plain_nan_0', () => m0.f32_plain_nan(), i32('7FC00000'));
    returns(
      'f32_informally_known_as_plain_snan_0',
      () => m0.f32_informally_known_as_plain_snan(),
      i32('7FA00000'),
    );
    returns('f32_all_ones_nan_0', () => m0.f32_all_ones_nan(), i32('FFFFFFFF'));
    returns('f32_misc_nan_0', () => m0.f32_misc_nan(), i32('7F812345'));
    returns(
      'f32_misc_positive_nan_0',
      () => m0.f32_misc_positive_nan(),
      i32('7FB04050'),
    );
    returns(
      'f32_misc_negative_nan_0',
      () => m0.f32_misc_negative_nan(),
      i32('FFAABCDE'),
    );
    returns('f32_infinity_0', () => m0.f32_infinity(), i32('7F800000'));
    returns(
      'f32_positive_infinity_0',
      () => m0.f32_positive_infinity(),
      i32('7F800000'),
    );
    returns(
      'f32_negative_infinity_0',
      () => m0.f32_negative_infinity(),
      i32('FF800000'),
    );
    returns('f32_zero_0', () => m0.f32_zero(), 0);
    returns('f32_positive_zero_0', () => m0.f32_positive_zero(), 0);
    returns(
      'f32_negative_zero_0',
      () => m0.f32_negative_zero(),
      i32('80000000'),
    );
    returns('f32_misc_0', () => m0.f32_misc(), i32('40C90FDB'));
    returns('f32_min_positive_0', () => m0.f32_min_positive(), 0x1);
    returns('f32_min_normal_0', () => m0.f32_min_normal(), i32('800000'));
    returns('f32_max_subnormal_0', () => m0.f32_max_subnormal(), i32('7FFFFF'));
    returns('f32_max_finite_0', () => m0.f32_max_finite(), i32('7F7FFFFF'));
    returns('f32_trailing_dot_0', () => m0.f32_trailing_dot(), i32('44800000'));
    returns('f32_dec_zero_0', () => m0.f32_dec_zero(), 0);
    returns('f32_dec_positive_zero_0', () => m0.f32_dec_positive_zero(), 0);
    returns(
      'f32_dec_negative_zero_0',
      () => m0.f32_dec_negative_zero(),
      i32('80000000'),
    );
    returns('f32_dec_misc_0', () => m0.f32_dec_misc(), i32('40C90FDB'));
    returns('f32_dec_min_positive_0', () => m0.f32_dec_min_positive(), 0x1);
    returns(
      'f32_dec_min_normal_0',
      () => m0.f32_dec_min_normal(),
      i32('800000'),
    );
    returns(
      'f32_dec_max_subnormal_0',
      () => m0.f32_dec_max_subnormal(),
      i32('7FFFFF'),
    );
    returns(
      'f32_dec_max_finite_0',
      () => m0.f32_dec_max_finite(),
      i32('7F7FFFFF'),
    );
    returns(
      'f32_dec_trailing_dot_0',
      () => m0.f32_dec_trailing_dot(),
      i32('501502F9'),
    );
    returns(
      'f32_dec_root_beer_float_0',
      () => m0.f32_dec_root_beer_float(),
      i32('3F800001'),
    );
    returns('f64_nan_0', () => m0.f64_nan(), i64('7FF8000000000000'));
    returns(
      'f64_positive_nan_0',
      () => m0.f64_positive_nan(),
      i64('7FF8000000000000'),
    );
    returns(
      'f64_negative_nan_0',
      () => m0.f64_negative_nan(),
      i64('FFF8000000000000'),
    );
    returns(
      'f64_plain_nan_0',
      () => m0.f64_plain_nan(),
      i64('7FF8000000000000'),
    );
    returns(
      'f64_informally_known_as_plain_snan_0',
      () => m0.f64_informally_known_as_plain_snan(),
      i64('7FF4000000000000'),
    );
    returns(
      'f64_all_ones_nan_0',
      () => m0.f64_all_ones_nan(),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns('f64_misc_nan_0', () => m0.f64_misc_nan(), i64('7FF0123456789ABC'));
    returns(
      'f64_misc_positive_nan_0',
      () => m0.f64_misc_positive_nan(),
      i64('7FF3040506070809'),
    );
    returns(
      'f64_misc_negative_nan_0',
      () => m0.f64_misc_negative_nan(),
      i64('FFF2ABCDEF012345'),
    );
    returns('f64_infinity_0', () => m0.f64_infinity(), i64('7FF0000000000000'));
    returns(
      'f64_positive_infinity_0',
      () => m0.f64_positive_infinity(),
      i64('7FF0000000000000'),
    );
    returns(
      'f64_negative_infinity_0',
      () => m0.f64_negative_infinity(),
      i64('FFF0000000000000'),
    );
    returns('f64_zero_0', () => m0.f64_zero(), 0);
    returns('f64_positive_zero_0', () => m0.f64_positive_zero(), 0);
    returns(
      'f64_negative_zero_0',
      () => m0.f64_negative_zero(),
      i64('8000000000000000'),
    );
    returns('f64_misc_0', () => m0.f64_misc(), i64('401921FB54442D18'));
    returns('f64_min_positive_0', () => m0.f64_min_positive(), 0x1);
    returns(
      'f64_min_normal_0',
      () => m0.f64_min_normal(),
      i64('10000000000000'),
    );
    returns(
      'f64_max_subnormal_0',
      () => m0.f64_max_subnormal(),
      i64('FFFFFFFFFFFFF'),
    );
    returns(
      'f64_max_finite_0',
      () => m0.f64_max_finite(),
      i64('7FEFFFFFFFFFFFFF'),
    );
    returns(
      'f64_trailing_dot_0',
      () => m0.f64_trailing_dot(),
      i64('4630000000000000'),
    );
    returns('f64_dec_zero_0', () => m0.f64_dec_zero(), 0);
    returns('f64_dec_positive_zero_0', () => m0.f64_dec_positive_zero(), 0);
    returns(
      'f64_dec_negative_zero_0',
      () => m0.f64_dec_negative_zero(),
      i64('8000000000000000'),
    );
    returns('f64_dec_misc_0', () => m0.f64_dec_misc(), i64('401921FB54442D18'));
    returns('f64_dec_min_positive_0', () => m0.f64_dec_min_positive(), 0x1);
    returns(
      'f64_dec_min_normal_0',
      () => m0.f64_dec_min_normal(),
      i64('10000000000000'),
    );
    returns(
      'f64_dec_max_subnormal_0',
      () => m0.f64_dec_max_subnormal(),
      i64('FFFFFFFFFFFFF'),
    );
    returns(
      'f64_dec_max_finite_0',
      () => m0.f64_dec_max_finite(),
      i64('7FEFFFFFFFFFFFFF'),
    );
    returns(
      'f64_dec_trailing_dot_0',
      () => m0.f64_dec_trailing_dot(),
      i64('54B249AD2594C37D'),
    );
    returns(
      'f64_dec_root_beer_float_0',
      () => m0.f64_dec_root_beer_float(),
      i64('3FF000001FF19E24'),
    );
    returns('f32_dec_sep1_0', () => m0.f32_dec_sep1(), f32('49742400'));
    returns('f32_dec_sep2_0', () => m0.f32_dec_sep2(), f32('447A0000'));
    returns('f32_dec_sep3_0', () => m0.f32_dec_sep3(), f32('447AC910'));
    returns('f32_dec_sep4_0', () => m0.f32_dec_sep4(), f32('58611996'));
    returns('f32_dec_sep5_0', () => m0.f32_dec_sep5(), f32('6E1DAE74'));
    returns('f32_hex_sep1_0', () => m0.f32_hex_sep1(), f32('4D20F00A'));
    returns('f32_hex_sep2_0', () => m0.f32_hex_sep2(), f32('47D50780'));
    returns('f32_hex_sep3_0', () => m0.f32_hex_sep3(), f32('4720FFF1'));
    returns('f32_hex_sep4_0', () => m0.f32_hex_sep4(), f32('49F00000'));
    returns('f32_hex_sep5_0', () => m0.f32_hex_sep5(), f32('55ABC028'));
    returns('f64_dec_sep1_0', () => m0.f64_dec_sep1(), f64('412E848000000000'));
    returns('f64_dec_sep2_0', () => m0.f64_dec_sep2(), f64('408F400000000000'));
    returns('f64_dec_sep3_0', () => m0.f64_dec_sep3(), f64('408F5921FAFC8B00'));
    returns('f64_dec_sep4_0', () => m0.f64_dec_sep4(), f64('26D05C735BB7CC45'));
    returns('f64_dec_sep5_0', () => m0.f64_dec_sep5(), f64('45C3B5CE725BDE9C'));
    returns('f64_hex_sep1_0', () => m0.f64_hex_sep1(), f64('4325E01E00013332'));
    returns('f64_hex_sep2_0', () => m0.f64_hex_sep2(), f64('40FAA0F000000000'));
    returns('f64_hex_sep3_0', () => m0.f64_hex_sep3(), f64('40E41FFE2834B340'));
    returns('f64_hex_sep4_0', () => m0.f64_hex_sep4(), f64('413E000000000000'));
    returns('f64_hex_sep5_0', () => m0.f64_hex_sep5(), f64('42B578050F9F7000'));

    // module float_literals.1.dart (line 192)
    var m1 = float_literals_1.FloatLiterals1Module();

    returns('4294967249_0', () => m1.$4294967249(), f64('41EFFFFFFA200000'));
  });
}
