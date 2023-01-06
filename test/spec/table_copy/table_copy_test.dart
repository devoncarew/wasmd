// Generated from spec/test/core/table_copy.wast.

// ignore_for_file: non_constant_identifier_names, unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart' hide i32;
import 'table_copy.0.dart' as table_copy_0;
import 'table_copy.1.dart' as table_copy_1;
import 'table_copy.10.dart' as table_copy_10;
import 'table_copy.11.dart' as table_copy_11;
import 'table_copy.12.dart' as table_copy_12;
import 'table_copy.13.dart' as table_copy_13;
import 'table_copy.14.dart' as table_copy_14;
import 'table_copy.15.dart' as table_copy_15;
import 'table_copy.16.dart' as table_copy_16;
import 'table_copy.17.dart' as table_copy_17;
import 'table_copy.18.dart' as table_copy_18;
import 'table_copy.19.dart' as table_copy_19;
import 'table_copy.2.dart' as table_copy_2;
import 'table_copy.20.dart' as table_copy_20;
import 'table_copy.21.dart' as table_copy_21;
import 'table_copy.22.dart' as table_copy_22;
import 'table_copy.23.dart' as table_copy_23;
import 'table_copy.24.dart' as table_copy_24;
import 'table_copy.25.dart' as table_copy_25;
import 'table_copy.26.dart' as table_copy_26;
import 'table_copy.27.dart' as table_copy_27;
import 'table_copy.28.dart' as table_copy_28;
import 'table_copy.29.dart' as table_copy_29;
import 'table_copy.3.dart' as table_copy_3;
import 'table_copy.30.dart' as table_copy_30;
import 'table_copy.31.dart' as table_copy_31;
import 'table_copy.32.dart' as table_copy_32;
import 'table_copy.33.dart' as table_copy_33;
import 'table_copy.34.dart' as table_copy_34;
import 'table_copy.35.dart' as table_copy_35;
import 'table_copy.36.dart' as table_copy_36;
import 'table_copy.37.dart' as table_copy_37;
import 'table_copy.38.dart' as table_copy_38;
import 'table_copy.39.dart' as table_copy_39;
import 'table_copy.4.dart' as table_copy_4;
import 'table_copy.40.dart' as table_copy_40;
import 'table_copy.41.dart' as table_copy_41;
import 'table_copy.42.dart' as table_copy_42;
import 'table_copy.43.dart' as table_copy_43;
import 'table_copy.44.dart' as table_copy_44;
import 'table_copy.45.dart' as table_copy_45;
import 'table_copy.46.dart' as table_copy_46;
import 'table_copy.47.dart' as table_copy_47;
import 'table_copy.48.dart' as table_copy_48;
import 'table_copy.49.dart' as table_copy_49;
import 'table_copy.5.dart' as table_copy_5;
import 'table_copy.50.dart' as table_copy_50;
import 'table_copy.51.dart' as table_copy_51;
import 'table_copy.6.dart' as table_copy_6;
import 'table_copy.7.dart' as table_copy_7;
import 'table_copy.8.dart' as table_copy_8;
import 'table_copy.9.dart' as table_copy_9;

const String _ue = 'uninitialized element';
const String _oobta = 'out of bounds table access';

