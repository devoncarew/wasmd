// Generated from spec/test/core/int_exprs.wast.

// ignore_for_file: non_constant_identifier_names, unused_local_variable

import '../../src/infra.dart';
import 'int_exprs.0.dart' as int_exprs_0;
import 'int_exprs.1.dart' as int_exprs_1;
import 'int_exprs.10.dart' as int_exprs_10;
import 'int_exprs.11.dart' as int_exprs_11;
import 'int_exprs.12.dart' as int_exprs_12;
import 'int_exprs.13.dart' as int_exprs_13;
import 'int_exprs.14.dart' as int_exprs_14;
import 'int_exprs.15.dart' as int_exprs_15;
import 'int_exprs.16.dart' as int_exprs_16;
import 'int_exprs.17.dart' as int_exprs_17;
import 'int_exprs.18.dart' as int_exprs_18;
import 'int_exprs.2.dart' as int_exprs_2;
import 'int_exprs.3.dart' as int_exprs_3;
import 'int_exprs.4.dart' as int_exprs_4;
import 'int_exprs.5.dart' as int_exprs_5;
import 'int_exprs.6.dart' as int_exprs_6;
import 'int_exprs.7.dart' as int_exprs_7;
import 'int_exprs.8.dart' as int_exprs_8;
import 'int_exprs.9.dart' as int_exprs_9;

const String _idbz = 'integer divide by zero';
const String _io = 'integer overflow';

