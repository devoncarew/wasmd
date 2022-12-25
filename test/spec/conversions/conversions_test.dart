// Generated from spec/test/core/conversions.wast.

// ignore_for_file: unused_local_variable

import '../../src/spec_infra.dart';
import 'conversions.0.dart' as conversions_0;

const String _io = 'integer overflow';
const String _icti = 'invalid conversion to integer';

void main() {
  group('conversions', () {
    // module conversions.0.dart
    var m0 = conversions_0.Module();

    returns('i64_extend_i32_s_0', () => m0.i64_extend_i32_s(0), 0);
    returns('i64_extend_i32_s_1', () => m0.i64_extend_i32_s(0x2710), 0x2710);
    returns(
      'i64_extend_i32_s_2',
      () => m0.i64_extend_i32_s(i32('FFFFD8F0')),
      i64('FFFFFFFFFFFFD8F0'),
    );
    returns(
      'i64_extend_i32_s_3',
      () => m0.i64_extend_i32_s(i32('FFFFFFFF')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_extend_i32_s_4',
      () => m0.i64_extend_i32_s(i32('7FFFFFFF')),
      i64('7FFFFFFF'),
    );
    returns(
      'i64_extend_i32_s_5',
      () => m0.i64_extend_i32_s(i32('80000000')),
      i64('FFFFFFFF80000000'),
    );
    returns('i64_extend_i32_u_0', () => m0.i64_extend_i32_u(0), 0);
    returns('i64_extend_i32_u_1', () => m0.i64_extend_i32_u(0x2710), 0x2710);
    returns(
      'i64_extend_i32_u_2',
      () => m0.i64_extend_i32_u(i32('FFFFD8F0')),
      i64('FFFFD8F0'),
    );
    returns(
      'i64_extend_i32_u_3',
      () => m0.i64_extend_i32_u(i32('FFFFFFFF')),
      i64('FFFFFFFF'),
    );
    returns(
      'i64_extend_i32_u_4',
      () => m0.i64_extend_i32_u(i32('7FFFFFFF')),
      i64('7FFFFFFF'),
    );
    returns(
      'i64_extend_i32_u_5',
      () => m0.i64_extend_i32_u(i32('80000000')),
      i64('80000000'),
    );
    returns(
      'i32_wrap_i64_0',
      () => m0.i32_wrap_i64(i64('FFFFFFFFFFFFFFFF')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_wrap_i64_1',
      () => m0.i32_wrap_i64(i64('FFFFFFFFFFFE7960')),
      i32('FFFE7960'),
    );
    returns(
      'i32_wrap_i64_2',
      () => m0.i32_wrap_i64(i64('80000000')),
      i32('80000000'),
    );
    returns(
      'i32_wrap_i64_3',
      () => m0.i32_wrap_i64(i64('FFFFFFFF7FFFFFFF')),
      i32('7FFFFFFF'),
    );
    returns(
      'i32_wrap_i64_4',
      () => m0.i32_wrap_i64(i64('FFFFFFFF00000000')),
      0,
    );
    returns(
      'i32_wrap_i64_5',
      () => m0.i32_wrap_i64(i64('FFFFFFFEFFFFFFFF')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_wrap_i64_6',
      () => m0.i32_wrap_i64(i64('FFFFFFFF00000001')),
      0x1,
    );
    returns('i32_wrap_i64_7', () => m0.i32_wrap_i64(0), 0);
    returns(
      'i32_wrap_i64_8',
      () => m0.i32_wrap_i64(i64('123456789ABCDEF0')),
      i32('9ABCDEF0'),
    );
    returns(
      'i32_wrap_i64_9',
      () => m0.i32_wrap_i64(i64('FFFFFFFF')),
      i32('FFFFFFFF'),
    );
    returns('i32_wrap_i64_10', () => m0.i32_wrap_i64(i64('100000000')), 0);
    returns('i32_wrap_i64_11', () => m0.i32_wrap_i64(i64('100000001')), 0x1);
    returns('i32_trunc_f32_s_0', () => m0.i32_trunc_f32_s(f32('0')), 0);
    returns('i32_trunc_f32_s_1', () => m0.i32_trunc_f32_s(f32('80000000')), 0);
    returns('i32_trunc_f32_s_2', () => m0.i32_trunc_f32_s(f32('1')), 0);
    returns('i32_trunc_f32_s_3', () => m0.i32_trunc_f32_s(f32('80000001')), 0);
    returns(
      'i32_trunc_f32_s_4',
      () => m0.i32_trunc_f32_s(f32('3F800000')),
      0x1,
    );
    returns(
      'i32_trunc_f32_s_5',
      () => m0.i32_trunc_f32_s(f32('3F8CCCCD')),
      0x1,
    );
    returns(
      'i32_trunc_f32_s_6',
      () => m0.i32_trunc_f32_s(f32('3FC00000')),
      0x1,
    );
    returns(
      'i32_trunc_f32_s_7',
      () => m0.i32_trunc_f32_s(f32('BF800000')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_trunc_f32_s_8',
      () => m0.i32_trunc_f32_s(f32('BF8CCCCD')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_trunc_f32_s_9',
      () => m0.i32_trunc_f32_s(f32('BFC00000')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_trunc_f32_s_10',
      () => m0.i32_trunc_f32_s(f32('BFF33333')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_trunc_f32_s_11',
      () => m0.i32_trunc_f32_s(f32('C0000000')),
      i32('FFFFFFFE'),
    );
    returns(
      'i32_trunc_f32_s_12',
      () => m0.i32_trunc_f32_s(f32('4EFFFFFF')),
      i32('7FFFFF80'),
    );
    returns(
      'i32_trunc_f32_s_13',
      () => m0.i32_trunc_f32_s(f32('CF000000')),
      i32('80000000'),
    );
    traps('i32_trunc_f32_s_14', () => m0.i32_trunc_f32_s(f32('4F000000')), _io);
    traps('i32_trunc_f32_s_15', () => m0.i32_trunc_f32_s(f32('CF000001')), _io);
    traps('i32_trunc_f32_s_16', () => m0.i32_trunc_f32_s(f32('7F800000')), _io);
    traps('i32_trunc_f32_s_17', () => m0.i32_trunc_f32_s(f32('FF800000')), _io);
    traps(
      'i32_trunc_f32_s_18',
      () => m0.i32_trunc_f32_s(f32('7FC00000')),
      _icti,
    );
    traps(
      'i32_trunc_f32_s_19',
      () => m0.i32_trunc_f32_s(f32('7FA00000')),
      _icti,
    );
    traps(
      'i32_trunc_f32_s_20',
      () => m0.i32_trunc_f32_s(f32('FFC00000')),
      _icti,
    );
    traps(
      'i32_trunc_f32_s_21',
      () => m0.i32_trunc_f32_s(f32('FFA00000')),
      _icti,
    );
    returns('i32_trunc_f32_u_0', () => m0.i32_trunc_f32_u(f32('0')), 0);
    returns('i32_trunc_f32_u_1', () => m0.i32_trunc_f32_u(f32('80000000')), 0);
    returns('i32_trunc_f32_u_2', () => m0.i32_trunc_f32_u(f32('1')), 0);
    returns('i32_trunc_f32_u_3', () => m0.i32_trunc_f32_u(f32('80000001')), 0);
    returns(
      'i32_trunc_f32_u_4',
      () => m0.i32_trunc_f32_u(f32('3F800000')),
      0x1,
    );
    returns(
      'i32_trunc_f32_u_5',
      () => m0.i32_trunc_f32_u(f32('3F8CCCCD')),
      0x1,
    );
    returns(
      'i32_trunc_f32_u_6',
      () => m0.i32_trunc_f32_u(f32('3FC00000')),
      0x1,
    );
    returns(
      'i32_trunc_f32_u_7',
      () => m0.i32_trunc_f32_u(f32('3FF33333')),
      0x1,
    );
    returns(
      'i32_trunc_f32_u_8',
      () => m0.i32_trunc_f32_u(f32('40000000')),
      0x2,
    );
    returns(
      'i32_trunc_f32_u_9',
      () => m0.i32_trunc_f32_u(f32('4F000000')),
      i32('80000000'),
    );
    returns(
      'i32_trunc_f32_u_10',
      () => m0.i32_trunc_f32_u(f32('4F7FFFFF')),
      i32('FFFFFF00'),
    );
    returns('i32_trunc_f32_u_11', () => m0.i32_trunc_f32_u(f32('BF666666')), 0);
    returns('i32_trunc_f32_u_12', () => m0.i32_trunc_f32_u(f32('BF7FFFFF')), 0);
    traps('i32_trunc_f32_u_13', () => m0.i32_trunc_f32_u(f32('4F800000')), _io);
    traps('i32_trunc_f32_u_14', () => m0.i32_trunc_f32_u(f32('BF800000')), _io);
    traps('i32_trunc_f32_u_15', () => m0.i32_trunc_f32_u(f32('7F800000')), _io);
    traps('i32_trunc_f32_u_16', () => m0.i32_trunc_f32_u(f32('FF800000')), _io);
    traps(
      'i32_trunc_f32_u_17',
      () => m0.i32_trunc_f32_u(f32('7FC00000')),
      _icti,
    );
    traps(
      'i32_trunc_f32_u_18',
      () => m0.i32_trunc_f32_u(f32('7FA00000')),
      _icti,
    );
    traps(
      'i32_trunc_f32_u_19',
      () => m0.i32_trunc_f32_u(f32('FFC00000')),
      _icti,
    );
    traps(
      'i32_trunc_f32_u_20',
      () => m0.i32_trunc_f32_u(f32('FFA00000')),
      _icti,
    );
    returns('i32_trunc_f64_s_0', () => m0.i32_trunc_f64_s(f64('0')), 0);
    returns(
      'i32_trunc_f64_s_1',
      () => m0.i32_trunc_f64_s(f64('8000000000000000')),
      0,
    );
    returns('i32_trunc_f64_s_2', () => m0.i32_trunc_f64_s(f64('1')), 0);
    returns(
      'i32_trunc_f64_s_3',
      () => m0.i32_trunc_f64_s(f64('8000000000000001')),
      0,
    );
    returns(
      'i32_trunc_f64_s_4',
      () => m0.i32_trunc_f64_s(f64('3FF0000000000000')),
      0x1,
    );
    returns(
      'i32_trunc_f64_s_5',
      () => m0.i32_trunc_f64_s(f64('3FF199999999999A')),
      0x1,
    );
    returns(
      'i32_trunc_f64_s_6',
      () => m0.i32_trunc_f64_s(f64('3FF8000000000000')),
      0x1,
    );
    returns(
      'i32_trunc_f64_s_7',
      () => m0.i32_trunc_f64_s(f64('BFF0000000000000')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_trunc_f64_s_8',
      () => m0.i32_trunc_f64_s(f64('BFF199999999999A')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_trunc_f64_s_9',
      () => m0.i32_trunc_f64_s(f64('BFF8000000000000')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_trunc_f64_s_10',
      () => m0.i32_trunc_f64_s(f64('BFFE666666666666')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_trunc_f64_s_11',
      () => m0.i32_trunc_f64_s(f64('C000000000000000')),
      i32('FFFFFFFE'),
    );
    returns(
      'i32_trunc_f64_s_12',
      () => m0.i32_trunc_f64_s(f64('41DFFFFFFFC00000')),
      i32('7FFFFFFF'),
    );
    returns(
      'i32_trunc_f64_s_13',
      () => m0.i32_trunc_f64_s(f64('C1E0000000000000')),
      i32('80000000'),
    );
    returns(
      'i32_trunc_f64_s_14',
      () => m0.i32_trunc_f64_s(f64('C1E00000001CCCCD')),
      i32('80000000'),
    );
    returns(
      'i32_trunc_f64_s_15',
      () => m0.i32_trunc_f64_s(f64('41DFFFFFFFF9999A')),
      i32('7FFFFFFF'),
    );
    traps(
      'i32_trunc_f64_s_16',
      () => m0.i32_trunc_f64_s(f64('41E0000000000000')),
      _io,
    );
    traps(
      'i32_trunc_f64_s_17',
      () => m0.i32_trunc_f64_s(f64('C1E0000000200000')),
      _io,
    );
    traps(
      'i32_trunc_f64_s_18',
      () => m0.i32_trunc_f64_s(f64('7FF0000000000000')),
      _io,
    );
    traps(
      'i32_trunc_f64_s_19',
      () => m0.i32_trunc_f64_s(f64('FFF0000000000000')),
      _io,
    );
    traps(
      'i32_trunc_f64_s_20',
      () => m0.i32_trunc_f64_s(f64('7FF8000000000000')),
      _icti,
    );
    traps(
      'i32_trunc_f64_s_21',
      () => m0.i32_trunc_f64_s(f64('7FF4000000000000')),
      _icti,
    );
    traps(
      'i32_trunc_f64_s_22',
      () => m0.i32_trunc_f64_s(f64('FFF8000000000000')),
      _icti,
    );
    traps(
      'i32_trunc_f64_s_23',
      () => m0.i32_trunc_f64_s(f64('FFF4000000000000')),
      _icti,
    );
    returns('i32_trunc_f64_u_0', () => m0.i32_trunc_f64_u(f64('0')), 0);
    returns(
      'i32_trunc_f64_u_1',
      () => m0.i32_trunc_f64_u(f64('8000000000000000')),
      0,
    );
    returns('i32_trunc_f64_u_2', () => m0.i32_trunc_f64_u(f64('1')), 0);
    returns(
      'i32_trunc_f64_u_3',
      () => m0.i32_trunc_f64_u(f64('8000000000000001')),
      0,
    );
    returns(
      'i32_trunc_f64_u_4',
      () => m0.i32_trunc_f64_u(f64('3FF0000000000000')),
      0x1,
    );
    returns(
      'i32_trunc_f64_u_5',
      () => m0.i32_trunc_f64_u(f64('3FF199999999999A')),
      0x1,
    );
    returns(
      'i32_trunc_f64_u_6',
      () => m0.i32_trunc_f64_u(f64('3FF8000000000000')),
      0x1,
    );
    returns(
      'i32_trunc_f64_u_7',
      () => m0.i32_trunc_f64_u(f64('3FFE666666666666')),
      0x1,
    );
    returns(
      'i32_trunc_f64_u_8',
      () => m0.i32_trunc_f64_u(f64('4000000000000000')),
      0x2,
    );
    returns(
      'i32_trunc_f64_u_9',
      () => m0.i32_trunc_f64_u(f64('41E0000000000000')),
      i32('80000000'),
    );
    returns(
      'i32_trunc_f64_u_10',
      () => m0.i32_trunc_f64_u(f64('41EFFFFFFFE00000')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_trunc_f64_u_11',
      () => m0.i32_trunc_f64_u(f64('BFECCCCCCCCCCCCD')),
      0,
    );
    returns(
      'i32_trunc_f64_u_12',
      () => m0.i32_trunc_f64_u(f64('BFEFFFFFFFFFFFFF')),
      0,
    );
    returns(
      'i32_trunc_f64_u_13',
      () => m0.i32_trunc_f64_u(f64('4197D78400000000')),
      i32('5F5E100'),
    );
    returns(
      'i32_trunc_f64_u_14',
      () => m0.i32_trunc_f64_u(f64('BFECCCCCCCCCCCCD')),
      0,
    );
    returns(
      'i32_trunc_f64_u_15',
      () => m0.i32_trunc_f64_u(f64('41EFFFFFFFFCCCCD')),
      i32('FFFFFFFF'),
    );
    traps(
      'i32_trunc_f64_u_16',
      () => m0.i32_trunc_f64_u(f64('41F0000000000000')),
      _io,
    );
    traps(
      'i32_trunc_f64_u_17',
      () => m0.i32_trunc_f64_u(f64('BFF0000000000000')),
      _io,
    );
    traps(
      'i32_trunc_f64_u_18',
      () => m0.i32_trunc_f64_u(f64('4341C37937E08000')),
      _io,
    );
    traps(
      'i32_trunc_f64_u_19',
      () => m0.i32_trunc_f64_u(f64('46293E5939A08CEA')),
      _io,
    );
    traps(
      'i32_trunc_f64_u_20',
      () => m0.i32_trunc_f64_u(f64('43E0000000000000')),
      _io,
    );
    traps(
      'i32_trunc_f64_u_21',
      () => m0.i32_trunc_f64_u(f64('7FF0000000000000')),
      _io,
    );
    traps(
      'i32_trunc_f64_u_22',
      () => m0.i32_trunc_f64_u(f64('FFF0000000000000')),
      _io,
    );
    traps(
      'i32_trunc_f64_u_23',
      () => m0.i32_trunc_f64_u(f64('7FF8000000000000')),
      _icti,
    );
    traps(
      'i32_trunc_f64_u_24',
      () => m0.i32_trunc_f64_u(f64('7FF4000000000000')),
      _icti,
    );
    traps(
      'i32_trunc_f64_u_25',
      () => m0.i32_trunc_f64_u(f64('FFF8000000000000')),
      _icti,
    );
    traps(
      'i32_trunc_f64_u_26',
      () => m0.i32_trunc_f64_u(f64('FFF4000000000000')),
      _icti,
    );
    returns('i64_trunc_f32_s_0', () => m0.i64_trunc_f32_s(f32('0')), 0);
    returns('i64_trunc_f32_s_1', () => m0.i64_trunc_f32_s(f32('80000000')), 0);
    returns('i64_trunc_f32_s_2', () => m0.i64_trunc_f32_s(f32('1')), 0);
    returns('i64_trunc_f32_s_3', () => m0.i64_trunc_f32_s(f32('80000001')), 0);
    returns(
      'i64_trunc_f32_s_4',
      () => m0.i64_trunc_f32_s(f32('3F800000')),
      0x1,
    );
    returns(
      'i64_trunc_f32_s_5',
      () => m0.i64_trunc_f32_s(f32('3F8CCCCD')),
      0x1,
    );
    returns(
      'i64_trunc_f32_s_6',
      () => m0.i64_trunc_f32_s(f32('3FC00000')),
      0x1,
    );
    returns(
      'i64_trunc_f32_s_7',
      () => m0.i64_trunc_f32_s(f32('BF800000')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_trunc_f32_s_8',
      () => m0.i64_trunc_f32_s(f32('BF8CCCCD')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_trunc_f32_s_9',
      () => m0.i64_trunc_f32_s(f32('BFC00000')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_trunc_f32_s_10',
      () => m0.i64_trunc_f32_s(f32('BFF33333')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_trunc_f32_s_11',
      () => m0.i64_trunc_f32_s(f32('C0000000')),
      i64('FFFFFFFFFFFFFFFE'),
    );
    returns(
      'i64_trunc_f32_s_12',
      () => m0.i64_trunc_f32_s(f32('4F800000')),
      i64('100000000'),
    );
    returns(
      'i64_trunc_f32_s_13',
      () => m0.i64_trunc_f32_s(f32('CF800000')),
      i64('FFFFFFFF00000000'),
    );
    returns(
      'i64_trunc_f32_s_14',
      () => m0.i64_trunc_f32_s(f32('5EFFFFFF')),
      i64('7FFFFF8000000000'),
    );
    returns(
      'i64_trunc_f32_s_15',
      () => m0.i64_trunc_f32_s(f32('DF000000')),
      i64('8000000000000000'),
    );
    traps('i64_trunc_f32_s_16', () => m0.i64_trunc_f32_s(f32('5F000000')), _io);
    traps('i64_trunc_f32_s_17', () => m0.i64_trunc_f32_s(f32('DF000001')), _io);
    traps('i64_trunc_f32_s_18', () => m0.i64_trunc_f32_s(f32('7F800000')), _io);
    traps('i64_trunc_f32_s_19', () => m0.i64_trunc_f32_s(f32('FF800000')), _io);
    traps(
      'i64_trunc_f32_s_20',
      () => m0.i64_trunc_f32_s(f32('7FC00000')),
      _icti,
    );
    traps(
      'i64_trunc_f32_s_21',
      () => m0.i64_trunc_f32_s(f32('7FA00000')),
      _icti,
    );
    traps(
      'i64_trunc_f32_s_22',
      () => m0.i64_trunc_f32_s(f32('FFC00000')),
      _icti,
    );
    traps(
      'i64_trunc_f32_s_23',
      () => m0.i64_trunc_f32_s(f32('FFA00000')),
      _icti,
    );
    returns('i64_trunc_f32_u_0', () => m0.i64_trunc_f32_u(f32('0')), 0);
    returns('i64_trunc_f32_u_1', () => m0.i64_trunc_f32_u(f32('80000000')), 0);
    returns('i64_trunc_f32_u_2', () => m0.i64_trunc_f32_u(f32('1')), 0);
    returns('i64_trunc_f32_u_3', () => m0.i64_trunc_f32_u(f32('80000001')), 0);
    returns(
      'i64_trunc_f32_u_4',
      () => m0.i64_trunc_f32_u(f32('3F800000')),
      0x1,
    );
    returns(
      'i64_trunc_f32_u_5',
      () => m0.i64_trunc_f32_u(f32('3F8CCCCD')),
      0x1,
    );
    returns(
      'i64_trunc_f32_u_6',
      () => m0.i64_trunc_f32_u(f32('3FC00000')),
      0x1,
    );
    returns(
      'i64_trunc_f32_u_7',
      () => m0.i64_trunc_f32_u(f32('4F800000')),
      i64('100000000'),
    );
    returns(
      'i64_trunc_f32_u_8',
      () => m0.i64_trunc_f32_u(f32('5F7FFFFF')),
      i64('FFFFFF0000000000'),
    );
    returns('i64_trunc_f32_u_9', () => m0.i64_trunc_f32_u(f32('BF666666')), 0);
    returns('i64_trunc_f32_u_10', () => m0.i64_trunc_f32_u(f32('BF7FFFFF')), 0);
    traps('i64_trunc_f32_u_11', () => m0.i64_trunc_f32_u(f32('5F800000')), _io);
    traps('i64_trunc_f32_u_12', () => m0.i64_trunc_f32_u(f32('BF800000')), _io);
    traps('i64_trunc_f32_u_13', () => m0.i64_trunc_f32_u(f32('7F800000')), _io);
    traps('i64_trunc_f32_u_14', () => m0.i64_trunc_f32_u(f32('FF800000')), _io);
    traps(
      'i64_trunc_f32_u_15',
      () => m0.i64_trunc_f32_u(f32('7FC00000')),
      _icti,
    );
    traps(
      'i64_trunc_f32_u_16',
      () => m0.i64_trunc_f32_u(f32('7FA00000')),
      _icti,
    );
    traps(
      'i64_trunc_f32_u_17',
      () => m0.i64_trunc_f32_u(f32('FFC00000')),
      _icti,
    );
    traps(
      'i64_trunc_f32_u_18',
      () => m0.i64_trunc_f32_u(f32('FFA00000')),
      _icti,
    );
    returns('i64_trunc_f64_s_0', () => m0.i64_trunc_f64_s(f64('0')), 0);
    returns(
      'i64_trunc_f64_s_1',
      () => m0.i64_trunc_f64_s(f64('8000000000000000')),
      0,
    );
    returns('i64_trunc_f64_s_2', () => m0.i64_trunc_f64_s(f64('1')), 0);
    returns(
      'i64_trunc_f64_s_3',
      () => m0.i64_trunc_f64_s(f64('8000000000000001')),
      0,
    );
    returns(
      'i64_trunc_f64_s_4',
      () => m0.i64_trunc_f64_s(f64('3FF0000000000000')),
      0x1,
    );
    returns(
      'i64_trunc_f64_s_5',
      () => m0.i64_trunc_f64_s(f64('3FF199999999999A')),
      0x1,
    );
    returns(
      'i64_trunc_f64_s_6',
      () => m0.i64_trunc_f64_s(f64('3FF8000000000000')),
      0x1,
    );
    returns(
      'i64_trunc_f64_s_7',
      () => m0.i64_trunc_f64_s(f64('BFF0000000000000')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_trunc_f64_s_8',
      () => m0.i64_trunc_f64_s(f64('BFF199999999999A')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_trunc_f64_s_9',
      () => m0.i64_trunc_f64_s(f64('BFF8000000000000')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_trunc_f64_s_10',
      () => m0.i64_trunc_f64_s(f64('BFFE666666666666')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_trunc_f64_s_11',
      () => m0.i64_trunc_f64_s(f64('C000000000000000')),
      i64('FFFFFFFFFFFFFFFE'),
    );
    returns(
      'i64_trunc_f64_s_12',
      () => m0.i64_trunc_f64_s(f64('41F0000000000000')),
      i64('100000000'),
    );
    returns(
      'i64_trunc_f64_s_13',
      () => m0.i64_trunc_f64_s(f64('C1F0000000000000')),
      i64('FFFFFFFF00000000'),
    );
    returns(
      'i64_trunc_f64_s_14',
      () => m0.i64_trunc_f64_s(f64('43DFFFFFFFFFFFFF')),
      i64('7FFFFFFFFFFFFC00'),
    );
    returns(
      'i64_trunc_f64_s_15',
      () => m0.i64_trunc_f64_s(f64('C3E0000000000000')),
      i64('8000000000000000'),
    );
    traps(
      'i64_trunc_f64_s_16',
      () => m0.i64_trunc_f64_s(f64('43E0000000000000')),
      _io,
    );
    traps(
      'i64_trunc_f64_s_17',
      () => m0.i64_trunc_f64_s(f64('C3E0000000000001')),
      _io,
    );
    traps(
      'i64_trunc_f64_s_18',
      () => m0.i64_trunc_f64_s(f64('7FF0000000000000')),
      _io,
    );
    traps(
      'i64_trunc_f64_s_19',
      () => m0.i64_trunc_f64_s(f64('FFF0000000000000')),
      _io,
    );
    traps(
      'i64_trunc_f64_s_20',
      () => m0.i64_trunc_f64_s(f64('7FF8000000000000')),
      _icti,
    );
    traps(
      'i64_trunc_f64_s_21',
      () => m0.i64_trunc_f64_s(f64('7FF4000000000000')),
      _icti,
    );
    traps(
      'i64_trunc_f64_s_22',
      () => m0.i64_trunc_f64_s(f64('FFF8000000000000')),
      _icti,
    );
    traps(
      'i64_trunc_f64_s_23',
      () => m0.i64_trunc_f64_s(f64('FFF4000000000000')),
      _icti,
    );
    returns('i64_trunc_f64_u_0', () => m0.i64_trunc_f64_u(f64('0')), 0);
    returns(
      'i64_trunc_f64_u_1',
      () => m0.i64_trunc_f64_u(f64('8000000000000000')),
      0,
    );
    returns('i64_trunc_f64_u_2', () => m0.i64_trunc_f64_u(f64('1')), 0);
    returns(
      'i64_trunc_f64_u_3',
      () => m0.i64_trunc_f64_u(f64('8000000000000001')),
      0,
    );
    returns(
      'i64_trunc_f64_u_4',
      () => m0.i64_trunc_f64_u(f64('3FF0000000000000')),
      0x1,
    );
    returns(
      'i64_trunc_f64_u_5',
      () => m0.i64_trunc_f64_u(f64('3FF199999999999A')),
      0x1,
    );
    returns(
      'i64_trunc_f64_u_6',
      () => m0.i64_trunc_f64_u(f64('3FF8000000000000')),
      0x1,
    );
    returns(
      'i64_trunc_f64_u_7',
      () => m0.i64_trunc_f64_u(f64('41EFFFFFFFE00000')),
      i64('FFFFFFFF'),
    );
    returns(
      'i64_trunc_f64_u_8',
      () => m0.i64_trunc_f64_u(f64('41F0000000000000')),
      i64('100000000'),
    );
    returns(
      'i64_trunc_f64_u_9',
      () => m0.i64_trunc_f64_u(f64('43EFFFFFFFFFFFFF')),
      i64('FFFFFFFFFFFFF800'),
    );
    returns(
      'i64_trunc_f64_u_10',
      () => m0.i64_trunc_f64_u(f64('BFECCCCCCCCCCCCD')),
      0,
    );
    returns(
      'i64_trunc_f64_u_11',
      () => m0.i64_trunc_f64_u(f64('BFEFFFFFFFFFFFFF')),
      0,
    );
    returns(
      'i64_trunc_f64_u_12',
      () => m0.i64_trunc_f64_u(f64('4197D78400000000')),
      i64('5F5E100'),
    );
    returns(
      'i64_trunc_f64_u_13',
      () => m0.i64_trunc_f64_u(f64('4341C37937E08000')),
      i64('2386F26FC10000'),
    );
    returns(
      'i64_trunc_f64_u_14',
      () => m0.i64_trunc_f64_u(f64('43E0000000000000')),
      i64('8000000000000000'),
    );
    traps(
      'i64_trunc_f64_u_15',
      () => m0.i64_trunc_f64_u(f64('43F0000000000000')),
      _io,
    );
    traps(
      'i64_trunc_f64_u_16',
      () => m0.i64_trunc_f64_u(f64('BFF0000000000000')),
      _io,
    );
    traps(
      'i64_trunc_f64_u_17',
      () => m0.i64_trunc_f64_u(f64('7FF0000000000000')),
      _io,
    );
    traps(
      'i64_trunc_f64_u_18',
      () => m0.i64_trunc_f64_u(f64('FFF0000000000000')),
      _io,
    );
    traps(
      'i64_trunc_f64_u_19',
      () => m0.i64_trunc_f64_u(f64('7FF8000000000000')),
      _icti,
    );
    traps(
      'i64_trunc_f64_u_20',
      () => m0.i64_trunc_f64_u(f64('7FF4000000000000')),
      _icti,
    );
    traps(
      'i64_trunc_f64_u_21',
      () => m0.i64_trunc_f64_u(f64('FFF8000000000000')),
      _icti,
    );
    traps(
      'i64_trunc_f64_u_22',
      () => m0.i64_trunc_f64_u(f64('FFF4000000000000')),
      _icti,
    );
    returns(
      'f32_convert_i32_s_0',
      () => m0.f32_convert_i32_s(0x1),
      f32('3F800000'),
    );
    returns(
      'f32_convert_i32_s_1',
      () => m0.f32_convert_i32_s(i32('FFFFFFFF')),
      f32('BF800000'),
    );
    returns('f32_convert_i32_s_2', () => m0.f32_convert_i32_s(0), f32('0'));
    returns(
      'f32_convert_i32_s_3',
      () => m0.f32_convert_i32_s(i32('7FFFFFFF')),
      f32('4F000000'),
    );
    returns(
      'f32_convert_i32_s_4',
      () => m0.f32_convert_i32_s(i32('80000000')),
      f32('CF000000'),
    );
    returns(
      'f32_convert_i32_s_5',
      () => m0.f32_convert_i32_s(i32('499602D2')),
      f32('4E932C06'),
    );
    returns('i32_trunc_sat_f32_s_0', () => m0.i32_trunc_sat_f32_s(f32('0')), 0);
    returns(
      'i32_trunc_sat_f32_s_1',
      () => m0.i32_trunc_sat_f32_s(f32('80000000')),
      0,
    );
    returns('i32_trunc_sat_f32_s_2', () => m0.i32_trunc_sat_f32_s(f32('1')), 0);
    returns(
      'i32_trunc_sat_f32_s_3',
      () => m0.i32_trunc_sat_f32_s(f32('80000001')),
      0,
    );
    returns(
      'i32_trunc_sat_f32_s_4',
      () => m0.i32_trunc_sat_f32_s(f32('3F800000')),
      0x1,
    );
    returns(
      'i32_trunc_sat_f32_s_5',
      () => m0.i32_trunc_sat_f32_s(f32('3F8CCCCD')),
      0x1,
    );
    returns(
      'i32_trunc_sat_f32_s_6',
      () => m0.i32_trunc_sat_f32_s(f32('3FC00000')),
      0x1,
    );
    returns(
      'i32_trunc_sat_f32_s_7',
      () => m0.i32_trunc_sat_f32_s(f32('BF800000')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_trunc_sat_f32_s_8',
      () => m0.i32_trunc_sat_f32_s(f32('BF8CCCCD')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_trunc_sat_f32_s_9',
      () => m0.i32_trunc_sat_f32_s(f32('BFC00000')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_trunc_sat_f32_s_10',
      () => m0.i32_trunc_sat_f32_s(f32('BFF33333')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_trunc_sat_f32_s_11',
      () => m0.i32_trunc_sat_f32_s(f32('C0000000')),
      i32('FFFFFFFE'),
    );
    returns(
      'i32_trunc_sat_f32_s_12',
      () => m0.i32_trunc_sat_f32_s(f32('4EFFFFFF')),
      i32('7FFFFF80'),
    );
    returns(
      'i32_trunc_sat_f32_s_13',
      () => m0.i32_trunc_sat_f32_s(f32('CF000000')),
      i32('80000000'),
    );
    returns(
      'i32_trunc_sat_f32_s_14',
      () => m0.i32_trunc_sat_f32_s(f32('4F000000')),
      i32('7FFFFFFF'),
    );
    returns(
      'i32_trunc_sat_f32_s_15',
      () => m0.i32_trunc_sat_f32_s(f32('CF000001')),
      i32('80000000'),
    );
    returns(
      'i32_trunc_sat_f32_s_16',
      () => m0.i32_trunc_sat_f32_s(f32('7F800000')),
      i32('7FFFFFFF'),
    );
    returns(
      'i32_trunc_sat_f32_s_17',
      () => m0.i32_trunc_sat_f32_s(f32('FF800000')),
      i32('80000000'),
    );
    returns(
      'i32_trunc_sat_f32_s_18',
      () => m0.i32_trunc_sat_f32_s(f32('7FC00000')),
      0,
    );
    returns(
      'i32_trunc_sat_f32_s_19',
      () => m0.i32_trunc_sat_f32_s(f32('7FA00000')),
      0,
    );
    returns(
      'i32_trunc_sat_f32_s_20',
      () => m0.i32_trunc_sat_f32_s(f32('FFC00000')),
      0,
    );
    returns(
      'i32_trunc_sat_f32_s_21',
      () => m0.i32_trunc_sat_f32_s(f32('FFA00000')),
      0,
    );
    returns('i32_trunc_sat_f32_u_0', () => m0.i32_trunc_sat_f32_u(f32('0')), 0);
    returns(
      'i32_trunc_sat_f32_u_1',
      () => m0.i32_trunc_sat_f32_u(f32('80000000')),
      0,
    );
    returns('i32_trunc_sat_f32_u_2', () => m0.i32_trunc_sat_f32_u(f32('1')), 0);
    returns(
      'i32_trunc_sat_f32_u_3',
      () => m0.i32_trunc_sat_f32_u(f32('80000001')),
      0,
    );
    returns(
      'i32_trunc_sat_f32_u_4',
      () => m0.i32_trunc_sat_f32_u(f32('3F800000')),
      0x1,
    );
    returns(
      'i32_trunc_sat_f32_u_5',
      () => m0.i32_trunc_sat_f32_u(f32('3F8CCCCD')),
      0x1,
    );
    returns(
      'i32_trunc_sat_f32_u_6',
      () => m0.i32_trunc_sat_f32_u(f32('3FC00000')),
      0x1,
    );
    returns(
      'i32_trunc_sat_f32_u_7',
      () => m0.i32_trunc_sat_f32_u(f32('3FF33333')),
      0x1,
    );
    returns(
      'i32_trunc_sat_f32_u_8',
      () => m0.i32_trunc_sat_f32_u(f32('40000000')),
      0x2,
    );
    returns(
      'i32_trunc_sat_f32_u_9',
      () => m0.i32_trunc_sat_f32_u(f32('4F000000')),
      i32('80000000'),
    );
    returns(
      'i32_trunc_sat_f32_u_10',
      () => m0.i32_trunc_sat_f32_u(f32('4F7FFFFF')),
      i32('FFFFFF00'),
    );
    returns(
      'i32_trunc_sat_f32_u_11',
      () => m0.i32_trunc_sat_f32_u(f32('BF666666')),
      0,
    );
    returns(
      'i32_trunc_sat_f32_u_12',
      () => m0.i32_trunc_sat_f32_u(f32('BF7FFFFF')),
      0,
    );
    returns(
      'i32_trunc_sat_f32_u_13',
      () => m0.i32_trunc_sat_f32_u(f32('4F800000')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_trunc_sat_f32_u_14',
      () => m0.i32_trunc_sat_f32_u(f32('BF800000')),
      0,
    );
    returns(
      'i32_trunc_sat_f32_u_15',
      () => m0.i32_trunc_sat_f32_u(f32('7F800000')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_trunc_sat_f32_u_16',
      () => m0.i32_trunc_sat_f32_u(f32('FF800000')),
      0,
    );
    returns(
      'i32_trunc_sat_f32_u_17',
      () => m0.i32_trunc_sat_f32_u(f32('7FC00000')),
      0,
    );
    returns(
      'i32_trunc_sat_f32_u_18',
      () => m0.i32_trunc_sat_f32_u(f32('7FA00000')),
      0,
    );
    returns(
      'i32_trunc_sat_f32_u_19',
      () => m0.i32_trunc_sat_f32_u(f32('FFC00000')),
      0,
    );
    returns(
      'i32_trunc_sat_f32_u_20',
      () => m0.i32_trunc_sat_f32_u(f32('FFA00000')),
      0,
    );
    returns('i32_trunc_sat_f64_s_0', () => m0.i32_trunc_sat_f64_s(f64('0')), 0);
    returns(
      'i32_trunc_sat_f64_s_1',
      () => m0.i32_trunc_sat_f64_s(f64('8000000000000000')),
      0,
    );
    returns('i32_trunc_sat_f64_s_2', () => m0.i32_trunc_sat_f64_s(f64('1')), 0);
    returns(
      'i32_trunc_sat_f64_s_3',
      () => m0.i32_trunc_sat_f64_s(f64('8000000000000001')),
      0,
    );
    returns(
      'i32_trunc_sat_f64_s_4',
      () => m0.i32_trunc_sat_f64_s(f64('3FF0000000000000')),
      0x1,
    );
    returns(
      'i32_trunc_sat_f64_s_5',
      () => m0.i32_trunc_sat_f64_s(f64('3FF199999999999A')),
      0x1,
    );
    returns(
      'i32_trunc_sat_f64_s_6',
      () => m0.i32_trunc_sat_f64_s(f64('3FF8000000000000')),
      0x1,
    );
    returns(
      'i32_trunc_sat_f64_s_7',
      () => m0.i32_trunc_sat_f64_s(f64('BFF0000000000000')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_trunc_sat_f64_s_8',
      () => m0.i32_trunc_sat_f64_s(f64('BFF199999999999A')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_trunc_sat_f64_s_9',
      () => m0.i32_trunc_sat_f64_s(f64('BFF8000000000000')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_trunc_sat_f64_s_10',
      () => m0.i32_trunc_sat_f64_s(f64('BFFE666666666666')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_trunc_sat_f64_s_11',
      () => m0.i32_trunc_sat_f64_s(f64('C000000000000000')),
      i32('FFFFFFFE'),
    );
    returns(
      'i32_trunc_sat_f64_s_12',
      () => m0.i32_trunc_sat_f64_s(f64('41DFFFFFFFC00000')),
      i32('7FFFFFFF'),
    );
    returns(
      'i32_trunc_sat_f64_s_13',
      () => m0.i32_trunc_sat_f64_s(f64('C1E0000000000000')),
      i32('80000000'),
    );
    returns(
      'i32_trunc_sat_f64_s_14',
      () => m0.i32_trunc_sat_f64_s(f64('41E0000000000000')),
      i32('7FFFFFFF'),
    );
    returns(
      'i32_trunc_sat_f64_s_15',
      () => m0.i32_trunc_sat_f64_s(f64('C1E0000000200000')),
      i32('80000000'),
    );
    returns(
      'i32_trunc_sat_f64_s_16',
      () => m0.i32_trunc_sat_f64_s(f64('7FF0000000000000')),
      i32('7FFFFFFF'),
    );
    returns(
      'i32_trunc_sat_f64_s_17',
      () => m0.i32_trunc_sat_f64_s(f64('FFF0000000000000')),
      i32('80000000'),
    );
    returns(
      'i32_trunc_sat_f64_s_18',
      () => m0.i32_trunc_sat_f64_s(f64('7FF8000000000000')),
      0,
    );
    returns(
      'i32_trunc_sat_f64_s_19',
      () => m0.i32_trunc_sat_f64_s(f64('7FF4000000000000')),
      0,
    );
    returns(
      'i32_trunc_sat_f64_s_20',
      () => m0.i32_trunc_sat_f64_s(f64('FFF8000000000000')),
      0,
    );
    returns(
      'i32_trunc_sat_f64_s_21',
      () => m0.i32_trunc_sat_f64_s(f64('FFF4000000000000')),
      0,
    );
    returns('i32_trunc_sat_f64_u_0', () => m0.i32_trunc_sat_f64_u(f64('0')), 0);
    returns(
      'i32_trunc_sat_f64_u_1',
      () => m0.i32_trunc_sat_f64_u(f64('8000000000000000')),
      0,
    );
    returns('i32_trunc_sat_f64_u_2', () => m0.i32_trunc_sat_f64_u(f64('1')), 0);
    returns(
      'i32_trunc_sat_f64_u_3',
      () => m0.i32_trunc_sat_f64_u(f64('8000000000000001')),
      0,
    );
    returns(
      'i32_trunc_sat_f64_u_4',
      () => m0.i32_trunc_sat_f64_u(f64('3FF0000000000000')),
      0x1,
    );
    returns(
      'i32_trunc_sat_f64_u_5',
      () => m0.i32_trunc_sat_f64_u(f64('3FF199999999999A')),
      0x1,
    );
    returns(
      'i32_trunc_sat_f64_u_6',
      () => m0.i32_trunc_sat_f64_u(f64('3FF8000000000000')),
      0x1,
    );
    returns(
      'i32_trunc_sat_f64_u_7',
      () => m0.i32_trunc_sat_f64_u(f64('3FFE666666666666')),
      0x1,
    );
    returns(
      'i32_trunc_sat_f64_u_8',
      () => m0.i32_trunc_sat_f64_u(f64('4000000000000000')),
      0x2,
    );
    returns(
      'i32_trunc_sat_f64_u_9',
      () => m0.i32_trunc_sat_f64_u(f64('41E0000000000000')),
      i32('80000000'),
    );
    returns(
      'i32_trunc_sat_f64_u_10',
      () => m0.i32_trunc_sat_f64_u(f64('41EFFFFFFFE00000')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_trunc_sat_f64_u_11',
      () => m0.i32_trunc_sat_f64_u(f64('BFECCCCCCCCCCCCD')),
      0,
    );
    returns(
      'i32_trunc_sat_f64_u_12',
      () => m0.i32_trunc_sat_f64_u(f64('BFEFFFFFFFFFFFFF')),
      0,
    );
    returns(
      'i32_trunc_sat_f64_u_13',
      () => m0.i32_trunc_sat_f64_u(f64('4197D78400000000')),
      i32('5F5E100'),
    );
    returns(
      'i32_trunc_sat_f64_u_14',
      () => m0.i32_trunc_sat_f64_u(f64('41F0000000000000')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_trunc_sat_f64_u_15',
      () => m0.i32_trunc_sat_f64_u(f64('BFF0000000000000')),
      0,
    );
    returns(
      'i32_trunc_sat_f64_u_16',
      () => m0.i32_trunc_sat_f64_u(f64('4341C37937E08000')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_trunc_sat_f64_u_17',
      () => m0.i32_trunc_sat_f64_u(f64('46293E5939A08CEA')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_trunc_sat_f64_u_18',
      () => m0.i32_trunc_sat_f64_u(f64('43E0000000000000')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_trunc_sat_f64_u_19',
      () => m0.i32_trunc_sat_f64_u(f64('7FF0000000000000')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_trunc_sat_f64_u_20',
      () => m0.i32_trunc_sat_f64_u(f64('FFF0000000000000')),
      0,
    );
    returns(
      'i32_trunc_sat_f64_u_21',
      () => m0.i32_trunc_sat_f64_u(f64('7FF8000000000000')),
      0,
    );
    returns(
      'i32_trunc_sat_f64_u_22',
      () => m0.i32_trunc_sat_f64_u(f64('7FF4000000000000')),
      0,
    );
    returns(
      'i32_trunc_sat_f64_u_23',
      () => m0.i32_trunc_sat_f64_u(f64('FFF8000000000000')),
      0,
    );
    returns(
      'i32_trunc_sat_f64_u_24',
      () => m0.i32_trunc_sat_f64_u(f64('FFF4000000000000')),
      0,
    );
    returns('i64_trunc_sat_f32_s_0', () => m0.i64_trunc_sat_f32_s(f32('0')), 0);
    returns(
      'i64_trunc_sat_f32_s_1',
      () => m0.i64_trunc_sat_f32_s(f32('80000000')),
      0,
    );
    returns('i64_trunc_sat_f32_s_2', () => m0.i64_trunc_sat_f32_s(f32('1')), 0);
    returns(
      'i64_trunc_sat_f32_s_3',
      () => m0.i64_trunc_sat_f32_s(f32('80000001')),
      0,
    );
    returns(
      'i64_trunc_sat_f32_s_4',
      () => m0.i64_trunc_sat_f32_s(f32('3F800000')),
      0x1,
    );
    returns(
      'i64_trunc_sat_f32_s_5',
      () => m0.i64_trunc_sat_f32_s(f32('3F8CCCCD')),
      0x1,
    );
    returns(
      'i64_trunc_sat_f32_s_6',
      () => m0.i64_trunc_sat_f32_s(f32('3FC00000')),
      0x1,
    );
    returns(
      'i64_trunc_sat_f32_s_7',
      () => m0.i64_trunc_sat_f32_s(f32('BF800000')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_trunc_sat_f32_s_8',
      () => m0.i64_trunc_sat_f32_s(f32('BF8CCCCD')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_trunc_sat_f32_s_9',
      () => m0.i64_trunc_sat_f32_s(f32('BFC00000')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_trunc_sat_f32_s_10',
      () => m0.i64_trunc_sat_f32_s(f32('BFF33333')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_trunc_sat_f32_s_11',
      () => m0.i64_trunc_sat_f32_s(f32('C0000000')),
      i64('FFFFFFFFFFFFFFFE'),
    );
    returns(
      'i64_trunc_sat_f32_s_12',
      () => m0.i64_trunc_sat_f32_s(f32('4F800000')),
      i64('100000000'),
    );
    returns(
      'i64_trunc_sat_f32_s_13',
      () => m0.i64_trunc_sat_f32_s(f32('CF800000')),
      i64('FFFFFFFF00000000'),
    );
    returns(
      'i64_trunc_sat_f32_s_14',
      () => m0.i64_trunc_sat_f32_s(f32('5EFFFFFF')),
      i64('7FFFFF8000000000'),
    );
    returns(
      'i64_trunc_sat_f32_s_15',
      () => m0.i64_trunc_sat_f32_s(f32('DF000000')),
      i64('8000000000000000'),
    );
    returns(
      'i64_trunc_sat_f32_s_16',
      () => m0.i64_trunc_sat_f32_s(f32('5F000000')),
      i64('7FFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_trunc_sat_f32_s_17',
      () => m0.i64_trunc_sat_f32_s(f32('DF000001')),
      i64('8000000000000000'),
    );
    returns(
      'i64_trunc_sat_f32_s_18',
      () => m0.i64_trunc_sat_f32_s(f32('7F800000')),
      i64('7FFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_trunc_sat_f32_s_19',
      () => m0.i64_trunc_sat_f32_s(f32('FF800000')),
      i64('8000000000000000'),
    );
    returns(
      'i64_trunc_sat_f32_s_20',
      () => m0.i64_trunc_sat_f32_s(f32('7FC00000')),
      0,
    );
    returns(
      'i64_trunc_sat_f32_s_21',
      () => m0.i64_trunc_sat_f32_s(f32('7FA00000')),
      0,
    );
    returns(
      'i64_trunc_sat_f32_s_22',
      () => m0.i64_trunc_sat_f32_s(f32('FFC00000')),
      0,
    );
    returns(
      'i64_trunc_sat_f32_s_23',
      () => m0.i64_trunc_sat_f32_s(f32('FFA00000')),
      0,
    );
    returns('i64_trunc_sat_f32_u_0', () => m0.i64_trunc_sat_f32_u(f32('0')), 0);
    returns(
      'i64_trunc_sat_f32_u_1',
      () => m0.i64_trunc_sat_f32_u(f32('80000000')),
      0,
    );
    returns('i64_trunc_sat_f32_u_2', () => m0.i64_trunc_sat_f32_u(f32('1')), 0);
    returns(
      'i64_trunc_sat_f32_u_3',
      () => m0.i64_trunc_sat_f32_u(f32('80000001')),
      0,
    );
    returns(
      'i64_trunc_sat_f32_u_4',
      () => m0.i64_trunc_sat_f32_u(f32('3F800000')),
      0x1,
    );
    returns(
      'i64_trunc_sat_f32_u_5',
      () => m0.i64_trunc_sat_f32_u(f32('3F8CCCCD')),
      0x1,
    );
    returns(
      'i64_trunc_sat_f32_u_6',
      () => m0.i64_trunc_sat_f32_u(f32('3FC00000')),
      0x1,
    );
    returns(
      'i64_trunc_sat_f32_u_7',
      () => m0.i64_trunc_sat_f32_u(f32('4F800000')),
      i64('100000000'),
    );
    returns(
      'i64_trunc_sat_f32_u_8',
      () => m0.i64_trunc_sat_f32_u(f32('5F7FFFFF')),
      i64('FFFFFF0000000000'),
    );
    returns(
      'i64_trunc_sat_f32_u_9',
      () => m0.i64_trunc_sat_f32_u(f32('BF666666')),
      0,
    );
    returns(
      'i64_trunc_sat_f32_u_10',
      () => m0.i64_trunc_sat_f32_u(f32('BF7FFFFF')),
      0,
    );
    returns(
      'i64_trunc_sat_f32_u_11',
      () => m0.i64_trunc_sat_f32_u(f32('5F800000')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_trunc_sat_f32_u_12',
      () => m0.i64_trunc_sat_f32_u(f32('BF800000')),
      0,
    );
    returns(
      'i64_trunc_sat_f32_u_13',
      () => m0.i64_trunc_sat_f32_u(f32('7F800000')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_trunc_sat_f32_u_14',
      () => m0.i64_trunc_sat_f32_u(f32('FF800000')),
      0,
    );
    returns(
      'i64_trunc_sat_f32_u_15',
      () => m0.i64_trunc_sat_f32_u(f32('7FC00000')),
      0,
    );
    returns(
      'i64_trunc_sat_f32_u_16',
      () => m0.i64_trunc_sat_f32_u(f32('7FA00000')),
      0,
    );
    returns(
      'i64_trunc_sat_f32_u_17',
      () => m0.i64_trunc_sat_f32_u(f32('FFC00000')),
      0,
    );
    returns(
      'i64_trunc_sat_f32_u_18',
      () => m0.i64_trunc_sat_f32_u(f32('FFA00000')),
      0,
    );
    returns('i64_trunc_sat_f64_s_0', () => m0.i64_trunc_sat_f64_s(f64('0')), 0);
    returns(
      'i64_trunc_sat_f64_s_1',
      () => m0.i64_trunc_sat_f64_s(f64('8000000000000000')),
      0,
    );
    returns('i64_trunc_sat_f64_s_2', () => m0.i64_trunc_sat_f64_s(f64('1')), 0);
    returns(
      'i64_trunc_sat_f64_s_3',
      () => m0.i64_trunc_sat_f64_s(f64('8000000000000001')),
      0,
    );
    returns(
      'i64_trunc_sat_f64_s_4',
      () => m0.i64_trunc_sat_f64_s(f64('3FF0000000000000')),
      0x1,
    );
    returns(
      'i64_trunc_sat_f64_s_5',
      () => m0.i64_trunc_sat_f64_s(f64('3FF199999999999A')),
      0x1,
    );
    returns(
      'i64_trunc_sat_f64_s_6',
      () => m0.i64_trunc_sat_f64_s(f64('3FF8000000000000')),
      0x1,
    );
    returns(
      'i64_trunc_sat_f64_s_7',
      () => m0.i64_trunc_sat_f64_s(f64('BFF0000000000000')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_trunc_sat_f64_s_8',
      () => m0.i64_trunc_sat_f64_s(f64('BFF199999999999A')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_trunc_sat_f64_s_9',
      () => m0.i64_trunc_sat_f64_s(f64('BFF8000000000000')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_trunc_sat_f64_s_10',
      () => m0.i64_trunc_sat_f64_s(f64('BFFE666666666666')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_trunc_sat_f64_s_11',
      () => m0.i64_trunc_sat_f64_s(f64('C000000000000000')),
      i64('FFFFFFFFFFFFFFFE'),
    );
    returns(
      'i64_trunc_sat_f64_s_12',
      () => m0.i64_trunc_sat_f64_s(f64('41F0000000000000')),
      i64('100000000'),
    );
    returns(
      'i64_trunc_sat_f64_s_13',
      () => m0.i64_trunc_sat_f64_s(f64('C1F0000000000000')),
      i64('FFFFFFFF00000000'),
    );
    returns(
      'i64_trunc_sat_f64_s_14',
      () => m0.i64_trunc_sat_f64_s(f64('43DFFFFFFFFFFFFF')),
      i64('7FFFFFFFFFFFFC00'),
    );
    returns(
      'i64_trunc_sat_f64_s_15',
      () => m0.i64_trunc_sat_f64_s(f64('C3E0000000000000')),
      i64('8000000000000000'),
    );
    returns(
      'i64_trunc_sat_f64_s_16',
      () => m0.i64_trunc_sat_f64_s(f64('43E0000000000000')),
      i64('7FFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_trunc_sat_f64_s_17',
      () => m0.i64_trunc_sat_f64_s(f64('C3E0000000000001')),
      i64('8000000000000000'),
    );
    returns(
      'i64_trunc_sat_f64_s_18',
      () => m0.i64_trunc_sat_f64_s(f64('7FF0000000000000')),
      i64('7FFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_trunc_sat_f64_s_19',
      () => m0.i64_trunc_sat_f64_s(f64('FFF0000000000000')),
      i64('8000000000000000'),
    );
    returns(
      'i64_trunc_sat_f64_s_20',
      () => m0.i64_trunc_sat_f64_s(f64('7FF8000000000000')),
      0,
    );
    returns(
      'i64_trunc_sat_f64_s_21',
      () => m0.i64_trunc_sat_f64_s(f64('7FF4000000000000')),
      0,
    );
    returns(
      'i64_trunc_sat_f64_s_22',
      () => m0.i64_trunc_sat_f64_s(f64('FFF8000000000000')),
      0,
    );
    returns(
      'i64_trunc_sat_f64_s_23',
      () => m0.i64_trunc_sat_f64_s(f64('FFF4000000000000')),
      0,
    );
    returns('i64_trunc_sat_f64_u_0', () => m0.i64_trunc_sat_f64_u(f64('0')), 0);
    returns(
      'i64_trunc_sat_f64_u_1',
      () => m0.i64_trunc_sat_f64_u(f64('8000000000000000')),
      0,
    );
    returns('i64_trunc_sat_f64_u_2', () => m0.i64_trunc_sat_f64_u(f64('1')), 0);
    returns(
      'i64_trunc_sat_f64_u_3',
      () => m0.i64_trunc_sat_f64_u(f64('8000000000000001')),
      0,
    );
    returns(
      'i64_trunc_sat_f64_u_4',
      () => m0.i64_trunc_sat_f64_u(f64('3FF0000000000000')),
      0x1,
    );
    returns(
      'i64_trunc_sat_f64_u_5',
      () => m0.i64_trunc_sat_f64_u(f64('3FF199999999999A')),
      0x1,
    );
    returns(
      'i64_trunc_sat_f64_u_6',
      () => m0.i64_trunc_sat_f64_u(f64('3FF8000000000000')),
      0x1,
    );
    returns(
      'i64_trunc_sat_f64_u_7',
      () => m0.i64_trunc_sat_f64_u(f64('41EFFFFFFFE00000')),
      i64('FFFFFFFF'),
    );
    returns(
      'i64_trunc_sat_f64_u_8',
      () => m0.i64_trunc_sat_f64_u(f64('41F0000000000000')),
      i64('100000000'),
    );
    returns(
      'i64_trunc_sat_f64_u_9',
      () => m0.i64_trunc_sat_f64_u(f64('43EFFFFFFFFFFFFF')),
      i64('FFFFFFFFFFFFF800'),
    );
    returns(
      'i64_trunc_sat_f64_u_10',
      () => m0.i64_trunc_sat_f64_u(f64('BFECCCCCCCCCCCCD')),
      0,
    );
    returns(
      'i64_trunc_sat_f64_u_11',
      () => m0.i64_trunc_sat_f64_u(f64('BFEFFFFFFFFFFFFF')),
      0,
    );
    returns(
      'i64_trunc_sat_f64_u_12',
      () => m0.i64_trunc_sat_f64_u(f64('4197D78400000000')),
      i64('5F5E100'),
    );
    returns(
      'i64_trunc_sat_f64_u_13',
      () => m0.i64_trunc_sat_f64_u(f64('4341C37937E08000')),
      i64('2386F26FC10000'),
    );
    returns(
      'i64_trunc_sat_f64_u_14',
      () => m0.i64_trunc_sat_f64_u(f64('43E0000000000000')),
      i64('8000000000000000'),
    );
    returns(
      'i64_trunc_sat_f64_u_15',
      () => m0.i64_trunc_sat_f64_u(f64('43F0000000000000')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_trunc_sat_f64_u_16',
      () => m0.i64_trunc_sat_f64_u(f64('BFF0000000000000')),
      0,
    );
    returns(
      'i64_trunc_sat_f64_u_17',
      () => m0.i64_trunc_sat_f64_u(f64('7FF0000000000000')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_trunc_sat_f64_u_18',
      () => m0.i64_trunc_sat_f64_u(f64('FFF0000000000000')),
      0,
    );
    returns(
      'i64_trunc_sat_f64_u_19',
      () => m0.i64_trunc_sat_f64_u(f64('7FF8000000000000')),
      0,
    );
    returns(
      'i64_trunc_sat_f64_u_20',
      () => m0.i64_trunc_sat_f64_u(f64('7FF4000000000000')),
      0,
    );
    returns(
      'i64_trunc_sat_f64_u_21',
      () => m0.i64_trunc_sat_f64_u(f64('FFF8000000000000')),
      0,
    );
    returns(
      'i64_trunc_sat_f64_u_22',
      () => m0.i64_trunc_sat_f64_u(f64('FFF4000000000000')),
      0,
    );
    returns(
      'f32_convert_i32_s_6',
      () => m0.f32_convert_i32_s(i32('1000001')),
      f32('4B800000'),
    );
    returns(
      'f32_convert_i32_s_7',
      () => m0.f32_convert_i32_s(i32('FEFFFFFF')),
      f32('CB800000'),
    );
    returns(
      'f32_convert_i32_s_8',
      () => m0.f32_convert_i32_s(i32('1000003')),
      f32('4B800002'),
    );
    returns(
      'f32_convert_i32_s_9',
      () => m0.f32_convert_i32_s(i32('FEFFFFFD')),
      f32('CB800002'),
    );
    returns(
      'f32_convert_i64_s_0',
      () => m0.f32_convert_i64_s(0x1),
      f32('3F800000'),
    );
    returns(
      'f32_convert_i64_s_1',
      () => m0.f32_convert_i64_s(i64('FFFFFFFFFFFFFFFF')),
      f32('BF800000'),
    );
    returns('f32_convert_i64_s_2', () => m0.f32_convert_i64_s(0), f32('0'));
    returns(
      'f32_convert_i64_s_3',
      () => m0.f32_convert_i64_s(i64('7FFFFFFFFFFFFFFF')),
      f32('5F000000'),
    );
    returns(
      'f32_convert_i64_s_4',
      () => m0.f32_convert_i64_s(i64('8000000000000000')),
      f32('DF000000'),
    );
    returns(
      'f32_convert_i64_s_5',
      () => m0.f32_convert_i64_s(i64('11DB9E76A2483')),
      f32('578EDCF4'),
    );
    returns(
      'f32_convert_i64_s_6',
      () => m0.f32_convert_i64_s(i64('1000001')),
      f32('4B800000'),
    );
    returns(
      'f32_convert_i64_s_7',
      () => m0.f32_convert_i64_s(i64('FFFFFFFFFEFFFFFF')),
      f32('CB800000'),
    );
    returns(
      'f32_convert_i64_s_8',
      () => m0.f32_convert_i64_s(i64('1000003')),
      f32('4B800002'),
    );
    returns(
      'f32_convert_i64_s_9',
      () => m0.f32_convert_i64_s(i64('FFFFFFFFFEFFFFFD')),
      f32('CB800002'),
    );
    returns(
      'f32_convert_i64_s_10',
      () => m0.f32_convert_i64_s(i64('7FFFFF4000000001')),
      f32('5EFFFFFF'),
    );
    returns(
      'f32_convert_i64_s_11',
      () => m0.f32_convert_i64_s(i64('8000004000000001')),
      f32('DEFFFFFF'),
    );
    returns(
      'f32_convert_i64_s_12',
      () => m0.f32_convert_i64_s(i64('20000020000001')),
      f32('5A000001'),
    );
    returns(
      'f32_convert_i64_s_13',
      () => m0.f32_convert_i64_s(i64('FFDFFFFFDFFFFFFF')),
      f32('DA000001'),
    );
    returns(
      'f64_convert_i32_s_0',
      () => m0.f64_convert_i32_s(0x1),
      f64('3FF0000000000000'),
    );
    returns(
      'f64_convert_i32_s_1',
      () => m0.f64_convert_i32_s(i32('FFFFFFFF')),
      f64('BFF0000000000000'),
    );
    returns('f64_convert_i32_s_2', () => m0.f64_convert_i32_s(0), f64('0'));
    returns(
      'f64_convert_i32_s_3',
      () => m0.f64_convert_i32_s(i32('7FFFFFFF')),
      f64('41DFFFFFFFC00000'),
    );
    returns(
      'f64_convert_i32_s_4',
      () => m0.f64_convert_i32_s(i32('80000000')),
      f64('C1E0000000000000'),
    );
    returns(
      'f64_convert_i32_s_5',
      () => m0.f64_convert_i32_s(i32('3ADE68B1')),
      f64('41CD6F3458800000'),
    );
    returns(
      'f64_convert_i64_s_0',
      () => m0.f64_convert_i64_s(0x1),
      f64('3FF0000000000000'),
    );
    returns(
      'f64_convert_i64_s_1',
      () => m0.f64_convert_i64_s(i64('FFFFFFFFFFFFFFFF')),
      f64('BFF0000000000000'),
    );
    returns('f64_convert_i64_s_2', () => m0.f64_convert_i64_s(0), f64('0'));
    returns(
      'f64_convert_i64_s_3',
      () => m0.f64_convert_i64_s(i64('7FFFFFFFFFFFFFFF')),
      f64('43E0000000000000'),
    );
    returns(
      'f64_convert_i64_s_4',
      () => m0.f64_convert_i64_s(i64('8000000000000000')),
      f64('C3E0000000000000'),
    );
    returns(
      'f64_convert_i64_s_5',
      () => m0.f64_convert_i64_s(i64('10969D374B968E')),
      f64('4330969D374B968E'),
    );
    returns(
      'f64_convert_i64_s_6',
      () => m0.f64_convert_i64_s(i64('20000000000001')),
      f64('4340000000000000'),
    );
    returns(
      'f64_convert_i64_s_7',
      () => m0.f64_convert_i64_s(i64('FFDFFFFFFFFFFFFF')),
      f64('C340000000000000'),
    );
    returns(
      'f64_convert_i64_s_8',
      () => m0.f64_convert_i64_s(i64('20000000000003')),
      f64('4340000000000002'),
    );
    returns(
      'f64_convert_i64_s_9',
      () => m0.f64_convert_i64_s(i64('FFDFFFFFFFFFFFFD')),
      f64('C340000000000002'),
    );
    returns(
      'f32_convert_i32_u_0',
      () => m0.f32_convert_i32_u(0x1),
      f32('3F800000'),
    );
    returns('f32_convert_i32_u_1', () => m0.f32_convert_i32_u(0), f32('0'));
    returns(
      'f32_convert_i32_u_2',
      () => m0.f32_convert_i32_u(i32('7FFFFFFF')),
      f32('4F000000'),
    );
    returns(
      'f32_convert_i32_u_3',
      () => m0.f32_convert_i32_u(i32('80000000')),
      f32('4F000000'),
    );
    returns(
      'f32_convert_i32_u_4',
      () => m0.f32_convert_i32_u(i32('12345678')),
      f32('4D91A2B4'),
    );
    returns(
      'f32_convert_i32_u_5',
      () => m0.f32_convert_i32_u(i32('FFFFFFFF')),
      f32('4F800000'),
    );
    returns(
      'f32_convert_i32_u_6',
      () => m0.f32_convert_i32_u(i32('80000080')),
      f32('4F000000'),
    );
    returns(
      'f32_convert_i32_u_7',
      () => m0.f32_convert_i32_u(i32('80000081')),
      f32('4F000001'),
    );
    returns(
      'f32_convert_i32_u_8',
      () => m0.f32_convert_i32_u(i32('80000082')),
      f32('4F000001'),
    );
    returns(
      'f32_convert_i32_u_9',
      () => m0.f32_convert_i32_u(i32('FFFFFE80')),
      f32('4F7FFFFE'),
    );
    returns(
      'f32_convert_i32_u_10',
      () => m0.f32_convert_i32_u(i32('FFFFFE81')),
      f32('4F7FFFFF'),
    );
    returns(
      'f32_convert_i32_u_11',
      () => m0.f32_convert_i32_u(i32('FFFFFE82')),
      f32('4F7FFFFF'),
    );
    returns(
      'f32_convert_i32_u_12',
      () => m0.f32_convert_i32_u(i32('1000001')),
      f32('4B800000'),
    );
    returns(
      'f32_convert_i32_u_13',
      () => m0.f32_convert_i32_u(i32('1000003')),
      f32('4B800002'),
    );
    returns(
      'f32_convert_i64_u_0',
      () => m0.f32_convert_i64_u(0x1),
      f32('3F800000'),
    );
    returns('f32_convert_i64_u_1', () => m0.f32_convert_i64_u(0), f32('0'));
    returns(
      'f32_convert_i64_u_2',
      () => m0.f32_convert_i64_u(i64('7FFFFFFFFFFFFFFF')),
      f32('5F000000'),
    );
    returns(
      'f32_convert_i64_u_3',
      () => m0.f32_convert_i64_u(i64('8000000000000000')),
      f32('5F000000'),
    );
    returns(
      'f32_convert_i64_u_4',
      () => m0.f32_convert_i64_u(i64('FFFFFFFFFFFFFFFF')),
      f32('5F800000'),
    );
    returns(
      'f32_convert_i64_u_5',
      () => m0.f32_convert_i64_u(i64('1000001')),
      f32('4B800000'),
    );
    returns(
      'f32_convert_i64_u_6',
      () => m0.f32_convert_i64_u(i64('1000003')),
      f32('4B800002'),
    );
    returns(
      'f32_convert_i64_u_7',
      () => m0.f32_convert_i64_u(i64('20000020000001')),
      f32('5A000001'),
    );
    returns(
      'f32_convert_i64_u_8',
      () => m0.f32_convert_i64_u(i64('7FFFFFBFFFFFFFFF')),
      f32('5EFFFFFF'),
    );
    returns(
      'f32_convert_i64_u_9',
      () => m0.f32_convert_i64_u(i64('8000008000000001')),
      f32('5F000001'),
    );
    returns(
      'f32_convert_i64_u_10',
      () => m0.f32_convert_i64_u(i64('FFFFFE8000000001')),
      f32('5F7FFFFF'),
    );
    returns(
      'f64_convert_i32_u_0',
      () => m0.f64_convert_i32_u(0x1),
      f64('3FF0000000000000'),
    );
    returns('f64_convert_i32_u_1', () => m0.f64_convert_i32_u(0), f64('0'));
    returns(
      'f64_convert_i32_u_2',
      () => m0.f64_convert_i32_u(i32('7FFFFFFF')),
      f64('41DFFFFFFFC00000'),
    );
    returns(
      'f64_convert_i32_u_3',
      () => m0.f64_convert_i32_u(i32('80000000')),
      f64('41E0000000000000'),
    );
    returns(
      'f64_convert_i32_u_4',
      () => m0.f64_convert_i32_u(i32('FFFFFFFF')),
      f64('41EFFFFFFFE00000'),
    );
    returns(
      'f64_convert_i64_u_0',
      () => m0.f64_convert_i64_u(0x1),
      f64('3FF0000000000000'),
    );
    returns('f64_convert_i64_u_1', () => m0.f64_convert_i64_u(0), f64('0'));
    returns(
      'f64_convert_i64_u_2',
      () => m0.f64_convert_i64_u(i64('7FFFFFFFFFFFFFFF')),
      f64('43E0000000000000'),
    );
    returns(
      'f64_convert_i64_u_3',
      () => m0.f64_convert_i64_u(i64('8000000000000000')),
      f64('43E0000000000000'),
    );
    returns(
      'f64_convert_i64_u_4',
      () => m0.f64_convert_i64_u(i64('FFFFFFFFFFFFFFFF')),
      f64('43F0000000000000'),
    );
    returns(
      'f64_convert_i64_u_5',
      () => m0.f64_convert_i64_u(i64('8000000000000400')),
      f64('43E0000000000000'),
    );
    returns(
      'f64_convert_i64_u_6',
      () => m0.f64_convert_i64_u(i64('8000000000000401')),
      f64('43E0000000000001'),
    );
    returns(
      'f64_convert_i64_u_7',
      () => m0.f64_convert_i64_u(i64('8000000000000402')),
      f64('43E0000000000001'),
    );
    returns(
      'f64_convert_i64_u_8',
      () => m0.f64_convert_i64_u(i64('FFFFFFFFFFFFF400')),
      f64('43EFFFFFFFFFFFFE'),
    );
    returns(
      'f64_convert_i64_u_9',
      () => m0.f64_convert_i64_u(i64('FFFFFFFFFFFFF401')),
      f64('43EFFFFFFFFFFFFF'),
    );
    returns(
      'f64_convert_i64_u_10',
      () => m0.f64_convert_i64_u(i64('FFFFFFFFFFFFF402')),
      f64('43EFFFFFFFFFFFFF'),
    );
    returns(
      'f64_convert_i64_u_11',
      () => m0.f64_convert_i64_u(i64('20000000000001')),
      f64('4340000000000000'),
    );
    returns(
      'f64_convert_i64_u_12',
      () => m0.f64_convert_i64_u(i64('20000000000003')),
      f64('4340000000000002'),
    );
    returns('f64_promote_f32_0', () => m0.f64_promote_f32(f32('0')), f64('0'));
    returns(
      'f64_promote_f32_1',
      () => m0.f64_promote_f32(f32('80000000')),
      f64('8000000000000000'),
    );
    returns(
      'f64_promote_f32_2',
      () => m0.f64_promote_f32(f32('1')),
      f64('36A0000000000000'),
    );
    returns(
      'f64_promote_f32_3',
      () => m0.f64_promote_f32(f32('80000001')),
      f64('B6A0000000000000'),
    );
    returns(
      'f64_promote_f32_4',
      () => m0.f64_promote_f32(f32('3F800000')),
      f64('3FF0000000000000'),
    );
    returns(
      'f64_promote_f32_5',
      () => m0.f64_promote_f32(f32('BF800000')),
      f64('BFF0000000000000'),
    );
    returns(
      'f64_promote_f32_6',
      () => m0.f64_promote_f32(f32('FF7FFFFF')),
      f64('C7EFFFFFE0000000'),
    );
    returns(
      'f64_promote_f32_7',
      () => m0.f64_promote_f32(f32('7F7FFFFF')),
      f64('47EFFFFFE0000000'),
    );
    returns(
      'f64_promote_f32_8',
      () => m0.f64_promote_f32(f32('4000000')),
      f64('3880000000000000'),
    );
    returns(
      'f64_promote_f32_9',
      () => m0.f64_promote_f32(f32('7E47C33F')),
      f64('47C8F867E0000000'),
    );
    returns(
      'f64_promote_f32_10',
      () => m0.f64_promote_f32(f32('7F800000')),
      f64('7FF0000000000000'),
    );
    returns(
      'f64_promote_f32_11',
      () => m0.f64_promote_f32(f32('FF800000')),
      f64('FFF0000000000000'),
    );
    returns(
      'f64_promote_f32_12',
      () => m0.f64_promote_f32(f32('7FC00000')),
      double.nan,
    );
    returns(
      'f64_promote_f32_13',
      () => m0.f64_promote_f32(f32('7FA00000')),
      double.nan,
    );
    returns(
      'f64_promote_f32_14',
      () => m0.f64_promote_f32(f32('FFC00000')),
      double.nan,
    );
    returns(
      'f64_promote_f32_15',
      () => m0.f64_promote_f32(f32('FFA00000')),
      double.nan,
    );
    returns('f32_demote_f64_0', () => m0.f32_demote_f64(f64('0')), f32('0'));
    returns(
      'f32_demote_f64_1',
      () => m0.f32_demote_f64(f64('8000000000000000')),
      f32('80000000'),
    );
    returns('f32_demote_f64_2', () => m0.f32_demote_f64(f64('1')), f32('0'));
    returns(
      'f32_demote_f64_3',
      () => m0.f32_demote_f64(f64('8000000000000001')),
      f32('80000000'),
    );
    returns(
      'f32_demote_f64_4',
      () => m0.f32_demote_f64(f64('3FF0000000000000')),
      f32('3F800000'),
    );
    returns(
      'f32_demote_f64_5',
      () => m0.f32_demote_f64(f64('BFF0000000000000')),
      f32('BF800000'),
    );
    returns(
      'f32_demote_f64_6',
      () => m0.f32_demote_f64(f64('380FFFFFE0000000')),
      f32('800000'),
    );
    returns(
      'f32_demote_f64_7',
      () => m0.f32_demote_f64(f64('B80FFFFFE0000000')),
      f32('80800000'),
    );
    returns(
      'f32_demote_f64_8',
      () => m0.f32_demote_f64(f64('380FFFFFDFFFFFFF')),
      f32('7FFFFF'),
    );
    returns(
      'f32_demote_f64_9',
      () => m0.f32_demote_f64(f64('B80FFFFFDFFFFFFF')),
      f32('807FFFFF'),
    );
    returns(
      'f32_demote_f64_10',
      () => m0.f32_demote_f64(f64('36A0000000000000')),
      f32('1'),
    );
    returns(
      'f32_demote_f64_11',
      () => m0.f32_demote_f64(f64('B6A0000000000000')),
      f32('80000001'),
    );
    returns(
      'f32_demote_f64_12',
      () => m0.f32_demote_f64(f64('47EFFFFFD0000000')),
      f32('7F7FFFFE'),
    );
    returns(
      'f32_demote_f64_13',
      () => m0.f32_demote_f64(f64('C7EFFFFFD0000000')),
      f32('FF7FFFFE'),
    );
    returns(
      'f32_demote_f64_14',
      () => m0.f32_demote_f64(f64('47EFFFFFD0000001')),
      f32('7F7FFFFF'),
    );
    returns(
      'f32_demote_f64_15',
      () => m0.f32_demote_f64(f64('C7EFFFFFD0000001')),
      f32('FF7FFFFF'),
    );
    returns(
      'f32_demote_f64_16',
      () => m0.f32_demote_f64(f64('47EFFFFFE0000000')),
      f32('7F7FFFFF'),
    );
    returns(
      'f32_demote_f64_17',
      () => m0.f32_demote_f64(f64('C7EFFFFFE0000000')),
      f32('FF7FFFFF'),
    );
    returns(
      'f32_demote_f64_18',
      () => m0.f32_demote_f64(f64('47EFFFFFEFFFFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'f32_demote_f64_19',
      () => m0.f32_demote_f64(f64('C7EFFFFFEFFFFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'f32_demote_f64_20',
      () => m0.f32_demote_f64(f64('47EFFFFFF0000000')),
      f32('7F800000'),
    );
    returns(
      'f32_demote_f64_21',
      () => m0.f32_demote_f64(f64('C7EFFFFFF0000000')),
      f32('FF800000'),
    );
    returns(
      'f32_demote_f64_22',
      () => m0.f32_demote_f64(f64('3880000000000000')),
      f32('4000000'),
    );
    returns(
      'f32_demote_f64_23',
      () => m0.f32_demote_f64(f64('47C8F867E0000000')),
      f32('7E47C33F'),
    );
    returns(
      'f32_demote_f64_24',
      () => m0.f32_demote_f64(f64('7FF0000000000000')),
      f32('7F800000'),
    );
    returns(
      'f32_demote_f64_25',
      () => m0.f32_demote_f64(f64('FFF0000000000000')),
      f32('FF800000'),
    );
    returns(
      'f32_demote_f64_26',
      () => m0.f32_demote_f64(f64('3FF0000000000001')),
      f32('3F800000'),
    );
    returns(
      'f32_demote_f64_27',
      () => m0.f32_demote_f64(f64('3FEFFFFFFFFFFFFF')),
      f32('3F800000'),
    );
    returns(
      'f32_demote_f64_28',
      () => m0.f32_demote_f64(f64('3FF0000010000000')),
      f32('3F800000'),
    );
    returns(
      'f32_demote_f64_29',
      () => m0.f32_demote_f64(f64('3FF0000010000001')),
      f32('3F800001'),
    );
    returns(
      'f32_demote_f64_30',
      () => m0.f32_demote_f64(f64('3FF000002FFFFFFF')),
      f32('3F800001'),
    );
    returns(
      'f32_demote_f64_31',
      () => m0.f32_demote_f64(f64('3FF0000030000000')),
      f32('3F800002'),
    );
    returns(
      'f32_demote_f64_32',
      () => m0.f32_demote_f64(f64('3FF0000050000000')),
      f32('3F800002'),
    );
    returns(
      'f32_demote_f64_33',
      () => m0.f32_demote_f64(f64('4170000010000000')),
      f32('4B800000'),
    );
    returns(
      'f32_demote_f64_34',
      () => m0.f32_demote_f64(f64('4170000010000001')),
      f32('4B800001'),
    );
    returns(
      'f32_demote_f64_35',
      () => m0.f32_demote_f64(f64('417000002FFFFFFF')),
      f32('4B800001'),
    );
    returns(
      'f32_demote_f64_36',
      () => m0.f32_demote_f64(f64('4170000030000000')),
      f32('4B800002'),
    );
    returns(
      'f32_demote_f64_37',
      () => m0.f32_demote_f64(f64('46B4EAE4F7024C70')),
      f32('75A75728'),
    );
    returns(
      'f32_demote_f64_38',
      () => m0.f32_demote_f64(f64('38EA12E71E358685')),
      f32('7509739'),
    );
    returns(
      'f32_demote_f64_39',
      () => m0.f32_demote_f64(f64('380CB98354D521FF')),
      f32('72E60D'),
    );
    returns(
      'f32_demote_f64_40',
      () => m0.f32_demote_f64(f64('C006972B30CFB562')),
      f32('C034B95A'),
    );
    returns(
      'f32_demote_f64_41',
      () => m0.f32_demote_f64(f64('C6FBEDBE4819D4C4')),
      f32('F7DF6DF2'),
    );
    returns(
      'f32_demote_f64_42',
      () => m0.f32_demote_f64(f64('7FF8000000000000')),
      double.nan,
    );
    returns(
      'f32_demote_f64_43',
      () => m0.f32_demote_f64(f64('7FF4000000000000')),
      double.nan,
    );
    returns(
      'f32_demote_f64_44',
      () => m0.f32_demote_f64(f64('FFF8000000000000')),
      double.nan,
    );
    returns(
      'f32_demote_f64_45',
      () => m0.f32_demote_f64(f64('FFF4000000000000')),
      double.nan,
    );
    returns(
      'f32_demote_f64_46',
      () => m0.f32_demote_f64(f64('10000000000000')),
      f32('0'),
    );
    returns(
      'f32_demote_f64_47',
      () => m0.f32_demote_f64(f64('8010000000000000')),
      f32('80000000'),
    );
    returns(
      'f32_demote_f64_48',
      () => m0.f32_demote_f64(f64('3690000000000000')),
      f32('0'),
    );
    returns(
      'f32_demote_f64_49',
      () => m0.f32_demote_f64(f64('B690000000000000')),
      f32('80000000'),
    );
    returns(
      'f32_demote_f64_50',
      () => m0.f32_demote_f64(f64('3690000000000001')),
      f32('1'),
    );
    returns(
      'f32_demote_f64_51',
      () => m0.f32_demote_f64(f64('B690000000000001')),
      f32('80000001'),
    );
    returns('f32_reinterpret_i32_0', () => m0.f32_reinterpret_i32(0), f32('0'));
    returns(
      'f32_reinterpret_i32_1',
      () => m0.f32_reinterpret_i32(i32('80000000')),
      f32('80000000'),
    );
    returns(
      'f32_reinterpret_i32_2',
      () => m0.f32_reinterpret_i32(0x1),
      f32('1'),
    );
    returns(
      'f32_reinterpret_i32_3',
      () => m0.f32_reinterpret_i32(i32('FFFFFFFF')),
      f32('FFFFFFFF'),
    );
    returns(
      'f32_reinterpret_i32_4',
      () => m0.f32_reinterpret_i32(i32('75BCD15')),
      f32('75BCD15'),
    );
    returns(
      'f32_reinterpret_i32_5',
      () => m0.f32_reinterpret_i32(i32('80000001')),
      f32('80000001'),
    );
    returns(
      'f32_reinterpret_i32_6',
      () => m0.f32_reinterpret_i32(i32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'f32_reinterpret_i32_7',
      () => m0.f32_reinterpret_i32(i32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'f32_reinterpret_i32_8',
      () => m0.f32_reinterpret_i32(i32('7FC00000')),
      f32('7FC00000'),
    );
    returns(
      'f32_reinterpret_i32_9',
      () => m0.f32_reinterpret_i32(i32('FFC00000')),
      f32('FFC00000'),
    );
    returns(
      'f32_reinterpret_i32_10',
      () => m0.f32_reinterpret_i32(i32('7FA00000')),
      f32('7FA00000'),
    );
    returns(
      'f32_reinterpret_i32_11',
      () => m0.f32_reinterpret_i32(i32('FFA00000')),
      f32('FFA00000'),
    );
    returns('f64_reinterpret_i64_0', () => m0.f64_reinterpret_i64(0), f64('0'));
    returns(
      'f64_reinterpret_i64_1',
      () => m0.f64_reinterpret_i64(0x1),
      f64('1'),
    );
    returns(
      'f64_reinterpret_i64_2',
      () => m0.f64_reinterpret_i64(i64('FFFFFFFFFFFFFFFF')),
      f64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'f64_reinterpret_i64_3',
      () => m0.f64_reinterpret_i64(i64('8000000000000000')),
      f64('8000000000000000'),
    );
    returns(
      'f64_reinterpret_i64_4',
      () => m0.f64_reinterpret_i64(i64('499602D2')),
      f64('499602D2'),
    );
    returns(
      'f64_reinterpret_i64_5',
      () => m0.f64_reinterpret_i64(i64('8000000000000001')),
      f64('8000000000000001'),
    );
    returns(
      'f64_reinterpret_i64_6',
      () => m0.f64_reinterpret_i64(i64('7FF0000000000000')),
      f64('7FF0000000000000'),
    );
    returns(
      'f64_reinterpret_i64_7',
      () => m0.f64_reinterpret_i64(i64('FFF0000000000000')),
      f64('FFF0000000000000'),
    );
    returns(
      'f64_reinterpret_i64_8',
      () => m0.f64_reinterpret_i64(i64('7FF8000000000000')),
      f64('7FF8000000000000'),
    );
    returns(
      'f64_reinterpret_i64_9',
      () => m0.f64_reinterpret_i64(i64('FFF8000000000000')),
      f64('FFF8000000000000'),
    );
    returns(
      'f64_reinterpret_i64_10',
      () => m0.f64_reinterpret_i64(i64('7FF4000000000000')),
      f64('7FF4000000000000'),
    );
    returns(
      'f64_reinterpret_i64_11',
      () => m0.f64_reinterpret_i64(i64('FFF4000000000000')),
      f64('FFF4000000000000'),
    );
    returns('i32_reinterpret_f32_0', () => m0.i32_reinterpret_f32(f32('0')), 0);
    returns(
      'i32_reinterpret_f32_1',
      () => m0.i32_reinterpret_f32(f32('80000000')),
      i32('80000000'),
    );
    returns(
      'i32_reinterpret_f32_2',
      () => m0.i32_reinterpret_f32(f32('1')),
      0x1,
    );
    returns(
      'i32_reinterpret_f32_3',
      () => m0.i32_reinterpret_f32(f32('FFFFFFFF')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_reinterpret_f32_4',
      () => m0.i32_reinterpret_f32(f32('80000001')),
      i32('80000001'),
    );
    returns(
      'i32_reinterpret_f32_5',
      () => m0.i32_reinterpret_f32(f32('3F800000')),
      i32('3F800000'),
    );
    returns(
      'i32_reinterpret_f32_6',
      () => m0.i32_reinterpret_f32(f32('40490FDA')),
      i32('40490FDA'),
    );
    returns(
      'i32_reinterpret_f32_7',
      () => m0.i32_reinterpret_f32(f32('7F7FFFFF')),
      i32('7F7FFFFF'),
    );
    returns(
      'i32_reinterpret_f32_8',
      () => m0.i32_reinterpret_f32(f32('FF7FFFFF')),
      i32('FF7FFFFF'),
    );
    returns(
      'i32_reinterpret_f32_9',
      () => m0.i32_reinterpret_f32(f32('7F800000')),
      i32('7F800000'),
    );
    returns(
      'i32_reinterpret_f32_10',
      () => m0.i32_reinterpret_f32(f32('FF800000')),
      i32('FF800000'),
    );
    returns(
      'i32_reinterpret_f32_11',
      () => m0.i32_reinterpret_f32(f32('7FC00000')),
      i32('7FC00000'),
    );
    returns(
      'i32_reinterpret_f32_12',
      () => m0.i32_reinterpret_f32(f32('FFC00000')),
      i32('FFC00000'),
    );
    returns(
      'i32_reinterpret_f32_13',
      () => m0.i32_reinterpret_f32(f32('7FA00000')),
      i32('7FA00000'),
    );
    returns(
      'i32_reinterpret_f32_14',
      () => m0.i32_reinterpret_f32(f32('FFA00000')),
      i32('FFA00000'),
    );
    returns('i64_reinterpret_f64_0', () => m0.i64_reinterpret_f64(f64('0')), 0);
    returns(
      'i64_reinterpret_f64_1',
      () => m0.i64_reinterpret_f64(f64('8000000000000000')),
      i64('8000000000000000'),
    );
    returns(
      'i64_reinterpret_f64_2',
      () => m0.i64_reinterpret_f64(f64('1')),
      0x1,
    );
    returns(
      'i64_reinterpret_f64_3',
      () => m0.i64_reinterpret_f64(f64('FFFFFFFFFFFFFFFF')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_reinterpret_f64_4',
      () => m0.i64_reinterpret_f64(f64('8000000000000001')),
      i64('8000000000000001'),
    );
    returns(
      'i64_reinterpret_f64_5',
      () => m0.i64_reinterpret_f64(f64('3FF0000000000000')),
      i64('3FF0000000000000'),
    );
    returns(
      'i64_reinterpret_f64_6',
      () => m0.i64_reinterpret_f64(f64('400921FB54442D11')),
      i64('400921FB54442D11'),
    );
    returns(
      'i64_reinterpret_f64_7',
      () => m0.i64_reinterpret_f64(f64('7FEFFFFFFFFFFFFF')),
      i64('7FEFFFFFFFFFFFFF'),
    );
    returns(
      'i64_reinterpret_f64_8',
      () => m0.i64_reinterpret_f64(f64('FFEFFFFFFFFFFFFF')),
      i64('FFEFFFFFFFFFFFFF'),
    );
    returns(
      'i64_reinterpret_f64_9',
      () => m0.i64_reinterpret_f64(f64('7FF0000000000000')),
      i64('7FF0000000000000'),
    );
    returns(
      'i64_reinterpret_f64_10',
      () => m0.i64_reinterpret_f64(f64('FFF0000000000000')),
      i64('FFF0000000000000'),
    );
    returns(
      'i64_reinterpret_f64_11',
      () => m0.i64_reinterpret_f64(f64('7FF8000000000000')),
      i64('7FF8000000000000'),
    );
    returns(
      'i64_reinterpret_f64_12',
      () => m0.i64_reinterpret_f64(f64('FFF8000000000000')),
      i64('FFF8000000000000'),
    );
    returns(
      'i64_reinterpret_f64_13',
      () => m0.i64_reinterpret_f64(f64('7FF4000000000000')),
      i64('7FF4000000000000'),
    );
    returns(
      'i64_reinterpret_f64_14',
      () => m0.i64_reinterpret_f64(f64('FFF4000000000000')),
      i64('FFF4000000000000'),
    );
  });
}
