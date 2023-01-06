// Generated from spec/test/core/memory_init.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'memory_init.0.dart' as memory_init_0;
import 'memory_init.1.dart' as memory_init_1;
import 'memory_init.11.dart' as memory_init_11;
import 'memory_init.12.dart' as memory_init_12;
import 'memory_init.13.dart' as memory_init_13;
import 'memory_init.14.dart' as memory_init_14;
import 'memory_init.15.dart' as memory_init_15;
import 'memory_init.16.dart' as memory_init_16;
import 'memory_init.17.dart' as memory_init_17;
import 'memory_init.18.dart' as memory_init_18;
import 'memory_init.19.dart' as memory_init_19;
import 'memory_init.2.dart' as memory_init_2;
import 'memory_init.20.dart' as memory_init_20;
import 'memory_init.3.dart' as memory_init_3;
import 'memory_init.6.dart' as memory_init_6;
import 'memory_init.7.dart' as memory_init_7;
import 'memory_init.8.dart' as memory_init_8;
import 'memory_init.84.dart' as memory_init_84;
import 'memory_init.85.dart' as memory_init_85;
import 'memory_init.86.dart' as memory_init_86;
import 'memory_init.87.dart' as memory_init_87;
import 'memory_init.88.dart' as memory_init_88;
import 'memory_init.89.dart' as memory_init_89;
import 'memory_init.90.dart' as memory_init_90;

const String _oobma = 'out of bounds memory access';