void main() {
  group('int_exprs', () {
    // module int_exprs.0.dart (line 6)
    var m0 = int_exprs_0.IntExprs0Module();

    returns(
      'i32_no_fold_cmp_s_offset_0',
      () => m0.i32_no_fold_cmp_s_offset(i32('7FFFFFFF'), 0),
      0x1,
    );
    returns(
      'i32_no_fold_cmp_u_offset_0',
      () => m0.i32_no_fold_cmp_u_offset(i32('FFFFFFFF'), 0),
      0x1,
    );
    returns(
      'i64_no_fold_cmp_s_offset_0',
      () => m0.i64_no_fold_cmp_s_offset(i64('7FFFFFFFFFFFFFFF'), 0),
      0x1,
    );
    returns(
      'i64_no_fold_cmp_u_offset_0',
      () => m0.i64_no_fold_cmp_u_offset(i64('FFFFFFFFFFFFFFFF'), 0),
      0x1,
    );

    // module int_exprs.1.dart (line 25)
    var m1 = int_exprs_1.IntExprs1Module();

    returns(
      'i64_no_fold_wrap_extend_s_0',
      () => m1.i64_no_fold_wrap_extend_s(i64('10203040506070')),
      i64('40506070'),
    );
    returns(
      'i64_no_fold_wrap_extend_s_1',
      () => m1.i64_no_fold_wrap_extend_s(i64('A0B0C0D0E0F0A0')),
      i64('FFFFFFFFD0E0F0A0'),
    );

    // module int_exprs.2.dart (line 35)
    var m2 = int_exprs_2.IntExprs2Module();

    returns(
      'i64_no_fold_wrap_extend_u_0',
      () => m2.i64_no_fold_wrap_extend_u(i64('10203040506070')),
      i64('40506070'),
    );

    // module int_exprs.3.dart (line 44)
    var m3 = int_exprs_3.IntExprs3Module();

    returns(
      'i32_no_fold_shl_shr_s_0',
      () => m3.i32_no_fold_shl_shr_s(i32('80000000')),
      0,
    );
    returns(
      'i32_no_fold_shl_shr_u_0',
      () => m3.i32_no_fold_shl_shr_u(i32('80000000')),
      0,
    );
    returns(
      'i64_no_fold_shl_shr_s_0',
      () => m3.i64_no_fold_shl_shr_s(i64('8000000000000000')),
      0,
    );
    returns(
      'i64_no_fold_shl_shr_u_0',
      () => m3.i64_no_fold_shl_shr_u(i64('8000000000000000')),
      0,
    );

    // module int_exprs.4.dart (line 63)
    var m4 = int_exprs_4.IntExprs4Module();

    returns('i32_no_fold_shr_s_shl_0', () => m4.i32_no_fold_shr_s_shl(0x1), 0);
    returns('i32_no_fold_shr_u_shl_0', () => m4.i32_no_fold_shr_u_shl(0x1), 0);
    returns('i64_no_fold_shr_s_shl_0', () => m4.i64_no_fold_shr_s_shl(0x1), 0);
    returns('i64_no_fold_shr_u_shl_0', () => m4.i64_no_fold_shr_u_shl(0x1), 0);

    // module int_exprs.5.dart (line 82)
    var m5 = int_exprs_5.IntExprs5Module();

    returns('i32_no_fold_div_s_mul_0', () => m5.i32_no_fold_div_s_mul(0x1), 0);
    returns('i32_no_fold_div_u_mul_0', () => m5.i32_no_fold_div_u_mul(0x1), 0);
    returns('i64_no_fold_div_s_mul_0', () => m5.i64_no_fold_div_s_mul(0x1), 0);
    returns('i64_no_fold_div_u_mul_0', () => m5.i64_no_fold_div_u_mul(0x1), 0);

    // module int_exprs.6.dart (line 101)
    var m6 = int_exprs_6.IntExprs6Module();

    traps(
      'i32_no_fold_div_s_self_0',
      () => m6.i32_no_fold_div_s_self(0),
      _idbz,
    );
    traps(
      'i32_no_fold_div_u_self_0',
      () => m6.i32_no_fold_div_u_self(0),
      _idbz,
    );
    traps(
      'i64_no_fold_div_s_self_0',
      () => m6.i64_no_fold_div_s_self(0),
      _idbz,
    );
    traps(
      'i64_no_fold_div_u_self_0',
      () => m6.i64_no_fold_div_u_self(0),
      _idbz,
    );

    // module int_exprs.7.dart (line 120)
    var m7 = int_exprs_7.IntExprs7Module();

    traps(
      'i32_no_fold_rem_s_self_0',
      () => m7.i32_no_fold_rem_s_self(0),
      _idbz,
    );
    traps(
      'i32_no_fold_rem_u_self_0',
      () => m7.i32_no_fold_rem_u_self(0),
      _idbz,
    );
    traps(
      'i64_no_fold_rem_s_self_0',
      () => m7.i64_no_fold_rem_s_self(0),
      _idbz,
    );
    traps(
      'i64_no_fold_rem_u_self_0',
      () => m7.i64_no_fold_rem_u_self(0),
      _idbz,
    );

    // module int_exprs.8.dart (line 139)
    var m8 = int_exprs_8.IntExprs8Module();

    returns(
      'i32_no_fold_mul_div_s_0',
      () => m8.i32_no_fold_mul_div_s(i32('80000000')),
      0,
    );
    returns(
      'i32_no_fold_mul_div_u_0',
      () => m8.i32_no_fold_mul_div_u(i32('80000000')),
      0,
    );
    returns(
      'i64_no_fold_mul_div_s_0',
      () => m8.i64_no_fold_mul_div_s(i64('8000000000000000')),
      0,
    );
    returns(
      'i64_no_fold_mul_div_u_0',
      () => m8.i64_no_fold_mul_div_u(i64('8000000000000000')),
      0,
    );

    // module int_exprs.9.dart (line 158)
    var m9 = int_exprs_9.IntExprs9Module();

    returns(
      'i32_no_fold_div_s_2_0',
      () => m9.i32_no_fold_div_s_2(i32('FFFFFFF5')),
      i32('FFFFFFFB'),
    );
    returns(
      'i64_no_fold_div_s_2_0',
      () => m9.i64_no_fold_div_s_2(i64('FFFFFFFFFFFFFFF5')),
      i64('FFFFFFFFFFFFFFFB'),
    );

    // module int_exprs.10.dart (line 171)
    var m10 = int_exprs_10.IntExprs10Module();

    returns(
      'i32_no_fold_rem_s_2_0',
      () => m10.i32_no_fold_rem_s_2(i32('FFFFFFF5')),
      i32('FFFFFFFF'),
    );
    returns(
      'i64_no_fold_rem_s_2_0',
      () => m10.i64_no_fold_rem_s_2(i64('FFFFFFFFFFFFFFF5')),
      i64('FFFFFFFFFFFFFFFF'),
    );

    // module int_exprs.11.dart (line 184)
    var m11 = int_exprs_11.IntExprs11Module();

    traps('i32_div_s_0_0', () => m11.i32_div_s_0(0x47), _idbz);
    traps('i32_div_u_0_0', () => m11.i32_div_u_0(0x47), _idbz);
    traps('i64_div_s_0_0', () => m11.i64_div_s_0(0x47), _idbz);
    traps('i64_div_u_0_0', () => m11.i64_div_u_0(0x47), _idbz);

    // module int_exprs.12.dart (line 203)
    var m12 = int_exprs_12.IntExprs12Module();

    returns('i32_div_s_3_0', () => m12.i32_div_s_3(0x47), 0x17);
    returns(
      'i32_div_s_3_1',
      () => m12.i32_div_s_3(i32('60000000')),
      i32('20000000'),
    );
    returns('i32_div_u_3_0', () => m12.i32_div_u_3(0x47), 0x17);
    returns(
      'i32_div_u_3_1',
      () => m12.i32_div_u_3(i32('C0000000')),
      i32('40000000'),
    );
    returns('i64_div_s_3_0', () => m12.i64_div_s_3(0x47), 0x17);
    returns(
      'i64_div_s_3_1',
      () => m12.i64_div_s_3(i64('3000000000000000')),
      i64('1000000000000000'),
    );
    returns('i64_div_u_3_0', () => m12.i64_div_u_3(0x47), 0x17);
    returns(
      'i64_div_u_3_1',
      () => m12.i64_div_u_3(i64('C000000000000000')),
      i64('4000000000000000'),
    );

    // module int_exprs.13.dart (line 226)
    var m13 = int_exprs_13.IntExprs13Module();

    returns('i32_div_s_5_0', () => m13.i32_div_s_5(0x47), 0xE);
    returns(
      'i32_div_s_5_1',
      () => m13.i32_div_s_5(i32('50000000')),
      i32('10000000'),
    );
    returns('i32_div_u_5_0', () => m13.i32_div_u_5(0x47), 0xE);
    returns(
      'i32_div_u_5_1',
      () => m13.i32_div_u_5(i32('A0000000')),
      i32('20000000'),
    );
    returns('i64_div_s_5_0', () => m13.i64_div_s_5(0x47), 0xE);
    returns(
      'i64_div_s_5_1',
      () => m13.i64_div_s_5(i64('5000000000000000')),
      i64('1000000000000000'),
    );
    returns('i64_div_u_5_0', () => m13.i64_div_u_5(0x47), 0xE);
    returns(
      'i64_div_u_5_1',
      () => m13.i64_div_u_5(i64('A000000000000000')),
      i64('2000000000000000'),
    );

    // module int_exprs.14.dart (line 249)
    var m14 = int_exprs_14.IntExprs14Module();

    returns('i32_div_s_7_0', () => m14.i32_div_s_7(0x47), 0xA);
    returns(
      'i32_div_s_7_1',
      () => m14.i32_div_s_7(i32('70000000')),
      i32('10000000'),
    );
    returns('i32_div_u_7_0', () => m14.i32_div_u_7(0x47), 0xA);
    returns(
      'i32_div_u_7_1',
      () => m14.i32_div_u_7(i32('E0000000')),
      i32('20000000'),
    );
    returns('i64_div_s_7_0', () => m14.i64_div_s_7(0x47), 0xA);
    returns(
      'i64_div_s_7_1',
      () => m14.i64_div_s_7(i64('7000000000000000')),
      i64('1000000000000000'),
    );
    returns('i64_div_u_7_0', () => m14.i64_div_u_7(0x47), 0xA);
    returns(
      'i64_div_u_7_1',
      () => m14.i64_div_u_7(i64('E000000000000000')),
      i64('2000000000000000'),
    );

    // module int_exprs.15.dart (line 272)
    var m15 = int_exprs_15.IntExprs15Module();

    returns('i32_rem_s_3_0', () => m15.i32_rem_s_3(0x47), 0x2);
    returns('i32_rem_s_3_1', () => m15.i32_rem_s_3(i32('60000000')), 0);
    returns('i32_rem_u_3_0', () => m15.i32_rem_u_3(0x47), 0x2);
    returns('i32_rem_u_3_1', () => m15.i32_rem_u_3(i32('C0000000')), 0);
    returns('i64_rem_s_3_0', () => m15.i64_rem_s_3(0x47), 0x2);
    returns('i64_rem_s_3_1', () => m15.i64_rem_s_3(i64('3000000000000000')), 0);
    returns('i64_rem_u_3_0', () => m15.i64_rem_u_3(0x47), 0x2);
    returns('i64_rem_u_3_1', () => m15.i64_rem_u_3(i64('C000000000000000')), 0);

    // module int_exprs.16.dart (line 295)
    var m16 = int_exprs_16.IntExprs16Module();

    returns('i32_rem_s_5_0', () => m16.i32_rem_s_5(0x47), 0x1);
    returns('i32_rem_s_5_1', () => m16.i32_rem_s_5(i32('50000000')), 0);
    returns('i32_rem_u_5_0', () => m16.i32_rem_u_5(0x47), 0x1);
    returns('i32_rem_u_5_1', () => m16.i32_rem_u_5(i32('A0000000')), 0);
    returns('i64_rem_s_5_0', () => m16.i64_rem_s_5(0x47), 0x1);
    returns('i64_rem_s_5_1', () => m16.i64_rem_s_5(i64('5000000000000000')), 0);
    returns('i64_rem_u_5_0', () => m16.i64_rem_u_5(0x47), 0x1);
    returns('i64_rem_u_5_1', () => m16.i64_rem_u_5(i64('A000000000000000')), 0);

    // module int_exprs.17.dart (line 318)
    var m17 = int_exprs_17.IntExprs17Module();

    returns('i32_rem_s_7_0', () => m17.i32_rem_s_7(0x47), 0x1);
    returns('i32_rem_s_7_1', () => m17.i32_rem_s_7(i32('70000000')), 0);
    returns('i32_rem_u_7_0', () => m17.i32_rem_u_7(0x47), 0x1);
    returns('i32_rem_u_7_1', () => m17.i32_rem_u_7(i32('E0000000')), 0);
    returns('i64_rem_s_7_0', () => m17.i64_rem_s_7(0x47), 0x1);
    returns('i64_rem_s_7_1', () => m17.i64_rem_s_7(i64('7000000000000000')), 0);
    returns('i64_rem_u_7_0', () => m17.i64_rem_u_7(0x47), 0x1);
    returns('i64_rem_u_7_1', () => m17.i64_rem_u_7(i64('E000000000000000')), 0);

    // module int_exprs.18.dart (line 341)
    var m18 = int_exprs_18.IntExprs18Module();

    traps(
      'i32_no_fold_div_neg1_0',
      () => m18.i32_no_fold_div_neg1(i32('80000000')),
      _io,
    );
    traps(
      'i64_no_fold_div_neg1_0',
      () => m18.i64_no_fold_div_neg1(i64('8000000000000000')),
      _io,
    );
  });
}
