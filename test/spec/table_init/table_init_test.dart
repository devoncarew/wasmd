// Generated from spec/test/core/table_init.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'table_init.0.dart' as table_init_0;
import 'table_init.1.dart' as table_init_1;
import 'table_init.100.dart' as table_init_100;
import 'table_init.101.dart' as table_init_101;
import 'table_init.11.dart' as table_init_11;
import 'table_init.12.dart' as table_init_12;
import 'table_init.13.dart' as table_init_13;
import 'table_init.14.dart' as table_init_14;
import 'table_init.15.dart' as table_init_15;
import 'table_init.16.dart' as table_init_16;
import 'table_init.17.dart' as table_init_17;
import 'table_init.18.dart' as table_init_18;
import 'table_init.19.dart' as table_init_19;
import 'table_init.2.dart' as table_init_2;
import 'table_init.20.dart' as table_init_20;
import 'table_init.21.dart' as table_init_21;
import 'table_init.22.dart' as table_init_22;
import 'table_init.23.dart' as table_init_23;
import 'table_init.24.dart' as table_init_24;
import 'table_init.25.dart' as table_init_25;
import 'table_init.26.dart' as table_init_26;
import 'table_init.27.dart' as table_init_27;
import 'table_init.28.dart' as table_init_28;
import 'table_init.29.dart' as table_init_29;
import 'table_init.3.dart' as table_init_3;
import 'table_init.30.dart' as table_init_30;
import 'table_init.31.dart' as table_init_31;
import 'table_init.4.dart' as table_init_4;
import 'table_init.5.dart' as table_init_5;
import 'table_init.6.dart' as table_init_6;
import 'table_init.95.dart' as table_init_95;
import 'table_init.96.dart' as table_init_96;
import 'table_init.97.dart' as table_init_97;
import 'table_init.98.dart' as table_init_98;
import 'table_init.99.dart' as table_init_99;

const String _ue = 'uninitialized element';
const String _oobta = 'out of bounds table access';