void main() {
  group('memory_init', () {
    // module memory_init.0.dart (line 6)
    var m0 = memory_init_0.MemoryInit0Module();

    invoke('test_0', () => m0.test());
    returns('load8_u_0', () => m0.load8_u(0), 0);
    returns('load8_u_1', () => m0.load8_u(0x1), 0);
    returns('load8_u_2', () => m0.load8_u(0x2), 0x3);
    returns('load8_u_3', () => m0.load8_u(0x3), 0x1);
    returns('load8_u_4', () => m0.load8_u(0x4), 0x4);
    returns('load8_u_5', () => m0.load8_u(0x5), 0x1);
    returns('load8_u_6', () => m0.load8_u(0x6), 0);
    returns('load8_u_7', () => m0.load8_u(0x7), 0);
    returns('load8_u_8', () => m0.load8_u(0x8), 0);
    returns('load8_u_9', () => m0.load8_u(0x9), 0);
    returns('load8_u_10', () => m0.load8_u(0xA), 0);
    returns('load8_u_11', () => m0.load8_u(0xB), 0);
    returns('load8_u_12', () => m0.load8_u(0xC), 0x7);
    returns('load8_u_13', () => m0.load8_u(0xD), 0x5);
    returns('load8_u_14', () => m0.load8_u(0xE), 0x2);
    returns('load8_u_15', () => m0.load8_u(0xF), 0x3);
    returns('load8_u_16', () => m0.load8_u(0x10), 0x6);
    returns('load8_u_17', () => m0.load8_u(0x11), 0);
    returns('load8_u_18', () => m0.load8_u(0x12), 0);
    returns('load8_u_19', () => m0.load8_u(0x13), 0);
    returns('load8_u_20', () => m0.load8_u(0x14), 0);
    returns('load8_u_21', () => m0.load8_u(0x15), 0);
    returns('load8_u_22', () => m0.load8_u(0x16), 0);
    returns('load8_u_23', () => m0.load8_u(0x17), 0);
    returns('load8_u_24', () => m0.load8_u(0x18), 0);
    returns('load8_u_25', () => m0.load8_u(0x19), 0);
    returns('load8_u_26', () => m0.load8_u(0x1A), 0);
    returns('load8_u_27', () => m0.load8_u(0x1B), 0);
    returns('load8_u_28', () => m0.load8_u(0x1C), 0);
    returns('load8_u_29', () => m0.load8_u(0x1D), 0);

    // module memory_init.1.dart (line 50)
    var m1 = memory_init_1.MemoryInit1Module();

    invoke('test_1', () => m1.test());
    returns('load8_u_30', () => m1.load8_u(0), 0);
    returns('load8_u_31', () => m1.load8_u(0x1), 0);
    returns('load8_u_32', () => m1.load8_u(0x2), 0x3);
    returns('load8_u_33', () => m1.load8_u(0x3), 0x1);
    returns('load8_u_34', () => m1.load8_u(0x4), 0x4);
    returns('load8_u_35', () => m1.load8_u(0x5), 0x1);
    returns('load8_u_36', () => m1.load8_u(0x6), 0);
    returns('load8_u_37', () => m1.load8_u(0x7), 0x2);
    returns('load8_u_38', () => m1.load8_u(0x8), 0x7);
    returns('load8_u_39', () => m1.load8_u(0x9), 0x1);
    returns('load8_u_40', () => m1.load8_u(0xA), 0x8);
    returns('load8_u_41', () => m1.load8_u(0xB), 0);
    returns('load8_u_42', () => m1.load8_u(0xC), 0x7);
    returns('load8_u_43', () => m1.load8_u(0xD), 0x5);
    returns('load8_u_44', () => m1.load8_u(0xE), 0x2);
    returns('load8_u_45', () => m1.load8_u(0xF), 0x3);
    returns('load8_u_46', () => m1.load8_u(0x10), 0x6);
    returns('load8_u_47', () => m1.load8_u(0x11), 0);
    returns('load8_u_48', () => m1.load8_u(0x12), 0);
    returns('load8_u_49', () => m1.load8_u(0x13), 0);
    returns('load8_u_50', () => m1.load8_u(0x14), 0);
    returns('load8_u_51', () => m1.load8_u(0x15), 0);
    returns('load8_u_52', () => m1.load8_u(0x16), 0);
    returns('load8_u_53', () => m1.load8_u(0x17), 0);
    returns('load8_u_54', () => m1.load8_u(0x18), 0);
    returns('load8_u_55', () => m1.load8_u(0x19), 0);
    returns('load8_u_56', () => m1.load8_u(0x1A), 0);
    returns('load8_u_57', () => m1.load8_u(0x1B), 0);
    returns('load8_u_58', () => m1.load8_u(0x1C), 0);
    returns('load8_u_59', () => m1.load8_u(0x1D), 0);

    // module memory_init.2.dart (line 94)
    var m2 = memory_init_2.MemoryInit2Module();

    invoke('test_2', () => m2.test());
    returns('load8_u_60', () => m2.load8_u(0), 0);
    returns('load8_u_61', () => m2.load8_u(0x1), 0);
    returns('load8_u_62', () => m2.load8_u(0x2), 0x3);
    returns('load8_u_63', () => m2.load8_u(0x3), 0x1);
    returns('load8_u_64', () => m2.load8_u(0x4), 0x4);
    returns('load8_u_65', () => m2.load8_u(0x5), 0x1);
    returns('load8_u_66', () => m2.load8_u(0x6), 0);
    returns('load8_u_67', () => m2.load8_u(0x7), 0);
    returns('load8_u_68', () => m2.load8_u(0x8), 0);
    returns('load8_u_69', () => m2.load8_u(0x9), 0);
    returns('load8_u_70', () => m2.load8_u(0xA), 0);
    returns('load8_u_71', () => m2.load8_u(0xB), 0);
    returns('load8_u_72', () => m2.load8_u(0xC), 0x7);
    returns('load8_u_73', () => m2.load8_u(0xD), 0x5);
    returns('load8_u_74', () => m2.load8_u(0xE), 0x2);
    returns('load8_u_75', () => m2.load8_u(0xF), 0x9);
    returns('load8_u_76', () => m2.load8_u(0x10), 0x2);
    returns('load8_u_77', () => m2.load8_u(0x11), 0x7);
    returns('load8_u_78', () => m2.load8_u(0x12), 0);
    returns('load8_u_79', () => m2.load8_u(0x13), 0);
    returns('load8_u_80', () => m2.load8_u(0x14), 0);
    returns('load8_u_81', () => m2.load8_u(0x15), 0);
    returns('load8_u_82', () => m2.load8_u(0x16), 0);
    returns('load8_u_83', () => m2.load8_u(0x17), 0);
    returns('load8_u_84', () => m2.load8_u(0x18), 0);
    returns('load8_u_85', () => m2.load8_u(0x19), 0);
    returns('load8_u_86', () => m2.load8_u(0x1A), 0);
    returns('load8_u_87', () => m2.load8_u(0x1B), 0);
    returns('load8_u_88', () => m2.load8_u(0x1C), 0);
    returns('load8_u_89', () => m2.load8_u(0x1D), 0);

    // module memory_init.3.dart (line 138)
    var m3 = memory_init_3.MemoryInit3Module();

    invoke('test_3', () => m3.test());
    returns('load8_u_90', () => m3.load8_u(0), 0);
    returns('load8_u_91', () => m3.load8_u(0x1), 0);
    returns('load8_u_92', () => m3.load8_u(0x2), 0x3);
    returns('load8_u_93', () => m3.load8_u(0x3), 0x1);
    returns('load8_u_94', () => m3.load8_u(0x4), 0x4);
    returns('load8_u_95', () => m3.load8_u(0x5), 0x1);
    returns('load8_u_96', () => m3.load8_u(0x6), 0);
    returns('load8_u_97', () => m3.load8_u(0x7), 0x2);
    returns('load8_u_98', () => m3.load8_u(0x8), 0x7);
    returns('load8_u_99', () => m3.load8_u(0x9), 0x1);
    returns('load8_u_100', () => m3.load8_u(0xA), 0x8);
    returns('load8_u_101', () => m3.load8_u(0xB), 0);
    returns('load8_u_102', () => m3.load8_u(0xC), 0x7);
    returns('load8_u_103', () => m3.load8_u(0xD), 0);
    returns('load8_u_104', () => m3.load8_u(0xE), 0x7);
    returns('load8_u_105', () => m3.load8_u(0xF), 0x5);
    returns('load8_u_106', () => m3.load8_u(0x10), 0x2);
    returns('load8_u_107', () => m3.load8_u(0x11), 0x7);
    returns('load8_u_108', () => m3.load8_u(0x12), 0);
    returns('load8_u_109', () => m3.load8_u(0x13), 0x9);
    returns('load8_u_110', () => m3.load8_u(0x14), 0);
    returns('load8_u_111', () => m3.load8_u(0x15), 0x7);
    returns('load8_u_112', () => m3.load8_u(0x16), 0);
    returns('load8_u_113', () => m3.load8_u(0x17), 0x8);
    returns('load8_u_114', () => m3.load8_u(0x18), 0x8);
    returns('load8_u_115', () => m3.load8_u(0x19), 0);
    returns('load8_u_116', () => m3.load8_u(0x1A), 0);
    returns('load8_u_117', () => m3.load8_u(0x1B), 0);
    returns('load8_u_118', () => m3.load8_u(0x1C), 0);
    returns('load8_u_119', () => m3.load8_u(0x1D), 0);

    // module memory_init.6.dart (line 203)
    var m4 = memory_init_6.MemoryInit6Module();

    invoke('test_4', () => m4.test());

    // module memory_init.7.dart (line 211)
    var m5 = memory_init_7.MemoryInit7Module();

    traps('test_5', () => m5.test(), _oobma);

    // module memory_init.8.dart (line 219)
    var m6 = memory_init_8.MemoryInit8Module();

    traps('test_6', () => m6.test(), _oobma);

    // module memory_init.11.dart (line 240)
    var m7 = memory_init_11.MemoryInit11Module();

    invoke('test_7', () => m7.test());

    // module memory_init.12.dart (line 248)
    var m8 = memory_init_12.MemoryInit12Module();

    traps('test_8', () => m8.test(), _oobma);

    // module memory_init.13.dart (line 255)
    var m9 = memory_init_13.MemoryInit13Module();

    traps('test_9', () => m9.test(), _oobma);

    // module memory_init.14.dart (line 262)
    var m10 = memory_init_14.MemoryInit14Module();

    traps('test_10', () => m10.test(), _oobma);

    // module memory_init.15.dart (line 269)
    var m11 = memory_init_15.MemoryInit15Module();

    traps('test_11', () => m11.test(), _oobma);

    // module memory_init.16.dart (line 276)
    var m12 = memory_init_16.MemoryInit16Module();

    invoke('test_12', () => m12.test());

    // module memory_init.17.dart (line 283)
    var m13 = memory_init_17.MemoryInit17Module();

    traps('test_13', () => m13.test(), _oobma);

    // module memory_init.18.dart (line 290)
    var m14 = memory_init_18.MemoryInit18Module();

    invoke('test_14', () => m14.test());

    // module memory_init.19.dart (line 297)
    var m15 = memory_init_19.MemoryInit19Module();

    invoke('test_15', () => m15.test());

    // module memory_init.20.dart (line 304)
    var m16 = memory_init_20.MemoryInit20Module();

    traps('test_16', () => m16.test(), _oobma);

    // module memory_init.84.dart (line 815)
    var m17 = memory_init_84.MemoryInit84Module();

    traps('run_0', () => m17.run(0xFFF8, 0x10), _oobma);
    returns('checkRange_0', () => m17.checkRange(0, 0x1, 0), $i32('FFFFFFFF'));

    // module memory_init.85.dart (line 838)
    var m18 = memory_init_85.MemoryInit85Module();

    traps('run_1', () => m18.run(0xFFF7, 0x10), _oobma);
    returns('checkRange_1', () => m18.checkRange(0, 0x1, 0), $i32('FFFFFFFF'));

    // module memory_init.86.dart (line 861)
    var m19 = memory_init_86.MemoryInit86Module();

    traps('run_2', () => m19.run(0xFFC0, 0x1E), _oobma);
    returns('checkRange_2', () => m19.checkRange(0, 0x1, 0), $i32('FFFFFFFF'));

    // module memory_init.87.dart (line 884)
    var m20 = memory_init_87.MemoryInit87Module();

    traps('run_3', () => m20.run(0xFFC1, 0x1F), _oobma);
    returns('checkRange_3', () => m20.checkRange(0, 0x1, 0), $i32('FFFFFFFF'));

    // module memory_init.88.dart (line 907)
    var m21 = memory_init_88.MemoryInit88Module();

    traps('run_4', () => m21.run(0xFFF8, $i32('FFFFFF00')), _oobma);
    returns('checkRange_4', () => m21.checkRange(0, 0x1, 0), $i32('FFFFFFFF'));

    // module memory_init.89.dart (line 930)
    var m22 = memory_init_89.MemoryInit89Module();

    traps('run_5', () => m22.run(0, $i32('FFFFFFFC')), _oobma);
    returns('checkRange_5', () => m22.checkRange(0, 0x1, 0), $i32('FFFFFFFF'));

    // module memory_init.90.dart (line 954)
    var m23 = memory_init_90.MemoryInit90Module();
  });
}
