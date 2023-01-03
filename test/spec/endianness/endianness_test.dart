// Generated from spec/test/core/endianness.wast.

// ignore_for_file: non_constant_identifier_names, unused_local_variable

import '../../src/infra.dart';
import 'endianness.0.dart' as endianness_0;

void main() {
  group('endianness', () {
    // module endianness.0.dart (line 1)
    var m0 = endianness_0.Endianness0Module();

    returns(
      'i32_load16_s_0',
      () => m0.i32_load16_s(i32('FFFFFFFF')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_load16_s_1',
      () => m0.i32_load16_s(i32('FFFFEF6E')),
      i32('FFFFEF6E'),
    );
    returns('i32_load16_s_2', () => m0.i32_load16_s(0x2A), 0x2A);
    returns('i32_load16_s_3', () => m0.i32_load16_s(0x3210), 0x3210);
    returns('i32_load16_u_0', () => m0.i32_load16_u(i32('FFFFFFFF')), 0xFFFF);
    returns('i32_load16_u_1', () => m0.i32_load16_u(i32('FFFFEF6E')), 0xEF6E);
    returns('i32_load16_u_2', () => m0.i32_load16_u(0x2A), 0x2A);
    returns('i32_load16_u_3', () => m0.i32_load16_u(0xCAFE), 0xCAFE);
    returns('i32_load_0', () => m0.i32_load(i32('FFFFFFFF')), i32('FFFFFFFF'));
    returns('i32_load_1', () => m0.i32_load(i32('FD78A84E')), i32('FD78A84E'));
    returns('i32_load_2', () => m0.i32_load(i32('28757B2')), i32('28757B2'));
    returns('i32_load_3', () => m0.i32_load(i32('ABAD1DEA')), i32('ABAD1DEA'));
    returns(
      'i64_load16_s_0',
      () => m0.i64_load16_s(i64('FFFFFFFFFFFFFFFF')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_load16_s_1',
      () => m0.i64_load16_s(i64('FFFFFFFFFFFFEF6E')),
      i64('FFFFFFFFFFFFEF6E'),
    );
    returns('i64_load16_s_2', () => m0.i64_load16_s(0x2A), 0x2A);
    returns('i64_load16_s_3', () => m0.i64_load16_s(0x3210), 0x3210);
    returns(
      'i64_load16_u_0',
      () => m0.i64_load16_u(i64('FFFFFFFFFFFFFFFF')),
      0xFFFF,
    );
    returns(
      'i64_load16_u_1',
      () => m0.i64_load16_u(i64('FFFFFFFFFFFFEF6E')),
      0xEF6E,
    );
    returns('i64_load16_u_2', () => m0.i64_load16_u(0x2A), 0x2A);
    returns('i64_load16_u_3', () => m0.i64_load16_u(0xCAFE), 0xCAFE);
    returns(
      'i64_load32_s_0',
      () => m0.i64_load32_s(i64('FFFFFFFFFFFFFFFF')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_load32_s_1',
      () => m0.i64_load32_s(i64('FFFFFFFFFD78A84E')),
      i64('FFFFFFFFFD78A84E'),
    );
    returns(
      'i64_load32_s_2',
      () => m0.i64_load32_s(i64('28757B2')),
      i64('28757B2'),
    );
    returns(
      'i64_load32_s_3',
      () => m0.i64_load32_s(i64('12345678')),
      i64('12345678'),
    );
    returns(
      'i64_load32_u_0',
      () => m0.i64_load32_u(i64('FFFFFFFFFFFFFFFF')),
      i64('FFFFFFFF'),
    );
    returns(
      'i64_load32_u_1',
      () => m0.i64_load32_u(i64('FFFFFFFFFD78A84E')),
      i64('FD78A84E'),
    );
    returns(
      'i64_load32_u_2',
      () => m0.i64_load32_u(i64('28757B2')),
      i64('28757B2'),
    );
    returns(
      'i64_load32_u_3',
      () => m0.i64_load32_u(i64('ABAD1DEA')),
      i64('ABAD1DEA'),
    );
    returns(
      'i64_load_0',
      () => m0.i64_load(i64('FFFFFFFFFFFFFFFF')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_load_1',
      () => m0.i64_load(i64('FFFFFFFFFD78A84E')),
      i64('FFFFFFFFFD78A84E'),
    );
    returns('i64_load_2', () => m0.i64_load(i64('ABAD1DEA')), i64('ABAD1DEA'));
    returns(
      'i64_load_3',
      () => m0.i64_load(i64('ABADCAFEDEAD1DEA')),
      i64('ABADCAFEDEAD1DEA'),
    );
    returns('f32_load_0', () => m0.f32_load(f32('BF800000')), f32('BF800000'));
    returns('f32_load_1', () => m0.f32_load(f32('3C4A2DB6')), f32('3C4A2DB6'));
    returns('f32_load_2', () => m0.f32_load(f32('45849365')), f32('45849365'));
    returns('f32_load_3', () => m0.f32_load(f32('7F7FFFFF')), f32('7F7FFFFF'));
    returns(
      'f64_load_0',
      () => m0.f64_load(f64('BFF0000000000000')),
      f64('BFF0000000000000'),
    );
    returns(
      'f64_load_1',
      () => m0.f64_load(f64('40934A4584F4C6E7')),
      f64('40934A4584F4C6E7'),
    );
    returns(
      'f64_load_2',
      () => m0.f64_load(f64('4119E4C9B26C7EAE')),
      f64('4119E4C9B26C7EAE'),
    );
    returns(
      'f64_load_3',
      () => m0.f64_load(f64('7FEFFFFFFFFFFFFF')),
      f64('7FEFFFFFFFFFFFFF'),
    );
    returns('i32_store16_0', () => m0.i32_store16(i32('FFFFFFFF')), 0xFFFF);
    returns('i32_store16_1', () => m0.i32_store16(i32('FFFFEF6E')), 0xEF6E);
    returns('i32_store16_2', () => m0.i32_store16(0x2A), 0x2A);
    returns('i32_store16_3', () => m0.i32_store16(0xCAFE), 0xCAFE);
    returns(
      'i32_store_0',
      () => m0.i32_store(i32('FFFFFFFF')),
      i32('FFFFFFFF'),
    );
    returns(
      'i32_store_1',
      () => m0.i32_store(i32('FFFFEF6E')),
      i32('FFFFEF6E'),
    );
    returns('i32_store_2', () => m0.i32_store(i32('28757B2')), i32('28757B2'));
    returns(
      'i32_store_3',
      () => m0.i32_store(i32('DEADCAFE')),
      i32('DEADCAFE'),
    );
    returns(
      'i64_store16_0',
      () => m0.i64_store16(i64('FFFFFFFFFFFFFFFF')),
      0xFFFF,
    );
    returns(
      'i64_store16_1',
      () => m0.i64_store16(i64('FFFFFFFFFFFFEF6E')),
      0xEF6E,
    );
    returns('i64_store16_2', () => m0.i64_store16(0x2A), 0x2A);
    returns('i64_store16_3', () => m0.i64_store16(0xCAFE), 0xCAFE);
    returns(
      'i64_store32_0',
      () => m0.i64_store32(i64('FFFFFFFFFFFFFFFF')),
      i64('FFFFFFFF'),
    );
    returns(
      'i64_store32_1',
      () => m0.i64_store32(i64('FFFFFFFFFFFFEF6E')),
      i64('FFFFEF6E'),
    );
    returns(
      'i64_store32_2',
      () => m0.i64_store32(i64('28757B2')),
      i64('28757B2'),
    );
    returns(
      'i64_store32_3',
      () => m0.i64_store32(i64('DEADCAFE')),
      i64('DEADCAFE'),
    );
    returns(
      'i64_store_0',
      () => m0.i64_store(i64('FFFFFFFFFFFFFFFF')),
      i64('FFFFFFFFFFFFFFFF'),
    );
    returns(
      'i64_store_1',
      () => m0.i64_store(i64('FFFFFFFFFD78A84E')),
      i64('FFFFFFFFFD78A84E'),
    );
    returns(
      'i64_store_2',
      () => m0.i64_store(i64('ABAD1DEA')),
      i64('ABAD1DEA'),
    );
    returns(
      'i64_store_3',
      () => m0.i64_store(i64('ABADCAFEDEAD1DEA')),
      i64('ABADCAFEDEAD1DEA'),
    );
    returns(
      'f32_store_0',
      () => m0.f32_store(f32('BF800000')),
      f32('BF800000'),
    );
    returns(
      'f32_store_1',
      () => m0.f32_store(f32('3C4A2DB6')),
      f32('3C4A2DB6'),
    );
    returns(
      'f32_store_2',
      () => m0.f32_store(f32('45849365')),
      f32('45849365'),
    );
    returns(
      'f32_store_3',
      () => m0.f32_store(f32('7F7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'f64_store_0',
      () => m0.f64_store(f64('BFF0000000000000')),
      f64('BFF0000000000000'),
    );
    returns(
      'f64_store_1',
      () => m0.f64_store(f64('40934A4584F4C6E7')),
      f64('40934A4584F4C6E7'),
    );
    returns(
      'f64_store_2',
      () => m0.f64_store(f64('4119E4C9B26C7EAE')),
      f64('4119E4C9B26C7EAE'),
    );
    returns(
      'f64_store_3',
      () => m0.f64_store(f64('7FEFFFFFFFFFFFFF')),
      f64('7FEFFFFFFFFFFFFF'),
    );
  });
}
