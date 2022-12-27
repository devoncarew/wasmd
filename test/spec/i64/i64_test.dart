// Generated from spec/test/core/i64.wast.

// ignore_for_file: unused_local_variable

import '../../src/infra.dart';
import 'i64.0.dart' as i64_0;

const String _idbz = 'integer divide by zero';
const String _io = 'integer overflow';

void main() {
  group('i64', () {
    // module i64.0.dart (line 3)
    var m0 = i64_0.I640Module();

    returns('add_0', () => m0.add(0x1, 0x1), 0x2);
    returns('add_1', () => m0.add(0x1, 0), 0x1);
    returns(
      'add_2',
      () => m0.add(i64('FFFFFFFFFFFFFFFF'), i64('FFFFFFFFFFFFFFFF')),
      i64('FFFFFFFFFFFFFFFE'),
    );
    returns('add_3', () => m0.add(i64('FFFFFFFFFFFFFFFF'), 0x1), 0);
    returns(
      'add_4',
      () => m0.add(i64('7FFFFFFFFFFFFFFF'), 0x1),
      i64('8000000000000000'),
    );
    returns(
      'add_5',
      () => m0.add(i64('8000000000000000'), i64('FFFFFFFFFFFFFFFF')),
      i64('7FFFFFFFFFFFFFFF'),
    );
    returns(
      'add_6',
      () => m0.add(i64('8000000000000000'), i64('8000000000000000')),
      0,
    );
    returns('add_7', () => m0.add(i64('3FFFFFFF'), 0x1), i64('40000000'));
    returns('sub_0', () => m0.sub(0x1, 0x1), 0);
    returns('sub_1', () => m0.sub(0x1, 0), 0x1);
    returns(
      'sub_2',
      () => m0.sub(i64('FFFFFFFFFFFFFFFF'), i64('FFFFFFFFFFFFFFFF')),
      0,
    );
    returns(
      'sub_3',
      () => m0.sub(i64('7FFFFFFFFFFFFFFF'), i64('FFFFFFFFFFFFFFFF')),
      i64('8000000000000000'),
    );
    returns(
      'sub_4',
      () => m0.sub(i64('8000000000000000'), 0x1),
      i64('7FFFFFFFFFFFFFFF'),
    );
    returns(
      'sub_5',
      () => m0.sub(i64('8000000000000000'), i64('8000000000000000')),
      0,
    );
    returns(
      'sub_6',
      () => m0.sub(i64('3FFFFFFF'), i64('FFFFFFFFFFFFFFFF')),
      i64('40000000'),
    );
    returns('mul_0', () => m0.mul(0x1, 0x1), 0x1);
    returns('mul_1', () => m0.mul(0x1, 0), 0);
    returns(
      'mul_2',
      () => m0.mul(i64('FFFFFFFFFFFFFFFF'), i64('FFFFFFFFFFFFFFFF')),
      0x1,
    );
    returns('mul_3', () => m0.mul(i64('1000000000000000'), 0x1000), 0);
    returns('mul_4', () => m0.mul(i64('8000000000000000'), 0), 0);
    returns(
      'mul_5',
      () => m0.mul(i64('8000000000000000'), i64('FFFFFFFFFFFFFFFF')),
      i64('8000000000000000'),
    );
    returns(
      'mul_6',
      () => m0.mul(i64('7FFFFFFFFFFFFFFF'), i64('FFFFFFFFFFFFFFFF')),
      i64('8000000000000001'),
    );
    returns(
      'mul_7',
      () => m0.mul(i64('123456789ABCDEF'), i64('FEDCBA9876543210')),
      i64('2236D88FE5618CF0'),
    );
    returns(
      'mul_8',
      () => m0.mul(i64('7FFFFFFFFFFFFFFF'), i64('7FFFFFFFFFFFFFFF')),
      0x1,
    );
    traps('div_s_0', () => m0.div_s(0x1, 0), _idbz);
    traps('div_s_1', () => m0.div_s(0, 0), _idbz);
    traps(
      'div_s_2',
      () => m0.div_s(i64('8000000000000000'), i64('FFFFFFFFFFFFFFFF')),
      _io,
    );
    traps('div_s_3', () => m0.div_s(i64('8000000000000000'), 0), _idbz);
    returns('div_s_4', () => m0.div_s(0x1, 0x1), 0x1);
    returns('div_s_5', () => m0.div_s(0, 0x1), 0);
    returns('div_s_6', () => m0.div_s(0, i64('FFFFFFFFFFFFFFFF')), 0);
    returns(
      'div_s_7',
      () => m0.div_s(i64('FFFFFFFFFFFFFFFF'), i64('FFFFFFFFFFFFFFFF')),
      0x1,
    );
    returns(
      'div_s_8',
      () => m0.div_s(i64('8000000000000000'), 0x2),
      i64('C000000000000000'),
    );
    returns(
      'div_s_9',
      () => m0.div_s(i64('8000000000000001'), 0x3E8),
      i64('FFDF3B645A1CAC09'),
    );
    returns('div_s_10', () => m0.div_s(0x5, 0x2), 0x2);
    returns(
      'div_s_11',
      () => m0.div_s(i64('FFFFFFFFFFFFFFFB'), 0x2),
      i64('FFFFFFFFFFFFFFFE'),
    );
    returns(
      'div_s_12',
      () => m0.div_s(0x5, i64('FFFFFFFFFFFFFFFE')),
      i64('FFFFFFFFFFFFFFFE'),
    );
    returns(
      'div_s_13',
      () => m0.div_s(i64('FFFFFFFFFFFFFFFB'), i64('FFFFFFFFFFFFFFFE')),
      0x2,
    );
    returns('div_s_14', () => m0.div_s(0x7, 0x3), 0x2);
    returns(
      'div_s_15',
      () => m0.div_s(i64('FFFFFFFFFFFFFFF9'), 0x3),
      i64('FFFFFFFFFFFFFFFE'),
    );
    returns(
      'div_s_16',
      () => m0.div_s(0x7, i64('FFFFFFFFFFFFFFFD')),
      i64('FFFFFFFFFFFFFFFE'),
    );
    returns(
      'div_s_17',
      () => m0.div_s(i64('FFFFFFFFFFFFFFF9'), i64('FFFFFFFFFFFFFFFD')),
      0x2,
    );
    returns('div_s_18', () => m0.div_s(0xB, 0x5), 0x2);
    returns('div_s_19', () => m0.div_s(0x11, 0x7), 0x2);
    traps('div_u_0', () => m0.div_u(0x1, 0), _idbz);
    traps('div_u_1', () => m0.div_u(0, 0), _idbz);
    returns('div_u_2', () => m0.div_u(0x1, 0x1), 0x1);
    returns('div_u_3', () => m0.div_u(0, 0x1), 0);
    returns(
      'div_u_4',
      () => m0.div_u(i64('FFFFFFFFFFFFFFFF'), i64('FFFFFFFFFFFFFFFF')),
      0x1,
    );
    returns(
      'div_u_5',
      () => m0.div_u(i64('8000000000000000'), i64('FFFFFFFFFFFFFFFF')),
      0,
    );
    returns(
      'div_u_6',
      () => m0.div_u(i64('8000000000000000'), 0x2),
      i64('4000000000000000'),
    );
    returns(
      'div_u_7',
      () => m0.div_u(i64('8FF00FF00FF00FF0'), i64('100000001')),
      i64('8FF00FEF'),
    );
    returns(
      'div_u_8',
      () => m0.div_u(i64('8000000000000001'), 0x3E8),
      i64('20C49BA5E353F7'),
    );
    returns('div_u_9', () => m0.div_u(0x5, 0x2), 0x2);
    returns(
      'div_u_10',
      () => m0.div_u(i64('FFFFFFFFFFFFFFFB'), 0x2),
      i64('7FFFFFFFFFFFFFFD'),
    );
    returns('div_u_11', () => m0.div_u(0x5, i64('FFFFFFFFFFFFFFFE')), 0);
    returns(
      'div_u_12',
      () => m0.div_u(i64('FFFFFFFFFFFFFFFB'), i64('FFFFFFFFFFFFFFFE')),
      0,
    );
    returns('div_u_13', () => m0.div_u(0x7, 0x3), 0x2);
    returns('div_u_14', () => m0.div_u(0xB, 0x5), 0x2);
    returns('div_u_15', () => m0.div_u(0x11, 0x7), 0x2);
    traps('rem_s_0', () => m0.rem_s(0x1, 0), _idbz);
    traps('rem_s_1', () => m0.rem_s(0, 0), _idbz);
    returns(
      'rem_s_2',
      () => m0.rem_s(i64('7FFFFFFFFFFFFFFF'), i64('FFFFFFFFFFFFFFFF')),
      0,
    );
    returns('rem_s_3', () => m0.rem_s(0x1, 0x1), 0);
    returns('rem_s_4', () => m0.rem_s(0, 0x1), 0);
    returns('rem_s_5', () => m0.rem_s(0, i64('FFFFFFFFFFFFFFFF')), 0);
    returns(
      'rem_s_6',
      () => m0.rem_s(i64('FFFFFFFFFFFFFFFF'), i64('FFFFFFFFFFFFFFFF')),
      0,
    );
    returns(
      'rem_s_7',
      () => m0.rem_s(i64('8000000000000000'), i64('FFFFFFFFFFFFFFFF')),
      0,
    );
    returns('rem_s_8', () => m0.rem_s(i64('8000000000000000'), 0x2), 0);
    returns(
      'rem_s_9',
      () => m0.rem_s(i64('8000000000000001'), 0x3E8),
      i64('FFFFFFFFFFFFFCD9'),
    );
    returns('rem_s_10', () => m0.rem_s(0x5, 0x2), 0x1);
    returns(
      'rem_s_11',
      () => m0.rem_s(i64('FFFFFFFFFFFFFFFB'), 0x2),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns('rem_s_12', () => m0.rem_s(0x5, i64('FFFFFFFFFFFFFFFE')), 0x1);
    returns(
      'rem_s_13',
      () => m0.rem_s(i64('FFFFFFFFFFFFFFFB'), i64('FFFFFFFFFFFFFFFE')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns('rem_s_14', () => m0.rem_s(0x7, 0x3), 0x1);
    returns(
      'rem_s_15',
      () => m0.rem_s(i64('FFFFFFFFFFFFFFF9'), 0x3),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns('rem_s_16', () => m0.rem_s(0x7, i64('FFFFFFFFFFFFFFFD')), 0x1);
    returns(
      'rem_s_17',
      () => m0.rem_s(i64('FFFFFFFFFFFFFFF9'), i64('FFFFFFFFFFFFFFFD')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns('rem_s_18', () => m0.rem_s(0xB, 0x5), 0x1);
    returns('rem_s_19', () => m0.rem_s(0x11, 0x7), 0x3);
    traps('rem_u_0', () => m0.rem_u(0x1, 0), _idbz);
    traps('rem_u_1', () => m0.rem_u(0, 0), _idbz);
    returns('rem_u_2', () => m0.rem_u(0x1, 0x1), 0);
    returns('rem_u_3', () => m0.rem_u(0, 0x1), 0);
    returns(
      'rem_u_4',
      () => m0.rem_u(i64('FFFFFFFFFFFFFFFF'), i64('FFFFFFFFFFFFFFFF')),
      0,
    );
    returns(
      'rem_u_5',
      () => m0.rem_u(i64('8000000000000000'), i64('FFFFFFFFFFFFFFFF')),
      i64('8000000000000000'),
    );
    returns('rem_u_6', () => m0.rem_u(i64('8000000000000000'), 0x2), 0);
    returns(
      'rem_u_7',
      () => m0.rem_u(i64('8FF00FF00FF00FF0'), i64('100000001')),
      i64('80000001'),
    );
    returns('rem_u_8', () => m0.rem_u(i64('8000000000000001'), 0x3E8), 0x329);
    returns('rem_u_9', () => m0.rem_u(0x5, 0x2), 0x1);
    returns('rem_u_10', () => m0.rem_u(i64('FFFFFFFFFFFFFFFB'), 0x2), 0x1);
    returns('rem_u_11', () => m0.rem_u(0x5, i64('FFFFFFFFFFFFFFFE')), 0x5);
    returns(
      'rem_u_12',
      () => m0.rem_u(i64('FFFFFFFFFFFFFFFB'), i64('FFFFFFFFFFFFFFFE')),
      i64('FFFFFFFFFFFFFFFB'),
    );
    returns('rem_u_13', () => m0.rem_u(0x7, 0x3), 0x1);
    returns('rem_u_14', () => m0.rem_u(0xB, 0x5), 0x1);
    returns('rem_u_15', () => m0.rem_u(0x11, 0x7), 0x3);
    returns('and_0', () => m0.and(0x1, 0), 0);
    returns('and_1', () => m0.and(0, 0x1), 0);
    returns('and_2', () => m0.and(0x1, 0x1), 0x1);
    returns('and_3', () => m0.and(0, 0), 0);
    returns(
      'and_4',
      () => m0.and(i64('7FFFFFFFFFFFFFFF'), i64('8000000000000000')),
      0,
    );
    returns(
      'and_5',
      () => m0.and(i64('7FFFFFFFFFFFFFFF'), i64('FFFFFFFFFFFFFFFF')),
      i64('7FFFFFFFFFFFFFFF'),
    );
    returns(
      'and_6',
      () => m0.and(i64('F0F0FFFF'), i64('FFFFF0F0')),
      i64('F0F0F0F0'),
    );
    returns(
      'and_7',
      () => m0.and(i64('FFFFFFFFFFFFFFFF'), i64('FFFFFFFFFFFFFFFF')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns('or_0', () => m0.or(0x1, 0), 0x1);
    returns('or_1', () => m0.or(0, 0x1), 0x1);
    returns('or_2', () => m0.or(0x1, 0x1), 0x1);
    returns('or_3', () => m0.or(0, 0), 0);
    returns(
      'or_4',
      () => m0.or(i64('7FFFFFFFFFFFFFFF'), i64('8000000000000000')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'or_5',
      () => m0.or(i64('8000000000000000'), 0),
      i64('8000000000000000'),
    );
    returns(
      'or_6',
      () => m0.or(i64('F0F0FFFF'), i64('FFFFF0F0')),
      i64('FFFFFFFF'),
    );
    returns(
      'or_7',
      () => m0.or(i64('FFFFFFFFFFFFFFFF'), i64('FFFFFFFFFFFFFFFF')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns('xor_0', () => m0.xor(0x1, 0), 0x1);
    returns('xor_1', () => m0.xor(0, 0x1), 0x1);
    returns('xor_2', () => m0.xor(0x1, 0x1), 0);
    returns('xor_3', () => m0.xor(0, 0), 0);
    returns(
      'xor_4',
      () => m0.xor(i64('7FFFFFFFFFFFFFFF'), i64('8000000000000000')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'xor_5',
      () => m0.xor(i64('8000000000000000'), 0),
      i64('8000000000000000'),
    );
    returns(
      'xor_6',
      () => m0.xor(i64('FFFFFFFFFFFFFFFF'), i64('8000000000000000')),
      i64('7FFFFFFFFFFFFFFF'),
    );
    returns(
      'xor_7',
      () => m0.xor(i64('FFFFFFFFFFFFFFFF'), i64('7FFFFFFFFFFFFFFF')),
      i64('8000000000000000'),
    );
    returns(
      'xor_8',
      () => m0.xor(i64('F0F0FFFF'), i64('FFFFF0F0')),
      i64('F0F0F0F'),
    );
    returns(
      'xor_9',
      () => m0.xor(i64('FFFFFFFFFFFFFFFF'), i64('FFFFFFFFFFFFFFFF')),
      0,
    );
    returns('shl_0', () => m0.shl(0x1, 0x1), 0x2);
    returns('shl_1', () => m0.shl(0x1, 0), 0x1);
    returns(
      'shl_2',
      () => m0.shl(i64('7FFFFFFFFFFFFFFF'), 0x1),
      i64('FFFFFFFFFFFFFFFE'),
    );
    returns(
      'shl_3',
      () => m0.shl(i64('FFFFFFFFFFFFFFFF'), 0x1),
      i64('FFFFFFFFFFFFFFFE'),
    );
    returns('shl_4', () => m0.shl(i64('8000000000000000'), 0x1), 0);
    returns(
      'shl_5',
      () => m0.shl(i64('4000000000000000'), 0x1),
      i64('8000000000000000'),
    );
    returns('shl_6', () => m0.shl(0x1, 0x3F), i64('8000000000000000'));
    returns('shl_7', () => m0.shl(0x1, 0x40), 0x1);
    returns('shl_8', () => m0.shl(0x1, 0x41), 0x2);
    returns(
      'shl_9',
      () => m0.shl(0x1, i64('FFFFFFFFFFFFFFFF')),
      i64('8000000000000000'),
    );
    returns(
      'shl_10',
      () => m0.shl(0x1, i64('7FFFFFFFFFFFFFFF')),
      i64('8000000000000000'),
    );
    returns('shr_s_0', () => m0.shr_s(0x1, 0x1), 0);
    returns('shr_s_1', () => m0.shr_s(0x1, 0), 0x1);
    returns(
      'shr_s_2',
      () => m0.shr_s(i64('FFFFFFFFFFFFFFFF'), 0x1),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'shr_s_3',
      () => m0.shr_s(i64('7FFFFFFFFFFFFFFF'), 0x1),
      i64('3FFFFFFFFFFFFFFF'),
    );
    returns(
      'shr_s_4',
      () => m0.shr_s(i64('8000000000000000'), 0x1),
      i64('C000000000000000'),
    );
    returns(
      'shr_s_5',
      () => m0.shr_s(i64('4000000000000000'), 0x1),
      i64('2000000000000000'),
    );
    returns('shr_s_6', () => m0.shr_s(0x1, 0x40), 0x1);
    returns('shr_s_7', () => m0.shr_s(0x1, 0x41), 0);
    returns('shr_s_8', () => m0.shr_s(0x1, i64('FFFFFFFFFFFFFFFF')), 0);
    returns('shr_s_9', () => m0.shr_s(0x1, i64('7FFFFFFFFFFFFFFF')), 0);
    returns('shr_s_10', () => m0.shr_s(0x1, i64('8000000000000000')), 0x1);
    returns(
      'shr_s_11',
      () => m0.shr_s(i64('8000000000000000'), 0x3F),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'shr_s_12',
      () => m0.shr_s(i64('FFFFFFFFFFFFFFFF'), 0x40),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'shr_s_13',
      () => m0.shr_s(i64('FFFFFFFFFFFFFFFF'), 0x41),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'shr_s_14',
      () => m0.shr_s(i64('FFFFFFFFFFFFFFFF'), i64('FFFFFFFFFFFFFFFF')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'shr_s_15',
      () => m0.shr_s(i64('FFFFFFFFFFFFFFFF'), i64('7FFFFFFFFFFFFFFF')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'shr_s_16',
      () => m0.shr_s(i64('FFFFFFFFFFFFFFFF'), i64('8000000000000000')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns('shr_u_0', () => m0.shr_u(0x1, 0x1), 0);
    returns('shr_u_1', () => m0.shr_u(0x1, 0), 0x1);
    returns(
      'shr_u_2',
      () => m0.shr_u(i64('FFFFFFFFFFFFFFFF'), 0x1),
      i64('7FFFFFFFFFFFFFFF'),
    );
    returns(
      'shr_u_3',
      () => m0.shr_u(i64('7FFFFFFFFFFFFFFF'), 0x1),
      i64('3FFFFFFFFFFFFFFF'),
    );
    returns(
      'shr_u_4',
      () => m0.shr_u(i64('8000000000000000'), 0x1),
      i64('4000000000000000'),
    );
    returns(
      'shr_u_5',
      () => m0.shr_u(i64('4000000000000000'), 0x1),
      i64('2000000000000000'),
    );
    returns('shr_u_6', () => m0.shr_u(0x1, 0x40), 0x1);
    returns('shr_u_7', () => m0.shr_u(0x1, 0x41), 0);
    returns('shr_u_8', () => m0.shr_u(0x1, i64('FFFFFFFFFFFFFFFF')), 0);
    returns('shr_u_9', () => m0.shr_u(0x1, i64('7FFFFFFFFFFFFFFF')), 0);
    returns('shr_u_10', () => m0.shr_u(0x1, i64('8000000000000000')), 0x1);
    returns('shr_u_11', () => m0.shr_u(i64('8000000000000000'), 0x3F), 0x1);
    returns(
      'shr_u_12',
      () => m0.shr_u(i64('FFFFFFFFFFFFFFFF'), 0x40),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'shr_u_13',
      () => m0.shr_u(i64('FFFFFFFFFFFFFFFF'), 0x41),
      i64('7FFFFFFFFFFFFFFF'),
    );
    returns(
      'shr_u_14',
      () => m0.shr_u(i64('FFFFFFFFFFFFFFFF'), i64('FFFFFFFFFFFFFFFF')),
      0x1,
    );
    returns(
      'shr_u_15',
      () => m0.shr_u(i64('FFFFFFFFFFFFFFFF'), i64('7FFFFFFFFFFFFFFF')),
      0x1,
    );
    returns(
      'shr_u_16',
      () => m0.shr_u(i64('FFFFFFFFFFFFFFFF'), i64('8000000000000000')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns('rotl_0', () => m0.rotl(0x1, 0x1), 0x2);
    returns('rotl_1', () => m0.rotl(0x1, 0), 0x1);
    returns(
      'rotl_2',
      () => m0.rotl(i64('FFFFFFFFFFFFFFFF'), 0x1),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns('rotl_3', () => m0.rotl(0x1, 0x40), 0x1);
    returns(
      'rotl_4',
      () => m0.rotl(i64('ABCD987602468ACE'), 0x1),
      i64('579B30EC048D159D'),
    );
    returns(
      'rotl_5',
      () => m0.rotl(i64('FE000000DC000000'), 0x4),
      i64('E000000DC000000F'),
    );
    returns(
      'rotl_6',
      () => m0.rotl(i64('ABCD1234EF567809'), 0x35),
      i64('13579A2469DEACF'),
    );
    returns(
      'rotl_7',
      () => m0.rotl(i64('ABD1234EF567809C'), 0x3F),
      i64('55E891A77AB3C04E'),
    );
    returns(
      'rotl_8',
      () => m0.rotl(i64('ABCD1234EF567809'), 0xF5),
      i64('13579A2469DEACF'),
    );
    returns(
      'rotl_9',
      () => m0.rotl(i64('ABCD7294EF567809'), i64('FFFFFFFFFFFFFFED')),
      i64('CF013579AE529DEA'),
    );
    returns(
      'rotl_10',
      () => m0.rotl(i64('ABD1234EF567809C'), i64('800000000000003F')),
      i64('55E891A77AB3C04E'),
    );
    returns('rotl_11', () => m0.rotl(0x1, 0x3F), i64('8000000000000000'));
    returns('rotl_12', () => m0.rotl(i64('8000000000000000'), 0x1), 0x1);
    returns('rotr_0', () => m0.rotr(0x1, 0x1), i64('8000000000000000'));
    returns('rotr_1', () => m0.rotr(0x1, 0), 0x1);
    returns(
      'rotr_2',
      () => m0.rotr(i64('FFFFFFFFFFFFFFFF'), 0x1),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns('rotr_3', () => m0.rotr(0x1, 0x40), 0x1);
    returns(
      'rotr_4',
      () => m0.rotr(i64('ABCD987602468ACE'), 0x1),
      i64('55E6CC3B01234567'),
    );
    returns(
      'rotr_5',
      () => m0.rotr(i64('FE000000DC000000'), 0x4),
      i64('FE000000DC00000'),
    );
    returns(
      'rotr_6',
      () => m0.rotr(i64('ABCD1234EF567809'), 0x35),
      i64('6891A77AB3C04D5E'),
    );
    returns(
      'rotr_7',
      () => m0.rotr(i64('ABD1234EF567809C'), 0x3F),
      i64('57A2469DEACF0139'),
    );
    returns(
      'rotr_8',
      () => m0.rotr(i64('ABCD1234EF567809'), 0xF5),
      i64('6891A77AB3C04D5E'),
    );
    returns(
      'rotr_9',
      () => m0.rotr(i64('ABCD7294EF567809'), i64('FFFFFFFFFFFFFFED')),
      i64('94A77AB3C04D5E6B'),
    );
    returns(
      'rotr_10',
      () => m0.rotr(i64('ABD1234EF567809C'), i64('800000000000003F')),
      i64('57A2469DEACF0139'),
    );
    returns('rotr_11', () => m0.rotr(0x1, 0x3F), 0x2);
    returns('rotr_12', () => m0.rotr(i64('8000000000000000'), 0x3F), 0x1);
    returns('clz_0', () => m0.clz(i64('FFFFFFFFFFFFFFFF')), 0);
    returns('clz_1', () => m0.clz(0), 0x40);
    returns('clz_2', () => m0.clz(0x8000), 0x30);
    returns('clz_3', () => m0.clz(0xFF), 0x38);
    returns('clz_4', () => m0.clz(i64('8000000000000000')), 0);
    returns('clz_5', () => m0.clz(0x1), 0x3F);
    returns('clz_6', () => m0.clz(0x2), 0x3E);
    returns('clz_7', () => m0.clz(i64('7FFFFFFFFFFFFFFF')), 0x1);
    returns('ctz_0', () => m0.ctz(i64('FFFFFFFFFFFFFFFF')), 0);
    returns('ctz_1', () => m0.ctz(0), 0x40);
    returns('ctz_2', () => m0.ctz(0x8000), 0xF);
    returns('ctz_3', () => m0.ctz(0x10000), 0x10);
    returns('ctz_4', () => m0.ctz(i64('8000000000000000')), 0x3F);
    returns('ctz_5', () => m0.ctz(i64('7FFFFFFFFFFFFFFF')), 0);
    returns('popcnt_0', () => m0.popcnt(i64('FFFFFFFFFFFFFFFF')), 0x40);
    returns('popcnt_1', () => m0.popcnt(0), 0);
    returns('popcnt_2', () => m0.popcnt(0x8000), 0x1);
    returns('popcnt_3', () => m0.popcnt(i64('8000800080008000')), 0x4);
    returns('popcnt_4', () => m0.popcnt(i64('7FFFFFFFFFFFFFFF')), 0x3F);
    returns('popcnt_5', () => m0.popcnt(i64('AAAAAAAA55555555')), 0x20);
    returns('popcnt_6', () => m0.popcnt(i64('99999999AAAAAAAA')), 0x20);
    returns('popcnt_7', () => m0.popcnt(i64('DEADBEEFDEADBEEF')), 0x30);
    returns('extend8_s_0', () => m0.extend8_s(0), 0);
    returns('extend8_s_1', () => m0.extend8_s(0x7F), 0x7F);
    returns('extend8_s_2', () => m0.extend8_s(0x80), i64('FFFFFFFFFFFFFF80'));
    returns('extend8_s_3', () => m0.extend8_s(0xFF), i64('FFFFFFFFFFFFFFFF'));
    returns('extend8_s_4', () => m0.extend8_s(i64('123456789ABCD00')), 0);
    returns(
      'extend8_s_5',
      () => m0.extend8_s(i64('FEDCBA9876543280')),
      i64('FFFFFFFFFFFFFF80'),
    );
    returns(
      'extend8_s_6',
      () => m0.extend8_s(i64('FFFFFFFFFFFFFFFF')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns('extend16_s_0', () => m0.extend16_s(0), 0);
    returns('extend16_s_1', () => m0.extend16_s(0x7FFF), 0x7FFF);
    returns(
      'extend16_s_2',
      () => m0.extend16_s(0x8000),
      i64('FFFFFFFFFFFF8000'),
    );
    returns(
      'extend16_s_3',
      () => m0.extend16_s(0xFFFF),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns('extend16_s_4', () => m0.extend16_s(i64('123456789ABC0000')), 0);
    returns(
      'extend16_s_5',
      () => m0.extend16_s(i64('FEDCBA9876548000')),
      i64('FFFFFFFFFFFF8000'),
    );
    returns(
      'extend16_s_6',
      () => m0.extend16_s(i64('FFFFFFFFFFFFFFFF')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns('extend32_s_0', () => m0.extend32_s(0), 0);
    returns('extend32_s_1', () => m0.extend32_s(0x7FFF), 0x7FFF);
    returns('extend32_s_2', () => m0.extend32_s(0x8000), 0x8000);
    returns('extend32_s_3', () => m0.extend32_s(0xFFFF), 0xFFFF);
    returns(
      'extend32_s_4',
      () => m0.extend32_s(i64('7FFFFFFF')),
      i64('7FFFFFFF'),
    );
    returns(
      'extend32_s_5',
      () => m0.extend32_s(i64('80000000')),
      i64('FFFFFFFF80000000'),
    );
    returns(
      'extend32_s_6',
      () => m0.extend32_s(i64('FFFFFFFF')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns('extend32_s_7', () => m0.extend32_s(i64('123456700000000')), 0);
    returns(
      'extend32_s_8',
      () => m0.extend32_s(i64('FEDCBA9880000000')),
      i64('FFFFFFFF80000000'),
    );
    returns(
      'extend32_s_9',
      () => m0.extend32_s(i64('FFFFFFFFFFFFFFFF')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns('eqz_0', () => m0.eqz(0), 0x1);
    returns('eqz_1', () => m0.eqz(0x1), 0);
    returns('eqz_2', () => m0.eqz(i64('8000000000000000')), 0);
    returns('eqz_3', () => m0.eqz(i64('7FFFFFFFFFFFFFFF')), 0);
    returns('eqz_4', () => m0.eqz(i64('FFFFFFFFFFFFFFFF')), 0);
    returns('eq_0', () => m0.eq(0, 0), 0x1);
    returns('eq_1', () => m0.eq(0x1, 0x1), 0x1);
    returns('eq_2', () => m0.eq(i64('FFFFFFFFFFFFFFFF'), 0x1), 0);
    returns(
      'eq_3',
      () => m0.eq(i64('8000000000000000'), i64('8000000000000000')),
      0x1,
    );
    returns(
      'eq_4',
      () => m0.eq(i64('7FFFFFFFFFFFFFFF'), i64('7FFFFFFFFFFFFFFF')),
      0x1,
    );
    returns(
      'eq_5',
      () => m0.eq(i64('FFFFFFFFFFFFFFFF'), i64('FFFFFFFFFFFFFFFF')),
      0x1,
    );
    returns('eq_6', () => m0.eq(0x1, 0), 0);
    returns('eq_7', () => m0.eq(0, 0x1), 0);
    returns('eq_8', () => m0.eq(i64('8000000000000000'), 0), 0);
    returns('eq_9', () => m0.eq(0, i64('8000000000000000')), 0);
    returns(
      'eq_10',
      () => m0.eq(i64('8000000000000000'), i64('FFFFFFFFFFFFFFFF')),
      0,
    );
    returns(
      'eq_11',
      () => m0.eq(i64('FFFFFFFFFFFFFFFF'), i64('8000000000000000')),
      0,
    );
    returns(
      'eq_12',
      () => m0.eq(i64('8000000000000000'), i64('7FFFFFFFFFFFFFFF')),
      0,
    );
    returns(
      'eq_13',
      () => m0.eq(i64('7FFFFFFFFFFFFFFF'), i64('8000000000000000')),
      0,
    );
    returns('ne_0', () => m0.ne(0, 0), 0);
    returns('ne_1', () => m0.ne(0x1, 0x1), 0);
    returns('ne_2', () => m0.ne(i64('FFFFFFFFFFFFFFFF'), 0x1), 0x1);
    returns(
      'ne_3',
      () => m0.ne(i64('8000000000000000'), i64('8000000000000000')),
      0,
    );
    returns(
      'ne_4',
      () => m0.ne(i64('7FFFFFFFFFFFFFFF'), i64('7FFFFFFFFFFFFFFF')),
      0,
    );
    returns(
      'ne_5',
      () => m0.ne(i64('FFFFFFFFFFFFFFFF'), i64('FFFFFFFFFFFFFFFF')),
      0,
    );
    returns('ne_6', () => m0.ne(0x1, 0), 0x1);
    returns('ne_7', () => m0.ne(0, 0x1), 0x1);
    returns('ne_8', () => m0.ne(i64('8000000000000000'), 0), 0x1);
    returns('ne_9', () => m0.ne(0, i64('8000000000000000')), 0x1);
    returns(
      'ne_10',
      () => m0.ne(i64('8000000000000000'), i64('FFFFFFFFFFFFFFFF')),
      0x1,
    );
    returns(
      'ne_11',
      () => m0.ne(i64('FFFFFFFFFFFFFFFF'), i64('8000000000000000')),
      0x1,
    );
    returns(
      'ne_12',
      () => m0.ne(i64('8000000000000000'), i64('7FFFFFFFFFFFFFFF')),
      0x1,
    );
    returns(
      'ne_13',
      () => m0.ne(i64('7FFFFFFFFFFFFFFF'), i64('8000000000000000')),
      0x1,
    );
    returns('lt_s_0', () => m0.lt_s(0, 0), 0);
    returns('lt_s_1', () => m0.lt_s(0x1, 0x1), 0);
    returns('lt_s_2', () => m0.lt_s(i64('FFFFFFFFFFFFFFFF'), 0x1), 0x1);
    returns(
      'lt_s_3',
      () => m0.lt_s(i64('8000000000000000'), i64('8000000000000000')),
      0,
    );
    returns(
      'lt_s_4',
      () => m0.lt_s(i64('7FFFFFFFFFFFFFFF'), i64('7FFFFFFFFFFFFFFF')),
      0,
    );
    returns(
      'lt_s_5',
      () => m0.lt_s(i64('FFFFFFFFFFFFFFFF'), i64('FFFFFFFFFFFFFFFF')),
      0,
    );
    returns('lt_s_6', () => m0.lt_s(0x1, 0), 0);
    returns('lt_s_7', () => m0.lt_s(0, 0x1), 0x1);
    returns('lt_s_8', () => m0.lt_s(i64('8000000000000000'), 0), 0x1);
    returns('lt_s_9', () => m0.lt_s(0, i64('8000000000000000')), 0);
    returns(
      'lt_s_10',
      () => m0.lt_s(i64('8000000000000000'), i64('FFFFFFFFFFFFFFFF')),
      0x1,
    );
    returns(
      'lt_s_11',
      () => m0.lt_s(i64('FFFFFFFFFFFFFFFF'), i64('8000000000000000')),
      0,
    );
    returns(
      'lt_s_12',
      () => m0.lt_s(i64('8000000000000000'), i64('7FFFFFFFFFFFFFFF')),
      0x1,
    );
    returns(
      'lt_s_13',
      () => m0.lt_s(i64('7FFFFFFFFFFFFFFF'), i64('8000000000000000')),
      0,
    );
    returns('lt_u_0', () => m0.lt_u(0, 0), 0);
    returns('lt_u_1', () => m0.lt_u(0x1, 0x1), 0);
    returns('lt_u_2', () => m0.lt_u(i64('FFFFFFFFFFFFFFFF'), 0x1), 0);
    returns(
      'lt_u_3',
      () => m0.lt_u(i64('8000000000000000'), i64('8000000000000000')),
      0,
    );
    returns(
      'lt_u_4',
      () => m0.lt_u(i64('7FFFFFFFFFFFFFFF'), i64('7FFFFFFFFFFFFFFF')),
      0,
    );
    returns(
      'lt_u_5',
      () => m0.lt_u(i64('FFFFFFFFFFFFFFFF'), i64('FFFFFFFFFFFFFFFF')),
      0,
    );
    returns('lt_u_6', () => m0.lt_u(0x1, 0), 0);
    returns('lt_u_7', () => m0.lt_u(0, 0x1), 0x1);
    returns('lt_u_8', () => m0.lt_u(i64('8000000000000000'), 0), 0);
    returns('lt_u_9', () => m0.lt_u(0, i64('8000000000000000')), 0x1);
    returns(
      'lt_u_10',
      () => m0.lt_u(i64('8000000000000000'), i64('FFFFFFFFFFFFFFFF')),
      0x1,
    );
    returns(
      'lt_u_11',
      () => m0.lt_u(i64('FFFFFFFFFFFFFFFF'), i64('8000000000000000')),
      0,
    );
    returns(
      'lt_u_12',
      () => m0.lt_u(i64('8000000000000000'), i64('7FFFFFFFFFFFFFFF')),
      0,
    );
    returns(
      'lt_u_13',
      () => m0.lt_u(i64('7FFFFFFFFFFFFFFF'), i64('8000000000000000')),
      0x1,
    );
    returns('le_s_0', () => m0.le_s(0, 0), 0x1);
    returns('le_s_1', () => m0.le_s(0x1, 0x1), 0x1);
    returns('le_s_2', () => m0.le_s(i64('FFFFFFFFFFFFFFFF'), 0x1), 0x1);
    returns(
      'le_s_3',
      () => m0.le_s(i64('8000000000000000'), i64('8000000000000000')),
      0x1,
    );
    returns(
      'le_s_4',
      () => m0.le_s(i64('7FFFFFFFFFFFFFFF'), i64('7FFFFFFFFFFFFFFF')),
      0x1,
    );
    returns(
      'le_s_5',
      () => m0.le_s(i64('FFFFFFFFFFFFFFFF'), i64('FFFFFFFFFFFFFFFF')),
      0x1,
    );
    returns('le_s_6', () => m0.le_s(0x1, 0), 0);
    returns('le_s_7', () => m0.le_s(0, 0x1), 0x1);
    returns('le_s_8', () => m0.le_s(i64('8000000000000000'), 0), 0x1);
    returns('le_s_9', () => m0.le_s(0, i64('8000000000000000')), 0);
    returns(
      'le_s_10',
      () => m0.le_s(i64('8000000000000000'), i64('FFFFFFFFFFFFFFFF')),
      0x1,
    );
    returns(
      'le_s_11',
      () => m0.le_s(i64('FFFFFFFFFFFFFFFF'), i64('8000000000000000')),
      0,
    );
    returns(
      'le_s_12',
      () => m0.le_s(i64('8000000000000000'), i64('7FFFFFFFFFFFFFFF')),
      0x1,
    );
    returns(
      'le_s_13',
      () => m0.le_s(i64('7FFFFFFFFFFFFFFF'), i64('8000000000000000')),
      0,
    );
    returns('le_u_0', () => m0.le_u(0, 0), 0x1);
    returns('le_u_1', () => m0.le_u(0x1, 0x1), 0x1);
    returns('le_u_2', () => m0.le_u(i64('FFFFFFFFFFFFFFFF'), 0x1), 0);
    returns(
      'le_u_3',
      () => m0.le_u(i64('8000000000000000'), i64('8000000000000000')),
      0x1,
    );
    returns(
      'le_u_4',
      () => m0.le_u(i64('7FFFFFFFFFFFFFFF'), i64('7FFFFFFFFFFFFFFF')),
      0x1,
    );
    returns(
      'le_u_5',
      () => m0.le_u(i64('FFFFFFFFFFFFFFFF'), i64('FFFFFFFFFFFFFFFF')),
      0x1,
    );
    returns('le_u_6', () => m0.le_u(0x1, 0), 0);
    returns('le_u_7', () => m0.le_u(0, 0x1), 0x1);
    returns('le_u_8', () => m0.le_u(i64('8000000000000000'), 0), 0);
    returns('le_u_9', () => m0.le_u(0, i64('8000000000000000')), 0x1);
    returns(
      'le_u_10',
      () => m0.le_u(i64('8000000000000000'), i64('FFFFFFFFFFFFFFFF')),
      0x1,
    );
    returns(
      'le_u_11',
      () => m0.le_u(i64('FFFFFFFFFFFFFFFF'), i64('8000000000000000')),
      0,
    );
    returns(
      'le_u_12',
      () => m0.le_u(i64('8000000000000000'), i64('7FFFFFFFFFFFFFFF')),
      0,
    );
    returns(
      'le_u_13',
      () => m0.le_u(i64('7FFFFFFFFFFFFFFF'), i64('8000000000000000')),
      0x1,
    );
    returns('gt_s_0', () => m0.gt_s(0, 0), 0);
    returns('gt_s_1', () => m0.gt_s(0x1, 0x1), 0);
    returns('gt_s_2', () => m0.gt_s(i64('FFFFFFFFFFFFFFFF'), 0x1), 0);
    returns(
      'gt_s_3',
      () => m0.gt_s(i64('8000000000000000'), i64('8000000000000000')),
      0,
    );
    returns(
      'gt_s_4',
      () => m0.gt_s(i64('7FFFFFFFFFFFFFFF'), i64('7FFFFFFFFFFFFFFF')),
      0,
    );
    returns(
      'gt_s_5',
      () => m0.gt_s(i64('FFFFFFFFFFFFFFFF'), i64('FFFFFFFFFFFFFFFF')),
      0,
    );
    returns('gt_s_6', () => m0.gt_s(0x1, 0), 0x1);
    returns('gt_s_7', () => m0.gt_s(0, 0x1), 0);
    returns('gt_s_8', () => m0.gt_s(i64('8000000000000000'), 0), 0);
    returns('gt_s_9', () => m0.gt_s(0, i64('8000000000000000')), 0x1);
    returns(
      'gt_s_10',
      () => m0.gt_s(i64('8000000000000000'), i64('FFFFFFFFFFFFFFFF')),
      0,
    );
    returns(
      'gt_s_11',
      () => m0.gt_s(i64('FFFFFFFFFFFFFFFF'), i64('8000000000000000')),
      0x1,
    );
    returns(
      'gt_s_12',
      () => m0.gt_s(i64('8000000000000000'), i64('7FFFFFFFFFFFFFFF')),
      0,
    );
    returns(
      'gt_s_13',
      () => m0.gt_s(i64('7FFFFFFFFFFFFFFF'), i64('8000000000000000')),
      0x1,
    );
    returns('gt_u_0', () => m0.gt_u(0, 0), 0);
    returns('gt_u_1', () => m0.gt_u(0x1, 0x1), 0);
    returns('gt_u_2', () => m0.gt_u(i64('FFFFFFFFFFFFFFFF'), 0x1), 0x1);
    returns(
      'gt_u_3',
      () => m0.gt_u(i64('8000000000000000'), i64('8000000000000000')),
      0,
    );
    returns(
      'gt_u_4',
      () => m0.gt_u(i64('7FFFFFFFFFFFFFFF'), i64('7FFFFFFFFFFFFFFF')),
      0,
    );
    returns(
      'gt_u_5',
      () => m0.gt_u(i64('FFFFFFFFFFFFFFFF'), i64('FFFFFFFFFFFFFFFF')),
      0,
    );
    returns('gt_u_6', () => m0.gt_u(0x1, 0), 0x1);
    returns('gt_u_7', () => m0.gt_u(0, 0x1), 0);
    returns('gt_u_8', () => m0.gt_u(i64('8000000000000000'), 0), 0x1);
    returns('gt_u_9', () => m0.gt_u(0, i64('8000000000000000')), 0);
    returns(
      'gt_u_10',
      () => m0.gt_u(i64('8000000000000000'), i64('FFFFFFFFFFFFFFFF')),
      0,
    );
    returns(
      'gt_u_11',
      () => m0.gt_u(i64('FFFFFFFFFFFFFFFF'), i64('8000000000000000')),
      0x1,
    );
    returns(
      'gt_u_12',
      () => m0.gt_u(i64('8000000000000000'), i64('7FFFFFFFFFFFFFFF')),
      0x1,
    );
    returns(
      'gt_u_13',
      () => m0.gt_u(i64('7FFFFFFFFFFFFFFF'), i64('8000000000000000')),
      0,
    );
    returns('ge_s_0', () => m0.ge_s(0, 0), 0x1);
    returns('ge_s_1', () => m0.ge_s(0x1, 0x1), 0x1);
    returns('ge_s_2', () => m0.ge_s(i64('FFFFFFFFFFFFFFFF'), 0x1), 0);
    returns(
      'ge_s_3',
      () => m0.ge_s(i64('8000000000000000'), i64('8000000000000000')),
      0x1,
    );
    returns(
      'ge_s_4',
      () => m0.ge_s(i64('7FFFFFFFFFFFFFFF'), i64('7FFFFFFFFFFFFFFF')),
      0x1,
    );
    returns(
      'ge_s_5',
      () => m0.ge_s(i64('FFFFFFFFFFFFFFFF'), i64('FFFFFFFFFFFFFFFF')),
      0x1,
    );
    returns('ge_s_6', () => m0.ge_s(0x1, 0), 0x1);
    returns('ge_s_7', () => m0.ge_s(0, 0x1), 0);
    returns('ge_s_8', () => m0.ge_s(i64('8000000000000000'), 0), 0);
    returns('ge_s_9', () => m0.ge_s(0, i64('8000000000000000')), 0x1);
    returns(
      'ge_s_10',
      () => m0.ge_s(i64('8000000000000000'), i64('FFFFFFFFFFFFFFFF')),
      0,
    );
    returns(
      'ge_s_11',
      () => m0.ge_s(i64('FFFFFFFFFFFFFFFF'), i64('8000000000000000')),
      0x1,
    );
    returns(
      'ge_s_12',
      () => m0.ge_s(i64('8000000000000000'), i64('7FFFFFFFFFFFFFFF')),
      0,
    );
    returns(
      'ge_s_13',
      () => m0.ge_s(i64('7FFFFFFFFFFFFFFF'), i64('8000000000000000')),
      0x1,
    );
    returns('ge_u_0', () => m0.ge_u(0, 0), 0x1);
    returns('ge_u_1', () => m0.ge_u(0x1, 0x1), 0x1);
    returns('ge_u_2', () => m0.ge_u(i64('FFFFFFFFFFFFFFFF'), 0x1), 0x1);
    returns(
      'ge_u_3',
      () => m0.ge_u(i64('8000000000000000'), i64('8000000000000000')),
      0x1,
    );
    returns(
      'ge_u_4',
      () => m0.ge_u(i64('7FFFFFFFFFFFFFFF'), i64('7FFFFFFFFFFFFFFF')),
      0x1,
    );
    returns(
      'ge_u_5',
      () => m0.ge_u(i64('FFFFFFFFFFFFFFFF'), i64('FFFFFFFFFFFFFFFF')),
      0x1,
    );
    returns('ge_u_6', () => m0.ge_u(0x1, 0), 0x1);
    returns('ge_u_7', () => m0.ge_u(0, 0x1), 0);
    returns('ge_u_8', () => m0.ge_u(i64('8000000000000000'), 0), 0x1);
    returns('ge_u_9', () => m0.ge_u(0, i64('8000000000000000')), 0);
    returns(
      'ge_u_10',
      () => m0.ge_u(i64('8000000000000000'), i64('FFFFFFFFFFFFFFFF')),
      0,
    );
    returns(
      'ge_u_11',
      () => m0.ge_u(i64('FFFFFFFFFFFFFFFF'), i64('8000000000000000')),
      0x1,
    );
    returns(
      'ge_u_12',
      () => m0.ge_u(i64('8000000000000000'), i64('7FFFFFFFFFFFFFFF')),
      0x1,
    );
    returns(
      'ge_u_13',
      () => m0.ge_u(i64('7FFFFFFFFFFFFFFF'), i64('8000000000000000')),
      0,
    );
  });
}
