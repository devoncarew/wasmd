// Generated from spec/test/core/traps.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'traps.0.dart' as traps_0;
import 'traps.1.dart' as traps_1;
import 'traps.2.dart' as traps_2;
import 'traps.3.dart' as traps_3;

const String _idbz = 'integer divide by zero';
const String _io = 'integer overflow';
const String _icti = 'invalid conversion to integer';
const String _oobma = 'out of bounds memory access';

void main() {
  group('traps', () {
    // module traps.0.dart (line 5)
    var m0 = traps_0.Traps0Module();

    traps('no_dce_i32_div_s_0', () => m0.no_dce_i32_div_s(0x1, 0), _idbz);
    traps('no_dce_i32_div_u_0', () => m0.no_dce_i32_div_u(0x1, 0), _idbz);
    traps('no_dce_i64_div_s_0', () => m0.no_dce_i64_div_s(0x1, 0), _idbz);
    traps('no_dce_i64_div_u_0', () => m0.no_dce_i64_div_u(0x1, 0), _idbz);
    traps(
      'no_dce_i32_div_s_1',
      () => m0.no_dce_i32_div_s($i32('80000000'), $i32('FFFFFFFF')),
      _io,
    );
    traps(
      'no_dce_i64_div_s_1',
      () => m0.no_dce_i64_div_s($i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')),
      _io,
    );

    // module traps.1.dart (line 23)
    var m1 = traps_1.Traps1Module();

    traps('no_dce_i32_rem_s_0', () => m1.no_dce_i32_rem_s(0x1, 0), _idbz);
    traps('no_dce_i32_rem_u_0', () => m1.no_dce_i32_rem_u(0x1, 0), _idbz);
    traps('no_dce_i64_rem_s_0', () => m1.no_dce_i64_rem_s(0x1, 0), _idbz);
    traps('no_dce_i64_rem_u_0', () => m1.no_dce_i64_rem_u(0x1, 0), _idbz);

    // module traps.2.dart (line 39)
    var m2 = traps_2.Traps2Module();

    traps(
      'no_dce_i32_trunc_f32_s_0',
      () => m2.no_dce_i32_trunc_f32_s($f32('7FC00000')),
      _icti,
    );
    traps(
      'no_dce_i32_trunc_f32_u_0',
      () => m2.no_dce_i32_trunc_f32_u($f32('7FC00000')),
      _icti,
    );
    traps(
      'no_dce_i32_trunc_f64_s_0',
      () => m2.no_dce_i32_trunc_f64_s($f64('7FF8000000000000')),
      _icti,
    );
    traps(
      'no_dce_i32_trunc_f64_u_0',
      () => m2.no_dce_i32_trunc_f64_u($f64('7FF8000000000000')),
      _icti,
    );
    traps(
      'no_dce_i64_trunc_f32_s_0',
      () => m2.no_dce_i64_trunc_f32_s($f32('7FC00000')),
      _icti,
    );
    traps(
      'no_dce_i64_trunc_f32_u_0',
      () => m2.no_dce_i64_trunc_f32_u($f32('7FC00000')),
      _icti,
    );
    traps(
      'no_dce_i64_trunc_f64_s_0',
      () => m2.no_dce_i64_trunc_f64_s($f64('7FF8000000000000')),
      _icti,
    );
    traps(
      'no_dce_i64_trunc_f64_u_0',
      () => m2.no_dce_i64_trunc_f64_u($f64('7FF8000000000000')),
      _icti,
    );

    // module traps.3.dart (line 59)
    var m3 = traps_3.Traps3Module();

    traps('no_dce_i32_load_0', () => m3.no_dce_i32_load(0x10000), _oobma);
    traps(
      'no_dce_i32_load16_s_0',
      () => m3.no_dce_i32_load16_s(0x10000),
      _oobma,
    );
    traps(
      'no_dce_i32_load16_u_0',
      () => m3.no_dce_i32_load16_u(0x10000),
      _oobma,
    );
    traps('no_dce_i32_load8_s_0', () => m3.no_dce_i32_load8_s(0x10000), _oobma);
    traps('no_dce_i32_load8_u_0', () => m3.no_dce_i32_load8_u(0x10000), _oobma);
    traps('no_dce_i64_load_0', () => m3.no_dce_i64_load(0x10000), _oobma);
    traps(
      'no_dce_i64_load32_s_0',
      () => m3.no_dce_i64_load32_s(0x10000),
      _oobma,
    );
    traps(
      'no_dce_i64_load32_u_0',
      () => m3.no_dce_i64_load32_u(0x10000),
      _oobma,
    );
    traps(
      'no_dce_i64_load16_s_0',
      () => m3.no_dce_i64_load16_s(0x10000),
      _oobma,
    );
    traps(
      'no_dce_i64_load16_u_0',
      () => m3.no_dce_i64_load16_u(0x10000),
      _oobma,
    );
    traps('no_dce_i64_load8_s_0', () => m3.no_dce_i64_load8_s(0x10000), _oobma);
    traps('no_dce_i64_load8_u_0', () => m3.no_dce_i64_load8_u(0x10000), _oobma);
    traps('no_dce_f32_load_0', () => m3.no_dce_f32_load(0x10000), _oobma);
    traps('no_dce_f64_load_0', () => m3.no_dce_f64_load(0x10000), _oobma);
  });
}
