// Generated from spec/test/core/f32_bitwise.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'f32_bitwise.0.dart' as f32_bitwise_0;

void main() {
  group('f32_bitwise', () {
    // module f32_bitwise.0.dart (line 4)
    var m0 = f32_bitwise_0.F32Bitwise0Module();

    returns(
      'copysign_0',
      () => m0.copysign($f32('80000000'), $f32('80000000')),
      $f32('80000000'),
    );
    returns(
      'copysign_1',
      () => m0.copysign($f32('80000000'), $f32('0')),
      $f32('0'),
    );
    returns(
      'copysign_2',
      () => m0.copysign($f32('0'), $f32('80000000')),
      $f32('80000000'),
    );
    returns('copysign_3', () => m0.copysign($f32('0'), $f32('0')), $f32('0'));
    returns(
      'copysign_4',
      () => m0.copysign($f32('80000000'), $f32('80000001')),
      $f32('80000000'),
    );
    returns(
      'copysign_5',
      () => m0.copysign($f32('80000000'), $f32('1')),
      $f32('0'),
    );
    returns(
      'copysign_6',
      () => m0.copysign($f32('0'), $f32('80000001')),
      $f32('80000000'),
    );
    returns('copysign_7', () => m0.copysign($f32('0'), $f32('1')), $f32('0'));
    returns(
      'copysign_8',
      () => m0.copysign($f32('80000000'), $f32('80800000')),
      $f32('80000000'),
    );
    returns(
      'copysign_9',
      () => m0.copysign($f32('80000000'), $f32('800000')),
      $f32('0'),
    );
    returns(
      'copysign_10',
      () => m0.copysign($f32('0'), $f32('80800000')),
      $f32('80000000'),
    );
    returns(
      'copysign_11',
      () => m0.copysign($f32('0'), $f32('800000')),
      $f32('0'),
    );
    returns(
      'copysign_12',
      () => m0.copysign($f32('80000000'), $f32('BF000000')),
      $f32('80000000'),
    );
    returns(
      'copysign_13',
      () => m0.copysign($f32('80000000'), $f32('3F000000')),
      $f32('0'),
    );
    returns(
      'copysign_14',
      () => m0.copysign($f32('0'), $f32('BF000000')),
      $f32('80000000'),
    );
    returns(
      'copysign_15',
      () => m0.copysign($f32('0'), $f32('3F000000')),
      $f32('0'),
    );
    returns(
      'copysign_16',
      () => m0.copysign($f32('80000000'), $f32('BF800000')),
      $f32('80000000'),
    );
    returns(
      'copysign_17',
      () => m0.copysign($f32('80000000'), $f32('3F800000')),
      $f32('0'),
    );
    returns(
      'copysign_18',
      () => m0.copysign($f32('0'), $f32('BF800000')),
      $f32('80000000'),
    );
    returns(
      'copysign_19',
      () => m0.copysign($f32('0'), $f32('3F800000')),
      $f32('0'),
    );
    returns(
      'copysign_20',
      () => m0.copysign($f32('80000000'), $f32('C0C90FDB')),
      $f32('80000000'),
    );
    returns(
      'copysign_21',
      () => m0.copysign($f32('80000000'), $f32('40C90FDB')),
      $f32('0'),
    );
    returns(
      'copysign_22',
      () => m0.copysign($f32('0'), $f32('C0C90FDB')),
      $f32('80000000'),
    );
    returns(
      'copysign_23',
      () => m0.copysign($f32('0'), $f32('40C90FDB')),
      $f32('0'),
    );
    returns(
      'copysign_24',
      () => m0.copysign($f32('80000000'), $f32('FF7FFFFF')),
      $f32('80000000'),
    );
    returns(
      'copysign_25',
      () => m0.copysign($f32('80000000'), $f32('7F7FFFFF')),
      $f32('0'),
    );
    returns(
      'copysign_26',
      () => m0.copysign($f32('0'), $f32('FF7FFFFF')),
      $f32('80000000'),
    );
    returns(
      'copysign_27',
      () => m0.copysign($f32('0'), $f32('7F7FFFFF')),
      $f32('0'),
    );
    returns(
      'copysign_28',
      () => m0.copysign($f32('80000000'), $f32('FF800000')),
      $f32('80000000'),
    );
    returns(
      'copysign_29',
      () => m0.copysign($f32('80000000'), $f32('7F800000')),
      $f32('0'),
    );
    returns(
      'copysign_30',
      () => m0.copysign($f32('0'), $f32('FF800000')),
      $f32('80000000'),
    );
    returns(
      'copysign_31',
      () => m0.copysign($f32('0'), $f32('7F800000')),
      $f32('0'),
    );
    returns(
      'copysign_32',
      () => m0.copysign($f32('80000000'), $f32('FFC00000')),
      $f32('80000000'),
    );
    returns(
      'copysign_33',
      () => m0.copysign($f32('80000000'), $f32('7FC00000')),
      $f32('0'),
    );
    returns(
      'copysign_34',
      () => m0.copysign($f32('0'), $f32('FFC00000')),
      $f32('80000000'),
    );
    returns(
      'copysign_35',
      () => m0.copysign($f32('0'), $f32('7FC00000')),
      $f32('0'),
    );
    returns(
      'copysign_36',
      () => m0.copysign($f32('80000001'), $f32('80000000')),
      $f32('80000001'),
    );
    returns(
      'copysign_37',
      () => m0.copysign($f32('80000001'), $f32('0')),
      $f32('1'),
    );
    returns(
      'copysign_38',
      () => m0.copysign($f32('1'), $f32('80000000')),
      $f32('80000001'),
    );
    returns('copysign_39', () => m0.copysign($f32('1'), $f32('0')), $f32('1'));
    returns(
      'copysign_40',
      () => m0.copysign($f32('80000001'), $f32('80000001')),
      $f32('80000001'),
    );
    returns(
      'copysign_41',
      () => m0.copysign($f32('80000001'), $f32('1')),
      $f32('1'),
    );
    returns(
      'copysign_42',
      () => m0.copysign($f32('1'), $f32('80000001')),
      $f32('80000001'),
    );
    returns('copysign_43', () => m0.copysign($f32('1'), $f32('1')), $f32('1'));
    returns(
      'copysign_44',
      () => m0.copysign($f32('80000001'), $f32('80800000')),
      $f32('80000001'),
    );
    returns(
      'copysign_45',
      () => m0.copysign($f32('80000001'), $f32('800000')),
      $f32('1'),
    );
    returns(
      'copysign_46',
      () => m0.copysign($f32('1'), $f32('80800000')),
      $f32('80000001'),
    );
    returns(
      'copysign_47',
      () => m0.copysign($f32('1'), $f32('800000')),
      $f32('1'),
    );
    returns(
      'copysign_48',
      () => m0.copysign($f32('80000001'), $f32('BF000000')),
      $f32('80000001'),
    );
    returns(
      'copysign_49',
      () => m0.copysign($f32('80000001'), $f32('3F000000')),
      $f32('1'),
    );
    returns(
      'copysign_50',
      () => m0.copysign($f32('1'), $f32('BF000000')),
      $f32('80000001'),
    );
    returns(
      'copysign_51',
      () => m0.copysign($f32('1'), $f32('3F000000')),
      $f32('1'),
    );
    returns(
      'copysign_52',
      () => m0.copysign($f32('80000001'), $f32('BF800000')),
      $f32('80000001'),
    );
    returns(
      'copysign_53',
      () => m0.copysign($f32('80000001'), $f32('3F800000')),
      $f32('1'),
    );
    returns(
      'copysign_54',
      () => m0.copysign($f32('1'), $f32('BF800000')),
      $f32('80000001'),
    );
    returns(
      'copysign_55',
      () => m0.copysign($f32('1'), $f32('3F800000')),
      $f32('1'),
    );
    returns(
      'copysign_56',
      () => m0.copysign($f32('80000001'), $f32('C0C90FDB')),
      $f32('80000001'),
    );
    returns(
      'copysign_57',
      () => m0.copysign($f32('80000001'), $f32('40C90FDB')),
      $f32('1'),
    );
    returns(
      'copysign_58',
      () => m0.copysign($f32('1'), $f32('C0C90FDB')),
      $f32('80000001'),
    );
    returns(
      'copysign_59',
      () => m0.copysign($f32('1'), $f32('40C90FDB')),
      $f32('1'),
    );
    returns(
      'copysign_60',
      () => m0.copysign($f32('80000001'), $f32('FF7FFFFF')),
      $f32('80000001'),
    );
    returns(
      'copysign_61',
      () => m0.copysign($f32('80000001'), $f32('7F7FFFFF')),
      $f32('1'),
    );
    returns(
      'copysign_62',
      () => m0.copysign($f32('1'), $f32('FF7FFFFF')),
      $f32('80000001'),
    );
    returns(
      'copysign_63',
      () => m0.copysign($f32('1'), $f32('7F7FFFFF')),
      $f32('1'),
    );
    returns(
      'copysign_64',
      () => m0.copysign($f32('80000001'), $f32('FF800000')),
      $f32('80000001'),
    );
    returns(
      'copysign_65',
      () => m0.copysign($f32('80000001'), $f32('7F800000')),
      $f32('1'),
    );
    returns(
      'copysign_66',
      () => m0.copysign($f32('1'), $f32('FF800000')),
      $f32('80000001'),
    );
    returns(
      'copysign_67',
      () => m0.copysign($f32('1'), $f32('7F800000')),
      $f32('1'),
    );
    returns(
      'copysign_68',
      () => m0.copysign($f32('80000001'), $f32('FFC00000')),
      $f32('80000001'),
    );
    returns(
      'copysign_69',
      () => m0.copysign($f32('80000001'), $f32('7FC00000')),
      $f32('1'),
    );
    returns(
      'copysign_70',
      () => m0.copysign($f32('1'), $f32('FFC00000')),
      $f32('80000001'),
    );
    returns(
      'copysign_71',
      () => m0.copysign($f32('1'), $f32('7FC00000')),
      $f32('1'),
    );
    returns(
      'copysign_72',
      () => m0.copysign($f32('80800000'), $f32('80000000')),
      $f32('80800000'),
    );
    returns(
      'copysign_73',
      () => m0.copysign($f32('80800000'), $f32('0')),
      $f32('800000'),
    );
    returns(
      'copysign_74',
      () => m0.copysign($f32('800000'), $f32('80000000')),
      $f32('80800000'),
    );
    returns(
      'copysign_75',
      () => m0.copysign($f32('800000'), $f32('0')),
      $f32('800000'),
    );
    returns(
      'copysign_76',
      () => m0.copysign($f32('80800000'), $f32('80000001')),
      $f32('80800000'),
    );
    returns(
      'copysign_77',
      () => m0.copysign($f32('80800000'), $f32('1')),
      $f32('800000'),
    );
    returns(
      'copysign_78',
      () => m0.copysign($f32('800000'), $f32('80000001')),
      $f32('80800000'),
    );
    returns(
      'copysign_79',
      () => m0.copysign($f32('800000'), $f32('1')),
      $f32('800000'),
    );
    returns(
      'copysign_80',
      () => m0.copysign($f32('80800000'), $f32('80800000')),
      $f32('80800000'),
    );
    returns(
      'copysign_81',
      () => m0.copysign($f32('80800000'), $f32('800000')),
      $f32('800000'),
    );
    returns(
      'copysign_82',
      () => m0.copysign($f32('800000'), $f32('80800000')),
      $f32('80800000'),
    );
    returns(
      'copysign_83',
      () => m0.copysign($f32('800000'), $f32('800000')),
      $f32('800000'),
    );
    returns(
      'copysign_84',
      () => m0.copysign($f32('80800000'), $f32('BF000000')),
      $f32('80800000'),
    );
    returns(
      'copysign_85',
      () => m0.copysign($f32('80800000'), $f32('3F000000')),
      $f32('800000'),
    );
    returns(
      'copysign_86',
      () => m0.copysign($f32('800000'), $f32('BF000000')),
      $f32('80800000'),
    );
    returns(
      'copysign_87',
      () => m0.copysign($f32('800000'), $f32('3F000000')),
      $f32('800000'),
    );
    returns(
      'copysign_88',
      () => m0.copysign($f32('80800000'), $f32('BF800000')),
      $f32('80800000'),
    );
    returns(
      'copysign_89',
      () => m0.copysign($f32('80800000'), $f32('3F800000')),
      $f32('800000'),
    );
    returns(
      'copysign_90',
      () => m0.copysign($f32('800000'), $f32('BF800000')),
      $f32('80800000'),
    );
    returns(
      'copysign_91',
      () => m0.copysign($f32('800000'), $f32('3F800000')),
      $f32('800000'),
    );
    returns(
      'copysign_92',
      () => m0.copysign($f32('80800000'), $f32('C0C90FDB')),
      $f32('80800000'),
    );
    returns(
      'copysign_93',
      () => m0.copysign($f32('80800000'), $f32('40C90FDB')),
      $f32('800000'),
    );
    returns(
      'copysign_94',
      () => m0.copysign($f32('800000'), $f32('C0C90FDB')),
      $f32('80800000'),
    );
    returns(
      'copysign_95',
      () => m0.copysign($f32('800000'), $f32('40C90FDB')),
      $f32('800000'),
    );
    returns(
      'copysign_96',
      () => m0.copysign($f32('80800000'), $f32('FF7FFFFF')),
      $f32('80800000'),
    );
    returns(
      'copysign_97',
      () => m0.copysign($f32('80800000'), $f32('7F7FFFFF')),
      $f32('800000'),
    );
    returns(
      'copysign_98',
      () => m0.copysign($f32('800000'), $f32('FF7FFFFF')),
      $f32('80800000'),
    );
    returns(
      'copysign_99',
      () => m0.copysign($f32('800000'), $f32('7F7FFFFF')),
      $f32('800000'),
    );
    returns(
      'copysign_100',
      () => m0.copysign($f32('80800000'), $f32('FF800000')),
      $f32('80800000'),
    );
    returns(
      'copysign_101',
      () => m0.copysign($f32('80800000'), $f32('7F800000')),
      $f32('800000'),
    );
    returns(
      'copysign_102',
      () => m0.copysign($f32('800000'), $f32('FF800000')),
      $f32('80800000'),
    );
    returns(
      'copysign_103',
      () => m0.copysign($f32('800000'), $f32('7F800000')),
      $f32('800000'),
    );
    returns(
      'copysign_104',
      () => m0.copysign($f32('80800000'), $f32('FFC00000')),
      $f32('80800000'),
    );
    returns(
      'copysign_105',
      () => m0.copysign($f32('80800000'), $f32('7FC00000')),
      $f32('800000'),
    );
    returns(
      'copysign_106',
      () => m0.copysign($f32('800000'), $f32('FFC00000')),
      $f32('80800000'),
    );
    returns(
      'copysign_107',
      () => m0.copysign($f32('800000'), $f32('7FC00000')),
      $f32('800000'),
    );
    returns(
      'copysign_108',
      () => m0.copysign($f32('BF000000'), $f32('80000000')),
      $f32('BF000000'),
    );
    returns(
      'copysign_109',
      () => m0.copysign($f32('BF000000'), $f32('0')),
      $f32('3F000000'),
    );
    returns(
      'copysign_110',
      () => m0.copysign($f32('3F000000'), $f32('80000000')),
      $f32('BF000000'),
    );
    returns(
      'copysign_111',
      () => m0.copysign($f32('3F000000'), $f32('0')),
      $f32('3F000000'),
    );
    returns(
      'copysign_112',
      () => m0.copysign($f32('BF000000'), $f32('80000001')),
      $f32('BF000000'),
    );
    returns(
      'copysign_113',
      () => m0.copysign($f32('BF000000'), $f32('1')),
      $f32('3F000000'),
    );
    returns(
      'copysign_114',
      () => m0.copysign($f32('3F000000'), $f32('80000001')),
      $f32('BF000000'),
    );
    returns(
      'copysign_115',
      () => m0.copysign($f32('3F000000'), $f32('1')),
      $f32('3F000000'),
    );
    returns(
      'copysign_116',
      () => m0.copysign($f32('BF000000'), $f32('80800000')),
      $f32('BF000000'),
    );
    returns(
      'copysign_117',
      () => m0.copysign($f32('BF000000'), $f32('800000')),
      $f32('3F000000'),
    );
    returns(
      'copysign_118',
      () => m0.copysign($f32('3F000000'), $f32('80800000')),
      $f32('BF000000'),
    );
    returns(
      'copysign_119',
      () => m0.copysign($f32('3F000000'), $f32('800000')),
      $f32('3F000000'),
    );
    returns(
      'copysign_120',
      () => m0.copysign($f32('BF000000'), $f32('BF000000')),
      $f32('BF000000'),
    );
    returns(
      'copysign_121',
      () => m0.copysign($f32('BF000000'), $f32('3F000000')),
      $f32('3F000000'),
    );
    returns(
      'copysign_122',
      () => m0.copysign($f32('3F000000'), $f32('BF000000')),
      $f32('BF000000'),
    );
    returns(
      'copysign_123',
      () => m0.copysign($f32('3F000000'), $f32('3F000000')),
      $f32('3F000000'),
    );
    returns(
      'copysign_124',
      () => m0.copysign($f32('BF000000'), $f32('BF800000')),
      $f32('BF000000'),
    );
    returns(
      'copysign_125',
      () => m0.copysign($f32('BF000000'), $f32('3F800000')),
      $f32('3F000000'),
    );
    returns(
      'copysign_126',
      () => m0.copysign($f32('3F000000'), $f32('BF800000')),
      $f32('BF000000'),
    );
    returns(
      'copysign_127',
      () => m0.copysign($f32('3F000000'), $f32('3F800000')),
      $f32('3F000000'),
    );
    returns(
      'copysign_128',
      () => m0.copysign($f32('BF000000'), $f32('C0C90FDB')),
      $f32('BF000000'),
    );
    returns(
      'copysign_129',
      () => m0.copysign($f32('BF000000'), $f32('40C90FDB')),
      $f32('3F000000'),
    );
    returns(
      'copysign_130',
      () => m0.copysign($f32('3F000000'), $f32('C0C90FDB')),
      $f32('BF000000'),
    );
    returns(
      'copysign_131',
      () => m0.copysign($f32('3F000000'), $f32('40C90FDB')),
      $f32('3F000000'),
    );
    returns(
      'copysign_132',
      () => m0.copysign($f32('BF000000'), $f32('FF7FFFFF')),
      $f32('BF000000'),
    );
    returns(
      'copysign_133',
      () => m0.copysign($f32('BF000000'), $f32('7F7FFFFF')),
      $f32('3F000000'),
    );
    returns(
      'copysign_134',
      () => m0.copysign($f32('3F000000'), $f32('FF7FFFFF')),
      $f32('BF000000'),
    );
    returns(
      'copysign_135',
      () => m0.copysign($f32('3F000000'), $f32('7F7FFFFF')),
      $f32('3F000000'),
    );
    returns(
      'copysign_136',
      () => m0.copysign($f32('BF000000'), $f32('FF800000')),
      $f32('BF000000'),
    );
    returns(
      'copysign_137',
      () => m0.copysign($f32('BF000000'), $f32('7F800000')),
      $f32('3F000000'),
    );
    returns(
      'copysign_138',
      () => m0.copysign($f32('3F000000'), $f32('FF800000')),
      $f32('BF000000'),
    );
    returns(
      'copysign_139',
      () => m0.copysign($f32('3F000000'), $f32('7F800000')),
      $f32('3F000000'),
    );
    returns(
      'copysign_140',
      () => m0.copysign($f32('BF000000'), $f32('FFC00000')),
      $f32('BF000000'),
    );
    returns(
      'copysign_141',
      () => m0.copysign($f32('BF000000'), $f32('7FC00000')),
      $f32('3F000000'),
    );
    returns(
      'copysign_142',
      () => m0.copysign($f32('3F000000'), $f32('FFC00000')),
      $f32('BF000000'),
    );
    returns(
      'copysign_143',
      () => m0.copysign($f32('3F000000'), $f32('7FC00000')),
      $f32('3F000000'),
    );
    returns(
      'copysign_144',
      () => m0.copysign($f32('BF800000'), $f32('80000000')),
      $f32('BF800000'),
    );
    returns(
      'copysign_145',
      () => m0.copysign($f32('BF800000'), $f32('0')),
      $f32('3F800000'),
    );
    returns(
      'copysign_146',
      () => m0.copysign($f32('3F800000'), $f32('80000000')),
      $f32('BF800000'),
    );
    returns(
      'copysign_147',
      () => m0.copysign($f32('3F800000'), $f32('0')),
      $f32('3F800000'),
    );
    returns(
      'copysign_148',
      () => m0.copysign($f32('BF800000'), $f32('80000001')),
      $f32('BF800000'),
    );
    returns(
      'copysign_149',
      () => m0.copysign($f32('BF800000'), $f32('1')),
      $f32('3F800000'),
    );
    returns(
      'copysign_150',
      () => m0.copysign($f32('3F800000'), $f32('80000001')),
      $f32('BF800000'),
    );
    returns(
      'copysign_151',
      () => m0.copysign($f32('3F800000'), $f32('1')),
      $f32('3F800000'),
    );
    returns(
      'copysign_152',
      () => m0.copysign($f32('BF800000'), $f32('80800000')),
      $f32('BF800000'),
    );
    returns(
      'copysign_153',
      () => m0.copysign($f32('BF800000'), $f32('800000')),
      $f32('3F800000'),
    );
    returns(
      'copysign_154',
      () => m0.copysign($f32('3F800000'), $f32('80800000')),
      $f32('BF800000'),
    );
    returns(
      'copysign_155',
      () => m0.copysign($f32('3F800000'), $f32('800000')),
      $f32('3F800000'),
    );
    returns(
      'copysign_156',
      () => m0.copysign($f32('BF800000'), $f32('BF000000')),
      $f32('BF800000'),
    );
    returns(
      'copysign_157',
      () => m0.copysign($f32('BF800000'), $f32('3F000000')),
      $f32('3F800000'),
    );
    returns(
      'copysign_158',
      () => m0.copysign($f32('3F800000'), $f32('BF000000')),
      $f32('BF800000'),
    );
    returns(
      'copysign_159',
      () => m0.copysign($f32('3F800000'), $f32('3F000000')),
      $f32('3F800000'),
    );
    returns(
      'copysign_160',
      () => m0.copysign($f32('BF800000'), $f32('BF800000')),
      $f32('BF800000'),
    );
    returns(
      'copysign_161',
      () => m0.copysign($f32('BF800000'), $f32('3F800000')),
      $f32('3F800000'),
    );
    returns(
      'copysign_162',
      () => m0.copysign($f32('3F800000'), $f32('BF800000')),
      $f32('BF800000'),
    );
    returns(
      'copysign_163',
      () => m0.copysign($f32('3F800000'), $f32('3F800000')),
      $f32('3F800000'),
    );
    returns(
      'copysign_164',
      () => m0.copysign($f32('BF800000'), $f32('C0C90FDB')),
      $f32('BF800000'),
    );
    returns(
      'copysign_165',
      () => m0.copysign($f32('BF800000'), $f32('40C90FDB')),
      $f32('3F800000'),
    );
    returns(
      'copysign_166',
      () => m0.copysign($f32('3F800000'), $f32('C0C90FDB')),
      $f32('BF800000'),
    );
    returns(
      'copysign_167',
      () => m0.copysign($f32('3F800000'), $f32('40C90FDB')),
      $f32('3F800000'),
    );
    returns(
      'copysign_168',
      () => m0.copysign($f32('BF800000'), $f32('FF7FFFFF')),
      $f32('BF800000'),
    );
    returns(
      'copysign_169',
      () => m0.copysign($f32('BF800000'), $f32('7F7FFFFF')),
      $f32('3F800000'),
    );
    returns(
      'copysign_170',
      () => m0.copysign($f32('3F800000'), $f32('FF7FFFFF')),
      $f32('BF800000'),
    );
    returns(
      'copysign_171',
      () => m0.copysign($f32('3F800000'), $f32('7F7FFFFF')),
      $f32('3F800000'),
    );
    returns(
      'copysign_172',
      () => m0.copysign($f32('BF800000'), $f32('FF800000')),
      $f32('BF800000'),
    );
    returns(
      'copysign_173',
      () => m0.copysign($f32('BF800000'), $f32('7F800000')),
      $f32('3F800000'),
    );
    returns(
      'copysign_174',
      () => m0.copysign($f32('3F800000'), $f32('FF800000')),
      $f32('BF800000'),
    );
    returns(
      'copysign_175',
      () => m0.copysign($f32('3F800000'), $f32('7F800000')),
      $f32('3F800000'),
    );
    returns(
      'copysign_176',
      () => m0.copysign($f32('BF800000'), $f32('FFC00000')),
      $f32('BF800000'),
    );
    returns(
      'copysign_177',
      () => m0.copysign($f32('BF800000'), $f32('7FC00000')),
      $f32('3F800000'),
    );
    returns(
      'copysign_178',
      () => m0.copysign($f32('3F800000'), $f32('FFC00000')),
      $f32('BF800000'),
    );
    returns(
      'copysign_179',
      () => m0.copysign($f32('3F800000'), $f32('7FC00000')),
      $f32('3F800000'),
    );
    returns(
      'copysign_180',
      () => m0.copysign($f32('C0C90FDB'), $f32('80000000')),
      $f32('C0C90FDB'),
    );
    returns(
      'copysign_181',
      () => m0.copysign($f32('C0C90FDB'), $f32('0')),
      $f32('40C90FDB'),
    );
    returns(
      'copysign_182',
      () => m0.copysign($f32('40C90FDB'), $f32('80000000')),
      $f32('C0C90FDB'),
    );
    returns(
      'copysign_183',
      () => m0.copysign($f32('40C90FDB'), $f32('0')),
      $f32('40C90FDB'),
    );
    returns(
      'copysign_184',
      () => m0.copysign($f32('C0C90FDB'), $f32('80000001')),
      $f32('C0C90FDB'),
    );
    returns(
      'copysign_185',
      () => m0.copysign($f32('C0C90FDB'), $f32('1')),
      $f32('40C90FDB'),
    );
    returns(
      'copysign_186',
      () => m0.copysign($f32('40C90FDB'), $f32('80000001')),
      $f32('C0C90FDB'),
    );
    returns(
      'copysign_187',
      () => m0.copysign($f32('40C90FDB'), $f32('1')),
      $f32('40C90FDB'),
    );
    returns(
      'copysign_188',
      () => m0.copysign($f32('C0C90FDB'), $f32('80800000')),
      $f32('C0C90FDB'),
    );
    returns(
      'copysign_189',
      () => m0.copysign($f32('C0C90FDB'), $f32('800000')),
      $f32('40C90FDB'),
    );
    returns(
      'copysign_190',
      () => m0.copysign($f32('40C90FDB'), $f32('80800000')),
      $f32('C0C90FDB'),
    );
    returns(
      'copysign_191',
      () => m0.copysign($f32('40C90FDB'), $f32('800000')),
      $f32('40C90FDB'),
    );
    returns(
      'copysign_192',
      () => m0.copysign($f32('C0C90FDB'), $f32('BF000000')),
      $f32('C0C90FDB'),
    );
    returns(
      'copysign_193',
      () => m0.copysign($f32('C0C90FDB'), $f32('3F000000')),
      $f32('40C90FDB'),
    );
    returns(
      'copysign_194',
      () => m0.copysign($f32('40C90FDB'), $f32('BF000000')),
      $f32('C0C90FDB'),
    );
    returns(
      'copysign_195',
      () => m0.copysign($f32('40C90FDB'), $f32('3F000000')),
      $f32('40C90FDB'),
    );
    returns(
      'copysign_196',
      () => m0.copysign($f32('C0C90FDB'), $f32('BF800000')),
      $f32('C0C90FDB'),
    );
    returns(
      'copysign_197',
      () => m0.copysign($f32('C0C90FDB'), $f32('3F800000')),
      $f32('40C90FDB'),
    );
    returns(
      'copysign_198',
      () => m0.copysign($f32('40C90FDB'), $f32('BF800000')),
      $f32('C0C90FDB'),
    );
    returns(
      'copysign_199',
      () => m0.copysign($f32('40C90FDB'), $f32('3F800000')),
      $f32('40C90FDB'),
    );
    returns(
      'copysign_200',
      () => m0.copysign($f32('C0C90FDB'), $f32('C0C90FDB')),
      $f32('C0C90FDB'),
    );
    returns(
      'copysign_201',
      () => m0.copysign($f32('C0C90FDB'), $f32('40C90FDB')),
      $f32('40C90FDB'),
    );
    returns(
      'copysign_202',
      () => m0.copysign($f32('40C90FDB'), $f32('C0C90FDB')),
      $f32('C0C90FDB'),
    );
    returns(
      'copysign_203',
      () => m0.copysign($f32('40C90FDB'), $f32('40C90FDB')),
      $f32('40C90FDB'),
    );
    returns(
      'copysign_204',
      () => m0.copysign($f32('C0C90FDB'), $f32('FF7FFFFF')),
      $f32('C0C90FDB'),
    );
    returns(
      'copysign_205',
      () => m0.copysign($f32('C0C90FDB'), $f32('7F7FFFFF')),
      $f32('40C90FDB'),
    );
    returns(
      'copysign_206',
      () => m0.copysign($f32('40C90FDB'), $f32('FF7FFFFF')),
      $f32('C0C90FDB'),
    );
    returns(
      'copysign_207',
      () => m0.copysign($f32('40C90FDB'), $f32('7F7FFFFF')),
      $f32('40C90FDB'),
    );
    returns(
      'copysign_208',
      () => m0.copysign($f32('C0C90FDB'), $f32('FF800000')),
      $f32('C0C90FDB'),
    );
    returns(
      'copysign_209',
      () => m0.copysign($f32('C0C90FDB'), $f32('7F800000')),
      $f32('40C90FDB'),
    );
    returns(
      'copysign_210',
      () => m0.copysign($f32('40C90FDB'), $f32('FF800000')),
      $f32('C0C90FDB'),
    );
    returns(
      'copysign_211',
      () => m0.copysign($f32('40C90FDB'), $f32('7F800000')),
      $f32('40C90FDB'),
    );
    returns(
      'copysign_212',
      () => m0.copysign($f32('C0C90FDB'), $f32('FFC00000')),
      $f32('C0C90FDB'),
    );
    returns(
      'copysign_213',
      () => m0.copysign($f32('C0C90FDB'), $f32('7FC00000')),
      $f32('40C90FDB'),
    );
    returns(
      'copysign_214',
      () => m0.copysign($f32('40C90FDB'), $f32('FFC00000')),
      $f32('C0C90FDB'),
    );
    returns(
      'copysign_215',
      () => m0.copysign($f32('40C90FDB'), $f32('7FC00000')),
      $f32('40C90FDB'),
    );
    returns(
      'copysign_216',
      () => m0.copysign($f32('FF7FFFFF'), $f32('80000000')),
      $f32('FF7FFFFF'),
    );
    returns(
      'copysign_217',
      () => m0.copysign($f32('FF7FFFFF'), $f32('0')),
      $f32('7F7FFFFF'),
    );
    returns(
      'copysign_218',
      () => m0.copysign($f32('7F7FFFFF'), $f32('80000000')),
      $f32('FF7FFFFF'),
    );
    returns(
      'copysign_219',
      () => m0.copysign($f32('7F7FFFFF'), $f32('0')),
      $f32('7F7FFFFF'),
    );
    returns(
      'copysign_220',
      () => m0.copysign($f32('FF7FFFFF'), $f32('80000001')),
      $f32('FF7FFFFF'),
    );
    returns(
      'copysign_221',
      () => m0.copysign($f32('FF7FFFFF'), $f32('1')),
      $f32('7F7FFFFF'),
    );
    returns(
      'copysign_222',
      () => m0.copysign($f32('7F7FFFFF'), $f32('80000001')),
      $f32('FF7FFFFF'),
    );
    returns(
      'copysign_223',
      () => m0.copysign($f32('7F7FFFFF'), $f32('1')),
      $f32('7F7FFFFF'),
    );
    returns(
      'copysign_224',
      () => m0.copysign($f32('FF7FFFFF'), $f32('80800000')),
      $f32('FF7FFFFF'),
    );
    returns(
      'copysign_225',
      () => m0.copysign($f32('FF7FFFFF'), $f32('800000')),
      $f32('7F7FFFFF'),
    );
    returns(
      'copysign_226',
      () => m0.copysign($f32('7F7FFFFF'), $f32('80800000')),
      $f32('FF7FFFFF'),
    );
    returns(
      'copysign_227',
      () => m0.copysign($f32('7F7FFFFF'), $f32('800000')),
      $f32('7F7FFFFF'),
    );
    returns(
      'copysign_228',
      () => m0.copysign($f32('FF7FFFFF'), $f32('BF000000')),
      $f32('FF7FFFFF'),
    );
    returns(
      'copysign_229',
      () => m0.copysign($f32('FF7FFFFF'), $f32('3F000000')),
      $f32('7F7FFFFF'),
    );
    returns(
      'copysign_230',
      () => m0.copysign($f32('7F7FFFFF'), $f32('BF000000')),
      $f32('FF7FFFFF'),
    );
    returns(
      'copysign_231',
      () => m0.copysign($f32('7F7FFFFF'), $f32('3F000000')),
      $f32('7F7FFFFF'),
    );
    returns(
      'copysign_232',
      () => m0.copysign($f32('FF7FFFFF'), $f32('BF800000')),
      $f32('FF7FFFFF'),
    );
    returns(
      'copysign_233',
      () => m0.copysign($f32('FF7FFFFF'), $f32('3F800000')),
      $f32('7F7FFFFF'),
    );
    returns(
      'copysign_234',
      () => m0.copysign($f32('7F7FFFFF'), $f32('BF800000')),
      $f32('FF7FFFFF'),
    );
    returns(
      'copysign_235',
      () => m0.copysign($f32('7F7FFFFF'), $f32('3F800000')),
      $f32('7F7FFFFF'),
    );
    returns(
      'copysign_236',
      () => m0.copysign($f32('FF7FFFFF'), $f32('C0C90FDB')),
      $f32('FF7FFFFF'),
    );
    returns(
      'copysign_237',
      () => m0.copysign($f32('FF7FFFFF'), $f32('40C90FDB')),
      $f32('7F7FFFFF'),
    );
    returns(
      'copysign_238',
      () => m0.copysign($f32('7F7FFFFF'), $f32('C0C90FDB')),
      $f32('FF7FFFFF'),
    );
    returns(
      'copysign_239',
      () => m0.copysign($f32('7F7FFFFF'), $f32('40C90FDB')),
      $f32('7F7FFFFF'),
    );
    returns(
      'copysign_240',
      () => m0.copysign($f32('FF7FFFFF'), $f32('FF7FFFFF')),
      $f32('FF7FFFFF'),
    );
    returns(
      'copysign_241',
      () => m0.copysign($f32('FF7FFFFF'), $f32('7F7FFFFF')),
      $f32('7F7FFFFF'),
    );
    returns(
      'copysign_242',
      () => m0.copysign($f32('7F7FFFFF'), $f32('FF7FFFFF')),
      $f32('FF7FFFFF'),
    );
    returns(
      'copysign_243',
      () => m0.copysign($f32('7F7FFFFF'), $f32('7F7FFFFF')),
      $f32('7F7FFFFF'),
    );
    returns(
      'copysign_244',
      () => m0.copysign($f32('FF7FFFFF'), $f32('FF800000')),
      $f32('FF7FFFFF'),
    );
    returns(
      'copysign_245',
      () => m0.copysign($f32('FF7FFFFF'), $f32('7F800000')),
      $f32('7F7FFFFF'),
    );
    returns(
      'copysign_246',
      () => m0.copysign($f32('7F7FFFFF'), $f32('FF800000')),
      $f32('FF7FFFFF'),
    );
    returns(
      'copysign_247',
      () => m0.copysign($f32('7F7FFFFF'), $f32('7F800000')),
      $f32('7F7FFFFF'),
    );
    returns(
      'copysign_248',
      () => m0.copysign($f32('FF7FFFFF'), $f32('FFC00000')),
      $f32('FF7FFFFF'),
    );
    returns(
      'copysign_249',
      () => m0.copysign($f32('FF7FFFFF'), $f32('7FC00000')),
      $f32('7F7FFFFF'),
    );
    returns(
      'copysign_250',
      () => m0.copysign($f32('7F7FFFFF'), $f32('FFC00000')),
      $f32('FF7FFFFF'),
    );
    returns(
      'copysign_251',
      () => m0.copysign($f32('7F7FFFFF'), $f32('7FC00000')),
      $f32('7F7FFFFF'),
    );
    returns(
      'copysign_252',
      () => m0.copysign($f32('FF800000'), $f32('80000000')),
      $f32('FF800000'),
    );
    returns(
      'copysign_253',
      () => m0.copysign($f32('FF800000'), $f32('0')),
      $f32('7F800000'),
    );
    returns(
      'copysign_254',
      () => m0.copysign($f32('7F800000'), $f32('80000000')),
      $f32('FF800000'),
    );
    returns(
      'copysign_255',
      () => m0.copysign($f32('7F800000'), $f32('0')),
      $f32('7F800000'),
    );
    returns(
      'copysign_256',
      () => m0.copysign($f32('FF800000'), $f32('80000001')),
      $f32('FF800000'),
    );
    returns(
      'copysign_257',
      () => m0.copysign($f32('FF800000'), $f32('1')),
      $f32('7F800000'),
    );
    returns(
      'copysign_258',
      () => m0.copysign($f32('7F800000'), $f32('80000001')),
      $f32('FF800000'),
    );
    returns(
      'copysign_259',
      () => m0.copysign($f32('7F800000'), $f32('1')),
      $f32('7F800000'),
    );
    returns(
      'copysign_260',
      () => m0.copysign($f32('FF800000'), $f32('80800000')),
      $f32('FF800000'),
    );
    returns(
      'copysign_261',
      () => m0.copysign($f32('FF800000'), $f32('800000')),
      $f32('7F800000'),
    );
    returns(
      'copysign_262',
      () => m0.copysign($f32('7F800000'), $f32('80800000')),
      $f32('FF800000'),
    );
    returns(
      'copysign_263',
      () => m0.copysign($f32('7F800000'), $f32('800000')),
      $f32('7F800000'),
    );
    returns(
      'copysign_264',
      () => m0.copysign($f32('FF800000'), $f32('BF000000')),
      $f32('FF800000'),
    );
    returns(
      'copysign_265',
      () => m0.copysign($f32('FF800000'), $f32('3F000000')),
      $f32('7F800000'),
    );
    returns(
      'copysign_266',
      () => m0.copysign($f32('7F800000'), $f32('BF000000')),
      $f32('FF800000'),
    );
    returns(
      'copysign_267',
      () => m0.copysign($f32('7F800000'), $f32('3F000000')),
      $f32('7F800000'),
    );
    returns(
      'copysign_268',
      () => m0.copysign($f32('FF800000'), $f32('BF800000')),
      $f32('FF800000'),
    );
    returns(
      'copysign_269',
      () => m0.copysign($f32('FF800000'), $f32('3F800000')),
      $f32('7F800000'),
    );
    returns(
      'copysign_270',
      () => m0.copysign($f32('7F800000'), $f32('BF800000')),
      $f32('FF800000'),
    );
    returns(
      'copysign_271',
      () => m0.copysign($f32('7F800000'), $f32('3F800000')),
      $f32('7F800000'),
    );
    returns(
      'copysign_272',
      () => m0.copysign($f32('FF800000'), $f32('C0C90FDB')),
      $f32('FF800000'),
    );
    returns(
      'copysign_273',
      () => m0.copysign($f32('FF800000'), $f32('40C90FDB')),
      $f32('7F800000'),
    );
    returns(
      'copysign_274',
      () => m0.copysign($f32('7F800000'), $f32('C0C90FDB')),
      $f32('FF800000'),
    );
    returns(
      'copysign_275',
      () => m0.copysign($f32('7F800000'), $f32('40C90FDB')),
      $f32('7F800000'),
    );
    returns(
      'copysign_276',
      () => m0.copysign($f32('FF800000'), $f32('FF7FFFFF')),
      $f32('FF800000'),
    );
    returns(
      'copysign_277',
      () => m0.copysign($f32('FF800000'), $f32('7F7FFFFF')),
      $f32('7F800000'),
    );
    returns(
      'copysign_278',
      () => m0.copysign($f32('7F800000'), $f32('FF7FFFFF')),
      $f32('FF800000'),
    );
    returns(
      'copysign_279',
      () => m0.copysign($f32('7F800000'), $f32('7F7FFFFF')),
      $f32('7F800000'),
    );
    returns(
      'copysign_280',
      () => m0.copysign($f32('FF800000'), $f32('FF800000')),
      $f32('FF800000'),
    );
    returns(
      'copysign_281',
      () => m0.copysign($f32('FF800000'), $f32('7F800000')),
      $f32('7F800000'),
    );
    returns(
      'copysign_282',
      () => m0.copysign($f32('7F800000'), $f32('FF800000')),
      $f32('FF800000'),
    );
    returns(
      'copysign_283',
      () => m0.copysign($f32('7F800000'), $f32('7F800000')),
      $f32('7F800000'),
    );
    returns(
      'copysign_284',
      () => m0.copysign($f32('FF800000'), $f32('FFC00000')),
      $f32('FF800000'),
    );
    returns(
      'copysign_285',
      () => m0.copysign($f32('FF800000'), $f32('7FC00000')),
      $f32('7F800000'),
    );
    returns(
      'copysign_286',
      () => m0.copysign($f32('7F800000'), $f32('FFC00000')),
      $f32('FF800000'),
    );
    returns(
      'copysign_287',
      () => m0.copysign($f32('7F800000'), $f32('7FC00000')),
      $f32('7F800000'),
    );
    returns(
      'copysign_288',
      () => m0.copysign($f32('FFC00000'), $f32('80000000')),
      $f32('FFC00000'),
    );
    returns(
      'copysign_289',
      () => m0.copysign($f32('FFC00000'), $f32('0')),
      $f32('7FC00000'),
    );
    returns(
      'copysign_290',
      () => m0.copysign($f32('7FC00000'), $f32('80000000')),
      $f32('FFC00000'),
    );
    returns(
      'copysign_291',
      () => m0.copysign($f32('7FC00000'), $f32('0')),
      $f32('7FC00000'),
    );
    returns(
      'copysign_292',
      () => m0.copysign($f32('FFC00000'), $f32('80000001')),
      $f32('FFC00000'),
    );
    returns(
      'copysign_293',
      () => m0.copysign($f32('FFC00000'), $f32('1')),
      $f32('7FC00000'),
    );
    returns(
      'copysign_294',
      () => m0.copysign($f32('7FC00000'), $f32('80000001')),
      $f32('FFC00000'),
    );
    returns(
      'copysign_295',
      () => m0.copysign($f32('7FC00000'), $f32('1')),
      $f32('7FC00000'),
    );
    returns(
      'copysign_296',
      () => m0.copysign($f32('FFC00000'), $f32('80800000')),
      $f32('FFC00000'),
    );
    returns(
      'copysign_297',
      () => m0.copysign($f32('FFC00000'), $f32('800000')),
      $f32('7FC00000'),
    );
    returns(
      'copysign_298',
      () => m0.copysign($f32('7FC00000'), $f32('80800000')),
      $f32('FFC00000'),
    );
    returns(
      'copysign_299',
      () => m0.copysign($f32('7FC00000'), $f32('800000')),
      $f32('7FC00000'),
    );
    returns(
      'copysign_300',
      () => m0.copysign($f32('FFC00000'), $f32('BF000000')),
      $f32('FFC00000'),
    );
    returns(
      'copysign_301',
      () => m0.copysign($f32('FFC00000'), $f32('3F000000')),
      $f32('7FC00000'),
    );
    returns(
      'copysign_302',
      () => m0.copysign($f32('7FC00000'), $f32('BF000000')),
      $f32('FFC00000'),
    );
    returns(
      'copysign_303',
      () => m0.copysign($f32('7FC00000'), $f32('3F000000')),
      $f32('7FC00000'),
    );
    returns(
      'copysign_304',
      () => m0.copysign($f32('FFC00000'), $f32('BF800000')),
      $f32('FFC00000'),
    );
    returns(
      'copysign_305',
      () => m0.copysign($f32('FFC00000'), $f32('3F800000')),
      $f32('7FC00000'),
    );
    returns(
      'copysign_306',
      () => m0.copysign($f32('7FC00000'), $f32('BF800000')),
      $f32('FFC00000'),
    );
    returns(
      'copysign_307',
      () => m0.copysign($f32('7FC00000'), $f32('3F800000')),
      $f32('7FC00000'),
    );
    returns(
      'copysign_308',
      () => m0.copysign($f32('FFC00000'), $f32('C0C90FDB')),
      $f32('FFC00000'),
    );
    returns(
      'copysign_309',
      () => m0.copysign($f32('FFC00000'), $f32('40C90FDB')),
      $f32('7FC00000'),
    );
    returns(
      'copysign_310',
      () => m0.copysign($f32('7FC00000'), $f32('C0C90FDB')),
      $f32('FFC00000'),
    );
    returns(
      'copysign_311',
      () => m0.copysign($f32('7FC00000'), $f32('40C90FDB')),
      $f32('7FC00000'),
    );
    returns(
      'copysign_312',
      () => m0.copysign($f32('FFC00000'), $f32('FF7FFFFF')),
      $f32('FFC00000'),
    );
    returns(
      'copysign_313',
      () => m0.copysign($f32('FFC00000'), $f32('7F7FFFFF')),
      $f32('7FC00000'),
    );
    returns(
      'copysign_314',
      () => m0.copysign($f32('7FC00000'), $f32('FF7FFFFF')),
      $f32('FFC00000'),
    );
    returns(
      'copysign_315',
      () => m0.copysign($f32('7FC00000'), $f32('7F7FFFFF')),
      $f32('7FC00000'),
    );
    returns(
      'copysign_316',
      () => m0.copysign($f32('FFC00000'), $f32('FF800000')),
      $f32('FFC00000'),
    );
    returns(
      'copysign_317',
      () => m0.copysign($f32('FFC00000'), $f32('7F800000')),
      $f32('7FC00000'),
    );
    returns(
      'copysign_318',
      () => m0.copysign($f32('7FC00000'), $f32('FF800000')),
      $f32('FFC00000'),
    );
    returns(
      'copysign_319',
      () => m0.copysign($f32('7FC00000'), $f32('7F800000')),
      $f32('7FC00000'),
    );
    returns(
      'copysign_320',
      () => m0.copysign($f32('FFC00000'), $f32('FFC00000')),
      $f32('FFC00000'),
    );
    returns(
      'copysign_321',
      () => m0.copysign($f32('FFC00000'), $f32('7FC00000')),
      $f32('7FC00000'),
    );
    returns(
      'copysign_322',
      () => m0.copysign($f32('7FC00000'), $f32('FFC00000')),
      $f32('FFC00000'),
    );
    returns(
      'copysign_323',
      () => m0.copysign($f32('7FC00000'), $f32('7FC00000')),
      $f32('7FC00000'),
    );
    returns('abs_0', () => m0.abs($f32('80000000')), $f32('0'));
    returns('abs_1', () => m0.abs($f32('0')), $f32('0'));
    returns('abs_2', () => m0.abs($f32('80000001')), $f32('1'));
    returns('abs_3', () => m0.abs($f32('1')), $f32('1'));
    returns('abs_4', () => m0.abs($f32('80800000')), $f32('800000'));
    returns('abs_5', () => m0.abs($f32('800000')), $f32('800000'));
    returns('abs_6', () => m0.abs($f32('BF000000')), $f32('3F000000'));
    returns('abs_7', () => m0.abs($f32('3F000000')), $f32('3F000000'));
    returns('abs_8', () => m0.abs($f32('BF800000')), $f32('3F800000'));
    returns('abs_9', () => m0.abs($f32('3F800000')), $f32('3F800000'));
    returns('abs_10', () => m0.abs($f32('C0C90FDB')), $f32('40C90FDB'));
    returns('abs_11', () => m0.abs($f32('40C90FDB')), $f32('40C90FDB'));
    returns('abs_12', () => m0.abs($f32('FF7FFFFF')), $f32('7F7FFFFF'));
    returns('abs_13', () => m0.abs($f32('7F7FFFFF')), $f32('7F7FFFFF'));
    returns('abs_14', () => m0.abs($f32('FF800000')), $f32('7F800000'));
    returns('abs_15', () => m0.abs($f32('7F800000')), $f32('7F800000'));
    returns('abs_16', () => m0.abs($f32('FFC00000')), $f32('7FC00000'));
    returns('abs_17', () => m0.abs($f32('7FC00000')), $f32('7FC00000'));
    returns('neg_0', () => m0.neg($f32('80000000')), $f32('0'));
    returns('neg_1', () => m0.neg($f32('0')), $f32('80000000'));
    returns('neg_2', () => m0.neg($f32('80000001')), $f32('1'));
    returns('neg_3', () => m0.neg($f32('1')), $f32('80000001'));
    returns('neg_4', () => m0.neg($f32('80800000')), $f32('800000'));
    returns('neg_5', () => m0.neg($f32('800000')), $f32('80800000'));
    returns('neg_6', () => m0.neg($f32('BF000000')), $f32('3F000000'));
    returns('neg_7', () => m0.neg($f32('3F000000')), $f32('BF000000'));
    returns('neg_8', () => m0.neg($f32('BF800000')), $f32('3F800000'));
    returns('neg_9', () => m0.neg($f32('3F800000')), $f32('BF800000'));
    returns('neg_10', () => m0.neg($f32('C0C90FDB')), $f32('40C90FDB'));
    returns('neg_11', () => m0.neg($f32('40C90FDB')), $f32('C0C90FDB'));
    returns('neg_12', () => m0.neg($f32('FF7FFFFF')), $f32('7F7FFFFF'));
    returns('neg_13', () => m0.neg($f32('7F7FFFFF')), $f32('FF7FFFFF'));
    returns('neg_14', () => m0.neg($f32('FF800000')), $f32('7F800000'));
    returns('neg_15', () => m0.neg($f32('7F800000')), $f32('FF800000'));
    returns('neg_16', () => m0.neg($f32('FFC00000')), $f32('7FC00000'));
    returns('neg_17', () => m0.neg($f32('7FC00000')), $f32('FFC00000'));
  });
}
