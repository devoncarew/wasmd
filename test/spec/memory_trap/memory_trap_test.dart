// Generated from spec/test/core/memory_trap.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'memory_trap.0.dart' as memory_trap_0;
import 'memory_trap.1.dart' as memory_trap_1;

const String _oobma = 'out of bounds memory access';

void main() {
  group('memory_trap', () {
    // module memory_trap.0.dart (line 1)
    var m0 = memory_trap_0.MemoryTrap0Module();

    returns('store_0', () => m0.store($i32('FFFFFFFC'), 0x2A), null);
    returns('load_0', () => m0.load($i32('FFFFFFFC')), 0x2A);
    traps(
      'store_1',
      () => m0.store($i32('FFFFFFFD'), $i32('12345678')),
      _oobma,
    );
    traps('load_1', () => m0.load($i32('FFFFFFFD')), _oobma);
    traps('store_2', () => m0.store($i32('FFFFFFFE'), 0xD), _oobma);
    traps('load_2', () => m0.load($i32('FFFFFFFE')), _oobma);
    traps('store_3', () => m0.store($i32('FFFFFFFF'), 0xD), _oobma);
    traps('load_3', () => m0.load($i32('FFFFFFFF')), _oobma);
    traps('store_4', () => m0.store(0, 0xD), _oobma);
    traps('load_4', () => m0.load(0), _oobma);
    traps('store_5', () => m0.store($i32('80000000'), 0xD), _oobma);
    traps('load_5', () => m0.load($i32('80000000')), _oobma);
    returns('memory_grow_0', () => m0.memory_grow(0x10001), $i32('FFFFFFFF'));

    // module memory_trap.1.dart (line 35)
    var m1 = memory_trap_1.MemoryTrap1Module();

    traps('i32_store_0', () => m1.i32_store(0x10000, 0), _oobma);
    traps('i32_store_1', () => m1.i32_store(0xFFFF, 0), _oobma);
    traps('i32_store_2', () => m1.i32_store(0xFFFE, 0), _oobma);
    traps('i32_store_3', () => m1.i32_store(0xFFFD, 0), _oobma);
    traps('i32_store_4', () => m1.i32_store($i32('FFFFFFFF'), 0), _oobma);
    traps('i32_store_5', () => m1.i32_store($i32('FFFFFFFE'), 0), _oobma);
    traps('i32_store_6', () => m1.i32_store($i32('FFFFFFFD'), 0), _oobma);
    traps('i32_store_7', () => m1.i32_store($i32('FFFFFFFC'), 0), _oobma);
    traps('i64_store_0', () => m1.i64_store(0x10000, 0), _oobma);
    traps('i64_store_1', () => m1.i64_store(0xFFFF, 0), _oobma);
    traps('i64_store_2', () => m1.i64_store(0xFFFE, 0), _oobma);
    traps('i64_store_3', () => m1.i64_store(0xFFFD, 0), _oobma);
    traps('i64_store_4', () => m1.i64_store(0xFFFC, 0), _oobma);
    traps('i64_store_5', () => m1.i64_store(0xFFFB, 0), _oobma);
    traps('i64_store_6', () => m1.i64_store(0xFFFA, 0), _oobma);
    traps('i64_store_7', () => m1.i64_store(0xFFF9, 0), _oobma);
    traps('i64_store_8', () => m1.i64_store($i32('FFFFFFFF'), 0), _oobma);
    traps('i64_store_9', () => m1.i64_store($i32('FFFFFFFE'), 0), _oobma);
    traps('i64_store_10', () => m1.i64_store($i32('FFFFFFFD'), 0), _oobma);
    traps('i64_store_11', () => m1.i64_store($i32('FFFFFFFC'), 0), _oobma);
    traps('i64_store_12', () => m1.i64_store($i32('FFFFFFFB'), 0), _oobma);
    traps('i64_store_13', () => m1.i64_store($i32('FFFFFFFA'), 0), _oobma);
    traps('i64_store_14', () => m1.i64_store($i32('FFFFFFF9'), 0), _oobma);
    traps('i64_store_15', () => m1.i64_store($i32('FFFFFFF8'), 0), _oobma);
    traps('f32_store_0', () => m1.f32_store(0x10000, $f32('0')), _oobma);
    traps('f32_store_1', () => m1.f32_store(0xFFFF, $f32('0')), _oobma);
    traps('f32_store_2', () => m1.f32_store(0xFFFE, $f32('0')), _oobma);
    traps('f32_store_3', () => m1.f32_store(0xFFFD, $f32('0')), _oobma);
    traps(
      'f32_store_4',
      () => m1.f32_store($i32('FFFFFFFF'), $f32('0')),
      _oobma,
    );
    traps(
      'f32_store_5',
      () => m1.f32_store($i32('FFFFFFFE'), $f32('0')),
      _oobma,
    );
    traps(
      'f32_store_6',
      () => m1.f32_store($i32('FFFFFFFD'), $f32('0')),
      _oobma,
    );
    traps(
      'f32_store_7',
      () => m1.f32_store($i32('FFFFFFFC'), $f32('0')),
      _oobma,
    );
    traps('f64_store_0', () => m1.f64_store(0x10000, $f64('0')), _oobma);
    traps('f64_store_1', () => m1.f64_store(0xFFFF, $f64('0')), _oobma);
    traps('f64_store_2', () => m1.f64_store(0xFFFE, $f64('0')), _oobma);
    traps('f64_store_3', () => m1.f64_store(0xFFFD, $f64('0')), _oobma);
    traps('f64_store_4', () => m1.f64_store(0xFFFC, $f64('0')), _oobma);
    traps('f64_store_5', () => m1.f64_store(0xFFFB, $f64('0')), _oobma);
    traps('f64_store_6', () => m1.f64_store(0xFFFA, $f64('0')), _oobma);
    traps('f64_store_7', () => m1.f64_store(0xFFF9, $f64('0')), _oobma);
    traps(
      'f64_store_8',
      () => m1.f64_store($i32('FFFFFFFF'), $f64('0')),
      _oobma,
    );
    traps(
      'f64_store_9',
      () => m1.f64_store($i32('FFFFFFFE'), $f64('0')),
      _oobma,
    );
    traps(
      'f64_store_10',
      () => m1.f64_store($i32('FFFFFFFD'), $f64('0')),
      _oobma,
    );
    traps(
      'f64_store_11',
      () => m1.f64_store($i32('FFFFFFFC'), $f64('0')),
      _oobma,
    );
    traps(
      'f64_store_12',
      () => m1.f64_store($i32('FFFFFFFB'), $f64('0')),
      _oobma,
    );
    traps(
      'f64_store_13',
      () => m1.f64_store($i32('FFFFFFFA'), $f64('0')),
      _oobma,
    );
    traps(
      'f64_store_14',
      () => m1.f64_store($i32('FFFFFFF9'), $f64('0')),
      _oobma,
    );
    traps(
      'f64_store_15',
      () => m1.f64_store($i32('FFFFFFF8'), $f64('0')),
      _oobma,
    );
    traps('i32_store8_0', () => m1.i32_store8(0x10000, 0), _oobma);
    traps('i32_store8_1', () => m1.i32_store8($i32('FFFFFFFF'), 0), _oobma);
    traps('i32_store16_0', () => m1.i32_store16(0x10000, 0), _oobma);
    traps('i32_store16_1', () => m1.i32_store16(0xFFFF, 0), _oobma);
    traps('i32_store16_2', () => m1.i32_store16($i32('FFFFFFFF'), 0), _oobma);
    traps('i32_store16_3', () => m1.i32_store16($i32('FFFFFFFE'), 0), _oobma);
    traps('i64_store8_0', () => m1.i64_store8(0x10000, 0), _oobma);
    traps('i64_store8_1', () => m1.i64_store8($i32('FFFFFFFF'), 0), _oobma);
    traps('i64_store16_0', () => m1.i64_store16(0x10000, 0), _oobma);
    traps('i64_store16_1', () => m1.i64_store16(0xFFFF, 0), _oobma);
    traps('i64_store16_2', () => m1.i64_store16($i32('FFFFFFFF'), 0), _oobma);
    traps('i64_store16_3', () => m1.i64_store16($i32('FFFFFFFE'), 0), _oobma);
    traps('i64_store32_0', () => m1.i64_store32(0x10000, 0), _oobma);
    traps('i64_store32_1', () => m1.i64_store32(0xFFFF, 0), _oobma);
    traps('i64_store32_2', () => m1.i64_store32(0xFFFE, 0), _oobma);
    traps('i64_store32_3', () => m1.i64_store32(0xFFFD, 0), _oobma);
    traps('i64_store32_4', () => m1.i64_store32($i32('FFFFFFFF'), 0), _oobma);
    traps('i64_store32_5', () => m1.i64_store32($i32('FFFFFFFE'), 0), _oobma);
    traps('i64_store32_6', () => m1.i64_store32($i32('FFFFFFFD'), 0), _oobma);
    traps('i64_store32_7', () => m1.i64_store32($i32('FFFFFFFC'), 0), _oobma);
    traps('i32_load_0', () => m1.i32_load(0x10000), _oobma);
    traps('i32_load_1', () => m1.i32_load(0xFFFF), _oobma);
    traps('i32_load_2', () => m1.i32_load(0xFFFE), _oobma);
    traps('i32_load_3', () => m1.i32_load(0xFFFD), _oobma);
    traps('i32_load_4', () => m1.i32_load($i32('FFFFFFFF')), _oobma);
    traps('i32_load_5', () => m1.i32_load($i32('FFFFFFFE')), _oobma);
    traps('i32_load_6', () => m1.i32_load($i32('FFFFFFFD')), _oobma);
    traps('i32_load_7', () => m1.i32_load($i32('FFFFFFFC')), _oobma);
    traps('i64_load_0', () => m1.i64_load(0x10000), _oobma);
    traps('i64_load_1', () => m1.i64_load(0xFFFF), _oobma);
    traps('i64_load_2', () => m1.i64_load(0xFFFE), _oobma);
    traps('i64_load_3', () => m1.i64_load(0xFFFD), _oobma);
    traps('i64_load_4', () => m1.i64_load(0xFFFC), _oobma);
    traps('i64_load_5', () => m1.i64_load(0xFFFB), _oobma);
    traps('i64_load_6', () => m1.i64_load(0xFFFA), _oobma);
    traps('i64_load_7', () => m1.i64_load(0xFFF9), _oobma);
    traps('i64_load_8', () => m1.i64_load($i32('FFFFFFFF')), _oobma);
    traps('i64_load_9', () => m1.i64_load($i32('FFFFFFFE')), _oobma);
    traps('i64_load_10', () => m1.i64_load($i32('FFFFFFFD')), _oobma);
    traps('i64_load_11', () => m1.i64_load($i32('FFFFFFFC')), _oobma);
    traps('i64_load_12', () => m1.i64_load($i32('FFFFFFFB')), _oobma);
    traps('i64_load_13', () => m1.i64_load($i32('FFFFFFFA')), _oobma);
    traps('i64_load_14', () => m1.i64_load($i32('FFFFFFF9')), _oobma);
    traps('i64_load_15', () => m1.i64_load($i32('FFFFFFF8')), _oobma);
    traps('f32_load_0', () => m1.f32_load(0x10000), _oobma);
    traps('f32_load_1', () => m1.f32_load(0xFFFF), _oobma);
    traps('f32_load_2', () => m1.f32_load(0xFFFE), _oobma);
    traps('f32_load_3', () => m1.f32_load(0xFFFD), _oobma);
    traps('f32_load_4', () => m1.f32_load($i32('FFFFFFFF')), _oobma);
    traps('f32_load_5', () => m1.f32_load($i32('FFFFFFFE')), _oobma);
    traps('f32_load_6', () => m1.f32_load($i32('FFFFFFFD')), _oobma);
    traps('f32_load_7', () => m1.f32_load($i32('FFFFFFFC')), _oobma);
    traps('f64_load_0', () => m1.f64_load(0x10000), _oobma);
    traps('f64_load_1', () => m1.f64_load(0xFFFF), _oobma);
    traps('f64_load_2', () => m1.f64_load(0xFFFE), _oobma);
    traps('f64_load_3', () => m1.f64_load(0xFFFD), _oobma);
    traps('f64_load_4', () => m1.f64_load(0xFFFC), _oobma);
    traps('f64_load_5', () => m1.f64_load(0xFFFB), _oobma);
    traps('f64_load_6', () => m1.f64_load(0xFFFA), _oobma);
    traps('f64_load_7', () => m1.f64_load(0xFFF9), _oobma);
    traps('f64_load_8', () => m1.f64_load($i32('FFFFFFFF')), _oobma);
    traps('f64_load_9', () => m1.f64_load($i32('FFFFFFFE')), _oobma);
    traps('f64_load_10', () => m1.f64_load($i32('FFFFFFFD')), _oobma);
    traps('f64_load_11', () => m1.f64_load($i32('FFFFFFFC')), _oobma);
    traps('f64_load_12', () => m1.f64_load($i32('FFFFFFFB')), _oobma);
    traps('f64_load_13', () => m1.f64_load($i32('FFFFFFFA')), _oobma);
    traps('f64_load_14', () => m1.f64_load($i32('FFFFFFF9')), _oobma);
    traps('f64_load_15', () => m1.f64_load($i32('FFFFFFF8')), _oobma);
    traps('i32_load8_s_0', () => m1.i32_load8_s(0x10000), _oobma);
    traps('i32_load8_s_1', () => m1.i32_load8_s($i32('FFFFFFFF')), _oobma);
    traps('i32_load8_u_0', () => m1.i32_load8_u(0x10000), _oobma);
    traps('i32_load8_u_1', () => m1.i32_load8_u($i32('FFFFFFFF')), _oobma);
    traps('i32_load16_s_0', () => m1.i32_load16_s(0x10000), _oobma);
    traps('i32_load16_s_1', () => m1.i32_load16_s(0xFFFF), _oobma);
    traps('i32_load16_s_2', () => m1.i32_load16_s($i32('FFFFFFFF')), _oobma);
    traps('i32_load16_s_3', () => m1.i32_load16_s($i32('FFFFFFFE')), _oobma);
    traps('i32_load16_u_0', () => m1.i32_load16_u(0x10000), _oobma);
    traps('i32_load16_u_1', () => m1.i32_load16_u(0xFFFF), _oobma);
    traps('i32_load16_u_2', () => m1.i32_load16_u($i32('FFFFFFFF')), _oobma);
    traps('i32_load16_u_3', () => m1.i32_load16_u($i32('FFFFFFFE')), _oobma);
    traps('i64_load8_s_0', () => m1.i64_load8_s(0x10000), _oobma);
    traps('i64_load8_s_1', () => m1.i64_load8_s($i32('FFFFFFFF')), _oobma);
    traps('i64_load8_u_0', () => m1.i64_load8_u(0x10000), _oobma);
    traps('i64_load8_u_1', () => m1.i64_load8_u($i32('FFFFFFFF')), _oobma);
    traps('i64_load16_s_0', () => m1.i64_load16_s(0x10000), _oobma);
    traps('i64_load16_s_1', () => m1.i64_load16_s(0xFFFF), _oobma);
    traps('i64_load16_s_2', () => m1.i64_load16_s($i32('FFFFFFFF')), _oobma);
    traps('i64_load16_s_3', () => m1.i64_load16_s($i32('FFFFFFFE')), _oobma);
    traps('i64_load16_u_0', () => m1.i64_load16_u(0x10000), _oobma);
    traps('i64_load16_u_1', () => m1.i64_load16_u(0xFFFF), _oobma);
    traps('i64_load16_u_2', () => m1.i64_load16_u($i32('FFFFFFFF')), _oobma);
    traps('i64_load16_u_3', () => m1.i64_load16_u($i32('FFFFFFFE')), _oobma);
    traps('i64_load32_s_0', () => m1.i64_load32_s(0x10000), _oobma);
    traps('i64_load32_s_1', () => m1.i64_load32_s(0xFFFF), _oobma);
    traps('i64_load32_s_2', () => m1.i64_load32_s(0xFFFE), _oobma);
    traps('i64_load32_s_3', () => m1.i64_load32_s(0xFFFD), _oobma);
    traps('i64_load32_s_4', () => m1.i64_load32_s($i32('FFFFFFFF')), _oobma);
    traps('i64_load32_s_5', () => m1.i64_load32_s($i32('FFFFFFFE')), _oobma);
    traps('i64_load32_s_6', () => m1.i64_load32_s($i32('FFFFFFFD')), _oobma);
    traps('i64_load32_s_7', () => m1.i64_load32_s($i32('FFFFFFFC')), _oobma);
    traps('i64_load32_u_0', () => m1.i64_load32_u(0x10000), _oobma);
    traps('i64_load32_u_1', () => m1.i64_load32_u(0xFFFF), _oobma);
    traps('i64_load32_u_2', () => m1.i64_load32_u(0xFFFE), _oobma);
    traps('i64_load32_u_3', () => m1.i64_load32_u(0xFFFD), _oobma);
    traps('i64_load32_u_4', () => m1.i64_load32_u($i32('FFFFFFFF')), _oobma);
    traps('i64_load32_u_5', () => m1.i64_load32_u($i32('FFFFFFFE')), _oobma);
    traps('i64_load32_u_6', () => m1.i64_load32_u($i32('FFFFFFFD')), _oobma);
    traps('i64_load32_u_7', () => m1.i64_load32_u($i32('FFFFFFFC')), _oobma);
    returns('i64_load_16', () => m1.i64_load(0xFFF8), $i64('6867666564636261'));
    returns('i64_load_17', () => m1.i64_load(0), $i64('6867666564636261'));
    returns('i64_store_16', () => m1.i64_store(0xFFF8, 0), null);
    traps('i32_store_8', () => m1.i32_store(0xFFFD, $i32('12345678')), _oobma);
    returns('i32_load_8', () => m1.i32_load(0xFFFC), 0);
    traps(
      'i64_store_17',
      () => m1.i64_store(0xFFF9, $i64('1234567890ABCDEF')),
      _oobma,
    );
    returns('i64_load_18', () => m1.i64_load(0xFFF8), 0);
    traps('f32_store_8', () => m1.f32_store(0xFFFD, $f32('4D91A2B4')), _oobma);
    returns('f32_load_8', () => m1.f32_load(0xFFFC), $f32('0'));
    traps(
      'f64_store_16',
      () => m1.f64_store(0xFFF9, $f64('43B234567890ABCE')),
      _oobma,
    );
    returns('f64_load_16', () => m1.f64_load(0xFFF8), $f64('0'));
  });
}
