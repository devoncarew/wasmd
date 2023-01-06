// Generated from spec/test/core/int_literals.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'int_literals.0.dart' as int_literals_0;

void main() {
  group('int_literals', () {
    // module int_literals.0.dart (line 1)
    var m0 = int_literals_0.IntLiterals0Module();

    returns('i32_test_0', () => m0.i32_test(), $i32('BADD00D'));
    returns('i32_umax_0', () => m0.i32_umax(), $i32('FFFFFFFF'));
    returns('i32_smax_0', () => m0.i32_smax(), $i32('7FFFFFFF'));
    returns('i32_neg_smax_0', () => m0.i32_neg_smax(), $i32('80000001'));
    returns('i32_smin_0', () => m0.i32_smin(), $i32('80000000'));
    returns('i32_alt_smin_0', () => m0.i32_alt_smin(), $i32('80000000'));
    returns('i32_inc_smin_0', () => m0.i32_inc_smin(), $i32('80000001'));
    returns('i32_neg_zero_0', () => m0.i32_neg_zero(), 0);
    returns('i32_not_octal_0', () => m0.i32_not_octal(), 0xA);
    returns(
      'i32_unsigned_decimal_0',
      () => m0.i32_unsigned_decimal(),
      $i32('FFFFFFFF'),
    );
    returns('i32_plus_sign_0', () => m0.i32_plus_sign(), 0x2A);
    returns('i64_test_0', () => m0.i64_test(), $i64('CABBA6E0BA66A6E'));
    returns('i64_umax_0', () => m0.i64_umax(), $i64('FFFFFFFFFFFFFFFF'));
    returns('i64_smax_0', () => m0.i64_smax(), $i64('7FFFFFFFFFFFFFFF'));
    returns(
      'i64_neg_smax_0',
      () => m0.i64_neg_smax(),
      $i64('8000000000000001'),
    );
    returns('i64_smin_0', () => m0.i64_smin(), $i64('8000000000000000'));
    returns(
      'i64_alt_smin_0',
      () => m0.i64_alt_smin(),
      $i64('8000000000000000'),
    );
    returns(
      'i64_inc_smin_0',
      () => m0.i64_inc_smin(),
      $i64('8000000000000001'),
    );
    returns('i64_neg_zero_0', () => m0.i64_neg_zero(), 0);
    returns('i64_not_octal_0', () => m0.i64_not_octal(), 0xA);
    returns(
      'i64_unsigned_decimal_0',
      () => m0.i64_unsigned_decimal(),
      $i64('FFFFFFFFFFFFFFFF'),
    );
    returns('i64_plus_sign_0', () => m0.i64_plus_sign(), 0x2A);
    returns('i32_dec_sep1_0', () => m0.i32_dec_sep1(), $i32('F4240'));
    returns('i32_dec_sep2_0', () => m0.i32_dec_sep2(), 0x3E8);
    returns('i32_hex_sep1_0', () => m0.i32_hex_sep1(), $i32('A0F0099'));
    returns('i32_hex_sep2_0', () => m0.i32_hex_sep2(), 0x1AA0F);
    returns('i64_dec_sep1_0', () => m0.i64_dec_sep1(), $i64('F4240'));
    returns('i64_dec_sep2_0', () => m0.i64_dec_sep2(), 0x3E8);
    returns('i64_hex_sep1_0', () => m0.i64_hex_sep1(), $i64('AF00F00009999'));
    returns('i64_hex_sep2_0', () => m0.i64_hex_sep2(), 0x1AA0F);
  });
}