void main() {
  group('table_init', () {
    // module table_init.0.dart (line 6)
    var m0 = table_init_0.TableInit0Module();

    // module table_init.1.dart (line 15)
    var m1 = table_init_1.TableInit1Module(
      aImports: Wrapper0(m0),
    );

    invoke('test_0', () => m1.test());
    traps('check_0', () => m1.check(0), _ue);
    traps('check_1', () => m1.check(0x1), _ue);
    returns('check_2', () => m1.check(0x2), 0x3);
    returns('check_3', () => m1.check(0x3), 0x1);
    returns('check_4', () => m1.check(0x4), 0x4);
    returns('check_5', () => m1.check(0x5), 0x1);
    traps('check_6', () => m1.check(0x6), _ue);
    returns('check_7', () => m1.check(0x7), 0x2);
    returns('check_8', () => m1.check(0x8), 0x7);
    returns('check_9', () => m1.check(0x9), 0x1);
    returns('check_10', () => m1.check(0xA), 0x8);
    traps('check_11', () => m1.check(0xB), _ue);
    returns('check_12', () => m1.check(0xC), 0x7);
    returns('check_13', () => m1.check(0xD), 0x5);
    returns('check_14', () => m1.check(0xE), 0x2);
    returns('check_15', () => m1.check(0xF), 0x3);
    returns('check_16', () => m1.check(0x10), 0x6);
    traps('check_17', () => m1.check(0x11), _ue);
    traps('check_18', () => m1.check(0x12), _ue);
    traps('check_19', () => m1.check(0x13), _ue);
    traps('check_20', () => m1.check(0x14), _ue);
    traps('check_21', () => m1.check(0x15), _ue);
    traps('check_22', () => m1.check(0x16), _ue);
    traps('check_23', () => m1.check(0x17), _ue);
    traps('check_24', () => m1.check(0x18), _ue);
    traps('check_25', () => m1.check(0x19), _ue);
    traps('check_26', () => m1.check(0x1A), _ue);
    traps('check_27', () => m1.check(0x1B), _ue);
    traps('check_28', () => m1.check(0x1C), _ue);
    traps('check_29', () => m1.check(0x1D), _ue);

    // module table_init.2.dart (line 73)
    var m2 = table_init_2.TableInit2Module(
      aImports: Wrapper1(m0),
    );

    invoke('test_1', () => m2.test());
    traps('check_30', () => m2.check(0), _ue);
    traps('check_31', () => m2.check(0x1), _ue);
    returns('check_32', () => m2.check(0x2), 0x3);
    returns('check_33', () => m2.check(0x3), 0x1);
    returns('check_34', () => m2.check(0x4), 0x4);
    returns('check_35', () => m2.check(0x5), 0x1);
    traps('check_36', () => m2.check(0x6), _ue);
    traps('check_37', () => m2.check(0x7), _ue);
    traps('check_38', () => m2.check(0x8), _ue);
    traps('check_39', () => m2.check(0x9), _ue);
    traps('check_40', () => m2.check(0xA), _ue);
    traps('check_41', () => m2.check(0xB), _ue);
    returns('check_42', () => m2.check(0xC), 0x7);
    returns('check_43', () => m2.check(0xD), 0x5);
    returns('check_44', () => m2.check(0xE), 0x2);
    returns('check_45', () => m2.check(0xF), 0x9);
    returns('check_46', () => m2.check(0x10), 0x2);
    returns('check_47', () => m2.check(0x11), 0x7);
    traps('check_48', () => m2.check(0x12), _ue);
    traps('check_49', () => m2.check(0x13), _ue);
    traps('check_50', () => m2.check(0x14), _ue);
    traps('check_51', () => m2.check(0x15), _ue);
    traps('check_52', () => m2.check(0x16), _ue);
    traps('check_53', () => m2.check(0x17), _ue);
    traps('check_54', () => m2.check(0x18), _ue);
    traps('check_55', () => m2.check(0x19), _ue);
    traps('check_56', () => m2.check(0x1A), _ue);
    traps('check_57', () => m2.check(0x1B), _ue);
    traps('check_58', () => m2.check(0x1C), _ue);
    traps('check_59', () => m2.check(0x1D), _ue);

    // module table_init.3.dart (line 131)
    var m3 = table_init_3.TableInit3Module(
      aImports: Wrapper2(m0),
    );

    invoke('test_2', () => m3.test());
    traps('check_60', () => m3.check(0), _ue);
    traps('check_61', () => m3.check(0x1), _ue);
    returns('check_62', () => m3.check(0x2), 0x3);
    returns('check_63', () => m3.check(0x3), 0x1);
    returns('check_64', () => m3.check(0x4), 0x4);
    returns('check_65', () => m3.check(0x5), 0x1);
    traps('check_66', () => m3.check(0x6), _ue);
    returns('check_67', () => m3.check(0x7), 0x2);
    returns('check_68', () => m3.check(0x8), 0x7);
    returns('check_69', () => m3.check(0x9), 0x1);
    returns('check_70', () => m3.check(0xA), 0x8);
    traps('check_71', () => m3.check(0xB), _ue);
    returns('check_72', () => m3.check(0xC), 0x7);
    traps('check_73', () => m3.check(0xD), _ue);
    returns('check_74', () => m3.check(0xE), 0x7);
    returns('check_75', () => m3.check(0xF), 0x5);
    returns('check_76', () => m3.check(0x10), 0x2);
    returns('check_77', () => m3.check(0x11), 0x7);
    traps('check_78', () => m3.check(0x12), _ue);
    returns('check_79', () => m3.check(0x13), 0x9);
    traps('check_80', () => m3.check(0x14), _ue);
    returns('check_81', () => m3.check(0x15), 0x7);
    traps('check_82', () => m3.check(0x16), _ue);
    returns('check_83', () => m3.check(0x17), 0x8);
    returns('check_84', () => m3.check(0x18), 0x8);
    traps('check_85', () => m3.check(0x19), _ue);
    traps('check_86', () => m3.check(0x1A), _ue);
    traps('check_87', () => m3.check(0x1B), _ue);
    traps('check_88', () => m3.check(0x1C), _ue);
    traps('check_89', () => m3.check(0x1D), _ue);

    // module table_init.4.dart (line 197)
    var m4 = table_init_4.TableInit4Module(
      aImports: Wrapper3(m0),
    );

    invoke('test_3', () => m4.test());
    traps('check_90', () => m4.check(0), _ue);
    traps('check_91', () => m4.check(0x1), _ue);
    returns('check_92', () => m4.check(0x2), 0x3);
    returns('check_93', () => m4.check(0x3), 0x1);
    returns('check_94', () => m4.check(0x4), 0x4);
    returns('check_95', () => m4.check(0x5), 0x1);
    traps('check_96', () => m4.check(0x6), _ue);
    returns('check_97', () => m4.check(0x7), 0x2);
    returns('check_98', () => m4.check(0x8), 0x7);
    returns('check_99', () => m4.check(0x9), 0x1);
    returns('check_100', () => m4.check(0xA), 0x8);
    traps('check_101', () => m4.check(0xB), _ue);
    returns('check_102', () => m4.check(0xC), 0x7);
    returns('check_103', () => m4.check(0xD), 0x5);
    returns('check_104', () => m4.check(0xE), 0x2);
    returns('check_105', () => m4.check(0xF), 0x3);
    returns('check_106', () => m4.check(0x10), 0x6);
    traps('check_107', () => m4.check(0x11), _ue);
    traps('check_108', () => m4.check(0x12), _ue);
    traps('check_109', () => m4.check(0x13), _ue);
    traps('check_110', () => m4.check(0x14), _ue);
    traps('check_111', () => m4.check(0x15), _ue);
    traps('check_112', () => m4.check(0x16), _ue);
    traps('check_113', () => m4.check(0x17), _ue);
    traps('check_114', () => m4.check(0x18), _ue);
    traps('check_115', () => m4.check(0x19), _ue);
    traps('check_116', () => m4.check(0x1A), _ue);
    traps('check_117', () => m4.check(0x1B), _ue);
    traps('check_118', () => m4.check(0x1C), _ue);
    traps('check_119', () => m4.check(0x1D), _ue);

    // module table_init.5.dart (line 255)
    var m5 = table_init_5.TableInit5Module(
      aImports: Wrapper4(m0),
    );

    invoke('test_4', () => m5.test());
    traps('check_120', () => m5.check(0), _ue);
    traps('check_121', () => m5.check(0x1), _ue);
    returns('check_122', () => m5.check(0x2), 0x3);
    returns('check_123', () => m5.check(0x3), 0x1);
    returns('check_124', () => m5.check(0x4), 0x4);
    returns('check_125', () => m5.check(0x5), 0x1);
    traps('check_126', () => m5.check(0x6), _ue);
    traps('check_127', () => m5.check(0x7), _ue);
    traps('check_128', () => m5.check(0x8), _ue);
    traps('check_129', () => m5.check(0x9), _ue);
    traps('check_130', () => m5.check(0xA), _ue);
    traps('check_131', () => m5.check(0xB), _ue);
    returns('check_132', () => m5.check(0xC), 0x7);
    returns('check_133', () => m5.check(0xD), 0x5);
    returns('check_134', () => m5.check(0xE), 0x2);
    returns('check_135', () => m5.check(0xF), 0x9);
    returns('check_136', () => m5.check(0x10), 0x2);
    returns('check_137', () => m5.check(0x11), 0x7);
    traps('check_138', () => m5.check(0x12), _ue);
    traps('check_139', () => m5.check(0x13), _ue);
    traps('check_140', () => m5.check(0x14), _ue);
    traps('check_141', () => m5.check(0x15), _ue);
    traps('check_142', () => m5.check(0x16), _ue);
    traps('check_143', () => m5.check(0x17), _ue);
    traps('check_144', () => m5.check(0x18), _ue);
    traps('check_145', () => m5.check(0x19), _ue);
    traps('check_146', () => m5.check(0x1A), _ue);
    traps('check_147', () => m5.check(0x1B), _ue);
    traps('check_148', () => m5.check(0x1C), _ue);
    traps('check_149', () => m5.check(0x1D), _ue);

    // module table_init.6.dart (line 313)
    var m6 = table_init_6.TableInit6Module(
      aImports: Wrapper5(m0),
    );

    invoke('test_5', () => m6.test());
    traps('check_150', () => m6.check(0), _ue);
    traps('check_151', () => m6.check(0x1), _ue);
    returns('check_152', () => m6.check(0x2), 0x3);
    returns('check_153', () => m6.check(0x3), 0x1);
    returns('check_154', () => m6.check(0x4), 0x4);
    returns('check_155', () => m6.check(0x5), 0x1);
    traps('check_156', () => m6.check(0x6), _ue);
    returns('check_157', () => m6.check(0x7), 0x2);
    returns('check_158', () => m6.check(0x8), 0x7);
    returns('check_159', () => m6.check(0x9), 0x1);
    returns('check_160', () => m6.check(0xA), 0x8);
    traps('check_161', () => m6.check(0xB), _ue);
    returns('check_162', () => m6.check(0xC), 0x7);
    traps('check_163', () => m6.check(0xD), _ue);
    returns('check_164', () => m6.check(0xE), 0x7);
    returns('check_165', () => m6.check(0xF), 0x5);
    returns('check_166', () => m6.check(0x10), 0x2);
    returns('check_167', () => m6.check(0x11), 0x7);
    traps('check_168', () => m6.check(0x12), _ue);
    returns('check_169', () => m6.check(0x13), 0x9);
    traps('check_170', () => m6.check(0x14), _ue);
    returns('check_171', () => m6.check(0x15), 0x7);
    traps('check_172', () => m6.check(0x16), _ue);
    returns('check_173', () => m6.check(0x17), 0x8);
    returns('check_174', () => m6.check(0x18), 0x8);
    traps('check_175', () => m6.check(0x19), _ue);
    traps('check_176', () => m6.check(0x1A), _ue);
    traps('check_177', () => m6.check(0x1B), _ue);
    traps('check_178', () => m6.check(0x1C), _ue);
    traps('check_179', () => m6.check(0x1D), _ue);

    // module table_init.11.dart (line 407)
    var m7 = table_init_11.TableInit11Module();

    invoke('test_6', () => m7.test());

    // module table_init.12.dart (line 431)
    var m8 = table_init_12.TableInit12Module();

    traps('test_7', () => m8.test(), _oobta);

    // module table_init.13.dart (line 455)
    var m9 = table_init_13.TableInit13Module();

    invoke('test_8', () => m9.test());

    // module table_init.14.dart (line 479)
    var m10 = table_init_14.TableInit14Module();

    invoke('test_9', () => m10.test());

    // module table_init.15.dart (line 503)
    var m11 = table_init_15.TableInit15Module();

    traps('test_10', () => m11.test(), _oobta);

    // module table_init.16.dart (line 527)
    var m12 = table_init_16.TableInit16Module();

    traps('test_11', () => m12.test(), _oobta);

    // module table_init.17.dart (line 551)
    var m13 = table_init_17.TableInit17Module();

    traps('test_12', () => m13.test(), _oobta);

    // module table_init.18.dart (line 575)
    var m14 = table_init_18.TableInit18Module();

    traps('test_13', () => m14.test(), _oobta);

    // module table_init.19.dart (line 599)
    var m15 = table_init_19.TableInit19Module();

    invoke('test_14', () => m15.test());

    // module table_init.20.dart (line 623)
    var m16 = table_init_20.TableInit20Module();

    traps('test_15', () => m16.test(), _oobta);

    // module table_init.21.dart (line 647)
    var m17 = table_init_21.TableInit21Module();

    invoke('test_16', () => m17.test());

    // module table_init.22.dart (line 671)
    var m18 = table_init_22.TableInit22Module();

    traps('test_17', () => m18.test(), _oobta);

    // module table_init.23.dart (line 695)
    var m19 = table_init_23.TableInit23Module();

    invoke('test_18', () => m19.test());

    // module table_init.24.dart (line 719)
    var m20 = table_init_24.TableInit24Module();

    traps('test_19', () => m20.test(), _oobta);

    // module table_init.25.dart (line 743)
    var m21 = table_init_25.TableInit25Module();

    traps('test_20', () => m21.test(), _oobta);

    // module table_init.26.dart (line 767)
    var m22 = table_init_26.TableInit26Module();

    invoke('test_21', () => m22.test());

    // module table_init.27.dart (line 791)
    var m23 = table_init_27.TableInit27Module();

    traps('test_22', () => m23.test(), _oobta);

    // module table_init.28.dart (line 815)
    var m24 = table_init_28.TableInit28Module();

    invoke('test_23', () => m24.test());

    // module table_init.29.dart (line 839)
    var m25 = table_init_29.TableInit29Module();

    traps('test_24', () => m25.test(), _oobta);

    // module table_init.30.dart (line 863)
    var m26 = table_init_30.TableInit30Module();

    invoke('test_25', () => m26.test());

    // module table_init.31.dart (line 887)
    var m27 = table_init_31.TableInit31Module();

    traps('test_26', () => m27.test(), _oobta);

    // module table_init.95.dart (line 1478)
    var m28 = table_init_95.TableInit95Module();

    traps('run_0', () => m28.run(0x18, 0x10), _oobta);
    traps('test_27', () => m28.test(0), _ue);
    traps('test_28', () => m28.test(0x1), _ue);
    traps('test_29', () => m28.test(0x2), _ue);
    traps('test_30', () => m28.test(0x3), _ue);
    traps('test_31', () => m28.test(0x4), _ue);
    traps('test_32', () => m28.test(0x5), _ue);
    traps('test_33', () => m28.test(0x6), _ue);
    traps('test_34', () => m28.test(0x7), _ue);
    traps('test_35', () => m28.test(0x8), _ue);
    traps('test_36', () => m28.test(0x9), _ue);
    traps('test_37', () => m28.test(0xA), _ue);
    traps('test_38', () => m28.test(0xB), _ue);
    traps('test_39', () => m28.test(0xC), _ue);
    traps('test_40', () => m28.test(0xD), _ue);
    traps('test_41', () => m28.test(0xE), _ue);
    traps('test_42', () => m28.test(0xF), _ue);
    traps('test_43', () => m28.test(0x10), _ue);
    traps('test_44', () => m28.test(0x11), _ue);
    traps('test_45', () => m28.test(0x12), _ue);
    traps('test_46', () => m28.test(0x13), _ue);
    traps('test_47', () => m28.test(0x14), _ue);
    traps('test_48', () => m28.test(0x15), _ue);
    traps('test_49', () => m28.test(0x16), _ue);
    traps('test_50', () => m28.test(0x17), _ue);
    traps('test_51', () => m28.test(0x18), _ue);
    traps('test_52', () => m28.test(0x19), _ue);
    traps('test_53', () => m28.test(0x1A), _ue);
    traps('test_54', () => m28.test(0x1B), _ue);
    traps('test_55', () => m28.test(0x1C), _ue);
    traps('test_56', () => m28.test(0x1D), _ue);
    traps('test_57', () => m28.test(0x1E), _ue);
    traps('test_58', () => m28.test(0x1F), _ue);

    // module table_init.96.dart (line 1540)
    var m29 = table_init_96.TableInit96Module();

    traps('run_1', () => m29.run(0x19, 0x10), _oobta);
    traps('test_59', () => m29.test(0), _ue);
    traps('test_60', () => m29.test(0x1), _ue);
    traps('test_61', () => m29.test(0x2), _ue);
    traps('test_62', () => m29.test(0x3), _ue);
    traps('test_63', () => m29.test(0x4), _ue);
    traps('test_64', () => m29.test(0x5), _ue);
    traps('test_65', () => m29.test(0x6), _ue);
    traps('test_66', () => m29.test(0x7), _ue);
    traps('test_67', () => m29.test(0x8), _ue);
    traps('test_68', () => m29.test(0x9), _ue);
    traps('test_69', () => m29.test(0xA), _ue);
    traps('test_70', () => m29.test(0xB), _ue);
    traps('test_71', () => m29.test(0xC), _ue);
    traps('test_72', () => m29.test(0xD), _ue);
    traps('test_73', () => m29.test(0xE), _ue);
    traps('test_74', () => m29.test(0xF), _ue);
    traps('test_75', () => m29.test(0x10), _ue);
    traps('test_76', () => m29.test(0x11), _ue);
    traps('test_77', () => m29.test(0x12), _ue);
    traps('test_78', () => m29.test(0x13), _ue);
    traps('test_79', () => m29.test(0x14), _ue);
    traps('test_80', () => m29.test(0x15), _ue);
    traps('test_81', () => m29.test(0x16), _ue);
    traps('test_82', () => m29.test(0x17), _ue);
    traps('test_83', () => m29.test(0x18), _ue);
    traps('test_84', () => m29.test(0x19), _ue);
    traps('test_85', () => m29.test(0x1A), _ue);
    traps('test_86', () => m29.test(0x1B), _ue);
    traps('test_87', () => m29.test(0x1C), _ue);
    traps('test_88', () => m29.test(0x1D), _ue);
    traps('test_89', () => m29.test(0x1E), _ue);
    traps('test_90', () => m29.test(0x1F), _ue);

    // module table_init.97.dart (line 1602)
    var m30 = table_init_97.TableInit97Module();

    traps('run_2', () => m30.run(0x60, 0x20), _oobta);
    traps('test_91', () => m30.test(0), _ue);
    traps('test_92', () => m30.test(0x1), _ue);
    traps('test_93', () => m30.test(0x2), _ue);
    traps('test_94', () => m30.test(0x3), _ue);
    traps('test_95', () => m30.test(0x4), _ue);
    traps('test_96', () => m30.test(0x5), _ue);
    traps('test_97', () => m30.test(0x6), _ue);
    traps('test_98', () => m30.test(0x7), _ue);
    traps('test_99', () => m30.test(0x8), _ue);
    traps('test_100', () => m30.test(0x9), _ue);
    traps('test_101', () => m30.test(0xA), _ue);
    traps('test_102', () => m30.test(0xB), _ue);
    traps('test_103', () => m30.test(0xC), _ue);
    traps('test_104', () => m30.test(0xD), _ue);
    traps('test_105', () => m30.test(0xE), _ue);
    traps('test_106', () => m30.test(0xF), _ue);
    traps('test_107', () => m30.test(0x10), _ue);
    traps('test_108', () => m30.test(0x11), _ue);
    traps('test_109', () => m30.test(0x12), _ue);
    traps('test_110', () => m30.test(0x13), _ue);
    traps('test_111', () => m30.test(0x14), _ue);
    traps('test_112', () => m30.test(0x15), _ue);
    traps('test_113', () => m30.test(0x16), _ue);
    traps('test_114', () => m30.test(0x17), _ue);
    traps('test_115', () => m30.test(0x18), _ue);
    traps('test_116', () => m30.test(0x19), _ue);
    traps('test_117', () => m30.test(0x1A), _ue);
    traps('test_118', () => m30.test(0x1B), _ue);
    traps('test_119', () => m30.test(0x1C), _ue);
    traps('test_120', () => m30.test(0x1D), _ue);
    traps('test_121', () => m30.test(0x1E), _ue);
    traps('test_122', () => m30.test(0x1F), _ue);
    traps('test_123', () => m30.test(0x20), _ue);
    traps('test_124', () => m30.test(0x21), _ue);
    traps('test_125', () => m30.test(0x22), _ue);
    traps('test_126', () => m30.test(0x23), _ue);
    traps('test_127', () => m30.test(0x24), _ue);
    traps('test_128', () => m30.test(0x25), _ue);
    traps('test_129', () => m30.test(0x26), _ue);
    traps('test_130', () => m30.test(0x27), _ue);
    traps('test_131', () => m30.test(0x28), _ue);
    traps('test_132', () => m30.test(0x29), _ue);
    traps('test_133', () => m30.test(0x2A), _ue);
    traps('test_134', () => m30.test(0x2B), _ue);
    traps('test_135', () => m30.test(0x2C), _ue);
    traps('test_136', () => m30.test(0x2D), _ue);
    traps('test_137', () => m30.test(0x2E), _ue);
    traps('test_138', () => m30.test(0x2F), _ue);
    traps('test_139', () => m30.test(0x30), _ue);
    traps('test_140', () => m30.test(0x31), _ue);
    traps('test_141', () => m30.test(0x32), _ue);
    traps('test_142', () => m30.test(0x33), _ue);
    traps('test_143', () => m30.test(0x34), _ue);
    traps('test_144', () => m30.test(0x35), _ue);
    traps('test_145', () => m30.test(0x36), _ue);
    traps('test_146', () => m30.test(0x37), _ue);
    traps('test_147', () => m30.test(0x38), _ue);
    traps('test_148', () => m30.test(0x39), _ue);
    traps('test_149', () => m30.test(0x3A), _ue);
    traps('test_150', () => m30.test(0x3B), _ue);
    traps('test_151', () => m30.test(0x3C), _ue);
    traps('test_152', () => m30.test(0x3D), _ue);
    traps('test_153', () => m30.test(0x3E), _ue);
    traps('test_154', () => m30.test(0x3F), _ue);
    traps('test_155', () => m30.test(0x40), _ue);
    traps('test_156', () => m30.test(0x41), _ue);
    traps('test_157', () => m30.test(0x42), _ue);
    traps('test_158', () => m30.test(0x43), _ue);
    traps('test_159', () => m30.test(0x44), _ue);
    traps('test_160', () => m30.test(0x45), _ue);
    traps('test_161', () => m30.test(0x46), _ue);
    traps('test_162', () => m30.test(0x47), _ue);
    traps('test_163', () => m30.test(0x48), _ue);
    traps('test_164', () => m30.test(0x49), _ue);
    traps('test_165', () => m30.test(0x4A), _ue);
    traps('test_166', () => m30.test(0x4B), _ue);
    traps('test_167', () => m30.test(0x4C), _ue);
    traps('test_168', () => m30.test(0x4D), _ue);
    traps('test_169', () => m30.test(0x4E), _ue);
    traps('test_170', () => m30.test(0x4F), _ue);
    traps('test_171', () => m30.test(0x50), _ue);
    traps('test_172', () => m30.test(0x51), _ue);
    traps('test_173', () => m30.test(0x52), _ue);
    traps('test_174', () => m30.test(0x53), _ue);
    traps('test_175', () => m30.test(0x54), _ue);
    traps('test_176', () => m30.test(0x55), _ue);
    traps('test_177', () => m30.test(0x56), _ue);
    traps('test_178', () => m30.test(0x57), _ue);
    traps('test_179', () => m30.test(0x58), _ue);
    traps('test_180', () => m30.test(0x59), _ue);
    traps('test_181', () => m30.test(0x5A), _ue);
    traps('test_182', () => m30.test(0x5B), _ue);
    traps('test_183', () => m30.test(0x5C), _ue);
    traps('test_184', () => m30.test(0x5D), _ue);
    traps('test_185', () => m30.test(0x5E), _ue);
    traps('test_186', () => m30.test(0x5F), _ue);
    traps('test_187', () => m30.test(0x60), _ue);
    traps('test_188', () => m30.test(0x61), _ue);
    traps('test_189', () => m30.test(0x62), _ue);
    traps('test_190', () => m30.test(0x63), _ue);
    traps('test_191', () => m30.test(0x64), _ue);
    traps('test_192', () => m30.test(0x65), _ue);
    traps('test_193', () => m30.test(0x66), _ue);
    traps('test_194', () => m30.test(0x67), _ue);
    traps('test_195', () => m30.test(0x68), _ue);
    traps('test_196', () => m30.test(0x69), _ue);
    traps('test_197', () => m30.test(0x6A), _ue);
    traps('test_198', () => m30.test(0x6B), _ue);
    traps('test_199', () => m30.test(0x6C), _ue);
    traps('test_200', () => m30.test(0x6D), _ue);
    traps('test_201', () => m30.test(0x6E), _ue);
    traps('test_202', () => m30.test(0x6F), _ue);
    traps('test_203', () => m30.test(0x70), _ue);
    traps('test_204', () => m30.test(0x71), _ue);
    traps('test_205', () => m30.test(0x72), _ue);
    traps('test_206', () => m30.test(0x73), _ue);
    traps('test_207', () => m30.test(0x74), _ue);
    traps('test_208', () => m30.test(0x75), _ue);
    traps('test_209', () => m30.test(0x76), _ue);
    traps('test_210', () => m30.test(0x77), _ue);
    traps('test_211', () => m30.test(0x78), _ue);
    traps('test_212', () => m30.test(0x79), _ue);
    traps('test_213', () => m30.test(0x7A), _ue);
    traps('test_214', () => m30.test(0x7B), _ue);
    traps('test_215', () => m30.test(0x7C), _ue);
    traps('test_216', () => m30.test(0x7D), _ue);
    traps('test_217', () => m30.test(0x7E), _ue);
    traps('test_218', () => m30.test(0x7F), _ue);
    traps('test_219', () => m30.test(0x80), _ue);
    traps('test_220', () => m30.test(0x81), _ue);
    traps('test_221', () => m30.test(0x82), _ue);
    traps('test_222', () => m30.test(0x83), _ue);
    traps('test_223', () => m30.test(0x84), _ue);
    traps('test_224', () => m30.test(0x85), _ue);
    traps('test_225', () => m30.test(0x86), _ue);
    traps('test_226', () => m30.test(0x87), _ue);
    traps('test_227', () => m30.test(0x88), _ue);
    traps('test_228', () => m30.test(0x89), _ue);
    traps('test_229', () => m30.test(0x8A), _ue);
    traps('test_230', () => m30.test(0x8B), _ue);
    traps('test_231', () => m30.test(0x8C), _ue);
    traps('test_232', () => m30.test(0x8D), _ue);
    traps('test_233', () => m30.test(0x8E), _ue);
    traps('test_234', () => m30.test(0x8F), _ue);
    traps('test_235', () => m30.test(0x90), _ue);
    traps('test_236', () => m30.test(0x91), _ue);
    traps('test_237', () => m30.test(0x92), _ue);
    traps('test_238', () => m30.test(0x93), _ue);
    traps('test_239', () => m30.test(0x94), _ue);
    traps('test_240', () => m30.test(0x95), _ue);
    traps('test_241', () => m30.test(0x96), _ue);
    traps('test_242', () => m30.test(0x97), _ue);
    traps('test_243', () => m30.test(0x98), _ue);
    traps('test_244', () => m30.test(0x99), _ue);
    traps('test_245', () => m30.test(0x9A), _ue);
    traps('test_246', () => m30.test(0x9B), _ue);
    traps('test_247', () => m30.test(0x9C), _ue);
    traps('test_248', () => m30.test(0x9D), _ue);
    traps('test_249', () => m30.test(0x9E), _ue);
    traps('test_250', () => m30.test(0x9F), _ue);

    // module table_init.98.dart (line 1792)
    var m31 = table_init_98.TableInit98Module();

    traps('run_3', () => m31.run(0x61, 0x1F), _oobta);
    traps('test_251', () => m31.test(0), _ue);
    traps('test_252', () => m31.test(0x1), _ue);
    traps('test_253', () => m31.test(0x2), _ue);
    traps('test_254', () => m31.test(0x3), _ue);
    traps('test_255', () => m31.test(0x4), _ue);
    traps('test_256', () => m31.test(0x5), _ue);
    traps('test_257', () => m31.test(0x6), _ue);
    traps('test_258', () => m31.test(0x7), _ue);
    traps('test_259', () => m31.test(0x8), _ue);
    traps('test_260', () => m31.test(0x9), _ue);
    traps('test_261', () => m31.test(0xA), _ue);
    traps('test_262', () => m31.test(0xB), _ue);
    traps('test_263', () => m31.test(0xC), _ue);
    traps('test_264', () => m31.test(0xD), _ue);
    traps('test_265', () => m31.test(0xE), _ue);
    traps('test_266', () => m31.test(0xF), _ue);
    traps('test_267', () => m31.test(0x10), _ue);
    traps('test_268', () => m31.test(0x11), _ue);
    traps('test_269', () => m31.test(0x12), _ue);
    traps('test_270', () => m31.test(0x13), _ue);
    traps('test_271', () => m31.test(0x14), _ue);
    traps('test_272', () => m31.test(0x15), _ue);
    traps('test_273', () => m31.test(0x16), _ue);
    traps('test_274', () => m31.test(0x17), _ue);
    traps('test_275', () => m31.test(0x18), _ue);
    traps('test_276', () => m31.test(0x19), _ue);
    traps('test_277', () => m31.test(0x1A), _ue);
    traps('test_278', () => m31.test(0x1B), _ue);
    traps('test_279', () => m31.test(0x1C), _ue);
    traps('test_280', () => m31.test(0x1D), _ue);
    traps('test_281', () => m31.test(0x1E), _ue);
    traps('test_282', () => m31.test(0x1F), _ue);
    traps('test_283', () => m31.test(0x20), _ue);
    traps('test_284', () => m31.test(0x21), _ue);
    traps('test_285', () => m31.test(0x22), _ue);
    traps('test_286', () => m31.test(0x23), _ue);
    traps('test_287', () => m31.test(0x24), _ue);
    traps('test_288', () => m31.test(0x25), _ue);
    traps('test_289', () => m31.test(0x26), _ue);
    traps('test_290', () => m31.test(0x27), _ue);
    traps('test_291', () => m31.test(0x28), _ue);
    traps('test_292', () => m31.test(0x29), _ue);
    traps('test_293', () => m31.test(0x2A), _ue);
    traps('test_294', () => m31.test(0x2B), _ue);
    traps('test_295', () => m31.test(0x2C), _ue);
    traps('test_296', () => m31.test(0x2D), _ue);
    traps('test_297', () => m31.test(0x2E), _ue);
    traps('test_298', () => m31.test(0x2F), _ue);
    traps('test_299', () => m31.test(0x30), _ue);
    traps('test_300', () => m31.test(0x31), _ue);
    traps('test_301', () => m31.test(0x32), _ue);
    traps('test_302', () => m31.test(0x33), _ue);
    traps('test_303', () => m31.test(0x34), _ue);
    traps('test_304', () => m31.test(0x35), _ue);
    traps('test_305', () => m31.test(0x36), _ue);
    traps('test_306', () => m31.test(0x37), _ue);
    traps('test_307', () => m31.test(0x38), _ue);
    traps('test_308', () => m31.test(0x39), _ue);
    traps('test_309', () => m31.test(0x3A), _ue);
    traps('test_310', () => m31.test(0x3B), _ue);
    traps('test_311', () => m31.test(0x3C), _ue);
    traps('test_312', () => m31.test(0x3D), _ue);
    traps('test_313', () => m31.test(0x3E), _ue);
    traps('test_314', () => m31.test(0x3F), _ue);
    traps('test_315', () => m31.test(0x40), _ue);
    traps('test_316', () => m31.test(0x41), _ue);
    traps('test_317', () => m31.test(0x42), _ue);
    traps('test_318', () => m31.test(0x43), _ue);
    traps('test_319', () => m31.test(0x44), _ue);
    traps('test_320', () => m31.test(0x45), _ue);
    traps('test_321', () => m31.test(0x46), _ue);
    traps('test_322', () => m31.test(0x47), _ue);
    traps('test_323', () => m31.test(0x48), _ue);
    traps('test_324', () => m31.test(0x49), _ue);
    traps('test_325', () => m31.test(0x4A), _ue);
    traps('test_326', () => m31.test(0x4B), _ue);
    traps('test_327', () => m31.test(0x4C), _ue);
    traps('test_328', () => m31.test(0x4D), _ue);
    traps('test_329', () => m31.test(0x4E), _ue);
    traps('test_330', () => m31.test(0x4F), _ue);
    traps('test_331', () => m31.test(0x50), _ue);
    traps('test_332', () => m31.test(0x51), _ue);
    traps('test_333', () => m31.test(0x52), _ue);
    traps('test_334', () => m31.test(0x53), _ue);
    traps('test_335', () => m31.test(0x54), _ue);
    traps('test_336', () => m31.test(0x55), _ue);
    traps('test_337', () => m31.test(0x56), _ue);
    traps('test_338', () => m31.test(0x57), _ue);
    traps('test_339', () => m31.test(0x58), _ue);
    traps('test_340', () => m31.test(0x59), _ue);
    traps('test_341', () => m31.test(0x5A), _ue);
    traps('test_342', () => m31.test(0x5B), _ue);
    traps('test_343', () => m31.test(0x5C), _ue);
    traps('test_344', () => m31.test(0x5D), _ue);
    traps('test_345', () => m31.test(0x5E), _ue);
    traps('test_346', () => m31.test(0x5F), _ue);
    traps('test_347', () => m31.test(0x60), _ue);
    traps('test_348', () => m31.test(0x61), _ue);
    traps('test_349', () => m31.test(0x62), _ue);
    traps('test_350', () => m31.test(0x63), _ue);
    traps('test_351', () => m31.test(0x64), _ue);
    traps('test_352', () => m31.test(0x65), _ue);
    traps('test_353', () => m31.test(0x66), _ue);
    traps('test_354', () => m31.test(0x67), _ue);
    traps('test_355', () => m31.test(0x68), _ue);
    traps('test_356', () => m31.test(0x69), _ue);
    traps('test_357', () => m31.test(0x6A), _ue);
    traps('test_358', () => m31.test(0x6B), _ue);
    traps('test_359', () => m31.test(0x6C), _ue);
    traps('test_360', () => m31.test(0x6D), _ue);
    traps('test_361', () => m31.test(0x6E), _ue);
    traps('test_362', () => m31.test(0x6F), _ue);
    traps('test_363', () => m31.test(0x70), _ue);
    traps('test_364', () => m31.test(0x71), _ue);
    traps('test_365', () => m31.test(0x72), _ue);
    traps('test_366', () => m31.test(0x73), _ue);
    traps('test_367', () => m31.test(0x74), _ue);
    traps('test_368', () => m31.test(0x75), _ue);
    traps('test_369', () => m31.test(0x76), _ue);
    traps('test_370', () => m31.test(0x77), _ue);
    traps('test_371', () => m31.test(0x78), _ue);
    traps('test_372', () => m31.test(0x79), _ue);
    traps('test_373', () => m31.test(0x7A), _ue);
    traps('test_374', () => m31.test(0x7B), _ue);
    traps('test_375', () => m31.test(0x7C), _ue);
    traps('test_376', () => m31.test(0x7D), _ue);
    traps('test_377', () => m31.test(0x7E), _ue);
    traps('test_378', () => m31.test(0x7F), _ue);
    traps('test_379', () => m31.test(0x80), _ue);
    traps('test_380', () => m31.test(0x81), _ue);
    traps('test_381', () => m31.test(0x82), _ue);
    traps('test_382', () => m31.test(0x83), _ue);
    traps('test_383', () => m31.test(0x84), _ue);
    traps('test_384', () => m31.test(0x85), _ue);
    traps('test_385', () => m31.test(0x86), _ue);
    traps('test_386', () => m31.test(0x87), _ue);
    traps('test_387', () => m31.test(0x88), _ue);
    traps('test_388', () => m31.test(0x89), _ue);
    traps('test_389', () => m31.test(0x8A), _ue);
    traps('test_390', () => m31.test(0x8B), _ue);
    traps('test_391', () => m31.test(0x8C), _ue);
    traps('test_392', () => m31.test(0x8D), _ue);
    traps('test_393', () => m31.test(0x8E), _ue);
    traps('test_394', () => m31.test(0x8F), _ue);
    traps('test_395', () => m31.test(0x90), _ue);
    traps('test_396', () => m31.test(0x91), _ue);
    traps('test_397', () => m31.test(0x92), _ue);
    traps('test_398', () => m31.test(0x93), _ue);
    traps('test_399', () => m31.test(0x94), _ue);
    traps('test_400', () => m31.test(0x95), _ue);
    traps('test_401', () => m31.test(0x96), _ue);
    traps('test_402', () => m31.test(0x97), _ue);
    traps('test_403', () => m31.test(0x98), _ue);
    traps('test_404', () => m31.test(0x99), _ue);
    traps('test_405', () => m31.test(0x9A), _ue);
    traps('test_406', () => m31.test(0x9B), _ue);
    traps('test_407', () => m31.test(0x9C), _ue);
    traps('test_408', () => m31.test(0x9D), _ue);
    traps('test_409', () => m31.test(0x9E), _ue);
    traps('test_410', () => m31.test(0x9F), _ue);

    // module table_init.99.dart (line 1982)
    var m32 = table_init_99.TableInit99Module();

    traps('run_4', () => m32.run(0x30, $i32('FFFFFFF0')), _oobta);
    traps('test_411', () => m32.test(0), _ue);
    traps('test_412', () => m32.test(0x1), _ue);
    traps('test_413', () => m32.test(0x2), _ue);
    traps('test_414', () => m32.test(0x3), _ue);
    traps('test_415', () => m32.test(0x4), _ue);
    traps('test_416', () => m32.test(0x5), _ue);
    traps('test_417', () => m32.test(0x6), _ue);
    traps('test_418', () => m32.test(0x7), _ue);
    traps('test_419', () => m32.test(0x8), _ue);
    traps('test_420', () => m32.test(0x9), _ue);
    traps('test_421', () => m32.test(0xA), _ue);
    traps('test_422', () => m32.test(0xB), _ue);
    traps('test_423', () => m32.test(0xC), _ue);
    traps('test_424', () => m32.test(0xD), _ue);
    traps('test_425', () => m32.test(0xE), _ue);
    traps('test_426', () => m32.test(0xF), _ue);
    traps('test_427', () => m32.test(0x10), _ue);
    traps('test_428', () => m32.test(0x11), _ue);
    traps('test_429', () => m32.test(0x12), _ue);
    traps('test_430', () => m32.test(0x13), _ue);
    traps('test_431', () => m32.test(0x14), _ue);
    traps('test_432', () => m32.test(0x15), _ue);
    traps('test_433', () => m32.test(0x16), _ue);
    traps('test_434', () => m32.test(0x17), _ue);
    traps('test_435', () => m32.test(0x18), _ue);
    traps('test_436', () => m32.test(0x19), _ue);
    traps('test_437', () => m32.test(0x1A), _ue);
    traps('test_438', () => m32.test(0x1B), _ue);
    traps('test_439', () => m32.test(0x1C), _ue);
    traps('test_440', () => m32.test(0x1D), _ue);
    traps('test_441', () => m32.test(0x1E), _ue);
    traps('test_442', () => m32.test(0x1F), _ue);
    traps('test_443', () => m32.test(0x20), _ue);
    traps('test_444', () => m32.test(0x21), _ue);
    traps('test_445', () => m32.test(0x22), _ue);
    traps('test_446', () => m32.test(0x23), _ue);
    traps('test_447', () => m32.test(0x24), _ue);
    traps('test_448', () => m32.test(0x25), _ue);
    traps('test_449', () => m32.test(0x26), _ue);
    traps('test_450', () => m32.test(0x27), _ue);
    traps('test_451', () => m32.test(0x28), _ue);
    traps('test_452', () => m32.test(0x29), _ue);
    traps('test_453', () => m32.test(0x2A), _ue);
    traps('test_454', () => m32.test(0x2B), _ue);
    traps('test_455', () => m32.test(0x2C), _ue);
    traps('test_456', () => m32.test(0x2D), _ue);
    traps('test_457', () => m32.test(0x2E), _ue);
    traps('test_458', () => m32.test(0x2F), _ue);
    traps('test_459', () => m32.test(0x30), _ue);
    traps('test_460', () => m32.test(0x31), _ue);
    traps('test_461', () => m32.test(0x32), _ue);
    traps('test_462', () => m32.test(0x33), _ue);
    traps('test_463', () => m32.test(0x34), _ue);
    traps('test_464', () => m32.test(0x35), _ue);
    traps('test_465', () => m32.test(0x36), _ue);
    traps('test_466', () => m32.test(0x37), _ue);
    traps('test_467', () => m32.test(0x38), _ue);
    traps('test_468', () => m32.test(0x39), _ue);
    traps('test_469', () => m32.test(0x3A), _ue);
    traps('test_470', () => m32.test(0x3B), _ue);
    traps('test_471', () => m32.test(0x3C), _ue);
    traps('test_472', () => m32.test(0x3D), _ue);
    traps('test_473', () => m32.test(0x3E), _ue);
    traps('test_474', () => m32.test(0x3F), _ue);

    // module table_init.100.dart (line 2076)
    var m33 = table_init_100.TableInit100Module();

    traps('run_5', () => m33.run(0, $i32('FFFFFFFC')), _oobta);
    traps('test_475', () => m33.test(0), _ue);
    traps('test_476', () => m33.test(0x1), _ue);
    traps('test_477', () => m33.test(0x2), _ue);
    traps('test_478', () => m33.test(0x3), _ue);
    traps('test_479', () => m33.test(0x4), _ue);
    traps('test_480', () => m33.test(0x5), _ue);
    traps('test_481', () => m33.test(0x6), _ue);
    traps('test_482', () => m33.test(0x7), _ue);
    traps('test_483', () => m33.test(0x8), _ue);
    traps('test_484', () => m33.test(0x9), _ue);
    traps('test_485', () => m33.test(0xA), _ue);
    traps('test_486', () => m33.test(0xB), _ue);
    traps('test_487', () => m33.test(0xC), _ue);
    traps('test_488', () => m33.test(0xD), _ue);
    traps('test_489', () => m33.test(0xE), _ue);
    traps('test_490', () => m33.test(0xF), _ue);

    // module table_init.101.dart (line 2122)
    var m34 = table_init_101.TableInit101Module();
  });
}