void main() {
  group('table_copy', () {
    // module table_copy.0.dart (line 6)
    var m0 = table_copy_0.TableCopy0Module();

    // module table_copy.1.dart (line 15)
    var m1 = table_copy_1.TableCopy1Module(
      aImports: Wrapper0(m0),
    );

    invoke('test_0', () => m1.test());
    traps('check_t0_0', () => m1.check_t0(0), _ue);
    traps('check_t0_1', () => m1.check_t0(0x1), _ue);
    returns('check_t0_2', () => m1.check_t0(0x2), 0x3);
    returns('check_t0_3', () => m1.check_t0(0x3), 0x1);
    returns('check_t0_4', () => m1.check_t0(0x4), 0x4);
    returns('check_t0_5', () => m1.check_t0(0x5), 0x1);
    traps('check_t0_6', () => m1.check_t0(0x6), _ue);
    traps('check_t0_7', () => m1.check_t0(0x7), _ue);
    traps('check_t0_8', () => m1.check_t0(0x8), _ue);
    traps('check_t0_9', () => m1.check_t0(0x9), _ue);
    traps('check_t0_10', () => m1.check_t0(0xA), _ue);
    traps('check_t0_11', () => m1.check_t0(0xB), _ue);
    returns('check_t0_12', () => m1.check_t0(0xC), 0x7);
    returns('check_t0_13', () => m1.check_t0(0xD), 0x5);
    returns('check_t0_14', () => m1.check_t0(0xE), 0x2);
    returns('check_t0_15', () => m1.check_t0(0xF), 0x3);
    returns('check_t0_16', () => m1.check_t0(0x10), 0x6);
    traps('check_t0_17', () => m1.check_t0(0x11), _ue);
    traps('check_t0_18', () => m1.check_t0(0x12), _ue);
    traps('check_t0_19', () => m1.check_t0(0x13), _ue);
    traps('check_t0_20', () => m1.check_t0(0x14), _ue);
    traps('check_t0_21', () => m1.check_t0(0x15), _ue);
    traps('check_t0_22', () => m1.check_t0(0x16), _ue);
    traps('check_t0_23', () => m1.check_t0(0x17), _ue);
    traps('check_t0_24', () => m1.check_t0(0x18), _ue);
    traps('check_t0_25', () => m1.check_t0(0x19), _ue);
    traps('check_t0_26', () => m1.check_t0(0x1A), _ue);
    traps('check_t0_27', () => m1.check_t0(0x1B), _ue);
    traps('check_t0_28', () => m1.check_t0(0x1C), _ue);
    traps('check_t0_29', () => m1.check_t0(0x1D), _ue);
    traps('check_t1_0', () => m1.check_t1(0), _ue);
    traps('check_t1_1', () => m1.check_t1(0x1), _ue);
    traps('check_t1_2', () => m1.check_t1(0x2), _ue);
    returns('check_t1_3', () => m1.check_t1(0x3), 0x1);
    returns('check_t1_4', () => m1.check_t1(0x4), 0x3);
    returns('check_t1_5', () => m1.check_t1(0x5), 0x1);
    returns('check_t1_6', () => m1.check_t1(0x6), 0x4);
    traps('check_t1_7', () => m1.check_t1(0x7), _ue);
    traps('check_t1_8', () => m1.check_t1(0x8), _ue);
    traps('check_t1_9', () => m1.check_t1(0x9), _ue);
    traps('check_t1_10', () => m1.check_t1(0xA), _ue);
    returns('check_t1_11', () => m1.check_t1(0xB), 0x6);
    returns('check_t1_12', () => m1.check_t1(0xC), 0x3);
    returns('check_t1_13', () => m1.check_t1(0xD), 0x2);
    returns('check_t1_14', () => m1.check_t1(0xE), 0x5);
    returns('check_t1_15', () => m1.check_t1(0xF), 0x7);
    traps('check_t1_16', () => m1.check_t1(0x10), _ue);
    traps('check_t1_17', () => m1.check_t1(0x11), _ue);
    traps('check_t1_18', () => m1.check_t1(0x12), _ue);
    traps('check_t1_19', () => m1.check_t1(0x13), _ue);
    traps('check_t1_20', () => m1.check_t1(0x14), _ue);
    traps('check_t1_21', () => m1.check_t1(0x15), _ue);
    traps('check_t1_22', () => m1.check_t1(0x16), _ue);
    traps('check_t1_23', () => m1.check_t1(0x17), _ue);
    traps('check_t1_24', () => m1.check_t1(0x18), _ue);
    traps('check_t1_25', () => m1.check_t1(0x19), _ue);
    traps('check_t1_26', () => m1.check_t1(0x1A), _ue);
    traps('check_t1_27', () => m1.check_t1(0x1B), _ue);
    traps('check_t1_28', () => m1.check_t1(0x1C), _ue);
    traps('check_t1_29', () => m1.check_t1(0x1D), _ue);

    // module table_copy.2.dart (line 107)
    var m2 = table_copy_2.TableCopy2Module(
      aImports: Wrapper1(m0),
    );

    invoke('test_1', () => m2.test());
    traps('check_t0_30', () => m2.check_t0(0), _ue);
    traps('check_t0_31', () => m2.check_t0(0x1), _ue);
    returns('check_t0_32', () => m2.check_t0(0x2), 0x3);
    returns('check_t0_33', () => m2.check_t0(0x3), 0x1);
    returns('check_t0_34', () => m2.check_t0(0x4), 0x4);
    returns('check_t0_35', () => m2.check_t0(0x5), 0x1);
    traps('check_t0_36', () => m2.check_t0(0x6), _ue);
    traps('check_t0_37', () => m2.check_t0(0x7), _ue);
    traps('check_t0_38', () => m2.check_t0(0x8), _ue);
    traps('check_t0_39', () => m2.check_t0(0x9), _ue);
    traps('check_t0_40', () => m2.check_t0(0xA), _ue);
    traps('check_t0_41', () => m2.check_t0(0xB), _ue);
    returns('check_t0_42', () => m2.check_t0(0xC), 0x7);
    returns('check_t0_43', () => m2.check_t0(0xD), 0x3);
    returns('check_t0_44', () => m2.check_t0(0xE), 0x1);
    returns('check_t0_45', () => m2.check_t0(0xF), 0x4);
    returns('check_t0_46', () => m2.check_t0(0x10), 0x6);
    traps('check_t0_47', () => m2.check_t0(0x11), _ue);
    traps('check_t0_48', () => m2.check_t0(0x12), _ue);
    traps('check_t0_49', () => m2.check_t0(0x13), _ue);
    traps('check_t0_50', () => m2.check_t0(0x14), _ue);
    traps('check_t0_51', () => m2.check_t0(0x15), _ue);
    traps('check_t0_52', () => m2.check_t0(0x16), _ue);
    traps('check_t0_53', () => m2.check_t0(0x17), _ue);
    traps('check_t0_54', () => m2.check_t0(0x18), _ue);
    traps('check_t0_55', () => m2.check_t0(0x19), _ue);
    traps('check_t0_56', () => m2.check_t0(0x1A), _ue);
    traps('check_t0_57', () => m2.check_t0(0x1B), _ue);
    traps('check_t0_58', () => m2.check_t0(0x1C), _ue);
    traps('check_t0_59', () => m2.check_t0(0x1D), _ue);
    traps('check_t1_30', () => m2.check_t1(0), _ue);
    traps('check_t1_31', () => m2.check_t1(0x1), _ue);
    traps('check_t1_32', () => m2.check_t1(0x2), _ue);
    returns('check_t1_33', () => m2.check_t1(0x3), 0x1);
    returns('check_t1_34', () => m2.check_t1(0x4), 0x3);
    returns('check_t1_35', () => m2.check_t1(0x5), 0x1);
    returns('check_t1_36', () => m2.check_t1(0x6), 0x4);
    traps('check_t1_37', () => m2.check_t1(0x7), _ue);
    traps('check_t1_38', () => m2.check_t1(0x8), _ue);
    traps('check_t1_39', () => m2.check_t1(0x9), _ue);
    traps('check_t1_40', () => m2.check_t1(0xA), _ue);
    returns('check_t1_41', () => m2.check_t1(0xB), 0x6);
    returns('check_t1_42', () => m2.check_t1(0xC), 0x3);
    returns('check_t1_43', () => m2.check_t1(0xD), 0x2);
    returns('check_t1_44', () => m2.check_t1(0xE), 0x5);
    returns('check_t1_45', () => m2.check_t1(0xF), 0x7);
    traps('check_t1_46', () => m2.check_t1(0x10), _ue);
    traps('check_t1_47', () => m2.check_t1(0x11), _ue);
    traps('check_t1_48', () => m2.check_t1(0x12), _ue);
    traps('check_t1_49', () => m2.check_t1(0x13), _ue);
    traps('check_t1_50', () => m2.check_t1(0x14), _ue);
    traps('check_t1_51', () => m2.check_t1(0x15), _ue);
    traps('check_t1_52', () => m2.check_t1(0x16), _ue);
    traps('check_t1_53', () => m2.check_t1(0x17), _ue);
    traps('check_t1_54', () => m2.check_t1(0x18), _ue);
    traps('check_t1_55', () => m2.check_t1(0x19), _ue);
    traps('check_t1_56', () => m2.check_t1(0x1A), _ue);
    traps('check_t1_57', () => m2.check_t1(0x1B), _ue);
    traps('check_t1_58', () => m2.check_t1(0x1C), _ue);
    traps('check_t1_59', () => m2.check_t1(0x1D), _ue);

    // module table_copy.3.dart (line 199)
    var m3 = table_copy_3.TableCopy3Module(
      aImports: Wrapper2(m0),
    );

    invoke('test_2', () => m3.test());
    traps('check_t0_60', () => m3.check_t0(0), _ue);
    traps('check_t0_61', () => m3.check_t0(0x1), _ue);
    returns('check_t0_62', () => m3.check_t0(0x2), 0x3);
    returns('check_t0_63', () => m3.check_t0(0x3), 0x1);
    returns('check_t0_64', () => m3.check_t0(0x4), 0x4);
    returns('check_t0_65', () => m3.check_t0(0x5), 0x1);
    traps('check_t0_66', () => m3.check_t0(0x6), _ue);
    traps('check_t0_67', () => m3.check_t0(0x7), _ue);
    traps('check_t0_68', () => m3.check_t0(0x8), _ue);
    traps('check_t0_69', () => m3.check_t0(0x9), _ue);
    traps('check_t0_70', () => m3.check_t0(0xA), _ue);
    traps('check_t0_71', () => m3.check_t0(0xB), _ue);
    returns('check_t0_72', () => m3.check_t0(0xC), 0x7);
    returns('check_t0_73', () => m3.check_t0(0xD), 0x5);
    returns('check_t0_74', () => m3.check_t0(0xE), 0x2);
    returns('check_t0_75', () => m3.check_t0(0xF), 0x3);
    returns('check_t0_76', () => m3.check_t0(0x10), 0x6);
    traps('check_t0_77', () => m3.check_t0(0x11), _ue);
    traps('check_t0_78', () => m3.check_t0(0x12), _ue);
    traps('check_t0_79', () => m3.check_t0(0x13), _ue);
    traps('check_t0_80', () => m3.check_t0(0x14), _ue);
    traps('check_t0_81', () => m3.check_t0(0x15), _ue);
    traps('check_t0_82', () => m3.check_t0(0x16), _ue);
    traps('check_t0_83', () => m3.check_t0(0x17), _ue);
    traps('check_t0_84', () => m3.check_t0(0x18), _ue);
    returns('check_t0_85', () => m3.check_t0(0x19), 0x3);
    returns('check_t0_86', () => m3.check_t0(0x1A), 0x6);
    traps('check_t0_87', () => m3.check_t0(0x1B), _ue);
    traps('check_t0_88', () => m3.check_t0(0x1C), _ue);
    traps('check_t0_89', () => m3.check_t0(0x1D), _ue);
    traps('check_t1_60', () => m3.check_t1(0), _ue);
    traps('check_t1_61', () => m3.check_t1(0x1), _ue);
    traps('check_t1_62', () => m3.check_t1(0x2), _ue);
    returns('check_t1_63', () => m3.check_t1(0x3), 0x1);
    returns('check_t1_64', () => m3.check_t1(0x4), 0x3);
    returns('check_t1_65', () => m3.check_t1(0x5), 0x1);
    returns('check_t1_66', () => m3.check_t1(0x6), 0x4);
    traps('check_t1_67', () => m3.check_t1(0x7), _ue);
    traps('check_t1_68', () => m3.check_t1(0x8), _ue);
    traps('check_t1_69', () => m3.check_t1(0x9), _ue);
    traps('check_t1_70', () => m3.check_t1(0xA), _ue);
    returns('check_t1_71', () => m3.check_t1(0xB), 0x6);
    returns('check_t1_72', () => m3.check_t1(0xC), 0x3);
    returns('check_t1_73', () => m3.check_t1(0xD), 0x2);
    returns('check_t1_74', () => m3.check_t1(0xE), 0x5);
    returns('check_t1_75', () => m3.check_t1(0xF), 0x7);
    traps('check_t1_76', () => m3.check_t1(0x10), _ue);
    traps('check_t1_77', () => m3.check_t1(0x11), _ue);
    traps('check_t1_78', () => m3.check_t1(0x12), _ue);
    traps('check_t1_79', () => m3.check_t1(0x13), _ue);
    traps('check_t1_80', () => m3.check_t1(0x14), _ue);
    traps('check_t1_81', () => m3.check_t1(0x15), _ue);
    traps('check_t1_82', () => m3.check_t1(0x16), _ue);
    traps('check_t1_83', () => m3.check_t1(0x17), _ue);
    traps('check_t1_84', () => m3.check_t1(0x18), _ue);
    traps('check_t1_85', () => m3.check_t1(0x19), _ue);
    traps('check_t1_86', () => m3.check_t1(0x1A), _ue);
    traps('check_t1_87', () => m3.check_t1(0x1B), _ue);
    traps('check_t1_88', () => m3.check_t1(0x1C), _ue);
    traps('check_t1_89', () => m3.check_t1(0x1D), _ue);

    // module table_copy.4.dart (line 291)
    var m4 = table_copy_4.TableCopy4Module(
      aImports: Wrapper3(m0),
    );

    invoke('test_3', () => m4.test());
    traps('check_t0_90', () => m4.check_t0(0), _ue);
    traps('check_t0_91', () => m4.check_t0(0x1), _ue);
    returns('check_t0_92', () => m4.check_t0(0x2), 0x3);
    returns('check_t0_93', () => m4.check_t0(0x3), 0x1);
    returns('check_t0_94', () => m4.check_t0(0x4), 0x4);
    returns('check_t0_95', () => m4.check_t0(0x5), 0x1);
    traps('check_t0_96', () => m4.check_t0(0x6), _ue);
    traps('check_t0_97', () => m4.check_t0(0x7), _ue);
    traps('check_t0_98', () => m4.check_t0(0x8), _ue);
    traps('check_t0_99', () => m4.check_t0(0x9), _ue);
    traps('check_t0_100', () => m4.check_t0(0xA), _ue);
    traps('check_t0_101', () => m4.check_t0(0xB), _ue);
    returns('check_t0_102', () => m4.check_t0(0xC), 0x7);
    traps('check_t0_103', () => m4.check_t0(0xD), _ue);
    traps('check_t0_104', () => m4.check_t0(0xE), _ue);
    traps('check_t0_105', () => m4.check_t0(0xF), _ue);
    returns('check_t0_106', () => m4.check_t0(0x10), 0x6);
    traps('check_t0_107', () => m4.check_t0(0x11), _ue);
    traps('check_t0_108', () => m4.check_t0(0x12), _ue);
    traps('check_t0_109', () => m4.check_t0(0x13), _ue);
    traps('check_t0_110', () => m4.check_t0(0x14), _ue);
    traps('check_t0_111', () => m4.check_t0(0x15), _ue);
    traps('check_t0_112', () => m4.check_t0(0x16), _ue);
    traps('check_t0_113', () => m4.check_t0(0x17), _ue);
    traps('check_t0_114', () => m4.check_t0(0x18), _ue);
    traps('check_t0_115', () => m4.check_t0(0x19), _ue);
    traps('check_t0_116', () => m4.check_t0(0x1A), _ue);
    traps('check_t0_117', () => m4.check_t0(0x1B), _ue);
    traps('check_t0_118', () => m4.check_t0(0x1C), _ue);
    traps('check_t0_119', () => m4.check_t0(0x1D), _ue);
    traps('check_t1_90', () => m4.check_t1(0), _ue);
    traps('check_t1_91', () => m4.check_t1(0x1), _ue);
    traps('check_t1_92', () => m4.check_t1(0x2), _ue);
    returns('check_t1_93', () => m4.check_t1(0x3), 0x1);
    returns('check_t1_94', () => m4.check_t1(0x4), 0x3);
    returns('check_t1_95', () => m4.check_t1(0x5), 0x1);
    returns('check_t1_96', () => m4.check_t1(0x6), 0x4);
    traps('check_t1_97', () => m4.check_t1(0x7), _ue);
    traps('check_t1_98', () => m4.check_t1(0x8), _ue);
    traps('check_t1_99', () => m4.check_t1(0x9), _ue);
    traps('check_t1_100', () => m4.check_t1(0xA), _ue);
    returns('check_t1_101', () => m4.check_t1(0xB), 0x6);
    returns('check_t1_102', () => m4.check_t1(0xC), 0x3);
    returns('check_t1_103', () => m4.check_t1(0xD), 0x2);
    returns('check_t1_104', () => m4.check_t1(0xE), 0x5);
    returns('check_t1_105', () => m4.check_t1(0xF), 0x7);
    traps('check_t1_106', () => m4.check_t1(0x10), _ue);
    traps('check_t1_107', () => m4.check_t1(0x11), _ue);
    traps('check_t1_108', () => m4.check_t1(0x12), _ue);
    traps('check_t1_109', () => m4.check_t1(0x13), _ue);
    traps('check_t1_110', () => m4.check_t1(0x14), _ue);
    traps('check_t1_111', () => m4.check_t1(0x15), _ue);
    traps('check_t1_112', () => m4.check_t1(0x16), _ue);
    traps('check_t1_113', () => m4.check_t1(0x17), _ue);
    traps('check_t1_114', () => m4.check_t1(0x18), _ue);
    traps('check_t1_115', () => m4.check_t1(0x19), _ue);
    traps('check_t1_116', () => m4.check_t1(0x1A), _ue);
    traps('check_t1_117', () => m4.check_t1(0x1B), _ue);
    traps('check_t1_118', () => m4.check_t1(0x1C), _ue);
    traps('check_t1_119', () => m4.check_t1(0x1D), _ue);

    // module table_copy.5.dart (line 383)
    var m5 = table_copy_5.TableCopy5Module(
      aImports: Wrapper4(m0),
    );

    invoke('test_4', () => m5.test());
    traps('check_t0_120', () => m5.check_t0(0), _ue);
    traps('check_t0_121', () => m5.check_t0(0x1), _ue);
    returns('check_t0_122', () => m5.check_t0(0x2), 0x3);
    returns('check_t0_123', () => m5.check_t0(0x3), 0x1);
    returns('check_t0_124', () => m5.check_t0(0x4), 0x4);
    returns('check_t0_125', () => m5.check_t0(0x5), 0x1);
    traps('check_t0_126', () => m5.check_t0(0x6), _ue);
    traps('check_t0_127', () => m5.check_t0(0x7), _ue);
    traps('check_t0_128', () => m5.check_t0(0x8), _ue);
    traps('check_t0_129', () => m5.check_t0(0x9), _ue);
    traps('check_t0_130', () => m5.check_t0(0xA), _ue);
    traps('check_t0_131', () => m5.check_t0(0xB), _ue);
    returns('check_t0_132', () => m5.check_t0(0xC), 0x7);
    returns('check_t0_133', () => m5.check_t0(0xD), 0x5);
    returns('check_t0_134', () => m5.check_t0(0xE), 0x2);
    returns('check_t0_135', () => m5.check_t0(0xF), 0x3);
    returns('check_t0_136', () => m5.check_t0(0x10), 0x6);
    traps('check_t0_137', () => m5.check_t0(0x11), _ue);
    traps('check_t0_138', () => m5.check_t0(0x12), _ue);
    traps('check_t0_139', () => m5.check_t0(0x13), _ue);
    traps('check_t0_140', () => m5.check_t0(0x14), _ue);
    traps('check_t0_141', () => m5.check_t0(0x15), _ue);
    traps('check_t0_142', () => m5.check_t0(0x16), _ue);
    traps('check_t0_143', () => m5.check_t0(0x17), _ue);
    traps('check_t0_144', () => m5.check_t0(0x18), _ue);
    traps('check_t0_145', () => m5.check_t0(0x19), _ue);
    traps('check_t0_146', () => m5.check_t0(0x1A), _ue);
    traps('check_t0_147', () => m5.check_t0(0x1B), _ue);
    traps('check_t0_148', () => m5.check_t0(0x1C), _ue);
    traps('check_t0_149', () => m5.check_t0(0x1D), _ue);
    traps('check_t1_120', () => m5.check_t1(0), _ue);
    traps('check_t1_121', () => m5.check_t1(0x1), _ue);
    traps('check_t1_122', () => m5.check_t1(0x2), _ue);
    returns('check_t1_123', () => m5.check_t1(0x3), 0x1);
    returns('check_t1_124', () => m5.check_t1(0x4), 0x3);
    returns('check_t1_125', () => m5.check_t1(0x5), 0x1);
    returns('check_t1_126', () => m5.check_t1(0x6), 0x4);
    traps('check_t1_127', () => m5.check_t1(0x7), _ue);
    traps('check_t1_128', () => m5.check_t1(0x8), _ue);
    traps('check_t1_129', () => m5.check_t1(0x9), _ue);
    traps('check_t1_130', () => m5.check_t1(0xA), _ue);
    returns('check_t1_131', () => m5.check_t1(0xB), 0x6);
    returns('check_t1_132', () => m5.check_t1(0xC), 0x3);
    returns('check_t1_133', () => m5.check_t1(0xD), 0x2);
    returns('check_t1_134', () => m5.check_t1(0xE), 0x5);
    returns('check_t1_135', () => m5.check_t1(0xF), 0x7);
    traps('check_t1_136', () => m5.check_t1(0x10), _ue);
    traps('check_t1_137', () => m5.check_t1(0x11), _ue);
    traps('check_t1_138', () => m5.check_t1(0x12), _ue);
    traps('check_t1_139', () => m5.check_t1(0x13), _ue);
    traps('check_t1_140', () => m5.check_t1(0x14), _ue);
    traps('check_t1_141', () => m5.check_t1(0x15), _ue);
    traps('check_t1_142', () => m5.check_t1(0x16), _ue);
    traps('check_t1_143', () => m5.check_t1(0x17), _ue);
    traps('check_t1_144', () => m5.check_t1(0x18), _ue);
    traps('check_t1_145', () => m5.check_t1(0x19), _ue);
    traps('check_t1_146', () => m5.check_t1(0x1A), _ue);
    traps('check_t1_147', () => m5.check_t1(0x1B), _ue);
    traps('check_t1_148', () => m5.check_t1(0x1C), _ue);
    traps('check_t1_149', () => m5.check_t1(0x1D), _ue);

    // module table_copy.6.dart (line 475)
    var m6 = table_copy_6.TableCopy6Module(
      aImports: Wrapper5(m0),
    );

    invoke('test_5', () => m6.test());
    traps('check_t0_150', () => m6.check_t0(0), _ue);
    traps('check_t0_151', () => m6.check_t0(0x1), _ue);
    returns('check_t0_152', () => m6.check_t0(0x2), 0x3);
    returns('check_t0_153', () => m6.check_t0(0x3), 0x1);
    returns('check_t0_154', () => m6.check_t0(0x4), 0x4);
    returns('check_t0_155', () => m6.check_t0(0x5), 0x1);
    traps('check_t0_156', () => m6.check_t0(0x6), _ue);
    traps('check_t0_157', () => m6.check_t0(0x7), _ue);
    traps('check_t0_158', () => m6.check_t0(0x8), _ue);
    traps('check_t0_159', () => m6.check_t0(0x9), _ue);
    traps('check_t0_160', () => m6.check_t0(0xA), _ue);
    traps('check_t0_161', () => m6.check_t0(0xB), _ue);
    returns('check_t0_162', () => m6.check_t0(0xC), 0x7);
    returns('check_t0_163', () => m6.check_t0(0xD), 0x5);
    returns('check_t0_164', () => m6.check_t0(0xE), 0x2);
    returns('check_t0_165', () => m6.check_t0(0xF), 0x3);
    returns('check_t0_166', () => m6.check_t0(0x10), 0x6);
    traps('check_t0_167', () => m6.check_t0(0x11), _ue);
    traps('check_t0_168', () => m6.check_t0(0x12), _ue);
    traps('check_t0_169', () => m6.check_t0(0x13), _ue);
    traps('check_t0_170', () => m6.check_t0(0x14), _ue);
    traps('check_t0_171', () => m6.check_t0(0x15), _ue);
    traps('check_t0_172', () => m6.check_t0(0x16), _ue);
    traps('check_t0_173', () => m6.check_t0(0x17), _ue);
    traps('check_t0_174', () => m6.check_t0(0x18), _ue);
    traps('check_t0_175', () => m6.check_t0(0x19), _ue);
    returns('check_t0_176', () => m6.check_t0(0x1A), 0x3);
    returns('check_t0_177', () => m6.check_t0(0x1B), 0x1);
    traps('check_t0_178', () => m6.check_t0(0x1C), _ue);
    traps('check_t0_179', () => m6.check_t0(0x1D), _ue);
    traps('check_t1_150', () => m6.check_t1(0), _ue);
    traps('check_t1_151', () => m6.check_t1(0x1), _ue);
    traps('check_t1_152', () => m6.check_t1(0x2), _ue);
    returns('check_t1_153', () => m6.check_t1(0x3), 0x1);
    returns('check_t1_154', () => m6.check_t1(0x4), 0x3);
    returns('check_t1_155', () => m6.check_t1(0x5), 0x1);
    returns('check_t1_156', () => m6.check_t1(0x6), 0x4);
    traps('check_t1_157', () => m6.check_t1(0x7), _ue);
    traps('check_t1_158', () => m6.check_t1(0x8), _ue);
    traps('check_t1_159', () => m6.check_t1(0x9), _ue);
    traps('check_t1_160', () => m6.check_t1(0xA), _ue);
    returns('check_t1_161', () => m6.check_t1(0xB), 0x6);
    returns('check_t1_162', () => m6.check_t1(0xC), 0x3);
    returns('check_t1_163', () => m6.check_t1(0xD), 0x2);
    returns('check_t1_164', () => m6.check_t1(0xE), 0x5);
    returns('check_t1_165', () => m6.check_t1(0xF), 0x7);
    traps('check_t1_166', () => m6.check_t1(0x10), _ue);
    traps('check_t1_167', () => m6.check_t1(0x11), _ue);
    traps('check_t1_168', () => m6.check_t1(0x12), _ue);
    traps('check_t1_169', () => m6.check_t1(0x13), _ue);
    traps('check_t1_170', () => m6.check_t1(0x14), _ue);
    traps('check_t1_171', () => m6.check_t1(0x15), _ue);
    traps('check_t1_172', () => m6.check_t1(0x16), _ue);
    traps('check_t1_173', () => m6.check_t1(0x17), _ue);
    traps('check_t1_174', () => m6.check_t1(0x18), _ue);
    traps('check_t1_175', () => m6.check_t1(0x19), _ue);
    traps('check_t1_176', () => m6.check_t1(0x1A), _ue);
    traps('check_t1_177', () => m6.check_t1(0x1B), _ue);
    traps('check_t1_178', () => m6.check_t1(0x1C), _ue);
    traps('check_t1_179', () => m6.check_t1(0x1D), _ue);

    // module table_copy.7.dart (line 567)
    var m7 = table_copy_7.TableCopy7Module(
      aImports: Wrapper6(m0),
    );

    invoke('test_6', () => m7.test());
    traps('check_t0_180', () => m7.check_t0(0), _ue);
    traps('check_t0_181', () => m7.check_t0(0x1), _ue);
    returns('check_t0_182', () => m7.check_t0(0x2), 0x3);
    returns('check_t0_183', () => m7.check_t0(0x3), 0x1);
    returns('check_t0_184', () => m7.check_t0(0x4), 0x4);
    returns('check_t0_185', () => m7.check_t0(0x5), 0x1);
    traps('check_t0_186', () => m7.check_t0(0x6), _ue);
    traps('check_t0_187', () => m7.check_t0(0x7), _ue);
    traps('check_t0_188', () => m7.check_t0(0x8), _ue);
    traps('check_t0_189', () => m7.check_t0(0x9), _ue);
    returns('check_t0_190', () => m7.check_t0(0xA), 0x7);
    returns('check_t0_191', () => m7.check_t0(0xB), 0x5);
    returns('check_t0_192', () => m7.check_t0(0xC), 0x2);
    returns('check_t0_193', () => m7.check_t0(0xD), 0x3);
    returns('check_t0_194', () => m7.check_t0(0xE), 0x6);
    traps('check_t0_195', () => m7.check_t0(0xF), _ue);
    traps('check_t0_196', () => m7.check_t0(0x10), _ue);
    traps('check_t0_197', () => m7.check_t0(0x11), _ue);
    traps('check_t0_198', () => m7.check_t0(0x12), _ue);
    traps('check_t0_199', () => m7.check_t0(0x13), _ue);
    traps('check_t0_200', () => m7.check_t0(0x14), _ue);
    traps('check_t0_201', () => m7.check_t0(0x15), _ue);
    traps('check_t0_202', () => m7.check_t0(0x16), _ue);
    traps('check_t0_203', () => m7.check_t0(0x17), _ue);
    traps('check_t0_204', () => m7.check_t0(0x18), _ue);
    traps('check_t0_205', () => m7.check_t0(0x19), _ue);
    traps('check_t0_206', () => m7.check_t0(0x1A), _ue);
    traps('check_t0_207', () => m7.check_t0(0x1B), _ue);
    traps('check_t0_208', () => m7.check_t0(0x1C), _ue);
    traps('check_t0_209', () => m7.check_t0(0x1D), _ue);
    traps('check_t1_180', () => m7.check_t1(0), _ue);
    traps('check_t1_181', () => m7.check_t1(0x1), _ue);
    traps('check_t1_182', () => m7.check_t1(0x2), _ue);
    returns('check_t1_183', () => m7.check_t1(0x3), 0x1);
    returns('check_t1_184', () => m7.check_t1(0x4), 0x3);
    returns('check_t1_185', () => m7.check_t1(0x5), 0x1);
    returns('check_t1_186', () => m7.check_t1(0x6), 0x4);
    traps('check_t1_187', () => m7.check_t1(0x7), _ue);
    traps('check_t1_188', () => m7.check_t1(0x8), _ue);
    traps('check_t1_189', () => m7.check_t1(0x9), _ue);
    traps('check_t1_190', () => m7.check_t1(0xA), _ue);
    returns('check_t1_191', () => m7.check_t1(0xB), 0x6);
    returns('check_t1_192', () => m7.check_t1(0xC), 0x3);
    returns('check_t1_193', () => m7.check_t1(0xD), 0x2);
    returns('check_t1_194', () => m7.check_t1(0xE), 0x5);
    returns('check_t1_195', () => m7.check_t1(0xF), 0x7);
    traps('check_t1_196', () => m7.check_t1(0x10), _ue);
    traps('check_t1_197', () => m7.check_t1(0x11), _ue);
    traps('check_t1_198', () => m7.check_t1(0x12), _ue);
    traps('check_t1_199', () => m7.check_t1(0x13), _ue);
    traps('check_t1_200', () => m7.check_t1(0x14), _ue);
    traps('check_t1_201', () => m7.check_t1(0x15), _ue);
    traps('check_t1_202', () => m7.check_t1(0x16), _ue);
    traps('check_t1_203', () => m7.check_t1(0x17), _ue);
    traps('check_t1_204', () => m7.check_t1(0x18), _ue);
    traps('check_t1_205', () => m7.check_t1(0x19), _ue);
    traps('check_t1_206', () => m7.check_t1(0x1A), _ue);
    traps('check_t1_207', () => m7.check_t1(0x1B), _ue);
    traps('check_t1_208', () => m7.check_t1(0x1C), _ue);
    traps('check_t1_209', () => m7.check_t1(0x1D), _ue);

    // module table_copy.8.dart (line 659)
    var m8 = table_copy_8.TableCopy8Module(
      aImports: Wrapper7(m0),
    );

    invoke('test_7', () => m8.test());
    traps('check_t0_210', () => m8.check_t0(0), _ue);
    traps('check_t0_211', () => m8.check_t0(0x1), _ue);
    returns('check_t0_212', () => m8.check_t0(0x2), 0x3);
    returns('check_t0_213', () => m8.check_t0(0x3), 0x1);
    returns('check_t0_214', () => m8.check_t0(0x4), 0x4);
    returns('check_t0_215', () => m8.check_t0(0x5), 0x1);
    traps('check_t0_216', () => m8.check_t0(0x6), _ue);
    traps('check_t0_217', () => m8.check_t0(0x7), _ue);
    traps('check_t0_218', () => m8.check_t0(0x8), _ue);
    traps('check_t0_219', () => m8.check_t0(0x9), _ue);
    traps('check_t0_220', () => m8.check_t0(0xA), _ue);
    traps('check_t0_221', () => m8.check_t0(0xB), _ue);
    traps('check_t0_222', () => m8.check_t0(0xC), _ue);
    traps('check_t0_223', () => m8.check_t0(0xD), _ue);
    returns('check_t0_224', () => m8.check_t0(0xE), 0x7);
    returns('check_t0_225', () => m8.check_t0(0xF), 0x5);
    returns('check_t0_226', () => m8.check_t0(0x10), 0x2);
    returns('check_t0_227', () => m8.check_t0(0x11), 0x3);
    returns('check_t0_228', () => m8.check_t0(0x12), 0x6);
    traps('check_t0_229', () => m8.check_t0(0x13), _ue);
    traps('check_t0_230', () => m8.check_t0(0x14), _ue);
    traps('check_t0_231', () => m8.check_t0(0x15), _ue);
    traps('check_t0_232', () => m8.check_t0(0x16), _ue);
    traps('check_t0_233', () => m8.check_t0(0x17), _ue);
    traps('check_t0_234', () => m8.check_t0(0x18), _ue);
    traps('check_t0_235', () => m8.check_t0(0x19), _ue);
    traps('check_t0_236', () => m8.check_t0(0x1A), _ue);
    traps('check_t0_237', () => m8.check_t0(0x1B), _ue);
    traps('check_t0_238', () => m8.check_t0(0x1C), _ue);
    traps('check_t0_239', () => m8.check_t0(0x1D), _ue);
    traps('check_t1_210', () => m8.check_t1(0), _ue);
    traps('check_t1_211', () => m8.check_t1(0x1), _ue);
    traps('check_t1_212', () => m8.check_t1(0x2), _ue);
    returns('check_t1_213', () => m8.check_t1(0x3), 0x1);
    returns('check_t1_214', () => m8.check_t1(0x4), 0x3);
    returns('check_t1_215', () => m8.check_t1(0x5), 0x1);
    returns('check_t1_216', () => m8.check_t1(0x6), 0x4);
    traps('check_t1_217', () => m8.check_t1(0x7), _ue);
    traps('check_t1_218', () => m8.check_t1(0x8), _ue);
    traps('check_t1_219', () => m8.check_t1(0x9), _ue);
    traps('check_t1_220', () => m8.check_t1(0xA), _ue);
    returns('check_t1_221', () => m8.check_t1(0xB), 0x6);
    returns('check_t1_222', () => m8.check_t1(0xC), 0x3);
    returns('check_t1_223', () => m8.check_t1(0xD), 0x2);
    returns('check_t1_224', () => m8.check_t1(0xE), 0x5);
    returns('check_t1_225', () => m8.check_t1(0xF), 0x7);
    traps('check_t1_226', () => m8.check_t1(0x10), _ue);
    traps('check_t1_227', () => m8.check_t1(0x11), _ue);
    traps('check_t1_228', () => m8.check_t1(0x12), _ue);
    traps('check_t1_229', () => m8.check_t1(0x13), _ue);
    traps('check_t1_230', () => m8.check_t1(0x14), _ue);
    traps('check_t1_231', () => m8.check_t1(0x15), _ue);
    traps('check_t1_232', () => m8.check_t1(0x16), _ue);
    traps('check_t1_233', () => m8.check_t1(0x17), _ue);
    traps('check_t1_234', () => m8.check_t1(0x18), _ue);
    traps('check_t1_235', () => m8.check_t1(0x19), _ue);
    traps('check_t1_236', () => m8.check_t1(0x1A), _ue);
    traps('check_t1_237', () => m8.check_t1(0x1B), _ue);
    traps('check_t1_238', () => m8.check_t1(0x1C), _ue);
    traps('check_t1_239', () => m8.check_t1(0x1D), _ue);

    // module table_copy.9.dart (line 751)
    var m9 = table_copy_9.TableCopy9Module(
      aImports: Wrapper8(m0),
    );

    invoke('test_8', () => m9.test());
    traps('check_t0_240', () => m9.check_t0(0), _ue);
    traps('check_t0_241', () => m9.check_t0(0x1), _ue);
    returns('check_t0_242', () => m9.check_t0(0x2), 0x3);
    returns('check_t0_243', () => m9.check_t0(0x3), 0x1);
    returns('check_t0_244', () => m9.check_t0(0x4), 0x4);
    returns('check_t0_245', () => m9.check_t0(0x5), 0x1);
    traps('check_t0_246', () => m9.check_t0(0x6), _ue);
    traps('check_t0_247', () => m9.check_t0(0x7), _ue);
    traps('check_t0_248', () => m9.check_t0(0x8), _ue);
    traps('check_t0_249', () => m9.check_t0(0x9), _ue);
    traps('check_t0_250', () => m9.check_t0(0xA), _ue);
    traps('check_t0_251', () => m9.check_t0(0xB), _ue);
    returns('check_t0_252', () => m9.check_t0(0xC), 0x7);
    returns('check_t0_253', () => m9.check_t0(0xD), 0x5);
    returns('check_t0_254', () => m9.check_t0(0xE), 0x2);
    returns('check_t0_255', () => m9.check_t0(0xF), 0x3);
    returns('check_t0_256', () => m9.check_t0(0x10), 0x6);
    traps('check_t0_257', () => m9.check_t0(0x11), _ue);
    traps('check_t0_258', () => m9.check_t0(0x12), _ue);
    traps('check_t0_259', () => m9.check_t0(0x13), _ue);
    traps('check_t0_260', () => m9.check_t0(0x14), _ue);
    traps('check_t0_261', () => m9.check_t0(0x15), _ue);
    traps('check_t0_262', () => m9.check_t0(0x16), _ue);
    traps('check_t0_263', () => m9.check_t0(0x17), _ue);
    traps('check_t0_264', () => m9.check_t0(0x18), _ue);
    traps('check_t0_265', () => m9.check_t0(0x19), _ue);
    traps('check_t0_266', () => m9.check_t0(0x1A), _ue);
    traps('check_t0_267', () => m9.check_t0(0x1B), _ue);
    traps('check_t0_268', () => m9.check_t0(0x1C), _ue);
    traps('check_t0_269', () => m9.check_t0(0x1D), _ue);
    traps('check_t1_240', () => m9.check_t1(0), _ue);
    traps('check_t1_241', () => m9.check_t1(0x1), _ue);
    traps('check_t1_242', () => m9.check_t1(0x2), _ue);
    returns('check_t1_243', () => m9.check_t1(0x3), 0x1);
    returns('check_t1_244', () => m9.check_t1(0x4), 0x3);
    returns('check_t1_245', () => m9.check_t1(0x5), 0x1);
    returns('check_t1_246', () => m9.check_t1(0x6), 0x4);
    traps('check_t1_247', () => m9.check_t1(0x7), _ue);
    traps('check_t1_248', () => m9.check_t1(0x8), _ue);
    traps('check_t1_249', () => m9.check_t1(0x9), _ue);
    traps('check_t1_250', () => m9.check_t1(0xA), _ue);
    traps('check_t1_251', () => m9.check_t1(0xB), _ue);
    returns('check_t1_252', () => m9.check_t1(0xC), 0x3);
    returns('check_t1_253', () => m9.check_t1(0xD), 0x1);
    returns('check_t1_254', () => m9.check_t1(0xE), 0x4);
    returns('check_t1_255', () => m9.check_t1(0xF), 0x1);
    traps('check_t1_256', () => m9.check_t1(0x10), _ue);
    traps('check_t1_257', () => m9.check_t1(0x11), _ue);
    traps('check_t1_258', () => m9.check_t1(0x12), _ue);
    traps('check_t1_259', () => m9.check_t1(0x13), _ue);
    traps('check_t1_260', () => m9.check_t1(0x14), _ue);
    traps('check_t1_261', () => m9.check_t1(0x15), _ue);
    returns('check_t1_262', () => m9.check_t1(0x16), 0x7);
    returns('check_t1_263', () => m9.check_t1(0x17), 0x5);
    returns('check_t1_264', () => m9.check_t1(0x18), 0x2);
    returns('check_t1_265', () => m9.check_t1(0x19), 0x3);
    returns('check_t1_266', () => m9.check_t1(0x1A), 0x6);
    traps('check_t1_267', () => m9.check_t1(0x1B), _ue);
    traps('check_t1_268', () => m9.check_t1(0x1C), _ue);
    traps('check_t1_269', () => m9.check_t1(0x1D), _ue);

    // module table_copy.10.dart (line 843)
    var m10 = table_copy_10.TableCopy10Module(
      aImports: Wrapper9(m0),
    );

    invoke('test_9', () => m10.test());
    traps('check_t0_270', () => m10.check_t0(0), _ue);
    traps('check_t0_271', () => m10.check_t0(0x1), _ue);
    returns('check_t0_272', () => m10.check_t0(0x2), 0x3);
    returns('check_t0_273', () => m10.check_t0(0x3), 0x1);
    returns('check_t0_274', () => m10.check_t0(0x4), 0x4);
    returns('check_t0_275', () => m10.check_t0(0x5), 0x1);
    traps('check_t0_276', () => m10.check_t0(0x6), _ue);
    traps('check_t0_277', () => m10.check_t0(0x7), _ue);
    traps('check_t0_278', () => m10.check_t0(0x8), _ue);
    traps('check_t0_279', () => m10.check_t0(0x9), _ue);
    traps('check_t0_280', () => m10.check_t0(0xA), _ue);
    traps('check_t0_281', () => m10.check_t0(0xB), _ue);
    returns('check_t0_282', () => m10.check_t0(0xC), 0x7);
    returns('check_t0_283', () => m10.check_t0(0xD), 0x5);
    returns('check_t0_284', () => m10.check_t0(0xE), 0x2);
    returns('check_t0_285', () => m10.check_t0(0xF), 0x3);
    returns('check_t0_286', () => m10.check_t0(0x10), 0x6);
    traps('check_t0_287', () => m10.check_t0(0x11), _ue);
    traps('check_t0_288', () => m10.check_t0(0x12), _ue);
    traps('check_t0_289', () => m10.check_t0(0x13), _ue);
    traps('check_t0_290', () => m10.check_t0(0x14), _ue);
    traps('check_t0_291', () => m10.check_t0(0x15), _ue);
    traps('check_t0_292', () => m10.check_t0(0x16), _ue);
    traps('check_t0_293', () => m10.check_t0(0x17), _ue);
    traps('check_t0_294', () => m10.check_t0(0x18), _ue);
    traps('check_t0_295', () => m10.check_t0(0x19), _ue);
    traps('check_t0_296', () => m10.check_t0(0x1A), _ue);
    traps('check_t0_297', () => m10.check_t0(0x1B), _ue);
    traps('check_t0_298', () => m10.check_t0(0x1C), _ue);
    traps('check_t0_299', () => m10.check_t0(0x1D), _ue);
    traps('check_t1_270', () => m10.check_t1(0), _ue);
    traps('check_t1_271', () => m10.check_t1(0x1), _ue);
    traps('check_t1_272', () => m10.check_t1(0x2), _ue);
    returns('check_t1_273', () => m10.check_t1(0x3), 0x1);
    returns('check_t1_274', () => m10.check_t1(0x4), 0x3);
    returns('check_t1_275', () => m10.check_t1(0x5), 0x1);
    returns('check_t1_276', () => m10.check_t1(0x6), 0x4);
    traps('check_t1_277', () => m10.check_t1(0x7), _ue);
    traps('check_t1_278', () => m10.check_t1(0x8), _ue);
    traps('check_t1_279', () => m10.check_t1(0x9), _ue);
    traps('check_t1_280', () => m10.check_t1(0xA), _ue);
    returns('check_t1_281', () => m10.check_t1(0xB), 0x6);
    returns('check_t1_282', () => m10.check_t1(0xC), 0x3);
    returns('check_t1_283', () => m10.check_t1(0xD), 0x2);
    returns('check_t1_284', () => m10.check_t1(0xE), 0x5);
    returns('check_t1_285', () => m10.check_t1(0xF), 0x7);
    traps('check_t1_286', () => m10.check_t1(0x10), _ue);
    traps('check_t1_287', () => m10.check_t1(0x11), _ue);
    traps('check_t1_288', () => m10.check_t1(0x12), _ue);
    traps('check_t1_289', () => m10.check_t1(0x13), _ue);
    traps('check_t1_290', () => m10.check_t1(0x14), _ue);
    traps('check_t1_291', () => m10.check_t1(0x15), _ue);
    traps('check_t1_292', () => m10.check_t1(0x16), _ue);
    traps('check_t1_293', () => m10.check_t1(0x17), _ue);
    traps('check_t1_294', () => m10.check_t1(0x18), _ue);
    traps('check_t1_295', () => m10.check_t1(0x19), _ue);
    traps('check_t1_296', () => m10.check_t1(0x1A), _ue);
    traps('check_t1_297', () => m10.check_t1(0x1B), _ue);
    traps('check_t1_298', () => m10.check_t1(0x1C), _ue);
    traps('check_t1_299', () => m10.check_t1(0x1D), _ue);

    // module table_copy.11.dart (line 935)
    var m11 = table_copy_11.TableCopy11Module(
      aImports: Wrapper10(m0),
    );

    invoke('test_10', () => m11.test());
    traps('check_t0_300', () => m11.check_t0(0), _ue);
    traps('check_t0_301', () => m11.check_t0(0x1), _ue);
    returns('check_t0_302', () => m11.check_t0(0x2), 0x3);
    returns('check_t0_303', () => m11.check_t0(0x3), 0x1);
    returns('check_t0_304', () => m11.check_t0(0x4), 0x4);
    returns('check_t0_305', () => m11.check_t0(0x5), 0x1);
    traps('check_t0_306', () => m11.check_t0(0x6), _ue);
    traps('check_t0_307', () => m11.check_t0(0x7), _ue);
    traps('check_t0_308', () => m11.check_t0(0x8), _ue);
    traps('check_t0_309', () => m11.check_t0(0x9), _ue);
    traps('check_t0_310', () => m11.check_t0(0xA), _ue);
    traps('check_t0_311', () => m11.check_t0(0xB), _ue);
    returns('check_t0_312', () => m11.check_t0(0xC), 0x7);
    returns('check_t0_313', () => m11.check_t0(0xD), 0x3);
    returns('check_t0_314', () => m11.check_t0(0xE), 0x1);
    returns('check_t0_315', () => m11.check_t0(0xF), 0x4);
    returns('check_t0_316', () => m11.check_t0(0x10), 0x6);
    traps('check_t0_317', () => m11.check_t0(0x11), _ue);
    traps('check_t0_318', () => m11.check_t0(0x12), _ue);
    traps('check_t0_319', () => m11.check_t0(0x13), _ue);
    traps('check_t0_320', () => m11.check_t0(0x14), _ue);
    traps('check_t0_321', () => m11.check_t0(0x15), _ue);
    traps('check_t0_322', () => m11.check_t0(0x16), _ue);
    traps('check_t0_323', () => m11.check_t0(0x17), _ue);
    traps('check_t0_324', () => m11.check_t0(0x18), _ue);
    traps('check_t0_325', () => m11.check_t0(0x19), _ue);
    traps('check_t0_326', () => m11.check_t0(0x1A), _ue);
    traps('check_t0_327', () => m11.check_t0(0x1B), _ue);
    traps('check_t0_328', () => m11.check_t0(0x1C), _ue);
    traps('check_t0_329', () => m11.check_t0(0x1D), _ue);
    traps('check_t1_300', () => m11.check_t1(0), _ue);
    traps('check_t1_301', () => m11.check_t1(0x1), _ue);
    traps('check_t1_302', () => m11.check_t1(0x2), _ue);
    returns('check_t1_303', () => m11.check_t1(0x3), 0x1);
    returns('check_t1_304', () => m11.check_t1(0x4), 0x3);
    returns('check_t1_305', () => m11.check_t1(0x5), 0x1);
    returns('check_t1_306', () => m11.check_t1(0x6), 0x4);
    traps('check_t1_307', () => m11.check_t1(0x7), _ue);
    traps('check_t1_308', () => m11.check_t1(0x8), _ue);
    traps('check_t1_309', () => m11.check_t1(0x9), _ue);
    traps('check_t1_310', () => m11.check_t1(0xA), _ue);
    returns('check_t1_311', () => m11.check_t1(0xB), 0x6);
    returns('check_t1_312', () => m11.check_t1(0xC), 0x3);
    returns('check_t1_313', () => m11.check_t1(0xD), 0x2);
    returns('check_t1_314', () => m11.check_t1(0xE), 0x5);
    returns('check_t1_315', () => m11.check_t1(0xF), 0x7);
    traps('check_t1_316', () => m11.check_t1(0x10), _ue);
    traps('check_t1_317', () => m11.check_t1(0x11), _ue);
    traps('check_t1_318', () => m11.check_t1(0x12), _ue);
    traps('check_t1_319', () => m11.check_t1(0x13), _ue);
    traps('check_t1_320', () => m11.check_t1(0x14), _ue);
    traps('check_t1_321', () => m11.check_t1(0x15), _ue);
    traps('check_t1_322', () => m11.check_t1(0x16), _ue);
    traps('check_t1_323', () => m11.check_t1(0x17), _ue);
    traps('check_t1_324', () => m11.check_t1(0x18), _ue);
    traps('check_t1_325', () => m11.check_t1(0x19), _ue);
    traps('check_t1_326', () => m11.check_t1(0x1A), _ue);
    traps('check_t1_327', () => m11.check_t1(0x1B), _ue);
    traps('check_t1_328', () => m11.check_t1(0x1C), _ue);
    traps('check_t1_329', () => m11.check_t1(0x1D), _ue);

    // module table_copy.12.dart (line 1027)
    var m12 = table_copy_12.TableCopy12Module(
      aImports: Wrapper11(m0),
    );

    invoke('test_11', () => m12.test());
    traps('check_t0_330', () => m12.check_t0(0), _ue);
    traps('check_t0_331', () => m12.check_t0(0x1), _ue);
    returns('check_t0_332', () => m12.check_t0(0x2), 0x3);
    returns('check_t0_333', () => m12.check_t0(0x3), 0x1);
    returns('check_t0_334', () => m12.check_t0(0x4), 0x4);
    returns('check_t0_335', () => m12.check_t0(0x5), 0x1);
    traps('check_t0_336', () => m12.check_t0(0x6), _ue);
    traps('check_t0_337', () => m12.check_t0(0x7), _ue);
    traps('check_t0_338', () => m12.check_t0(0x8), _ue);
    traps('check_t0_339', () => m12.check_t0(0x9), _ue);
    traps('check_t0_340', () => m12.check_t0(0xA), _ue);
    traps('check_t0_341', () => m12.check_t0(0xB), _ue);
    returns('check_t0_342', () => m12.check_t0(0xC), 0x7);
    returns('check_t0_343', () => m12.check_t0(0xD), 0x5);
    returns('check_t0_344', () => m12.check_t0(0xE), 0x2);
    returns('check_t0_345', () => m12.check_t0(0xF), 0x3);
    returns('check_t0_346', () => m12.check_t0(0x10), 0x6);
    traps('check_t0_347', () => m12.check_t0(0x11), _ue);
    traps('check_t0_348', () => m12.check_t0(0x12), _ue);
    traps('check_t0_349', () => m12.check_t0(0x13), _ue);
    traps('check_t0_350', () => m12.check_t0(0x14), _ue);
    traps('check_t0_351', () => m12.check_t0(0x15), _ue);
    traps('check_t0_352', () => m12.check_t0(0x16), _ue);
    traps('check_t0_353', () => m12.check_t0(0x17), _ue);
    traps('check_t0_354', () => m12.check_t0(0x18), _ue);
    returns('check_t0_355', () => m12.check_t0(0x19), 0x3);
    returns('check_t0_356', () => m12.check_t0(0x1A), 0x6);
    traps('check_t0_357', () => m12.check_t0(0x1B), _ue);
    traps('check_t0_358', () => m12.check_t0(0x1C), _ue);
    traps('check_t0_359', () => m12.check_t0(0x1D), _ue);
    traps('check_t1_330', () => m12.check_t1(0), _ue);
    traps('check_t1_331', () => m12.check_t1(0x1), _ue);
    traps('check_t1_332', () => m12.check_t1(0x2), _ue);
    returns('check_t1_333', () => m12.check_t1(0x3), 0x1);
    returns('check_t1_334', () => m12.check_t1(0x4), 0x3);
    returns('check_t1_335', () => m12.check_t1(0x5), 0x1);
    returns('check_t1_336', () => m12.check_t1(0x6), 0x4);
    traps('check_t1_337', () => m12.check_t1(0x7), _ue);
    traps('check_t1_338', () => m12.check_t1(0x8), _ue);
    traps('check_t1_339', () => m12.check_t1(0x9), _ue);
    traps('check_t1_340', () => m12.check_t1(0xA), _ue);
    returns('check_t1_341', () => m12.check_t1(0xB), 0x6);
    returns('check_t1_342', () => m12.check_t1(0xC), 0x3);
    returns('check_t1_343', () => m12.check_t1(0xD), 0x2);
    returns('check_t1_344', () => m12.check_t1(0xE), 0x5);
    returns('check_t1_345', () => m12.check_t1(0xF), 0x7);
    traps('check_t1_346', () => m12.check_t1(0x10), _ue);
    traps('check_t1_347', () => m12.check_t1(0x11), _ue);
    traps('check_t1_348', () => m12.check_t1(0x12), _ue);
    traps('check_t1_349', () => m12.check_t1(0x13), _ue);
    traps('check_t1_350', () => m12.check_t1(0x14), _ue);
    traps('check_t1_351', () => m12.check_t1(0x15), _ue);
    traps('check_t1_352', () => m12.check_t1(0x16), _ue);
    traps('check_t1_353', () => m12.check_t1(0x17), _ue);
    traps('check_t1_354', () => m12.check_t1(0x18), _ue);
    traps('check_t1_355', () => m12.check_t1(0x19), _ue);
    traps('check_t1_356', () => m12.check_t1(0x1A), _ue);
    traps('check_t1_357', () => m12.check_t1(0x1B), _ue);
    traps('check_t1_358', () => m12.check_t1(0x1C), _ue);
    traps('check_t1_359', () => m12.check_t1(0x1D), _ue);

    // module table_copy.13.dart (line 1119)
    var m13 = table_copy_13.TableCopy13Module(
      aImports: Wrapper12(m0),
    );

    invoke('test_12', () => m13.test());
    traps('check_t0_360', () => m13.check_t0(0), _ue);
    traps('check_t0_361', () => m13.check_t0(0x1), _ue);
    returns('check_t0_362', () => m13.check_t0(0x2), 0x3);
    returns('check_t0_363', () => m13.check_t0(0x3), 0x1);
    returns('check_t0_364', () => m13.check_t0(0x4), 0x4);
    returns('check_t0_365', () => m13.check_t0(0x5), 0x1);
    traps('check_t0_366', () => m13.check_t0(0x6), _ue);
    traps('check_t0_367', () => m13.check_t0(0x7), _ue);
    traps('check_t0_368', () => m13.check_t0(0x8), _ue);
    traps('check_t0_369', () => m13.check_t0(0x9), _ue);
    traps('check_t0_370', () => m13.check_t0(0xA), _ue);
    traps('check_t0_371', () => m13.check_t0(0xB), _ue);
    returns('check_t0_372', () => m13.check_t0(0xC), 0x7);
    traps('check_t0_373', () => m13.check_t0(0xD), _ue);
    traps('check_t0_374', () => m13.check_t0(0xE), _ue);
    traps('check_t0_375', () => m13.check_t0(0xF), _ue);
    returns('check_t0_376', () => m13.check_t0(0x10), 0x6);
    traps('check_t0_377', () => m13.check_t0(0x11), _ue);
    traps('check_t0_378', () => m13.check_t0(0x12), _ue);
    traps('check_t0_379', () => m13.check_t0(0x13), _ue);
    traps('check_t0_380', () => m13.check_t0(0x14), _ue);
    traps('check_t0_381', () => m13.check_t0(0x15), _ue);
    traps('check_t0_382', () => m13.check_t0(0x16), _ue);
    traps('check_t0_383', () => m13.check_t0(0x17), _ue);
    traps('check_t0_384', () => m13.check_t0(0x18), _ue);
    traps('check_t0_385', () => m13.check_t0(0x19), _ue);
    traps('check_t0_386', () => m13.check_t0(0x1A), _ue);
    traps('check_t0_387', () => m13.check_t0(0x1B), _ue);
    traps('check_t0_388', () => m13.check_t0(0x1C), _ue);
    traps('check_t0_389', () => m13.check_t0(0x1D), _ue);
    traps('check_t1_360', () => m13.check_t1(0), _ue);
    traps('check_t1_361', () => m13.check_t1(0x1), _ue);
    traps('check_t1_362', () => m13.check_t1(0x2), _ue);
    returns('check_t1_363', () => m13.check_t1(0x3), 0x1);
    returns('check_t1_364', () => m13.check_t1(0x4), 0x3);
    returns('check_t1_365', () => m13.check_t1(0x5), 0x1);
    returns('check_t1_366', () => m13.check_t1(0x6), 0x4);
    traps('check_t1_367', () => m13.check_t1(0x7), _ue);
    traps('check_t1_368', () => m13.check_t1(0x8), _ue);
    traps('check_t1_369', () => m13.check_t1(0x9), _ue);
    traps('check_t1_370', () => m13.check_t1(0xA), _ue);
    returns('check_t1_371', () => m13.check_t1(0xB), 0x6);
    returns('check_t1_372', () => m13.check_t1(0xC), 0x3);
    returns('check_t1_373', () => m13.check_t1(0xD), 0x2);
    returns('check_t1_374', () => m13.check_t1(0xE), 0x5);
    returns('check_t1_375', () => m13.check_t1(0xF), 0x7);
    traps('check_t1_376', () => m13.check_t1(0x10), _ue);
    traps('check_t1_377', () => m13.check_t1(0x11), _ue);
    traps('check_t1_378', () => m13.check_t1(0x12), _ue);
    traps('check_t1_379', () => m13.check_t1(0x13), _ue);
    traps('check_t1_380', () => m13.check_t1(0x14), _ue);
    traps('check_t1_381', () => m13.check_t1(0x15), _ue);
    traps('check_t1_382', () => m13.check_t1(0x16), _ue);
    traps('check_t1_383', () => m13.check_t1(0x17), _ue);
    traps('check_t1_384', () => m13.check_t1(0x18), _ue);
    traps('check_t1_385', () => m13.check_t1(0x19), _ue);
    traps('check_t1_386', () => m13.check_t1(0x1A), _ue);
    traps('check_t1_387', () => m13.check_t1(0x1B), _ue);
    traps('check_t1_388', () => m13.check_t1(0x1C), _ue);
    traps('check_t1_389', () => m13.check_t1(0x1D), _ue);

    // module table_copy.14.dart (line 1211)
    var m14 = table_copy_14.TableCopy14Module(
      aImports: Wrapper13(m0),
    );

    invoke('test_13', () => m14.test());
    traps('check_t0_390', () => m14.check_t0(0), _ue);
    traps('check_t0_391', () => m14.check_t0(0x1), _ue);
    returns('check_t0_392', () => m14.check_t0(0x2), 0x3);
    returns('check_t0_393', () => m14.check_t0(0x3), 0x1);
    returns('check_t0_394', () => m14.check_t0(0x4), 0x4);
    returns('check_t0_395', () => m14.check_t0(0x5), 0x1);
    traps('check_t0_396', () => m14.check_t0(0x6), _ue);
    traps('check_t0_397', () => m14.check_t0(0x7), _ue);
    traps('check_t0_398', () => m14.check_t0(0x8), _ue);
    traps('check_t0_399', () => m14.check_t0(0x9), _ue);
    traps('check_t0_400', () => m14.check_t0(0xA), _ue);
    traps('check_t0_401', () => m14.check_t0(0xB), _ue);
    returns('check_t0_402', () => m14.check_t0(0xC), 0x7);
    returns('check_t0_403', () => m14.check_t0(0xD), 0x5);
    returns('check_t0_404', () => m14.check_t0(0xE), 0x2);
    returns('check_t0_405', () => m14.check_t0(0xF), 0x3);
    returns('check_t0_406', () => m14.check_t0(0x10), 0x6);
    traps('check_t0_407', () => m14.check_t0(0x11), _ue);
    traps('check_t0_408', () => m14.check_t0(0x12), _ue);
    traps('check_t0_409', () => m14.check_t0(0x13), _ue);
    traps('check_t0_410', () => m14.check_t0(0x14), _ue);
    traps('check_t0_411', () => m14.check_t0(0x15), _ue);
    traps('check_t0_412', () => m14.check_t0(0x16), _ue);
    traps('check_t0_413', () => m14.check_t0(0x17), _ue);
    traps('check_t0_414', () => m14.check_t0(0x18), _ue);
    traps('check_t0_415', () => m14.check_t0(0x19), _ue);
    traps('check_t0_416', () => m14.check_t0(0x1A), _ue);
    traps('check_t0_417', () => m14.check_t0(0x1B), _ue);
    traps('check_t0_418', () => m14.check_t0(0x1C), _ue);
    traps('check_t0_419', () => m14.check_t0(0x1D), _ue);
    traps('check_t1_390', () => m14.check_t1(0), _ue);
    traps('check_t1_391', () => m14.check_t1(0x1), _ue);
    traps('check_t1_392', () => m14.check_t1(0x2), _ue);
    returns('check_t1_393', () => m14.check_t1(0x3), 0x1);
    returns('check_t1_394', () => m14.check_t1(0x4), 0x3);
    returns('check_t1_395', () => m14.check_t1(0x5), 0x1);
    returns('check_t1_396', () => m14.check_t1(0x6), 0x4);
    traps('check_t1_397', () => m14.check_t1(0x7), _ue);
    traps('check_t1_398', () => m14.check_t1(0x8), _ue);
    traps('check_t1_399', () => m14.check_t1(0x9), _ue);
    traps('check_t1_400', () => m14.check_t1(0xA), _ue);
    returns('check_t1_401', () => m14.check_t1(0xB), 0x6);
    returns('check_t1_402', () => m14.check_t1(0xC), 0x3);
    returns('check_t1_403', () => m14.check_t1(0xD), 0x2);
    returns('check_t1_404', () => m14.check_t1(0xE), 0x5);
    returns('check_t1_405', () => m14.check_t1(0xF), 0x7);
    traps('check_t1_406', () => m14.check_t1(0x10), _ue);
    traps('check_t1_407', () => m14.check_t1(0x11), _ue);
    traps('check_t1_408', () => m14.check_t1(0x12), _ue);
    traps('check_t1_409', () => m14.check_t1(0x13), _ue);
    traps('check_t1_410', () => m14.check_t1(0x14), _ue);
    traps('check_t1_411', () => m14.check_t1(0x15), _ue);
    traps('check_t1_412', () => m14.check_t1(0x16), _ue);
    traps('check_t1_413', () => m14.check_t1(0x17), _ue);
    traps('check_t1_414', () => m14.check_t1(0x18), _ue);
    traps('check_t1_415', () => m14.check_t1(0x19), _ue);
    traps('check_t1_416', () => m14.check_t1(0x1A), _ue);
    traps('check_t1_417', () => m14.check_t1(0x1B), _ue);
    traps('check_t1_418', () => m14.check_t1(0x1C), _ue);
    traps('check_t1_419', () => m14.check_t1(0x1D), _ue);

    // module table_copy.15.dart (line 1303)
    var m15 = table_copy_15.TableCopy15Module(
      aImports: Wrapper14(m0),
    );

    invoke('test_14', () => m15.test());
    traps('check_t0_420', () => m15.check_t0(0), _ue);
    traps('check_t0_421', () => m15.check_t0(0x1), _ue);
    returns('check_t0_422', () => m15.check_t0(0x2), 0x3);
    returns('check_t0_423', () => m15.check_t0(0x3), 0x1);
    returns('check_t0_424', () => m15.check_t0(0x4), 0x4);
    returns('check_t0_425', () => m15.check_t0(0x5), 0x1);
    traps('check_t0_426', () => m15.check_t0(0x6), _ue);
    traps('check_t0_427', () => m15.check_t0(0x7), _ue);
    traps('check_t0_428', () => m15.check_t0(0x8), _ue);
    traps('check_t0_429', () => m15.check_t0(0x9), _ue);
    traps('check_t0_430', () => m15.check_t0(0xA), _ue);
    traps('check_t0_431', () => m15.check_t0(0xB), _ue);
    returns('check_t0_432', () => m15.check_t0(0xC), 0x7);
    returns('check_t0_433', () => m15.check_t0(0xD), 0x5);
    returns('check_t0_434', () => m15.check_t0(0xE), 0x2);
    returns('check_t0_435', () => m15.check_t0(0xF), 0x3);
    returns('check_t0_436', () => m15.check_t0(0x10), 0x6);
    traps('check_t0_437', () => m15.check_t0(0x11), _ue);
    traps('check_t0_438', () => m15.check_t0(0x12), _ue);
    traps('check_t0_439', () => m15.check_t0(0x13), _ue);
    traps('check_t0_440', () => m15.check_t0(0x14), _ue);
    traps('check_t0_441', () => m15.check_t0(0x15), _ue);
    traps('check_t0_442', () => m15.check_t0(0x16), _ue);
    traps('check_t0_443', () => m15.check_t0(0x17), _ue);
    traps('check_t0_444', () => m15.check_t0(0x18), _ue);
    traps('check_t0_445', () => m15.check_t0(0x19), _ue);
    returns('check_t0_446', () => m15.check_t0(0x1A), 0x3);
    returns('check_t0_447', () => m15.check_t0(0x1B), 0x1);
    traps('check_t0_448', () => m15.check_t0(0x1C), _ue);
    traps('check_t0_449', () => m15.check_t0(0x1D), _ue);
    traps('check_t1_420', () => m15.check_t1(0), _ue);
    traps('check_t1_421', () => m15.check_t1(0x1), _ue);
    traps('check_t1_422', () => m15.check_t1(0x2), _ue);
    returns('check_t1_423', () => m15.check_t1(0x3), 0x1);
    returns('check_t1_424', () => m15.check_t1(0x4), 0x3);
    returns('check_t1_425', () => m15.check_t1(0x5), 0x1);
    returns('check_t1_426', () => m15.check_t1(0x6), 0x4);
    traps('check_t1_427', () => m15.check_t1(0x7), _ue);
    traps('check_t1_428', () => m15.check_t1(0x8), _ue);
    traps('check_t1_429', () => m15.check_t1(0x9), _ue);
    traps('check_t1_430', () => m15.check_t1(0xA), _ue);
    returns('check_t1_431', () => m15.check_t1(0xB), 0x6);
    returns('check_t1_432', () => m15.check_t1(0xC), 0x3);
    returns('check_t1_433', () => m15.check_t1(0xD), 0x2);
    returns('check_t1_434', () => m15.check_t1(0xE), 0x5);
    returns('check_t1_435', () => m15.check_t1(0xF), 0x7);
    traps('check_t1_436', () => m15.check_t1(0x10), _ue);
    traps('check_t1_437', () => m15.check_t1(0x11), _ue);
    traps('check_t1_438', () => m15.check_t1(0x12), _ue);
    traps('check_t1_439', () => m15.check_t1(0x13), _ue);
    traps('check_t1_440', () => m15.check_t1(0x14), _ue);
    traps('check_t1_441', () => m15.check_t1(0x15), _ue);
    traps('check_t1_442', () => m15.check_t1(0x16), _ue);
    traps('check_t1_443', () => m15.check_t1(0x17), _ue);
    traps('check_t1_444', () => m15.check_t1(0x18), _ue);
    traps('check_t1_445', () => m15.check_t1(0x19), _ue);
    traps('check_t1_446', () => m15.check_t1(0x1A), _ue);
    traps('check_t1_447', () => m15.check_t1(0x1B), _ue);
    traps('check_t1_448', () => m15.check_t1(0x1C), _ue);
    traps('check_t1_449', () => m15.check_t1(0x1D), _ue);

    // module table_copy.16.dart (line 1395)
    var m16 = table_copy_16.TableCopy16Module(
      aImports: Wrapper15(m0),
    );

    invoke('test_15', () => m16.test());
    traps('check_t0_450', () => m16.check_t0(0), _ue);
    traps('check_t0_451', () => m16.check_t0(0x1), _ue);
    returns('check_t0_452', () => m16.check_t0(0x2), 0x3);
    returns('check_t0_453', () => m16.check_t0(0x3), 0x1);
    returns('check_t0_454', () => m16.check_t0(0x4), 0x4);
    returns('check_t0_455', () => m16.check_t0(0x5), 0x1);
    traps('check_t0_456', () => m16.check_t0(0x6), _ue);
    traps('check_t0_457', () => m16.check_t0(0x7), _ue);
    traps('check_t0_458', () => m16.check_t0(0x8), _ue);
    traps('check_t0_459', () => m16.check_t0(0x9), _ue);
    returns('check_t0_460', () => m16.check_t0(0xA), 0x7);
    returns('check_t0_461', () => m16.check_t0(0xB), 0x5);
    returns('check_t0_462', () => m16.check_t0(0xC), 0x2);
    returns('check_t0_463', () => m16.check_t0(0xD), 0x3);
    returns('check_t0_464', () => m16.check_t0(0xE), 0x6);
    traps('check_t0_465', () => m16.check_t0(0xF), _ue);
    traps('check_t0_466', () => m16.check_t0(0x10), _ue);
    traps('check_t0_467', () => m16.check_t0(0x11), _ue);
    traps('check_t0_468', () => m16.check_t0(0x12), _ue);
    traps('check_t0_469', () => m16.check_t0(0x13), _ue);
    traps('check_t0_470', () => m16.check_t0(0x14), _ue);
    traps('check_t0_471', () => m16.check_t0(0x15), _ue);
    traps('check_t0_472', () => m16.check_t0(0x16), _ue);
    traps('check_t0_473', () => m16.check_t0(0x17), _ue);
    traps('check_t0_474', () => m16.check_t0(0x18), _ue);
    traps('check_t0_475', () => m16.check_t0(0x19), _ue);
    traps('check_t0_476', () => m16.check_t0(0x1A), _ue);
    traps('check_t0_477', () => m16.check_t0(0x1B), _ue);
    traps('check_t0_478', () => m16.check_t0(0x1C), _ue);
    traps('check_t0_479', () => m16.check_t0(0x1D), _ue);
    traps('check_t1_450', () => m16.check_t1(0), _ue);
    traps('check_t1_451', () => m16.check_t1(0x1), _ue);
    traps('check_t1_452', () => m16.check_t1(0x2), _ue);
    returns('check_t1_453', () => m16.check_t1(0x3), 0x1);
    returns('check_t1_454', () => m16.check_t1(0x4), 0x3);
    returns('check_t1_455', () => m16.check_t1(0x5), 0x1);
    returns('check_t1_456', () => m16.check_t1(0x6), 0x4);
    traps('check_t1_457', () => m16.check_t1(0x7), _ue);
    traps('check_t1_458', () => m16.check_t1(0x8), _ue);
    traps('check_t1_459', () => m16.check_t1(0x9), _ue);
    traps('check_t1_460', () => m16.check_t1(0xA), _ue);
    returns('check_t1_461', () => m16.check_t1(0xB), 0x6);
    returns('check_t1_462', () => m16.check_t1(0xC), 0x3);
    returns('check_t1_463', () => m16.check_t1(0xD), 0x2);
    returns('check_t1_464', () => m16.check_t1(0xE), 0x5);
    returns('check_t1_465', () => m16.check_t1(0xF), 0x7);
    traps('check_t1_466', () => m16.check_t1(0x10), _ue);
    traps('check_t1_467', () => m16.check_t1(0x11), _ue);
    traps('check_t1_468', () => m16.check_t1(0x12), _ue);
    traps('check_t1_469', () => m16.check_t1(0x13), _ue);
    traps('check_t1_470', () => m16.check_t1(0x14), _ue);
    traps('check_t1_471', () => m16.check_t1(0x15), _ue);
    traps('check_t1_472', () => m16.check_t1(0x16), _ue);
    traps('check_t1_473', () => m16.check_t1(0x17), _ue);
    traps('check_t1_474', () => m16.check_t1(0x18), _ue);
    traps('check_t1_475', () => m16.check_t1(0x19), _ue);
    traps('check_t1_476', () => m16.check_t1(0x1A), _ue);
    traps('check_t1_477', () => m16.check_t1(0x1B), _ue);
    traps('check_t1_478', () => m16.check_t1(0x1C), _ue);
    traps('check_t1_479', () => m16.check_t1(0x1D), _ue);

    // module table_copy.17.dart (line 1487)
    var m17 = table_copy_17.TableCopy17Module(
      aImports: Wrapper16(m0),
    );

    invoke('test_16', () => m17.test());
    traps('check_t0_480', () => m17.check_t0(0), _ue);
    traps('check_t0_481', () => m17.check_t0(0x1), _ue);
    returns('check_t0_482', () => m17.check_t0(0x2), 0x3);
    returns('check_t0_483', () => m17.check_t0(0x3), 0x1);
    returns('check_t0_484', () => m17.check_t0(0x4), 0x4);
    returns('check_t0_485', () => m17.check_t0(0x5), 0x1);
    traps('check_t0_486', () => m17.check_t0(0x6), _ue);
    traps('check_t0_487', () => m17.check_t0(0x7), _ue);
    traps('check_t0_488', () => m17.check_t0(0x8), _ue);
    traps('check_t0_489', () => m17.check_t0(0x9), _ue);
    traps('check_t0_490', () => m17.check_t0(0xA), _ue);
    traps('check_t0_491', () => m17.check_t0(0xB), _ue);
    traps('check_t0_492', () => m17.check_t0(0xC), _ue);
    traps('check_t0_493', () => m17.check_t0(0xD), _ue);
    returns('check_t0_494', () => m17.check_t0(0xE), 0x7);
    returns('check_t0_495', () => m17.check_t0(0xF), 0x5);
    returns('check_t0_496', () => m17.check_t0(0x10), 0x2);
    returns('check_t0_497', () => m17.check_t0(0x11), 0x3);
    returns('check_t0_498', () => m17.check_t0(0x12), 0x6);
    traps('check_t0_499', () => m17.check_t0(0x13), _ue);
    traps('check_t0_500', () => m17.check_t0(0x14), _ue);
    traps('check_t0_501', () => m17.check_t0(0x15), _ue);
    traps('check_t0_502', () => m17.check_t0(0x16), _ue);
    traps('check_t0_503', () => m17.check_t0(0x17), _ue);
    traps('check_t0_504', () => m17.check_t0(0x18), _ue);
    traps('check_t0_505', () => m17.check_t0(0x19), _ue);
    traps('check_t0_506', () => m17.check_t0(0x1A), _ue);
    traps('check_t0_507', () => m17.check_t0(0x1B), _ue);
    traps('check_t0_508', () => m17.check_t0(0x1C), _ue);
    traps('check_t0_509', () => m17.check_t0(0x1D), _ue);
    traps('check_t1_480', () => m17.check_t1(0), _ue);
    traps('check_t1_481', () => m17.check_t1(0x1), _ue);
    traps('check_t1_482', () => m17.check_t1(0x2), _ue);
    returns('check_t1_483', () => m17.check_t1(0x3), 0x1);
    returns('check_t1_484', () => m17.check_t1(0x4), 0x3);
    returns('check_t1_485', () => m17.check_t1(0x5), 0x1);
    returns('check_t1_486', () => m17.check_t1(0x6), 0x4);
    traps('check_t1_487', () => m17.check_t1(0x7), _ue);
    traps('check_t1_488', () => m17.check_t1(0x8), _ue);
    traps('check_t1_489', () => m17.check_t1(0x9), _ue);
    traps('check_t1_490', () => m17.check_t1(0xA), _ue);
    returns('check_t1_491', () => m17.check_t1(0xB), 0x6);
    returns('check_t1_492', () => m17.check_t1(0xC), 0x3);
    returns('check_t1_493', () => m17.check_t1(0xD), 0x2);
    returns('check_t1_494', () => m17.check_t1(0xE), 0x5);
    returns('check_t1_495', () => m17.check_t1(0xF), 0x7);
    traps('check_t1_496', () => m17.check_t1(0x10), _ue);
    traps('check_t1_497', () => m17.check_t1(0x11), _ue);
    traps('check_t1_498', () => m17.check_t1(0x12), _ue);
    traps('check_t1_499', () => m17.check_t1(0x13), _ue);
    traps('check_t1_500', () => m17.check_t1(0x14), _ue);
    traps('check_t1_501', () => m17.check_t1(0x15), _ue);
    traps('check_t1_502', () => m17.check_t1(0x16), _ue);
    traps('check_t1_503', () => m17.check_t1(0x17), _ue);
    traps('check_t1_504', () => m17.check_t1(0x18), _ue);
    traps('check_t1_505', () => m17.check_t1(0x19), _ue);
    traps('check_t1_506', () => m17.check_t1(0x1A), _ue);
    traps('check_t1_507', () => m17.check_t1(0x1B), _ue);
    traps('check_t1_508', () => m17.check_t1(0x1C), _ue);
    traps('check_t1_509', () => m17.check_t1(0x1D), _ue);

    // module table_copy.18.dart (line 1579)
    var m18 = table_copy_18.TableCopy18Module(
      aImports: Wrapper17(m0),
    );

    invoke('test_17', () => m18.test());
    traps('check_t0_510', () => m18.check_t0(0), _ue);
    traps('check_t0_511', () => m18.check_t0(0x1), _ue);
    returns('check_t0_512', () => m18.check_t0(0x2), 0x3);
    returns('check_t0_513', () => m18.check_t0(0x3), 0x1);
    returns('check_t0_514', () => m18.check_t0(0x4), 0x4);
    returns('check_t0_515', () => m18.check_t0(0x5), 0x1);
    traps('check_t0_516', () => m18.check_t0(0x6), _ue);
    traps('check_t0_517', () => m18.check_t0(0x7), _ue);
    traps('check_t0_518', () => m18.check_t0(0x8), _ue);
    traps('check_t0_519', () => m18.check_t0(0x9), _ue);
    traps('check_t0_520', () => m18.check_t0(0xA), _ue);
    traps('check_t0_521', () => m18.check_t0(0xB), _ue);
    returns('check_t0_522', () => m18.check_t0(0xC), 0x7);
    returns('check_t0_523', () => m18.check_t0(0xD), 0x5);
    returns('check_t0_524', () => m18.check_t0(0xE), 0x2);
    returns('check_t0_525', () => m18.check_t0(0xF), 0x3);
    returns('check_t0_526', () => m18.check_t0(0x10), 0x6);
    traps('check_t0_527', () => m18.check_t0(0x11), _ue);
    traps('check_t0_528', () => m18.check_t0(0x12), _ue);
    traps('check_t0_529', () => m18.check_t0(0x13), _ue);
    traps('check_t0_530', () => m18.check_t0(0x14), _ue);
    traps('check_t0_531', () => m18.check_t0(0x15), _ue);
    traps('check_t0_532', () => m18.check_t0(0x16), _ue);
    traps('check_t0_533', () => m18.check_t0(0x17), _ue);
    traps('check_t0_534', () => m18.check_t0(0x18), _ue);
    traps('check_t0_535', () => m18.check_t0(0x19), _ue);
    traps('check_t0_536', () => m18.check_t0(0x1A), _ue);
    traps('check_t0_537', () => m18.check_t0(0x1B), _ue);
    traps('check_t0_538', () => m18.check_t0(0x1C), _ue);
    traps('check_t0_539', () => m18.check_t0(0x1D), _ue);
    traps('check_t1_510', () => m18.check_t1(0), _ue);
    traps('check_t1_511', () => m18.check_t1(0x1), _ue);
    traps('check_t1_512', () => m18.check_t1(0x2), _ue);
    returns('check_t1_513', () => m18.check_t1(0x3), 0x1);
    returns('check_t1_514', () => m18.check_t1(0x4), 0x3);
    returns('check_t1_515', () => m18.check_t1(0x5), 0x1);
    returns('check_t1_516', () => m18.check_t1(0x6), 0x4);
    traps('check_t1_517', () => m18.check_t1(0x7), _ue);
    traps('check_t1_518', () => m18.check_t1(0x8), _ue);
    traps('check_t1_519', () => m18.check_t1(0x9), _ue);
    traps('check_t1_520', () => m18.check_t1(0xA), _ue);
    traps('check_t1_521', () => m18.check_t1(0xB), _ue);
    returns('check_t1_522', () => m18.check_t1(0xC), 0x3);
    returns('check_t1_523', () => m18.check_t1(0xD), 0x1);
    returns('check_t1_524', () => m18.check_t1(0xE), 0x4);
    returns('check_t1_525', () => m18.check_t1(0xF), 0x1);
    traps('check_t1_526', () => m18.check_t1(0x10), _ue);
    traps('check_t1_527', () => m18.check_t1(0x11), _ue);
    traps('check_t1_528', () => m18.check_t1(0x12), _ue);
    traps('check_t1_529', () => m18.check_t1(0x13), _ue);
    traps('check_t1_530', () => m18.check_t1(0x14), _ue);
    traps('check_t1_531', () => m18.check_t1(0x15), _ue);
    returns('check_t1_532', () => m18.check_t1(0x16), 0x7);
    returns('check_t1_533', () => m18.check_t1(0x17), 0x5);
    returns('check_t1_534', () => m18.check_t1(0x18), 0x2);
    returns('check_t1_535', () => m18.check_t1(0x19), 0x3);
    returns('check_t1_536', () => m18.check_t1(0x1A), 0x6);
    traps('check_t1_537', () => m18.check_t1(0x1B), _ue);
    traps('check_t1_538', () => m18.check_t1(0x1C), _ue);
    traps('check_t1_539', () => m18.check_t1(0x1D), _ue);

    // module table_copy.19.dart (line 1671)
    var m19 = table_copy_19.TableCopy19Module();

    traps('test_18', () => m19.test(), _oobta);

    // module table_copy.20.dart (line 1696)
    var m20 = table_copy_20.TableCopy20Module();

    traps('test_19', () => m20.test(), _oobta);

    // module table_copy.21.dart (line 1721)
    var m21 = table_copy_21.TableCopy21Module();

    traps('test_20', () => m21.test(), _oobta);

    // module table_copy.22.dart (line 1746)
    var m22 = table_copy_22.TableCopy22Module();

    traps('test_21', () => m22.test(), _oobta);

    // module table_copy.23.dart (line 1771)
    var m23 = table_copy_23.TableCopy23Module();

    invoke('test_22', () => m23.test());

    // module table_copy.24.dart (line 1796)
    var m24 = table_copy_24.TableCopy24Module();

    invoke('test_23', () => m24.test());

    // module table_copy.25.dart (line 1821)
    var m25 = table_copy_25.TableCopy25Module();

    traps('test_24', () => m25.test(), _oobta);

    // module table_copy.26.dart (line 1846)
    var m26 = table_copy_26.TableCopy26Module();

    invoke('test_25', () => m26.test());

    // module table_copy.27.dart (line 1871)
    var m27 = table_copy_27.TableCopy27Module();

    traps('test_26', () => m27.test(), _oobta);

    // module table_copy.28.dart (line 1896)
    var m28 = table_copy_28.TableCopy28Module();

    invoke('test_27', () => m28.test());

    // module table_copy.29.dart (line 1921)
    var m29 = table_copy_29.TableCopy29Module();

    traps('test_28', () => m29.test(), _oobta);

    // module table_copy.30.dart (line 1946)
    var m30 = table_copy_30.TableCopy30Module();

    traps('test_29', () => m30.test(), _oobta);

    // module table_copy.31.dart (line 1971)
    var m31 = table_copy_31.TableCopy31Module();

    traps('test_30', () => m31.test(), _oobta);

    // module table_copy.32.dart (line 1996)
    var m32 = table_copy_32.TableCopy32Module();

    traps('test_31', () => m32.test(), _oobta);

    // module table_copy.33.dart (line 2021)
    var m33 = table_copy_33.TableCopy33Module();

    traps('test_32', () => m33.test(), _oobta);

    // module table_copy.34.dart (line 2046)
    var m34 = table_copy_34.TableCopy34Module();

    invoke('test_33', () => m34.test());

    // module table_copy.35.dart (line 2071)
    var m35 = table_copy_35.TableCopy35Module();

    invoke('test_34', () => m35.test());

    // module table_copy.36.dart (line 2096)
    var m36 = table_copy_36.TableCopy36Module();

    traps('test_35', () => m36.test(), _oobta);

    // module table_copy.37.dart (line 2121)
    var m37 = table_copy_37.TableCopy37Module();

    invoke('test_36', () => m37.test());

    // module table_copy.38.dart (line 2146)
    var m38 = table_copy_38.TableCopy38Module();

    traps('test_37', () => m38.test(), _oobta);

    // module table_copy.39.dart (line 2171)
    var m39 = table_copy_39.TableCopy39Module();

    invoke('test_38', () => m39.test());

    // module table_copy.40.dart (line 2196)
    var m40 = table_copy_40.TableCopy40Module();

    traps('test_39', () => m40.test(), _oobta);

    // module table_copy.41.dart (line 2221)
    var m41 = table_copy_41.TableCopy41Module();

    traps('run_0', () => m41.run(0x18, 0, 0x10), _oobta);
    returns('test_40', () => m41.test(0), 0);
    returns('test_41', () => m41.test(0x1), 0x1);
    returns('test_42', () => m41.test(0x2), 0x2);
    returns('test_43', () => m41.test(0x3), 0x3);
    returns('test_44', () => m41.test(0x4), 0x4);
    returns('test_45', () => m41.test(0x5), 0x5);
    returns('test_46', () => m41.test(0x6), 0x6);
    returns('test_47', () => m41.test(0x7), 0x7);
    traps('test_48', () => m41.test(0x8), _ue);
    traps('test_49', () => m41.test(0x9), _ue);
    traps('test_50', () => m41.test(0xA), _ue);
    traps('test_51', () => m41.test(0xB), _ue);
    traps('test_52', () => m41.test(0xC), _ue);
    traps('test_53', () => m41.test(0xD), _ue);
    traps('test_54', () => m41.test(0xE), _ue);
    traps('test_55', () => m41.test(0xF), _ue);
    traps('test_56', () => m41.test(0x10), _ue);
    traps('test_57', () => m41.test(0x11), _ue);
    traps('test_58', () => m41.test(0x12), _ue);
    traps('test_59', () => m41.test(0x13), _ue);
    traps('test_60', () => m41.test(0x14), _ue);
    traps('test_61', () => m41.test(0x15), _ue);
    traps('test_62', () => m41.test(0x16), _ue);
    traps('test_63', () => m41.test(0x17), _ue);
    traps('test_64', () => m41.test(0x18), _ue);
    traps('test_65', () => m41.test(0x19), _ue);
    traps('test_66', () => m41.test(0x1A), _ue);
    traps('test_67', () => m41.test(0x1B), _ue);
    traps('test_68', () => m41.test(0x1C), _ue);
    traps('test_69', () => m41.test(0x1D), _ue);
    traps('test_70', () => m41.test(0x1E), _ue);
    traps('test_71', () => m41.test(0x1F), _ue);

    // module table_copy.42.dart (line 2282)
    var m42 = table_copy_42.TableCopy42Module();

    traps('run_1', () => m42.run(0x17, 0, 0xF), _oobta);
    returns('test_72', () => m42.test(0), 0);
    returns('test_73', () => m42.test(0x1), 0x1);
    returns('test_74', () => m42.test(0x2), 0x2);
    returns('test_75', () => m42.test(0x3), 0x3);
    returns('test_76', () => m42.test(0x4), 0x4);
    returns('test_77', () => m42.test(0x5), 0x5);
    returns('test_78', () => m42.test(0x6), 0x6);
    returns('test_79', () => m42.test(0x7), 0x7);
    returns('test_80', () => m42.test(0x8), 0x8);
    traps('test_81', () => m42.test(0x9), _ue);
    traps('test_82', () => m42.test(0xA), _ue);
    traps('test_83', () => m42.test(0xB), _ue);
    traps('test_84', () => m42.test(0xC), _ue);
    traps('test_85', () => m42.test(0xD), _ue);
    traps('test_86', () => m42.test(0xE), _ue);
    traps('test_87', () => m42.test(0xF), _ue);
    traps('test_88', () => m42.test(0x10), _ue);
    traps('test_89', () => m42.test(0x11), _ue);
    traps('test_90', () => m42.test(0x12), _ue);
    traps('test_91', () => m42.test(0x13), _ue);
    traps('test_92', () => m42.test(0x14), _ue);
    traps('test_93', () => m42.test(0x15), _ue);
    traps('test_94', () => m42.test(0x16), _ue);
    traps('test_95', () => m42.test(0x17), _ue);
    traps('test_96', () => m42.test(0x18), _ue);
    traps('test_97', () => m42.test(0x19), _ue);
    traps('test_98', () => m42.test(0x1A), _ue);
    traps('test_99', () => m42.test(0x1B), _ue);
    traps('test_100', () => m42.test(0x1C), _ue);
    traps('test_101', () => m42.test(0x1D), _ue);
    traps('test_102', () => m42.test(0x1E), _ue);
    traps('test_103', () => m42.test(0x1F), _ue);

    // module table_copy.43.dart (line 2343)
    var m43 = table_copy_43.TableCopy43Module();

    traps('run_2', () => m43.run(0, 0x18, 0x10), _oobta);
    traps('test_104', () => m43.test(0), _ue);
    traps('test_105', () => m43.test(0x1), _ue);
    traps('test_106', () => m43.test(0x2), _ue);
    traps('test_107', () => m43.test(0x3), _ue);
    traps('test_108', () => m43.test(0x4), _ue);
    traps('test_109', () => m43.test(0x5), _ue);
    traps('test_110', () => m43.test(0x6), _ue);
    traps('test_111', () => m43.test(0x7), _ue);
    traps('test_112', () => m43.test(0x8), _ue);
    traps('test_113', () => m43.test(0x9), _ue);
    traps('test_114', () => m43.test(0xA), _ue);
    traps('test_115', () => m43.test(0xB), _ue);
    traps('test_116', () => m43.test(0xC), _ue);
    traps('test_117', () => m43.test(0xD), _ue);
    traps('test_118', () => m43.test(0xE), _ue);
    traps('test_119', () => m43.test(0xF), _ue);
    traps('test_120', () => m43.test(0x10), _ue);
    traps('test_121', () => m43.test(0x11), _ue);
    traps('test_122', () => m43.test(0x12), _ue);
    traps('test_123', () => m43.test(0x13), _ue);
    traps('test_124', () => m43.test(0x14), _ue);
    traps('test_125', () => m43.test(0x15), _ue);
    traps('test_126', () => m43.test(0x16), _ue);
    traps('test_127', () => m43.test(0x17), _ue);
    returns('test_128', () => m43.test(0x18), 0);
    returns('test_129', () => m43.test(0x19), 0x1);
    returns('test_130', () => m43.test(0x1A), 0x2);
    returns('test_131', () => m43.test(0x1B), 0x3);
    returns('test_132', () => m43.test(0x1C), 0x4);
    returns('test_133', () => m43.test(0x1D), 0x5);
    returns('test_134', () => m43.test(0x1E), 0x6);
    returns('test_135', () => m43.test(0x1F), 0x7);

    // module table_copy.44.dart (line 2404)
    var m44 = table_copy_44.TableCopy44Module();

    traps('run_3', () => m44.run(0, 0x17, 0xF), _oobta);
    traps('test_136', () => m44.test(0), _ue);
    traps('test_137', () => m44.test(0x1), _ue);
    traps('test_138', () => m44.test(0x2), _ue);
    traps('test_139', () => m44.test(0x3), _ue);
    traps('test_140', () => m44.test(0x4), _ue);
    traps('test_141', () => m44.test(0x5), _ue);
    traps('test_142', () => m44.test(0x6), _ue);
    traps('test_143', () => m44.test(0x7), _ue);
    traps('test_144', () => m44.test(0x8), _ue);
    traps('test_145', () => m44.test(0x9), _ue);
    traps('test_146', () => m44.test(0xA), _ue);
    traps('test_147', () => m44.test(0xB), _ue);
    traps('test_148', () => m44.test(0xC), _ue);
    traps('test_149', () => m44.test(0xD), _ue);
    traps('test_150', () => m44.test(0xE), _ue);
    traps('test_151', () => m44.test(0xF), _ue);
    traps('test_152', () => m44.test(0x10), _ue);
    traps('test_153', () => m44.test(0x11), _ue);
    traps('test_154', () => m44.test(0x12), _ue);
    traps('test_155', () => m44.test(0x13), _ue);
    traps('test_156', () => m44.test(0x14), _ue);
    traps('test_157', () => m44.test(0x15), _ue);
    traps('test_158', () => m44.test(0x16), _ue);
    returns('test_159', () => m44.test(0x17), 0);
    returns('test_160', () => m44.test(0x18), 0x1);
    returns('test_161', () => m44.test(0x19), 0x2);
    returns('test_162', () => m44.test(0x1A), 0x3);
    returns('test_163', () => m44.test(0x1B), 0x4);
    returns('test_164', () => m44.test(0x1C), 0x5);
    returns('test_165', () => m44.test(0x1D), 0x6);
    returns('test_166', () => m44.test(0x1E), 0x7);
    returns('test_167', () => m44.test(0x1F), 0x8);

    // module table_copy.45.dart (line 2465)
    var m45 = table_copy_45.TableCopy45Module();

    traps('run_4', () => m45.run(0x18, 0xB, 0x10), _oobta);
    traps('test_168', () => m45.test(0), _ue);
    traps('test_169', () => m45.test(0x1), _ue);
    traps('test_170', () => m45.test(0x2), _ue);
    traps('test_171', () => m45.test(0x3), _ue);
    traps('test_172', () => m45.test(0x4), _ue);
    traps('test_173', () => m45.test(0x5), _ue);
    traps('test_174', () => m45.test(0x6), _ue);
    traps('test_175', () => m45.test(0x7), _ue);
    traps('test_176', () => m45.test(0x8), _ue);
    traps('test_177', () => m45.test(0x9), _ue);
    traps('test_178', () => m45.test(0xA), _ue);
    returns('test_179', () => m45.test(0xB), 0);
    returns('test_180', () => m45.test(0xC), 0x1);
    returns('test_181', () => m45.test(0xD), 0x2);
    returns('test_182', () => m45.test(0xE), 0x3);
    returns('test_183', () => m45.test(0xF), 0x4);
    returns('test_184', () => m45.test(0x10), 0x5);
    returns('test_185', () => m45.test(0x11), 0x6);
    returns('test_186', () => m45.test(0x12), 0x7);
    traps('test_187', () => m45.test(0x13), _ue);
    traps('test_188', () => m45.test(0x14), _ue);
    traps('test_189', () => m45.test(0x15), _ue);
    traps('test_190', () => m45.test(0x16), _ue);
    traps('test_191', () => m45.test(0x17), _ue);
    traps('test_192', () => m45.test(0x18), _ue);
    traps('test_193', () => m45.test(0x19), _ue);
    traps('test_194', () => m45.test(0x1A), _ue);
    traps('test_195', () => m45.test(0x1B), _ue);
    traps('test_196', () => m45.test(0x1C), _ue);
    traps('test_197', () => m45.test(0x1D), _ue);
    traps('test_198', () => m45.test(0x1E), _ue);
    traps('test_199', () => m45.test(0x1F), _ue);

    // module table_copy.46.dart (line 2526)
    var m46 = table_copy_46.TableCopy46Module();

    traps('run_5', () => m46.run(0xB, 0x18, 0x10), _oobta);
    traps('test_200', () => m46.test(0), _ue);
    traps('test_201', () => m46.test(0x1), _ue);
    traps('test_202', () => m46.test(0x2), _ue);
    traps('test_203', () => m46.test(0x3), _ue);
    traps('test_204', () => m46.test(0x4), _ue);
    traps('test_205', () => m46.test(0x5), _ue);
    traps('test_206', () => m46.test(0x6), _ue);
    traps('test_207', () => m46.test(0x7), _ue);
    traps('test_208', () => m46.test(0x8), _ue);
    traps('test_209', () => m46.test(0x9), _ue);
    traps('test_210', () => m46.test(0xA), _ue);
    traps('test_211', () => m46.test(0xB), _ue);
    traps('test_212', () => m46.test(0xC), _ue);
    traps('test_213', () => m46.test(0xD), _ue);
    traps('test_214', () => m46.test(0xE), _ue);
    traps('test_215', () => m46.test(0xF), _ue);
    traps('test_216', () => m46.test(0x10), _ue);
    traps('test_217', () => m46.test(0x11), _ue);
    traps('test_218', () => m46.test(0x12), _ue);
    traps('test_219', () => m46.test(0x13), _ue);
    traps('test_220', () => m46.test(0x14), _ue);
    traps('test_221', () => m46.test(0x15), _ue);
    traps('test_222', () => m46.test(0x16), _ue);
    traps('test_223', () => m46.test(0x17), _ue);
    returns('test_224', () => m46.test(0x18), 0);
    returns('test_225', () => m46.test(0x19), 0x1);
    returns('test_226', () => m46.test(0x1A), 0x2);
    returns('test_227', () => m46.test(0x1B), 0x3);
    returns('test_228', () => m46.test(0x1C), 0x4);
    returns('test_229', () => m46.test(0x1D), 0x5);
    returns('test_230', () => m46.test(0x1E), 0x6);
    returns('test_231', () => m46.test(0x1F), 0x7);

    // module table_copy.47.dart (line 2587)
    var m47 = table_copy_47.TableCopy47Module();

    traps('run_6', () => m47.run(0x18, 0x15, 0x10), _oobta);
    traps('test_232', () => m47.test(0), _ue);
    traps('test_233', () => m47.test(0x1), _ue);
    traps('test_234', () => m47.test(0x2), _ue);
    traps('test_235', () => m47.test(0x3), _ue);
    traps('test_236', () => m47.test(0x4), _ue);
    traps('test_237', () => m47.test(0x5), _ue);
    traps('test_238', () => m47.test(0x6), _ue);
    traps('test_239', () => m47.test(0x7), _ue);
    traps('test_240', () => m47.test(0x8), _ue);
    traps('test_241', () => m47.test(0x9), _ue);
    traps('test_242', () => m47.test(0xA), _ue);
    traps('test_243', () => m47.test(0xB), _ue);
    traps('test_244', () => m47.test(0xC), _ue);
    traps('test_245', () => m47.test(0xD), _ue);
    traps('test_246', () => m47.test(0xE), _ue);
    traps('test_247', () => m47.test(0xF), _ue);
    traps('test_248', () => m47.test(0x10), _ue);
    traps('test_249', () => m47.test(0x11), _ue);
    traps('test_250', () => m47.test(0x12), _ue);
    traps('test_251', () => m47.test(0x13), _ue);
    traps('test_252', () => m47.test(0x14), _ue);
    returns('test_253', () => m47.test(0x15), 0);
    returns('test_254', () => m47.test(0x16), 0x1);
    returns('test_255', () => m47.test(0x17), 0x2);
    returns('test_256', () => m47.test(0x18), 0x3);
    returns('test_257', () => m47.test(0x19), 0x4);
    returns('test_258', () => m47.test(0x1A), 0x5);
    returns('test_259', () => m47.test(0x1B), 0x6);
    returns('test_260', () => m47.test(0x1C), 0x7);
    traps('test_261', () => m47.test(0x1D), _ue);
    traps('test_262', () => m47.test(0x1E), _ue);
    traps('test_263', () => m47.test(0x1F), _ue);

    // module table_copy.48.dart (line 2648)
    var m48 = table_copy_48.TableCopy48Module();

    traps('run_7', () => m48.run(0x15, 0x18, 0x10), _oobta);
    traps('test_264', () => m48.test(0), _ue);
    traps('test_265', () => m48.test(0x1), _ue);
    traps('test_266', () => m48.test(0x2), _ue);
    traps('test_267', () => m48.test(0x3), _ue);
    traps('test_268', () => m48.test(0x4), _ue);
    traps('test_269', () => m48.test(0x5), _ue);
    traps('test_270', () => m48.test(0x6), _ue);
    traps('test_271', () => m48.test(0x7), _ue);
    traps('test_272', () => m48.test(0x8), _ue);
    traps('test_273', () => m48.test(0x9), _ue);
    traps('test_274', () => m48.test(0xA), _ue);
    traps('test_275', () => m48.test(0xB), _ue);
    traps('test_276', () => m48.test(0xC), _ue);
    traps('test_277', () => m48.test(0xD), _ue);
    traps('test_278', () => m48.test(0xE), _ue);
    traps('test_279', () => m48.test(0xF), _ue);
    traps('test_280', () => m48.test(0x10), _ue);
    traps('test_281', () => m48.test(0x11), _ue);
    traps('test_282', () => m48.test(0x12), _ue);
    traps('test_283', () => m48.test(0x13), _ue);
    traps('test_284', () => m48.test(0x14), _ue);
    traps('test_285', () => m48.test(0x15), _ue);
    traps('test_286', () => m48.test(0x16), _ue);
    traps('test_287', () => m48.test(0x17), _ue);
    returns('test_288', () => m48.test(0x18), 0);
    returns('test_289', () => m48.test(0x19), 0x1);
    returns('test_290', () => m48.test(0x1A), 0x2);
    returns('test_291', () => m48.test(0x1B), 0x3);
    returns('test_292', () => m48.test(0x1C), 0x4);
    returns('test_293', () => m48.test(0x1D), 0x5);
    returns('test_294', () => m48.test(0x1E), 0x6);
    returns('test_295', () => m48.test(0x1F), 0x7);

    // module table_copy.49.dart (line 2709)
    var m49 = table_copy_49.TableCopy49Module();

    traps('run_8', () => m49.run(0x15, 0x15, 0x10), _oobta);
    traps('test_296', () => m49.test(0), _ue);
    traps('test_297', () => m49.test(0x1), _ue);
    traps('test_298', () => m49.test(0x2), _ue);
    traps('test_299', () => m49.test(0x3), _ue);
    traps('test_300', () => m49.test(0x4), _ue);
    traps('test_301', () => m49.test(0x5), _ue);
    traps('test_302', () => m49.test(0x6), _ue);
    traps('test_303', () => m49.test(0x7), _ue);
    traps('test_304', () => m49.test(0x8), _ue);
    traps('test_305', () => m49.test(0x9), _ue);
    traps('test_306', () => m49.test(0xA), _ue);
    traps('test_307', () => m49.test(0xB), _ue);
    traps('test_308', () => m49.test(0xC), _ue);
    traps('test_309', () => m49.test(0xD), _ue);
    traps('test_310', () => m49.test(0xE), _ue);
    traps('test_311', () => m49.test(0xF), _ue);
    traps('test_312', () => m49.test(0x10), _ue);
    traps('test_313', () => m49.test(0x11), _ue);
    traps('test_314', () => m49.test(0x12), _ue);
    traps('test_315', () => m49.test(0x13), _ue);
    traps('test_316', () => m49.test(0x14), _ue);
    returns('test_317', () => m49.test(0x15), 0);
    returns('test_318', () => m49.test(0x16), 0x1);
    returns('test_319', () => m49.test(0x17), 0x2);
    returns('test_320', () => m49.test(0x18), 0x3);
    returns('test_321', () => m49.test(0x19), 0x4);
    returns('test_322', () => m49.test(0x1A), 0x5);
    returns('test_323', () => m49.test(0x1B), 0x6);
    returns('test_324', () => m49.test(0x1C), 0x7);
    returns('test_325', () => m49.test(0x1D), 0x8);
    returns('test_326', () => m49.test(0x1E), 0x9);
    returns('test_327', () => m49.test(0x1F), 0xA);

    // module table_copy.50.dart (line 2770)
    var m50 = table_copy_50.TableCopy50Module();

    traps('run_9', () => m50.run(0, 0x70, $i32('FFFFFFE0')), _oobta);
    traps('test_328', () => m50.test(0), _ue);
    traps('test_329', () => m50.test(0x1), _ue);
    traps('test_330', () => m50.test(0x2), _ue);
    traps('test_331', () => m50.test(0x3), _ue);
    traps('test_332', () => m50.test(0x4), _ue);
    traps('test_333', () => m50.test(0x5), _ue);
    traps('test_334', () => m50.test(0x6), _ue);
    traps('test_335', () => m50.test(0x7), _ue);
    traps('test_336', () => m50.test(0x8), _ue);
    traps('test_337', () => m50.test(0x9), _ue);
    traps('test_338', () => m50.test(0xA), _ue);
    traps('test_339', () => m50.test(0xB), _ue);
    traps('test_340', () => m50.test(0xC), _ue);
    traps('test_341', () => m50.test(0xD), _ue);
    traps('test_342', () => m50.test(0xE), _ue);
    traps('test_343', () => m50.test(0xF), _ue);
    traps('test_344', () => m50.test(0x10), _ue);
    traps('test_345', () => m50.test(0x11), _ue);
    traps('test_346', () => m50.test(0x12), _ue);
    traps('test_347', () => m50.test(0x13), _ue);
    traps('test_348', () => m50.test(0x14), _ue);
    traps('test_349', () => m50.test(0x15), _ue);
    traps('test_350', () => m50.test(0x16), _ue);
    traps('test_351', () => m50.test(0x17), _ue);
    traps('test_352', () => m50.test(0x18), _ue);
    traps('test_353', () => m50.test(0x19), _ue);
    traps('test_354', () => m50.test(0x1A), _ue);
    traps('test_355', () => m50.test(0x1B), _ue);
    traps('test_356', () => m50.test(0x1C), _ue);
    traps('test_357', () => m50.test(0x1D), _ue);
    traps('test_358', () => m50.test(0x1E), _ue);
    traps('test_359', () => m50.test(0x1F), _ue);
    traps('test_360', () => m50.test(0x20), _ue);
    traps('test_361', () => m50.test(0x21), _ue);
    traps('test_362', () => m50.test(0x22), _ue);
    traps('test_363', () => m50.test(0x23), _ue);
    traps('test_364', () => m50.test(0x24), _ue);
    traps('test_365', () => m50.test(0x25), _ue);
    traps('test_366', () => m50.test(0x26), _ue);
    traps('test_367', () => m50.test(0x27), _ue);
    traps('test_368', () => m50.test(0x28), _ue);
    traps('test_369', () => m50.test(0x29), _ue);
    traps('test_370', () => m50.test(0x2A), _ue);
    traps('test_371', () => m50.test(0x2B), _ue);
    traps('test_372', () => m50.test(0x2C), _ue);
    traps('test_373', () => m50.test(0x2D), _ue);
    traps('test_374', () => m50.test(0x2E), _ue);
    traps('test_375', () => m50.test(0x2F), _ue);
    traps('test_376', () => m50.test(0x30), _ue);
    traps('test_377', () => m50.test(0x31), _ue);
    traps('test_378', () => m50.test(0x32), _ue);
    traps('test_379', () => m50.test(0x33), _ue);
    traps('test_380', () => m50.test(0x34), _ue);
    traps('test_381', () => m50.test(0x35), _ue);
    traps('test_382', () => m50.test(0x36), _ue);
    traps('test_383', () => m50.test(0x37), _ue);
    traps('test_384', () => m50.test(0x38), _ue);
    traps('test_385', () => m50.test(0x39), _ue);
    traps('test_386', () => m50.test(0x3A), _ue);
    traps('test_387', () => m50.test(0x3B), _ue);
    traps('test_388', () => m50.test(0x3C), _ue);
    traps('test_389', () => m50.test(0x3D), _ue);
    traps('test_390', () => m50.test(0x3E), _ue);
    traps('test_391', () => m50.test(0x3F), _ue);
    traps('test_392', () => m50.test(0x40), _ue);
    traps('test_393', () => m50.test(0x41), _ue);
    traps('test_394', () => m50.test(0x42), _ue);
    traps('test_395', () => m50.test(0x43), _ue);
    traps('test_396', () => m50.test(0x44), _ue);
    traps('test_397', () => m50.test(0x45), _ue);
    traps('test_398', () => m50.test(0x46), _ue);
    traps('test_399', () => m50.test(0x47), _ue);
    traps('test_400', () => m50.test(0x48), _ue);
    traps('test_401', () => m50.test(0x49), _ue);
    traps('test_402', () => m50.test(0x4A), _ue);
    traps('test_403', () => m50.test(0x4B), _ue);
    traps('test_404', () => m50.test(0x4C), _ue);
    traps('test_405', () => m50.test(0x4D), _ue);
    traps('test_406', () => m50.test(0x4E), _ue);
    traps('test_407', () => m50.test(0x4F), _ue);
    traps('test_408', () => m50.test(0x50), _ue);
    traps('test_409', () => m50.test(0x51), _ue);
    traps('test_410', () => m50.test(0x52), _ue);
    traps('test_411', () => m50.test(0x53), _ue);
    traps('test_412', () => m50.test(0x54), _ue);
    traps('test_413', () => m50.test(0x55), _ue);
    traps('test_414', () => m50.test(0x56), _ue);
    traps('test_415', () => m50.test(0x57), _ue);
    traps('test_416', () => m50.test(0x58), _ue);
    traps('test_417', () => m50.test(0x59), _ue);
    traps('test_418', () => m50.test(0x5A), _ue);
    traps('test_419', () => m50.test(0x5B), _ue);
    traps('test_420', () => m50.test(0x5C), _ue);
    traps('test_421', () => m50.test(0x5D), _ue);
    traps('test_422', () => m50.test(0x5E), _ue);
    traps('test_423', () => m50.test(0x5F), _ue);
    traps('test_424', () => m50.test(0x60), _ue);
    traps('test_425', () => m50.test(0x61), _ue);
    traps('test_426', () => m50.test(0x62), _ue);
    traps('test_427', () => m50.test(0x63), _ue);
    traps('test_428', () => m50.test(0x64), _ue);
    traps('test_429', () => m50.test(0x65), _ue);
    traps('test_430', () => m50.test(0x66), _ue);
    traps('test_431', () => m50.test(0x67), _ue);
    traps('test_432', () => m50.test(0x68), _ue);
    traps('test_433', () => m50.test(0x69), _ue);
    traps('test_434', () => m50.test(0x6A), _ue);
    traps('test_435', () => m50.test(0x6B), _ue);
    traps('test_436', () => m50.test(0x6C), _ue);
    traps('test_437', () => m50.test(0x6D), _ue);
    traps('test_438', () => m50.test(0x6E), _ue);
    traps('test_439', () => m50.test(0x6F), _ue);
    returns('test_440', () => m50.test(0x70), 0);
    returns('test_441', () => m50.test(0x71), 0x1);
    returns('test_442', () => m50.test(0x72), 0x2);
    returns('test_443', () => m50.test(0x73), 0x3);
    returns('test_444', () => m50.test(0x74), 0x4);
    returns('test_445', () => m50.test(0x75), 0x5);
    returns('test_446', () => m50.test(0x76), 0x6);
    returns('test_447', () => m50.test(0x77), 0x7);
    returns('test_448', () => m50.test(0x78), 0x8);
    returns('test_449', () => m50.test(0x79), 0x9);
    returns('test_450', () => m50.test(0x7A), 0xA);
    returns('test_451', () => m50.test(0x7B), 0xB);
    returns('test_452', () => m50.test(0x7C), 0xC);
    returns('test_453', () => m50.test(0x7D), 0xD);
    returns('test_454', () => m50.test(0x7E), 0xE);
    returns('test_455', () => m50.test(0x7F), 0xF);

    // module table_copy.51.dart (line 2927)
    var m51 = table_copy_51.TableCopy51Module();

    traps('run_10', () => m51.run(0x70, 0, $i32('FFFFFFE0')), _oobta);
    returns('test_456', () => m51.test(0), 0);
    returns('test_457', () => m51.test(0x1), 0x1);
    returns('test_458', () => m51.test(0x2), 0x2);
    returns('test_459', () => m51.test(0x3), 0x3);
    returns('test_460', () => m51.test(0x4), 0x4);
    returns('test_461', () => m51.test(0x5), 0x5);
    returns('test_462', () => m51.test(0x6), 0x6);
    returns('test_463', () => m51.test(0x7), 0x7);
    returns('test_464', () => m51.test(0x8), 0x8);
    returns('test_465', () => m51.test(0x9), 0x9);
    returns('test_466', () => m51.test(0xA), 0xA);
    returns('test_467', () => m51.test(0xB), 0xB);
    returns('test_468', () => m51.test(0xC), 0xC);
    returns('test_469', () => m51.test(0xD), 0xD);
    returns('test_470', () => m51.test(0xE), 0xE);
    returns('test_471', () => m51.test(0xF), 0xF);
    traps('test_472', () => m51.test(0x10), _ue);
    traps('test_473', () => m51.test(0x11), _ue);
    traps('test_474', () => m51.test(0x12), _ue);
    traps('test_475', () => m51.test(0x13), _ue);
    traps('test_476', () => m51.test(0x14), _ue);
    traps('test_477', () => m51.test(0x15), _ue);
    traps('test_478', () => m51.test(0x16), _ue);
    traps('test_479', () => m51.test(0x17), _ue);
    traps('test_480', () => m51.test(0x18), _ue);
    traps('test_481', () => m51.test(0x19), _ue);
    traps('test_482', () => m51.test(0x1A), _ue);
    traps('test_483', () => m51.test(0x1B), _ue);
    traps('test_484', () => m51.test(0x1C), _ue);
    traps('test_485', () => m51.test(0x1D), _ue);
    traps('test_486', () => m51.test(0x1E), _ue);
    traps('test_487', () => m51.test(0x1F), _ue);
    traps('test_488', () => m51.test(0x20), _ue);
    traps('test_489', () => m51.test(0x21), _ue);
    traps('test_490', () => m51.test(0x22), _ue);
    traps('test_491', () => m51.test(0x23), _ue);
    traps('test_492', () => m51.test(0x24), _ue);
    traps('test_493', () => m51.test(0x25), _ue);
    traps('test_494', () => m51.test(0x26), _ue);
    traps('test_495', () => m51.test(0x27), _ue);
    traps('test_496', () => m51.test(0x28), _ue);
    traps('test_497', () => m51.test(0x29), _ue);
    traps('test_498', () => m51.test(0x2A), _ue);
    traps('test_499', () => m51.test(0x2B), _ue);
    traps('test_500', () => m51.test(0x2C), _ue);
    traps('test_501', () => m51.test(0x2D), _ue);
    traps('test_502', () => m51.test(0x2E), _ue);
    traps('test_503', () => m51.test(0x2F), _ue);
    traps('test_504', () => m51.test(0x30), _ue);
    traps('test_505', () => m51.test(0x31), _ue);
    traps('test_506', () => m51.test(0x32), _ue);
    traps('test_507', () => m51.test(0x33), _ue);
    traps('test_508', () => m51.test(0x34), _ue);
    traps('test_509', () => m51.test(0x35), _ue);
    traps('test_510', () => m51.test(0x36), _ue);
    traps('test_511', () => m51.test(0x37), _ue);
    traps('test_512', () => m51.test(0x38), _ue);
    traps('test_513', () => m51.test(0x39), _ue);
    traps('test_514', () => m51.test(0x3A), _ue);
    traps('test_515', () => m51.test(0x3B), _ue);
    traps('test_516', () => m51.test(0x3C), _ue);
    traps('test_517', () => m51.test(0x3D), _ue);
    traps('test_518', () => m51.test(0x3E), _ue);
    traps('test_519', () => m51.test(0x3F), _ue);
    traps('test_520', () => m51.test(0x40), _ue);
    traps('test_521', () => m51.test(0x41), _ue);
    traps('test_522', () => m51.test(0x42), _ue);
    traps('test_523', () => m51.test(0x43), _ue);
    traps('test_524', () => m51.test(0x44), _ue);
    traps('test_525', () => m51.test(0x45), _ue);
    traps('test_526', () => m51.test(0x46), _ue);
    traps('test_527', () => m51.test(0x47), _ue);
    traps('test_528', () => m51.test(0x48), _ue);
    traps('test_529', () => m51.test(0x49), _ue);
    traps('test_530', () => m51.test(0x4A), _ue);
    traps('test_531', () => m51.test(0x4B), _ue);
    traps('test_532', () => m51.test(0x4C), _ue);
    traps('test_533', () => m51.test(0x4D), _ue);
    traps('test_534', () => m51.test(0x4E), _ue);
    traps('test_535', () => m51.test(0x4F), _ue);
    traps('test_536', () => m51.test(0x50), _ue);
    traps('test_537', () => m51.test(0x51), _ue);
    traps('test_538', () => m51.test(0x52), _ue);
    traps('test_539', () => m51.test(0x53), _ue);
    traps('test_540', () => m51.test(0x54), _ue);
    traps('test_541', () => m51.test(0x55), _ue);
    traps('test_542', () => m51.test(0x56), _ue);
    traps('test_543', () => m51.test(0x57), _ue);
    traps('test_544', () => m51.test(0x58), _ue);
    traps('test_545', () => m51.test(0x59), _ue);
    traps('test_546', () => m51.test(0x5A), _ue);
    traps('test_547', () => m51.test(0x5B), _ue);
    traps('test_548', () => m51.test(0x5C), _ue);
    traps('test_549', () => m51.test(0x5D), _ue);
    traps('test_550', () => m51.test(0x5E), _ue);
    traps('test_551', () => m51.test(0x5F), _ue);
    traps('test_552', () => m51.test(0x60), _ue);
    traps('test_553', () => m51.test(0x61), _ue);
    traps('test_554', () => m51.test(0x62), _ue);
    traps('test_555', () => m51.test(0x63), _ue);
    traps('test_556', () => m51.test(0x64), _ue);
    traps('test_557', () => m51.test(0x65), _ue);
    traps('test_558', () => m51.test(0x66), _ue);
    traps('test_559', () => m51.test(0x67), _ue);
    traps('test_560', () => m51.test(0x68), _ue);
    traps('test_561', () => m51.test(0x69), _ue);
    traps('test_562', () => m51.test(0x6A), _ue);
    traps('test_563', () => m51.test(0x6B), _ue);
    traps('test_564', () => m51.test(0x6C), _ue);
    traps('test_565', () => m51.test(0x6D), _ue);
    traps('test_566', () => m51.test(0x6E), _ue);
    traps('test_567', () => m51.test(0x6F), _ue);
    traps('test_568', () => m51.test(0x70), _ue);
    traps('test_569', () => m51.test(0x71), _ue);
    traps('test_570', () => m51.test(0x72), _ue);
    traps('test_571', () => m51.test(0x73), _ue);
    traps('test_572', () => m51.test(0x74), _ue);
    traps('test_573', () => m51.test(0x75), _ue);
    traps('test_574', () => m51.test(0x76), _ue);
    traps('test_575', () => m51.test(0x77), _ue);
    traps('test_576', () => m51.test(0x78), _ue);
    traps('test_577', () => m51.test(0x79), _ue);
    traps('test_578', () => m51.test(0x7A), _ue);
    traps('test_579', () => m51.test(0x7B), _ue);
    traps('test_580', () => m51.test(0x7C), _ue);
    traps('test_581', () => m51.test(0x7D), _ue);
    traps('test_582', () => m51.test(0x7E), _ue);
    traps('test_583', () => m51.test(0x7F), _ue);
  });
}

