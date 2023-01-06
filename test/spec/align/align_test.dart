// Generated from spec/test/core/align.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'align.0.dart' as align_0;
import 'align.1.dart' as align_1;
import 'align.10.dart' as align_10;
import 'align.106.dart' as align_106;
import 'align.107.dart' as align_107;
import 'align.11.dart' as align_11;
import 'align.12.dart' as align_12;
import 'align.13.dart' as align_13;
import 'align.14.dart' as align_14;
import 'align.15.dart' as align_15;
import 'align.16.dart' as align_16;
import 'align.17.dart' as align_17;
import 'align.18.dart' as align_18;
import 'align.19.dart' as align_19;
import 'align.2.dart' as align_2;
import 'align.20.dart' as align_20;
import 'align.21.dart' as align_21;
import 'align.22.dart' as align_22;
import 'align.3.dart' as align_3;
import 'align.4.dart' as align_4;
import 'align.5.dart' as align_5;
import 'align.6.dart' as align_6;
import 'align.7.dart' as align_7;
import 'align.8.dart' as align_8;
import 'align.9.dart' as align_9;

const String _oobma = 'out of bounds memory access';

void main() {
  group('align', () {
    // module align.0.dart (line 3)
    var m0 = align_0.Align0Module();

    // module align.1.dart (line 4)
    var m1 = align_1.Align1Module();

    // module align.2.dart (line 5)
    var m2 = align_2.Align2Module();

    // module align.3.dart (line 6)
    var m3 = align_3.Align3Module();

    // module align.4.dart (line 7)
    var m4 = align_4.Align4Module();

    // module align.5.dart (line 8)
    var m5 = align_5.Align5Module();

    // module align.6.dart (line 9)
    var m6 = align_6.Align6Module();

    // module align.7.dart (line 10)
    var m7 = align_7.Align7Module();

    // module align.8.dart (line 11)
    var m8 = align_8.Align8Module();

    // module align.9.dart (line 12)
    var m9 = align_9.Align9Module();

    // module align.10.dart (line 13)
    var m10 = align_10.Align10Module();

    // module align.11.dart (line 14)
    var m11 = align_11.Align11Module();

    // module align.12.dart (line 15)
    var m12 = align_12.Align12Module();

    // module align.13.dart (line 16)
    var m13 = align_13.Align13Module();

    // module align.14.dart (line 17)
    var m14 = align_14.Align14Module();

    // module align.15.dart (line 18)
    var m15 = align_15.Align15Module();

    // module align.16.dart (line 19)
    var m16 = align_16.Align16Module();

    // module align.17.dart (line 20)
    var m17 = align_17.Align17Module();

    // module align.18.dart (line 21)
    var m18 = align_18.Align18Module();

    // module align.19.dart (line 22)
    var m19 = align_19.Align19Module();

    // module align.20.dart (line 23)
    var m20 = align_20.Align20Module();

    // module align.21.dart (line 24)
    var m21 = align_21.Align21Module();

    // module align.22.dart (line 25)
    var m22 = align_22.Align22Module();

    // module align.106.dart (line 458)
    var m23 = align_106.Align106Module();

    returns(
      'f32_align_switch_0',
      () => m23.f32_align_switch(0),
      $f32('41200000'),
    );
    returns(
      'f32_align_switch_1',
      () => m23.f32_align_switch(0x1),
      $f32('41200000'),
    );
    returns(
      'f32_align_switch_2',
      () => m23.f32_align_switch(0x2),
      $f32('41200000'),
    );
    returns(
      'f32_align_switch_3',
      () => m23.f32_align_switch(0x3),
      $f32('41200000'),
    );
    returns(
      'f64_align_switch_0',
      () => m23.f64_align_switch(0),
      $f64('4024000000000000'),
    );
    returns(
      'f64_align_switch_1',
      () => m23.f64_align_switch(0x1),
      $f64('4024000000000000'),
    );
    returns(
      'f64_align_switch_2',
      () => m23.f64_align_switch(0x2),
      $f64('4024000000000000'),
    );
    returns(
      'f64_align_switch_3',
      () => m23.f64_align_switch(0x3),
      $f64('4024000000000000'),
    );
    returns(
      'f64_align_switch_4',
      () => m23.f64_align_switch(0x4),
      $f64('4024000000000000'),
    );
    returns('i32_align_switch_0', () => m23.i32_align_switch(0, 0), 0xA);
    returns('i32_align_switch_1', () => m23.i32_align_switch(0, 0x1), 0xA);
    returns('i32_align_switch_2', () => m23.i32_align_switch(0x1, 0), 0xA);
    returns('i32_align_switch_3', () => m23.i32_align_switch(0x1, 0x1), 0xA);
    returns('i32_align_switch_4', () => m23.i32_align_switch(0x2, 0), 0xA);
    returns('i32_align_switch_5', () => m23.i32_align_switch(0x2, 0x1), 0xA);
    returns('i32_align_switch_6', () => m23.i32_align_switch(0x2, 0x2), 0xA);
    returns('i32_align_switch_7', () => m23.i32_align_switch(0x3, 0), 0xA);
    returns('i32_align_switch_8', () => m23.i32_align_switch(0x3, 0x1), 0xA);
    returns('i32_align_switch_9', () => m23.i32_align_switch(0x3, 0x2), 0xA);
    returns('i32_align_switch_10', () => m23.i32_align_switch(0x4, 0), 0xA);
    returns('i32_align_switch_11', () => m23.i32_align_switch(0x4, 0x1), 0xA);
    returns('i32_align_switch_12', () => m23.i32_align_switch(0x4, 0x2), 0xA);
    returns('i32_align_switch_13', () => m23.i32_align_switch(0x4, 0x4), 0xA);
    returns('i64_align_switch_0', () => m23.i64_align_switch(0, 0), 0xA);
    returns('i64_align_switch_1', () => m23.i64_align_switch(0, 0x1), 0xA);
    returns('i64_align_switch_2', () => m23.i64_align_switch(0x1, 0), 0xA);
    returns('i64_align_switch_3', () => m23.i64_align_switch(0x1, 0x1), 0xA);
    returns('i64_align_switch_4', () => m23.i64_align_switch(0x2, 0), 0xA);
    returns('i64_align_switch_5', () => m23.i64_align_switch(0x2, 0x1), 0xA);
    returns('i64_align_switch_6', () => m23.i64_align_switch(0x2, 0x2), 0xA);
    returns('i64_align_switch_7', () => m23.i64_align_switch(0x3, 0), 0xA);
    returns('i64_align_switch_8', () => m23.i64_align_switch(0x3, 0x1), 0xA);
    returns('i64_align_switch_9', () => m23.i64_align_switch(0x3, 0x2), 0xA);
    returns('i64_align_switch_10', () => m23.i64_align_switch(0x4, 0), 0xA);
    returns('i64_align_switch_11', () => m23.i64_align_switch(0x4, 0x1), 0xA);
    returns('i64_align_switch_12', () => m23.i64_align_switch(0x4, 0x2), 0xA);
    returns('i64_align_switch_13', () => m23.i64_align_switch(0x4, 0x4), 0xA);
    returns('i64_align_switch_14', () => m23.i64_align_switch(0x5, 0), 0xA);
    returns('i64_align_switch_15', () => m23.i64_align_switch(0x5, 0x1), 0xA);
    returns('i64_align_switch_16', () => m23.i64_align_switch(0x5, 0x2), 0xA);
    returns('i64_align_switch_17', () => m23.i64_align_switch(0x5, 0x4), 0xA);
    returns('i64_align_switch_18', () => m23.i64_align_switch(0x6, 0), 0xA);
    returns('i64_align_switch_19', () => m23.i64_align_switch(0x6, 0x1), 0xA);
    returns('i64_align_switch_20', () => m23.i64_align_switch(0x6, 0x2), 0xA);
    returns('i64_align_switch_21', () => m23.i64_align_switch(0x6, 0x4), 0xA);
    returns('i64_align_switch_22', () => m23.i64_align_switch(0x6, 0x8), 0xA);

    // module align.107.dart (line 854)
    var m24 = align_107.Align107Module();

    traps('store_0', () => m24.store(0xFFFC, $i64('FFFFFFFFFFFFFFFF')), _oobma);
    returns('load_0', () => m24.load(0xFFFC), 0);
  });
}