class Wrapper0 implements table_init_1.AImports {
  Wrapper0(this.delegate);

  final table_init_0.TableInit0Module delegate;

  @override
  i32 ef0() => delegate.ef0();
  @override
  i32 ef1() => delegate.ef1();
  @override
  i32 ef2() => delegate.ef2();
  @override
  i32 ef3() => delegate.ef3();
  @override
  i32 ef4() => delegate.ef4();
}

class Wrapper1 implements table_init_2.AImports {
  Wrapper1(this.delegate);

  final table_init_0.TableInit0Module delegate;

  @override
  i32 ef0() => delegate.ef0();
  @override
  i32 ef1() => delegate.ef1();
  @override
  i32 ef2() => delegate.ef2();
  @override
  i32 ef3() => delegate.ef3();
  @override
  i32 ef4() => delegate.ef4();
}

class Wrapper2 implements table_init_3.AImports {
  Wrapper2(this.delegate);

  final table_init_0.TableInit0Module delegate;

  @override
  i32 ef0() => delegate.ef0();
  @override
  i32 ef1() => delegate.ef1();
  @override
  i32 ef2() => delegate.ef2();
  @override
  i32 ef3() => delegate.ef3();
  @override
  i32 ef4() => delegate.ef4();
}

class Wrapper3 implements table_init_4.AImports {
  Wrapper3(this.delegate);

  final table_init_0.TableInit0Module delegate;

  @override
  i32 ef0() => delegate.ef0();
  @override
  i32 ef1() => delegate.ef1();
  @override
  i32 ef2() => delegate.ef2();
  @override
  i32 ef3() => delegate.ef3();
  @override
  i32 ef4() => delegate.ef4();
}

class Wrapper4 implements table_init_5.AImports {
  Wrapper4(this.delegate);

  final table_init_0.TableInit0Module delegate;

  @override
  i32 ef0() => delegate.ef0();
  @override
  i32 ef1() => delegate.ef1();
  @override
  i32 ef2() => delegate.ef2();
  @override
  i32 ef3() => delegate.ef3();
  @override
  i32 ef4() => delegate.ef4();
}

class Wrapper5 implements table_init_6.AImports {
  Wrapper5(this.delegate);

  final table_init_0.TableInit0Module delegate;

  @override
  i32 ef0() => delegate.ef0();
  @override
  i32 ef1() => delegate.ef1();
  @override
  i32 ef2() => delegate.ef2();
  @override
  i32 ef3() => delegate.ef3();
  @override
  i32 ef4() => delegate.ef4();
}