class Wrapper0 implements table_copy_1.AImports {
  Wrapper0(this.delegate);

  final table_copy_0.TableCopy0Module delegate;

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

class Wrapper1 implements table_copy_2.AImports {
  Wrapper1(this.delegate);

  final table_copy_0.TableCopy0Module delegate;

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

class Wrapper2 implements table_copy_3.AImports {
  Wrapper2(this.delegate);

  final table_copy_0.TableCopy0Module delegate;

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

class Wrapper3 implements table_copy_4.AImports {
  Wrapper3(this.delegate);

  final table_copy_0.TableCopy0Module delegate;

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

class Wrapper4 implements table_copy_5.AImports {
  Wrapper4(this.delegate);

  final table_copy_0.TableCopy0Module delegate;

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

class Wrapper5 implements table_copy_6.AImports {
  Wrapper5(this.delegate);

  final table_copy_0.TableCopy0Module delegate;

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

class Wrapper6 implements table_copy_7.AImports {
  Wrapper6(this.delegate);

  final table_copy_0.TableCopy0Module delegate;

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

class Wrapper7 implements table_copy_8.AImports {
  Wrapper7(this.delegate);

  final table_copy_0.TableCopy0Module delegate;

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

class Wrapper8 implements table_copy_9.AImports {
  Wrapper8(this.delegate);

