// Generated from spec/test/core/address.wast.

// ignore_for_file: unused_local_variable

import '../../src/infra.dart';
import 'address.0.dart' as address_0;
import 'address.2.dart' as address_2;
import 'address.3.dart' as address_3;
import 'address.4.dart' as address_4;

const String _oobma = 'out of bounds memory access';

void main() {
  group('address', () {
    // module address.0.dart
    var m0 = address_0.Module();

    returns('8u_good1_0', () => m0.$8u_good1(0), 0x61);
    returns('8u_good2_0', () => m0.$8u_good2(0), 0x61);
    returns('8u_good3_0', () => m0.$8u_good3(0), 0x62);
    returns('8u_good4_0', () => m0.$8u_good4(0), 0x63);
    returns('8u_good5_0', () => m0.$8u_good5(0), 0x7A);
    returns('8s_good1_0', () => m0.$8s_good1(0), 0x61);
    returns('8s_good2_0', () => m0.$8s_good2(0), 0x61);
    returns('8s_good3_0', () => m0.$8s_good3(0), 0x62);
    returns('8s_good4_0', () => m0.$8s_good4(0), 0x63);
    returns('8s_good5_0', () => m0.$8s_good5(0), 0x7A);
    returns('16u_good1_0', () => m0.$16u_good1(0), 0x6261);
    returns('16u_good2_0', () => m0.$16u_good2(0), 0x6261);
    returns('16u_good3_0', () => m0.$16u_good3(0), 0x6362);
    returns('16u_good4_0', () => m0.$16u_good4(0), 0x6463);
    returns('16u_good5_0', () => m0.$16u_good5(0), 0x7A);
    returns('16s_good1_0', () => m0.$16s_good1(0), 0x6261);
    returns('16s_good2_0', () => m0.$16s_good2(0), 0x6261);
    returns('16s_good3_0', () => m0.$16s_good3(0), 0x6362);
    returns('16s_good4_0', () => m0.$16s_good4(0), 0x6463);
    returns('16s_good5_0', () => m0.$16s_good5(0), 0x7A);
    returns('32_good1_0', () => m0.$32_good1(0), i32('64636261'));
    returns('32_good2_0', () => m0.$32_good2(0), i32('64636261'));
    returns('32_good3_0', () => m0.$32_good3(0), i32('65646362'));
    returns('32_good4_0', () => m0.$32_good4(0), i32('66656463'));
    returns('32_good5_0', () => m0.$32_good5(0), 0x7A);
    returns('8u_good1_1', () => m0.$8u_good1(0xFFE3), 0);
    returns('8u_good2_1', () => m0.$8u_good2(0xFFE3), 0);
    returns('8u_good3_1', () => m0.$8u_good3(0xFFE3), 0);
    returns('8u_good4_1', () => m0.$8u_good4(0xFFE3), 0);
    returns('8u_good5_1', () => m0.$8u_good5(0xFFE3), 0);
    returns('8s_good1_1', () => m0.$8s_good1(0xFFE3), 0);
    returns('8s_good2_1', () => m0.$8s_good2(0xFFE3), 0);
    returns('8s_good3_1', () => m0.$8s_good3(0xFFE3), 0);
    returns('8s_good4_1', () => m0.$8s_good4(0xFFE3), 0);
    returns('8s_good5_1', () => m0.$8s_good5(0xFFE3), 0);
    returns('16u_good1_1', () => m0.$16u_good1(0xFFE3), 0);
    returns('16u_good2_1', () => m0.$16u_good2(0xFFE3), 0);
    returns('16u_good3_1', () => m0.$16u_good3(0xFFE3), 0);
    returns('16u_good4_1', () => m0.$16u_good4(0xFFE3), 0);
    returns('16u_good5_1', () => m0.$16u_good5(0xFFE3), 0);
    returns('16s_good1_1', () => m0.$16s_good1(0xFFE3), 0);
    returns('16s_good2_1', () => m0.$16s_good2(0xFFE3), 0);
    returns('16s_good3_1', () => m0.$16s_good3(0xFFE3), 0);
    returns('16s_good4_1', () => m0.$16s_good4(0xFFE3), 0);
    returns('16s_good5_1', () => m0.$16s_good5(0xFFE3), 0);
    returns('32_good1_1', () => m0.$32_good1(0xFFE3), 0);
    returns('32_good2_1', () => m0.$32_good2(0xFFE3), 0);
    returns('32_good3_1', () => m0.$32_good3(0xFFE3), 0);
    returns('32_good4_1', () => m0.$32_good4(0xFFE3), 0);
    returns('32_good5_1', () => m0.$32_good5(0xFFE3), 0);
    returns('8u_good1_2', () => m0.$8u_good1(0xFFE4), 0);
    returns('8u_good2_2', () => m0.$8u_good2(0xFFE4), 0);
    returns('8u_good3_2', () => m0.$8u_good3(0xFFE4), 0);
    returns('8u_good4_2', () => m0.$8u_good4(0xFFE4), 0);
    returns('8u_good5_2', () => m0.$8u_good5(0xFFE4), 0);
    returns('8s_good1_2', () => m0.$8s_good1(0xFFE4), 0);
    returns('8s_good2_2', () => m0.$8s_good2(0xFFE4), 0);
    returns('8s_good3_2', () => m0.$8s_good3(0xFFE4), 0);
    returns('8s_good4_2', () => m0.$8s_good4(0xFFE4), 0);
    returns('8s_good5_2', () => m0.$8s_good5(0xFFE4), 0);
    returns('16u_good1_2', () => m0.$16u_good1(0xFFE4), 0);
    returns('16u_good2_2', () => m0.$16u_good2(0xFFE4), 0);
    returns('16u_good3_2', () => m0.$16u_good3(0xFFE4), 0);
    returns('16u_good4_2', () => m0.$16u_good4(0xFFE4), 0);
    returns('16u_good5_2', () => m0.$16u_good5(0xFFE4), 0);
    returns('16s_good1_2', () => m0.$16s_good1(0xFFE4), 0);
    returns('16s_good2_2', () => m0.$16s_good2(0xFFE4), 0);
    returns('16s_good3_2', () => m0.$16s_good3(0xFFE4), 0);
    returns('16s_good4_2', () => m0.$16s_good4(0xFFE4), 0);
    returns('16s_good5_2', () => m0.$16s_good5(0xFFE4), 0);
    returns('32_good1_2', () => m0.$32_good1(0xFFE4), 0);
    returns('32_good2_2', () => m0.$32_good2(0xFFE4), 0);
    returns('32_good3_2', () => m0.$32_good3(0xFFE4), 0);
    returns('32_good4_2', () => m0.$32_good4(0xFFE4), 0);
    traps('32_good5_2', () => m0.$32_good5(0xFFE4), _oobma);
    traps('8u_good3_3', () => m0.$8u_good3(i32('FFFFFFFF')), _oobma);
    traps('8s_good3_3', () => m0.$8s_good3(i32('FFFFFFFF')), _oobma);
    traps('16u_good3_3', () => m0.$16u_good3(i32('FFFFFFFF')), _oobma);
    traps('16s_good3_3', () => m0.$16s_good3(i32('FFFFFFFF')), _oobma);
    traps('32_good3_3', () => m0.$32_good3(i32('FFFFFFFF')), _oobma);
    traps('32_good3_4', () => m0.$32_good3(i32('FFFFFFFF')), _oobma);
    traps('8u_bad_0', () => m0.$8u_bad(0), _oobma);
    traps('8s_bad_0', () => m0.$8s_bad(0), _oobma);
    traps('16u_bad_0', () => m0.$16u_bad(0), _oobma);
    traps('16s_bad_0', () => m0.$16s_bad(0), _oobma);
    traps('32_bad_0', () => m0.$32_bad(0), _oobma);
    traps('8u_bad_1', () => m0.$8u_bad(0x1), _oobma);
    traps('8s_bad_1', () => m0.$8s_bad(0x1), _oobma);
    traps('16u_bad_1', () => m0.$16u_bad(0x1), _oobma);
    traps('16s_bad_1', () => m0.$16s_bad(0x1), _oobma);
    traps('32_bad_1', () => m0.$32_bad(0x1), _oobma);

    // module address.2.dart
    var m1 = address_2.Module();

    returns('8u_good1_3', () => m1.$8u_good1(0), 0x61);
    returns('8u_good2_3', () => m1.$8u_good2(0), 0x61);
    returns('8u_good3_4', () => m1.$8u_good3(0), 0x62);
    returns('8u_good4_3', () => m1.$8u_good4(0), 0x63);
    returns('8u_good5_3', () => m1.$8u_good5(0), 0x7A);
    returns('8s_good1_3', () => m1.$8s_good1(0), 0x61);
    returns('8s_good2_3', () => m1.$8s_good2(0), 0x61);
    returns('8s_good3_4', () => m1.$8s_good3(0), 0x62);
    returns('8s_good4_3', () => m1.$8s_good4(0), 0x63);
    returns('8s_good5_3', () => m1.$8s_good5(0), 0x7A);
    returns('16u_good1_3', () => m1.$16u_good1(0), 0x6261);
    returns('16u_good2_3', () => m1.$16u_good2(0), 0x6261);
    returns('16u_good3_4', () => m1.$16u_good3(0), 0x6362);
    returns('16u_good4_3', () => m1.$16u_good4(0), 0x6463);
    returns('16u_good5_3', () => m1.$16u_good5(0), 0x7A);
    returns('16s_good1_3', () => m1.$16s_good1(0), 0x6261);
    returns('16s_good2_3', () => m1.$16s_good2(0), 0x6261);
    returns('16s_good3_4', () => m1.$16s_good3(0), 0x6362);
    returns('16s_good4_3', () => m1.$16s_good4(0), 0x6463);
    returns('16s_good5_3', () => m1.$16s_good5(0), 0x7A);
    returns('32u_good1_0', () => m1.$32u_good1(0), i64('64636261'));
    returns('32u_good2_0', () => m1.$32u_good2(0), i64('64636261'));
    returns('32u_good3_0', () => m1.$32u_good3(0), i64('65646362'));
    returns('32u_good4_0', () => m1.$32u_good4(0), i64('66656463'));
    returns('32u_good5_0', () => m1.$32u_good5(0), 0x7A);
    returns('32s_good1_0', () => m1.$32s_good1(0), i64('64636261'));
    returns('32s_good2_0', () => m1.$32s_good2(0), i64('64636261'));
    returns('32s_good3_0', () => m1.$32s_good3(0), i64('65646362'));
    returns('32s_good4_0', () => m1.$32s_good4(0), i64('66656463'));
    returns('32s_good5_0', () => m1.$32s_good5(0), 0x7A);
    returns('64_good1_0', () => m1.$64_good1(0), i64('6867666564636261'));
    returns('64_good2_0', () => m1.$64_good2(0), i64('6867666564636261'));
    returns('64_good3_0', () => m1.$64_good3(0), i64('6968676665646362'));
    returns('64_good4_0', () => m1.$64_good4(0), i64('6A69686766656463'));
    returns('64_good5_0', () => m1.$64_good5(0), 0x7A);
    returns('8u_good1_4', () => m1.$8u_good1(0xFFDF), 0);
    returns('8u_good2_4', () => m1.$8u_good2(0xFFDF), 0);
    returns('8u_good3_5', () => m1.$8u_good3(0xFFDF), 0);
    returns('8u_good4_4', () => m1.$8u_good4(0xFFDF), 0);
    returns('8u_good5_4', () => m1.$8u_good5(0xFFDF), 0);
    returns('8s_good1_4', () => m1.$8s_good1(0xFFDF), 0);
    returns('8s_good2_4', () => m1.$8s_good2(0xFFDF), 0);
    returns('8s_good3_5', () => m1.$8s_good3(0xFFDF), 0);
    returns('8s_good4_4', () => m1.$8s_good4(0xFFDF), 0);
    returns('8s_good5_4', () => m1.$8s_good5(0xFFDF), 0);
    returns('16u_good1_4', () => m1.$16u_good1(0xFFDF), 0);
    returns('16u_good2_4', () => m1.$16u_good2(0xFFDF), 0);
    returns('16u_good3_5', () => m1.$16u_good3(0xFFDF), 0);
    returns('16u_good4_4', () => m1.$16u_good4(0xFFDF), 0);
    returns('16u_good5_4', () => m1.$16u_good5(0xFFDF), 0);
    returns('16s_good1_4', () => m1.$16s_good1(0xFFDF), 0);
    returns('16s_good2_4', () => m1.$16s_good2(0xFFDF), 0);
    returns('16s_good3_5', () => m1.$16s_good3(0xFFDF), 0);
    returns('16s_good4_4', () => m1.$16s_good4(0xFFDF), 0);
    returns('16s_good5_4', () => m1.$16s_good5(0xFFDF), 0);
    returns('32u_good1_1', () => m1.$32u_good1(0xFFDF), 0);
    returns('32u_good2_1', () => m1.$32u_good2(0xFFDF), 0);
    returns('32u_good3_1', () => m1.$32u_good3(0xFFDF), 0);
    returns('32u_good4_1', () => m1.$32u_good4(0xFFDF), 0);
    returns('32u_good5_1', () => m1.$32u_good5(0xFFDF), 0);
    returns('32s_good1_1', () => m1.$32s_good1(0xFFDF), 0);
    returns('32s_good2_1', () => m1.$32s_good2(0xFFDF), 0);
    returns('32s_good3_1', () => m1.$32s_good3(0xFFDF), 0);
    returns('32s_good4_1', () => m1.$32s_good4(0xFFDF), 0);
    returns('32s_good5_1', () => m1.$32s_good5(0xFFDF), 0);
    returns('64_good1_1', () => m1.$64_good1(0xFFDF), 0);
    returns('64_good2_1', () => m1.$64_good2(0xFFDF), 0);
    returns('64_good3_1', () => m1.$64_good3(0xFFDF), 0);
    returns('64_good4_1', () => m1.$64_good4(0xFFDF), 0);
    returns('64_good5_1', () => m1.$64_good5(0xFFDF), 0);
    returns('8u_good1_5', () => m1.$8u_good1(0xFFE0), 0);
    returns('8u_good2_5', () => m1.$8u_good2(0xFFE0), 0);
    returns('8u_good3_6', () => m1.$8u_good3(0xFFE0), 0);
    returns('8u_good4_5', () => m1.$8u_good4(0xFFE0), 0);
    returns('8u_good5_5', () => m1.$8u_good5(0xFFE0), 0);
    returns('8s_good1_5', () => m1.$8s_good1(0xFFE0), 0);
    returns('8s_good2_5', () => m1.$8s_good2(0xFFE0), 0);
    returns('8s_good3_6', () => m1.$8s_good3(0xFFE0), 0);
    returns('8s_good4_5', () => m1.$8s_good4(0xFFE0), 0);
    returns('8s_good5_5', () => m1.$8s_good5(0xFFE0), 0);
    returns('16u_good1_5', () => m1.$16u_good1(0xFFE0), 0);
    returns('16u_good2_5', () => m1.$16u_good2(0xFFE0), 0);
    returns('16u_good3_6', () => m1.$16u_good3(0xFFE0), 0);
    returns('16u_good4_5', () => m1.$16u_good4(0xFFE0), 0);
    returns('16u_good5_5', () => m1.$16u_good5(0xFFE0), 0);
    returns('16s_good1_5', () => m1.$16s_good1(0xFFE0), 0);
    returns('16s_good2_5', () => m1.$16s_good2(0xFFE0), 0);
    returns('16s_good3_6', () => m1.$16s_good3(0xFFE0), 0);
    returns('16s_good4_5', () => m1.$16s_good4(0xFFE0), 0);
    returns('16s_good5_5', () => m1.$16s_good5(0xFFE0), 0);
    returns('32u_good1_2', () => m1.$32u_good1(0xFFE0), 0);
    returns('32u_good2_2', () => m1.$32u_good2(0xFFE0), 0);
    returns('32u_good3_2', () => m1.$32u_good3(0xFFE0), 0);
    returns('32u_good4_2', () => m1.$32u_good4(0xFFE0), 0);
    returns('32u_good5_2', () => m1.$32u_good5(0xFFE0), 0);
    returns('32s_good1_2', () => m1.$32s_good1(0xFFE0), 0);
    returns('32s_good2_2', () => m1.$32s_good2(0xFFE0), 0);
    returns('32s_good3_2', () => m1.$32s_good3(0xFFE0), 0);
    returns('32s_good4_2', () => m1.$32s_good4(0xFFE0), 0);
    returns('32s_good5_2', () => m1.$32s_good5(0xFFE0), 0);
    returns('64_good1_2', () => m1.$64_good1(0xFFE0), 0);
    returns('64_good2_2', () => m1.$64_good2(0xFFE0), 0);
    returns('64_good3_2', () => m1.$64_good3(0xFFE0), 0);
    returns('64_good4_2', () => m1.$64_good4(0xFFE0), 0);
    traps('64_good5_2', () => m1.$64_good5(0xFFE0), _oobma);
    traps('8u_good3_7', () => m1.$8u_good3(i32('FFFFFFFF')), _oobma);
    traps('8s_good3_7', () => m1.$8s_good3(i32('FFFFFFFF')), _oobma);
    traps('16u_good3_7', () => m1.$16u_good3(i32('FFFFFFFF')), _oobma);
    traps('16s_good3_7', () => m1.$16s_good3(i32('FFFFFFFF')), _oobma);
    traps('32u_good3_3', () => m1.$32u_good3(i32('FFFFFFFF')), _oobma);
    traps('32s_good3_3', () => m1.$32s_good3(i32('FFFFFFFF')), _oobma);
    traps('64_good3_3', () => m1.$64_good3(i32('FFFFFFFF')), _oobma);
    traps('8u_bad_2', () => m1.$8u_bad(0), _oobma);
    traps('8s_bad_2', () => m1.$8s_bad(0), _oobma);
    traps('16u_bad_2', () => m1.$16u_bad(0), _oobma);
    traps('16s_bad_2', () => m1.$16s_bad(0), _oobma);
    traps('32u_bad_0', () => m1.$32u_bad(0), _oobma);
    traps('32s_bad_0', () => m1.$32s_bad(0), _oobma);
    traps('64_bad_0', () => m1.$64_bad(0), _oobma);
    traps('8u_bad_3', () => m1.$8u_bad(0x1), _oobma);
    traps('8s_bad_3', () => m1.$8s_bad(0x1), _oobma);
    traps('16u_bad_3', () => m1.$16u_bad(0x1), _oobma);
    traps('16s_bad_3', () => m1.$16s_bad(0x1), _oobma);
    traps('32u_bad_1', () => m1.$32u_bad(0), _oobma);
    traps('32s_bad_1', () => m1.$32s_bad(0), _oobma);
    traps('64_bad_1', () => m1.$64_bad(0x1), _oobma);

    // module address.3.dart
    var m2 = address_3.Module();

    returns('32_good1_3', () => m2.$32_good1(0), f32('0'));
    returns('32_good2_3', () => m2.$32_good2(0), f32('0'));
    returns('32_good3_5', () => m2.$32_good3(0), f32('0'));
    returns('32_good4_3', () => m2.$32_good4(0), f32('0'));
    returns('32_good5_3', () => m2.$32_good5(0), f32('7FD00001'));
    returns('32_good1_4', () => m2.$32_good1(0xFFF4), f32('0'));
    returns('32_good2_4', () => m2.$32_good2(0xFFF4), f32('0'));
    returns('32_good3_6', () => m2.$32_good3(0xFFF4), f32('0'));
    returns('32_good4_4', () => m2.$32_good4(0xFFF4), f32('0'));
    returns('32_good5_4', () => m2.$32_good5(0xFFF4), f32('0'));
    returns('32_good1_5', () => m2.$32_good1(0xFFF5), f32('0'));
    returns('32_good2_5', () => m2.$32_good2(0xFFF5), f32('0'));
    returns('32_good3_7', () => m2.$32_good3(0xFFF5), f32('0'));
    returns('32_good4_5', () => m2.$32_good4(0xFFF5), f32('0'));
    traps('32_good5_5', () => m2.$32_good5(0xFFF5), _oobma);
    traps('32_good3_8', () => m2.$32_good3(i32('FFFFFFFF')), _oobma);
    traps('32_good3_9', () => m2.$32_good3(i32('FFFFFFFF')), _oobma);
    traps('32_bad_2', () => m2.$32_bad(0), _oobma);
    traps('32_bad_3', () => m2.$32_bad(0x1), _oobma);

    // module address.4.dart
    var m3 = address_4.Module();

    returns('64_good1_3', () => m3.$64_good1(0), f64('0'));
    returns('64_good2_3', () => m3.$64_good2(0), f64('0'));
    returns('64_good3_4', () => m3.$64_good3(0), f64('0'));
    returns('64_good4_3', () => m3.$64_good4(0), f64('0'));
    returns('64_good5_3', () => m3.$64_good5(0), f64('7FFC000000000001'));
    returns('64_good1_4', () => m3.$64_good1(0xFFE6), f64('0'));
    returns('64_good2_4', () => m3.$64_good2(0xFFE6), f64('0'));
    returns('64_good3_5', () => m3.$64_good3(0xFFE6), f64('0'));
    returns('64_good4_4', () => m3.$64_good4(0xFFE6), f64('0'));
    returns('64_good5_4', () => m3.$64_good5(0xFFE6), f64('0'));
    returns('64_good1_5', () => m3.$64_good1(0xFFE7), f64('0'));
    returns('64_good2_5', () => m3.$64_good2(0xFFE7), f64('0'));
    returns('64_good3_6', () => m3.$64_good3(0xFFE7), f64('0'));
    returns('64_good4_5', () => m3.$64_good4(0xFFE7), f64('0'));
    traps('64_good5_5', () => m3.$64_good5(0xFFE7), _oobma);
    traps('64_good3_7', () => m3.$64_good3(i32('FFFFFFFF')), _oobma);
    traps('64_good3_8', () => m3.$64_good3(i32('FFFFFFFF')), _oobma);
    traps('64_bad_2', () => m3.$64_bad(0), _oobma);
    traps('64_bad_3', () => m3.$64_bad(0x1), _oobma);
  });
}
