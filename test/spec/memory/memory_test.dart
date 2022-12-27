// Generated from spec/test/core/memory.wast.

// ignore_for_file: unused_local_variable

import '../../src/infra.dart';
import 'memory.0.dart' as memory_0;
import 'memory.1.dart' as memory_1;
import 'memory.10.dart' as memory_10;
import 'memory.2.dart' as memory_2;
import 'memory.3.dart' as memory_3;
import 'memory.30.dart' as memory_30;
import 'memory.4.dart' as memory_4;
import 'memory.5.dart' as memory_5;
import 'memory.8.dart' as memory_8;
import 'memory.9.dart' as memory_9;

void main() {
  group('memory', () {
    // module memory.0.dart (line 3)
    var m0 = memory_0.Module();

    // module memory.1.dart (line 4)
    var m1 = memory_1.Module();

    // module memory.2.dart (line 5)
    var m2 = memory_2.Module();

    // module memory.3.dart (line 6)
    var m3 = memory_3.Module();

    // module memory.4.dart (line 7)
    var m4 = memory_4.Module();

    // module memory.5.dart (line 8)
    var m5 = memory_5.Module();

    // module memory.8.dart (line 13)
    var m6 = memory_8.Module();

    returns('memsize_0', () => m6.memsize(), 0);

    // module memory.9.dart (line 15)
    var m7 = memory_9.Module();

    returns('memsize_1', () => m7.memsize(), 0);

    // module memory.10.dart (line 17)
    var m8 = memory_10.Module();

    returns('memsize_2', () => m8.memsize(), 0x1);

    // module memory.30.dart (line 92)
    var m9 = memory_30.Module();

    returns('data_0', () => m9.data(), 0x1);
    returns('cast_0', () => m9.cast(), f64('4045000000000000'));
    returns(
      'i32_load8_s_0',
      () => m9.i32_load8_s(i32('FFFFFFFF')),
      i32('FFFFFFFF'),
    );
    returns('i32_load8_u_0', () => m9.i32_load8_u(i32('FFFFFFFF')), 0xFF);
    returns(
      'i32_load16_s_0',
      () => m9.i32_load16_s(i32('FFFFFFFF')),
      i32('FFFFFFFF'),
    );
    returns('i32_load16_u_0', () => m9.i32_load16_u(i32('FFFFFFFF')), 0xFFFF);
    returns('i32_load8_s_1', () => m9.i32_load8_s(0x64), 0x64);
    returns('i32_load8_u_1', () => m9.i32_load8_u(0xC8), 0xC8);
    returns('i32_load16_s_1', () => m9.i32_load16_s(0x4E20), 0x4E20);
    returns('i32_load16_u_1', () => m9.i32_load16_u(0x9C40), 0x9C40);
    returns('i32_load8_s_2', () => m9.i32_load8_s(i32('FEDC6543')), 0x43);
    returns(
      'i32_load8_s_3',
      () => m9.i32_load8_s(i32('3456CDEF')),
      i32('FFFFFFEF'),
    );
    returns('i32_load8_u_2', () => m9.i32_load8_u(i32('FEDC6543')), 0x43);
    returns('i32_load8_u_3', () => m9.i32_load8_u(i32('3456CDEF')), 0xEF);
    returns('i32_load16_s_2', () => m9.i32_load16_s(i32('FEDC6543')), 0x6543);
    returns(
      'i32_load16_s_3',
      () => m9.i32_load16_s(i32('3456CDEF')),
      i32('FFFFCDEF'),
    );
    returns('i32_load16_u_2', () => m9.i32_load16_u(i32('FEDC6543')), 0x6543);
    returns('i32_load16_u_3', () => m9.i32_load16_u(i32('3456CDEF')), 0xCDEF);
    returns(
      'i64_load8_s_0',
      () => m9.i64_load8_s(i64('FFFFFFFFFFFFFFFF')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_load8_u_0',
      () => m9.i64_load8_u(i64('FFFFFFFFFFFFFFFF')),
      0xFF,
    );
    returns(
      'i64_load16_s_0',
      () => m9.i64_load16_s(i64('FFFFFFFFFFFFFFFF')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_load16_u_0',
      () => m9.i64_load16_u(i64('FFFFFFFFFFFFFFFF')),
      0xFFFF,
    );
    returns(
      'i64_load32_s_0',
      () => m9.i64_load32_s(i64('FFFFFFFFFFFFFFFF')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_load32_u_0',
      () => m9.i64_load32_u(i64('FFFFFFFFFFFFFFFF')),
      i64('FFFFFFFF'),
    );
    returns('i64_load8_s_1', () => m9.i64_load8_s(0x64), 0x64);
    returns('i64_load8_u_1', () => m9.i64_load8_u(0xC8), 0xC8);
    returns('i64_load16_s_1', () => m9.i64_load16_s(0x4E20), 0x4E20);
    returns('i64_load16_u_1', () => m9.i64_load16_u(0x9C40), 0x9C40);
    returns('i64_load32_s_1', () => m9.i64_load32_s(0x4E20), 0x4E20);
    returns('i64_load32_u_1', () => m9.i64_load32_u(0x9C40), 0x9C40);
    returns(
      'i64_load8_s_2',
      () => m9.i64_load8_s(i64('FEDCBA9856346543')),
      0x43,
    );
    returns(
      'i64_load8_s_3',
      () => m9.i64_load8_s(i64('3456436598BACDEF')),
      i64('FFFFFFFFFFFFFFEF'),
    );
    returns(
      'i64_load8_u_2',
      () => m9.i64_load8_u(i64('FEDCBA9856346543')),
      0x43,
    );
    returns(
      'i64_load8_u_3',
      () => m9.i64_load8_u(i64('3456436598BACDEF')),
      0xEF,
    );
    returns(
      'i64_load16_s_2',
      () => m9.i64_load16_s(i64('FEDCBA9856346543')),
      0x6543,
    );
    returns(
      'i64_load16_s_3',
      () => m9.i64_load16_s(i64('3456436598BACDEF')),
      i64('FFFFFFFFFFFFCDEF'),
    );
    returns(
      'i64_load16_u_2',
      () => m9.i64_load16_u(i64('FEDCBA9856346543')),
      0x6543,
    );
    returns(
      'i64_load16_u_3',
      () => m9.i64_load16_u(i64('3456436598BACDEF')),
      0xCDEF,
    );
    returns(
      'i64_load32_s_2',
      () => m9.i64_load32_s(i64('FEDCBA9856346543')),
      i64('56346543'),
    );
    returns(
      'i64_load32_s_3',
      () => m9.i64_load32_s(i64('3456436598BACDEF')),
      i64('FFFFFFFF98BACDEF'),
    );
    returns(
      'i64_load32_u_2',
      () => m9.i64_load32_u(i64('FEDCBA9856346543')),
      i64('56346543'),
    );
    returns(
      'i64_load32_u_3',
      () => m9.i64_load32_u(i64('3456436598BACDEF')),
      i64('98BACDEF'),
    );
  });
}