  final table_copy_0.TableCopy0Module delegate;

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

class Wrapper9 implements table_copy_10.AImports {
  Wrapper9(this.delegate);

  final table_copy_0.TableCopy0Module delegate;

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

class Wrapper10 implements table_copy_11.AImports {
  Wrapper10(this.delegate);

  final table_copy_0.TableCopy0Module delegate;

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

class Wrapper11 implements table_copy_12.AImports {
  Wrapper11(this.delegate);

  final table_copy_0.TableCopy0Module delegate;

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

class Wrapper12 implements table_copy_13.AImports {
  Wrapper12(this.delegate);

  final table_copy_0.TableCopy0Module delegate;

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

class Wrapper13 implements table_copy_14.AImports {
  Wrapper13(this.delegate);

  final table_copy_0.TableCopy0Module delegate;

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

class Wrapper14 implements table_copy_15.AImports {
  Wrapper14(this.delegate);

  final table_copy_0.TableCopy0Module delegate;

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

class Wrapper15 implements table_copy_16.AImports {
  Wrapper15(this.delegate);

  final table_copy_0.TableCopy0Module delegate;

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

class Wrapper16 implements table_copy_17.AImports {
  Wrapper16(this.delegate);

  final table_copy_0.TableCopy0Module delegate;

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

class Wrapper17 implements table_copy_18.AImports {
  Wrapper17(this.delegate);

  final table_copy_0.TableCopy0Module delegate;

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
