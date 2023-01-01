// Generated from spec/test/core/f32.wast.

// ignore_for_file: non_constant_identifier_names, unused_local_variable

import '../../src/infra.dart';
import 'f32.0.dart' as f32_0;

void main() {
  group('f32', () {
    // module f32.0.dart (line 5)
    var m0 = f32_0.F320Module();

    returns(
      'add_0',
      () => m0.add(f32('80000000'), f32('80000000')),
      f32('80000000'),
    );
    returns('add_1', () => m0.add(f32('80000000'), f32('0')), f32('0'));
    returns('add_2', () => m0.add(f32('0'), f32('80000000')), f32('0'));
    returns('add_3', () => m0.add(f32('0'), f32('0')), f32('0'));
    returns(
      'add_4',
      () => m0.add(f32('80000000'), f32('80000001')),
      f32('80000001'),
    );
    returns('add_5', () => m0.add(f32('80000000'), f32('1')), f32('1'));
    returns('add_6', () => m0.add(f32('0'), f32('80000001')), f32('80000001'));
    returns('add_7', () => m0.add(f32('0'), f32('1')), f32('1'));
    returns(
      'add_8',
      () => m0.add(f32('80000000'), f32('80800000')),
      f32('80800000'),
    );
    returns(
      'add_9',
      () => m0.add(f32('80000000'), f32('800000')),
      f32('800000'),
    );
    returns('add_10', () => m0.add(f32('0'), f32('80800000')), f32('80800000'));
    returns('add_11', () => m0.add(f32('0'), f32('800000')), f32('800000'));
    returns(
      'add_12',
      () => m0.add(f32('80000000'), f32('BF000000')),
      f32('BF000000'),
    );
    returns(
      'add_13',
      () => m0.add(f32('80000000'), f32('3F000000')),
      f32('3F000000'),
    );
    returns('add_14', () => m0.add(f32('0'), f32('BF000000')), f32('BF000000'));
    returns('add_15', () => m0.add(f32('0'), f32('3F000000')), f32('3F000000'));
    returns(
      'add_16',
      () => m0.add(f32('80000000'), f32('BF800000')),
      f32('BF800000'),
    );
    returns(
      'add_17',
      () => m0.add(f32('80000000'), f32('3F800000')),
      f32('3F800000'),
    );
    returns('add_18', () => m0.add(f32('0'), f32('BF800000')), f32('BF800000'));
    returns('add_19', () => m0.add(f32('0'), f32('3F800000')), f32('3F800000'));
    returns(
      'add_20',
      () => m0.add(f32('80000000'), f32('C0C90FDB')),
      f32('C0C90FDB'),
    );
    returns(
      'add_21',
      () => m0.add(f32('80000000'), f32('40C90FDB')),
      f32('40C90FDB'),
    );
    returns('add_22', () => m0.add(f32('0'), f32('C0C90FDB')), f32('C0C90FDB'));
    returns('add_23', () => m0.add(f32('0'), f32('40C90FDB')), f32('40C90FDB'));
    returns(
      'add_24',
      () => m0.add(f32('80000000'), f32('FF7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'add_25',
      () => m0.add(f32('80000000'), f32('7F7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns('add_26', () => m0.add(f32('0'), f32('FF7FFFFF')), f32('FF7FFFFF'));
    returns('add_27', () => m0.add(f32('0'), f32('7F7FFFFF')), f32('7F7FFFFF'));
    returns(
      'add_28',
      () => m0.add(f32('80000000'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'add_29',
      () => m0.add(f32('80000000'), f32('7F800000')),
      f32('7F800000'),
    );
    returns('add_30', () => m0.add(f32('0'), f32('FF800000')), f32('FF800000'));
    returns('add_31', () => m0.add(f32('0'), f32('7F800000')), f32('7F800000'));
    returns(
      'add_32',
      () => m0.add(f32('80000000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'add_33',
      () => m0.add(f32('80000000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'add_34',
      () => m0.add(f32('80000000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'add_35',
      () => m0.add(f32('80000000'), f32('7FA00000')),
      double.nan,
    );
    returns('add_36', () => m0.add(f32('0'), f32('FFC00000')), double.nan);
    returns('add_37', () => m0.add(f32('0'), f32('FFA00000')), double.nan);
    returns('add_38', () => m0.add(f32('0'), f32('7FC00000')), double.nan);
    returns('add_39', () => m0.add(f32('0'), f32('7FA00000')), double.nan);
    returns(
      'add_40',
      () => m0.add(f32('80000001'), f32('80000000')),
      f32('80000001'),
    );
    returns('add_41', () => m0.add(f32('80000001'), f32('0')), f32('80000001'));
    returns('add_42', () => m0.add(f32('1'), f32('80000000')), f32('1'));
    returns('add_43', () => m0.add(f32('1'), f32('0')), f32('1'));
    returns(
      'add_44',
      () => m0.add(f32('80000001'), f32('80000001')),
      f32('80000002'),
    );
    returns('add_45', () => m0.add(f32('80000001'), f32('1')), f32('0'));
    returns('add_46', () => m0.add(f32('1'), f32('80000001')), f32('0'));
    returns('add_47', () => m0.add(f32('1'), f32('1')), f32('2'));
    returns(
      'add_48',
      () => m0.add(f32('80000001'), f32('80800000')),
      f32('80800001'),
    );
    returns(
      'add_49',
      () => m0.add(f32('80000001'), f32('800000')),
      f32('7FFFFF'),
    );
    returns('add_50', () => m0.add(f32('1'), f32('80800000')), f32('807FFFFF'));
    returns('add_51', () => m0.add(f32('1'), f32('800000')), f32('800001'));
    returns(
      'add_52',
      () => m0.add(f32('80000001'), f32('BF000000')),
      f32('BF000000'),
    );
    returns(
      'add_53',
      () => m0.add(f32('80000001'), f32('3F000000')),
      f32('3F000000'),
    );
    returns('add_54', () => m0.add(f32('1'), f32('BF000000')), f32('BF000000'));
    returns('add_55', () => m0.add(f32('1'), f32('3F000000')), f32('3F000000'));
    returns(
      'add_56',
      () => m0.add(f32('80000001'), f32('BF800000')),
      f32('BF800000'),
    );
    returns(
      'add_57',
      () => m0.add(f32('80000001'), f32('3F800000')),
      f32('3F800000'),
    );
    returns('add_58', () => m0.add(f32('1'), f32('BF800000')), f32('BF800000'));
    returns('add_59', () => m0.add(f32('1'), f32('3F800000')), f32('3F800000'));
    returns(
      'add_60',
      () => m0.add(f32('80000001'), f32('C0C90FDB')),
      f32('C0C90FDB'),
    );
    returns(
      'add_61',
      () => m0.add(f32('80000001'), f32('40C90FDB')),
      f32('40C90FDB'),
    );
    returns('add_62', () => m0.add(f32('1'), f32('C0C90FDB')), f32('C0C90FDB'));
    returns('add_63', () => m0.add(f32('1'), f32('40C90FDB')), f32('40C90FDB'));
    returns(
      'add_64',
      () => m0.add(f32('80000001'), f32('FF7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'add_65',
      () => m0.add(f32('80000001'), f32('7F7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns('add_66', () => m0.add(f32('1'), f32('FF7FFFFF')), f32('FF7FFFFF'));
    returns('add_67', () => m0.add(f32('1'), f32('7F7FFFFF')), f32('7F7FFFFF'));
    returns(
      'add_68',
      () => m0.add(f32('80000001'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'add_69',
      () => m0.add(f32('80000001'), f32('7F800000')),
      f32('7F800000'),
    );
    returns('add_70', () => m0.add(f32('1'), f32('FF800000')), f32('FF800000'));
    returns('add_71', () => m0.add(f32('1'), f32('7F800000')), f32('7F800000'));
    returns(
      'add_72',
      () => m0.add(f32('80000001'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'add_73',
      () => m0.add(f32('80000001'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'add_74',
      () => m0.add(f32('80000001'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'add_75',
      () => m0.add(f32('80000001'), f32('7FA00000')),
      double.nan,
    );
    returns('add_76', () => m0.add(f32('1'), f32('FFC00000')), double.nan);
    returns('add_77', () => m0.add(f32('1'), f32('FFA00000')), double.nan);
    returns('add_78', () => m0.add(f32('1'), f32('7FC00000')), double.nan);
    returns('add_79', () => m0.add(f32('1'), f32('7FA00000')), double.nan);
    returns(
      'add_80',
      () => m0.add(f32('80800000'), f32('80000000')),
      f32('80800000'),
    );
    returns('add_81', () => m0.add(f32('80800000'), f32('0')), f32('80800000'));
    returns(
      'add_82',
      () => m0.add(f32('800000'), f32('80000000')),
      f32('800000'),
    );
    returns('add_83', () => m0.add(f32('800000'), f32('0')), f32('800000'));
    returns(
      'add_84',
      () => m0.add(f32('80800000'), f32('80000001')),
      f32('80800001'),
    );
    returns('add_85', () => m0.add(f32('80800000'), f32('1')), f32('807FFFFF'));
    returns(
      'add_86',
      () => m0.add(f32('800000'), f32('80000001')),
      f32('7FFFFF'),
    );
    returns('add_87', () => m0.add(f32('800000'), f32('1')), f32('800001'));
    returns(
      'add_88',
      () => m0.add(f32('80800000'), f32('80800000')),
      f32('81000000'),
    );
    returns('add_89', () => m0.add(f32('80800000'), f32('800000')), f32('0'));
    returns('add_90', () => m0.add(f32('800000'), f32('80800000')), f32('0'));
    returns(
      'add_91',
      () => m0.add(f32('800000'), f32('800000')),
      f32('1000000'),
    );
    returns(
      'add_92',
      () => m0.add(f32('80800000'), f32('BF000000')),
      f32('BF000000'),
    );
    returns(
      'add_93',
      () => m0.add(f32('80800000'), f32('3F000000')),
      f32('3F000000'),
    );
    returns(
      'add_94',
      () => m0.add(f32('800000'), f32('BF000000')),
      f32('BF000000'),
    );
    returns(
      'add_95',
      () => m0.add(f32('800000'), f32('3F000000')),
      f32('3F000000'),
    );
    returns(
      'add_96',
      () => m0.add(f32('80800000'), f32('BF800000')),
      f32('BF800000'),
    );
    returns(
      'add_97',
      () => m0.add(f32('80800000'), f32('3F800000')),
      f32('3F800000'),
    );
    returns(
      'add_98',
      () => m0.add(f32('800000'), f32('BF800000')),
      f32('BF800000'),
    );
    returns(
      'add_99',
      () => m0.add(f32('800000'), f32('3F800000')),
      f32('3F800000'),
    );
    returns(
      'add_100',
      () => m0.add(f32('80800000'), f32('C0C90FDB')),
      f32('C0C90FDB'),
    );
    returns(
      'add_101',
      () => m0.add(f32('80800000'), f32('40C90FDB')),
      f32('40C90FDB'),
    );
    returns(
      'add_102',
      () => m0.add(f32('800000'), f32('C0C90FDB')),
      f32('C0C90FDB'),
    );
    returns(
      'add_103',
      () => m0.add(f32('800000'), f32('40C90FDB')),
      f32('40C90FDB'),
    );
    returns(
      'add_104',
      () => m0.add(f32('80800000'), f32('FF7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'add_105',
      () => m0.add(f32('80800000'), f32('7F7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'add_106',
      () => m0.add(f32('800000'), f32('FF7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'add_107',
      () => m0.add(f32('800000'), f32('7F7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'add_108',
      () => m0.add(f32('80800000'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'add_109',
      () => m0.add(f32('80800000'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'add_110',
      () => m0.add(f32('800000'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'add_111',
      () => m0.add(f32('800000'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'add_112',
      () => m0.add(f32('80800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'add_113',
      () => m0.add(f32('80800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'add_114',
      () => m0.add(f32('80800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'add_115',
      () => m0.add(f32('80800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'add_116',
      () => m0.add(f32('800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'add_117',
      () => m0.add(f32('800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'add_118',
      () => m0.add(f32('800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'add_119',
      () => m0.add(f32('800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'add_120',
      () => m0.add(f32('BF000000'), f32('80000000')),
      f32('BF000000'),
    );
    returns(
      'add_121',
      () => m0.add(f32('BF000000'), f32('0')),
      f32('BF000000'),
    );
    returns(
      'add_122',
      () => m0.add(f32('3F000000'), f32('80000000')),
      f32('3F000000'),
    );
    returns(
      'add_123',
      () => m0.add(f32('3F000000'), f32('0')),
      f32('3F000000'),
    );
    returns(
      'add_124',
      () => m0.add(f32('BF000000'), f32('80000001')),
      f32('BF000000'),
    );
    returns(
      'add_125',
      () => m0.add(f32('BF000000'), f32('1')),
      f32('BF000000'),
    );
    returns(
      'add_126',
      () => m0.add(f32('3F000000'), f32('80000001')),
      f32('3F000000'),
    );
    returns(
      'add_127',
      () => m0.add(f32('3F000000'), f32('1')),
      f32('3F000000'),
    );
    returns(
      'add_128',
      () => m0.add(f32('BF000000'), f32('80800000')),
      f32('BF000000'),
    );
    returns(
      'add_129',
      () => m0.add(f32('BF000000'), f32('800000')),
      f32('BF000000'),
    );
    returns(
      'add_130',
      () => m0.add(f32('3F000000'), f32('80800000')),
      f32('3F000000'),
    );
    returns(
      'add_131',
      () => m0.add(f32('3F000000'), f32('800000')),
      f32('3F000000'),
    );
    returns(
      'add_132',
      () => m0.add(f32('BF000000'), f32('BF000000')),
      f32('BF800000'),
    );
    returns(
      'add_133',
      () => m0.add(f32('BF000000'), f32('3F000000')),
      f32('0'),
    );
    returns(
      'add_134',
      () => m0.add(f32('3F000000'), f32('BF000000')),
      f32('0'),
    );
    returns(
      'add_135',
      () => m0.add(f32('3F000000'), f32('3F000000')),
      f32('3F800000'),
    );
    returns(
      'add_136',
      () => m0.add(f32('BF000000'), f32('BF800000')),
      f32('BFC00000'),
    );
    returns(
      'add_137',
      () => m0.add(f32('BF000000'), f32('3F800000')),
      f32('3F000000'),
    );
    returns(
      'add_138',
      () => m0.add(f32('3F000000'), f32('BF800000')),
      f32('BF000000'),
    );
    returns(
      'add_139',
      () => m0.add(f32('3F000000'), f32('3F800000')),
      f32('3FC00000'),
    );
    returns(
      'add_140',
      () => m0.add(f32('BF000000'), f32('C0C90FDB')),
      f32('C0D90FDB'),
    );
    returns(
      'add_141',
      () => m0.add(f32('BF000000'), f32('40C90FDB')),
      f32('40B90FDB'),
    );
    returns(
      'add_142',
      () => m0.add(f32('3F000000'), f32('C0C90FDB')),
      f32('C0B90FDB'),
    );
    returns(
      'add_143',
      () => m0.add(f32('3F000000'), f32('40C90FDB')),
      f32('40D90FDB'),
    );
    returns(
      'add_144',
      () => m0.add(f32('BF000000'), f32('FF7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'add_145',
      () => m0.add(f32('BF000000'), f32('7F7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'add_146',
      () => m0.add(f32('3F000000'), f32('FF7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'add_147',
      () => m0.add(f32('3F000000'), f32('7F7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'add_148',
      () => m0.add(f32('BF000000'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'add_149',
      () => m0.add(f32('BF000000'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'add_150',
      () => m0.add(f32('3F000000'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'add_151',
      () => m0.add(f32('3F000000'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'add_152',
      () => m0.add(f32('BF000000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'add_153',
      () => m0.add(f32('BF000000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'add_154',
      () => m0.add(f32('BF000000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'add_155',
      () => m0.add(f32('BF000000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'add_156',
      () => m0.add(f32('3F000000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'add_157',
      () => m0.add(f32('3F000000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'add_158',
      () => m0.add(f32('3F000000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'add_159',
      () => m0.add(f32('3F000000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'add_160',
      () => m0.add(f32('BF800000'), f32('80000000')),
      f32('BF800000'),
    );
    returns(
      'add_161',
      () => m0.add(f32('BF800000'), f32('0')),
      f32('BF800000'),
    );
    returns(
      'add_162',
      () => m0.add(f32('3F800000'), f32('80000000')),
      f32('3F800000'),
    );
    returns(
      'add_163',
      () => m0.add(f32('3F800000'), f32('0')),
      f32('3F800000'),
    );
    returns(
      'add_164',
      () => m0.add(f32('BF800000'), f32('80000001')),
      f32('BF800000'),
    );
    returns(
      'add_165',
      () => m0.add(f32('BF800000'), f32('1')),
      f32('BF800000'),
    );
    returns(
      'add_166',
      () => m0.add(f32('3F800000'), f32('80000001')),
      f32('3F800000'),
    );
    returns(
      'add_167',
      () => m0.add(f32('3F800000'), f32('1')),
      f32('3F800000'),
    );
    returns(
      'add_168',
      () => m0.add(f32('BF800000'), f32('80800000')),
      f32('BF800000'),
    );
    returns(
      'add_169',
      () => m0.add(f32('BF800000'), f32('800000')),
      f32('BF800000'),
    );
    returns(
      'add_170',
      () => m0.add(f32('3F800000'), f32('80800000')),
      f32('3F800000'),
    );
    returns(
      'add_171',
      () => m0.add(f32('3F800000'), f32('800000')),
      f32('3F800000'),
    );
    returns(
      'add_172',
      () => m0.add(f32('BF800000'), f32('BF000000')),
      f32('BFC00000'),
    );
    returns(
      'add_173',
      () => m0.add(f32('BF800000'), f32('3F000000')),
      f32('BF000000'),
    );
    returns(
      'add_174',
      () => m0.add(f32('3F800000'), f32('BF000000')),
      f32('3F000000'),
    );
    returns(
      'add_175',
      () => m0.add(f32('3F800000'), f32('3F000000')),
      f32('3FC00000'),
    );
    returns(
      'add_176',
      () => m0.add(f32('BF800000'), f32('BF800000')),
      f32('C0000000'),
    );
    returns(
      'add_177',
      () => m0.add(f32('BF800000'), f32('3F800000')),
      f32('0'),
    );
    returns(
      'add_178',
      () => m0.add(f32('3F800000'), f32('BF800000')),
      f32('0'),
    );
    returns(
      'add_179',
      () => m0.add(f32('3F800000'), f32('3F800000')),
      f32('40000000'),
    );
    returns(
      'add_180',
      () => m0.add(f32('BF800000'), f32('C0C90FDB')),
      f32('C0E90FDB'),
    );
    returns(
      'add_181',
      () => m0.add(f32('BF800000'), f32('40C90FDB')),
      f32('40A90FDB'),
    );
    returns(
      'add_182',
      () => m0.add(f32('3F800000'), f32('C0C90FDB')),
      f32('C0A90FDB'),
    );
    returns(
      'add_183',
      () => m0.add(f32('3F800000'), f32('40C90FDB')),
      f32('40E90FDB'),
    );
    returns(
      'add_184',
      () => m0.add(f32('BF800000'), f32('FF7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'add_185',
      () => m0.add(f32('BF800000'), f32('7F7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'add_186',
      () => m0.add(f32('3F800000'), f32('FF7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'add_187',
      () => m0.add(f32('3F800000'), f32('7F7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'add_188',
      () => m0.add(f32('BF800000'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'add_189',
      () => m0.add(f32('BF800000'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'add_190',
      () => m0.add(f32('3F800000'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'add_191',
      () => m0.add(f32('3F800000'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'add_192',
      () => m0.add(f32('BF800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'add_193',
      () => m0.add(f32('BF800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'add_194',
      () => m0.add(f32('BF800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'add_195',
      () => m0.add(f32('BF800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'add_196',
      () => m0.add(f32('3F800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'add_197',
      () => m0.add(f32('3F800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'add_198',
      () => m0.add(f32('3F800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'add_199',
      () => m0.add(f32('3F800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'add_200',
      () => m0.add(f32('C0C90FDB'), f32('80000000')),
      f32('C0C90FDB'),
    );
    returns(
      'add_201',
      () => m0.add(f32('C0C90FDB'), f32('0')),
      f32('C0C90FDB'),
    );
    returns(
      'add_202',
      () => m0.add(f32('40C90FDB'), f32('80000000')),
      f32('40C90FDB'),
    );
    returns(
      'add_203',
      () => m0.add(f32('40C90FDB'), f32('0')),
      f32('40C90FDB'),
    );
    returns(
      'add_204',
      () => m0.add(f32('C0C90FDB'), f32('80000001')),
      f32('C0C90FDB'),
    );
    returns(
      'add_205',
      () => m0.add(f32('C0C90FDB'), f32('1')),
      f32('C0C90FDB'),
    );
    returns(
      'add_206',
      () => m0.add(f32('40C90FDB'), f32('80000001')),
      f32('40C90FDB'),
    );
    returns(
      'add_207',
      () => m0.add(f32('40C90FDB'), f32('1')),
      f32('40C90FDB'),
    );
    returns(
      'add_208',
      () => m0.add(f32('C0C90FDB'), f32('80800000')),
      f32('C0C90FDB'),
    );
    returns(
      'add_209',
      () => m0.add(f32('C0C90FDB'), f32('800000')),
      f32('C0C90FDB'),
    );
    returns(
      'add_210',
      () => m0.add(f32('40C90FDB'), f32('80800000')),
      f32('40C90FDB'),
    );
    returns(
      'add_211',
      () => m0.add(f32('40C90FDB'), f32('800000')),
      f32('40C90FDB'),
    );
    returns(
      'add_212',
      () => m0.add(f32('C0C90FDB'), f32('BF000000')),
      f32('C0D90FDB'),
    );
    returns(
      'add_213',
      () => m0.add(f32('C0C90FDB'), f32('3F000000')),
      f32('C0B90FDB'),
    );
    returns(
      'add_214',
      () => m0.add(f32('40C90FDB'), f32('BF000000')),
      f32('40B90FDB'),
    );
    returns(
      'add_215',
      () => m0.add(f32('40C90FDB'), f32('3F000000')),
      f32('40D90FDB'),
    );
    returns(
      'add_216',
      () => m0.add(f32('C0C90FDB'), f32('BF800000')),
      f32('C0E90FDB'),
    );
    returns(
      'add_217',
      () => m0.add(f32('C0C90FDB'), f32('3F800000')),
      f32('C0A90FDB'),
    );
    returns(
      'add_218',
      () => m0.add(f32('40C90FDB'), f32('BF800000')),
      f32('40A90FDB'),
    );
    returns(
      'add_219',
      () => m0.add(f32('40C90FDB'), f32('3F800000')),
      f32('40E90FDB'),
    );
    returns(
      'add_220',
      () => m0.add(f32('C0C90FDB'), f32('C0C90FDB')),
      f32('C1490FDB'),
    );
    returns(
      'add_221',
      () => m0.add(f32('C0C90FDB'), f32('40C90FDB')),
      f32('0'),
    );
    returns(
      'add_222',
      () => m0.add(f32('40C90FDB'), f32('C0C90FDB')),
      f32('0'),
    );
    returns(
      'add_223',
      () => m0.add(f32('40C90FDB'), f32('40C90FDB')),
      f32('41490FDB'),
    );
    returns(
      'add_224',
      () => m0.add(f32('C0C90FDB'), f32('FF7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'add_225',
      () => m0.add(f32('C0C90FDB'), f32('7F7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'add_226',
      () => m0.add(f32('40C90FDB'), f32('FF7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'add_227',
      () => m0.add(f32('40C90FDB'), f32('7F7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'add_228',
      () => m0.add(f32('C0C90FDB'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'add_229',
      () => m0.add(f32('C0C90FDB'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'add_230',
      () => m0.add(f32('40C90FDB'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'add_231',
      () => m0.add(f32('40C90FDB'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'add_232',
      () => m0.add(f32('C0C90FDB'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'add_233',
      () => m0.add(f32('C0C90FDB'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'add_234',
      () => m0.add(f32('C0C90FDB'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'add_235',
      () => m0.add(f32('C0C90FDB'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'add_236',
      () => m0.add(f32('40C90FDB'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'add_237',
      () => m0.add(f32('40C90FDB'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'add_238',
      () => m0.add(f32('40C90FDB'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'add_239',
      () => m0.add(f32('40C90FDB'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'add_240',
      () => m0.add(f32('FF7FFFFF'), f32('80000000')),
      f32('FF7FFFFF'),
    );
    returns(
      'add_241',
      () => m0.add(f32('FF7FFFFF'), f32('0')),
      f32('FF7FFFFF'),
    );
    returns(
      'add_242',
      () => m0.add(f32('7F7FFFFF'), f32('80000000')),
      f32('7F7FFFFF'),
    );
    returns(
      'add_243',
      () => m0.add(f32('7F7FFFFF'), f32('0')),
      f32('7F7FFFFF'),
    );
    returns(
      'add_244',
      () => m0.add(f32('FF7FFFFF'), f32('80000001')),
      f32('FF7FFFFF'),
    );
    returns(
      'add_245',
      () => m0.add(f32('FF7FFFFF'), f32('1')),
      f32('FF7FFFFF'),
    );
    returns(
      'add_246',
      () => m0.add(f32('7F7FFFFF'), f32('80000001')),
      f32('7F7FFFFF'),
    );
    returns(
      'add_247',
      () => m0.add(f32('7F7FFFFF'), f32('1')),
      f32('7F7FFFFF'),
    );
    returns(
      'add_248',
      () => m0.add(f32('FF7FFFFF'), f32('80800000')),
      f32('FF7FFFFF'),
    );
    returns(
      'add_249',
      () => m0.add(f32('FF7FFFFF'), f32('800000')),
      f32('FF7FFFFF'),
    );
    returns(
      'add_250',
      () => m0.add(f32('7F7FFFFF'), f32('80800000')),
      f32('7F7FFFFF'),
    );
    returns(
      'add_251',
      () => m0.add(f32('7F7FFFFF'), f32('800000')),
      f32('7F7FFFFF'),
    );
    returns(
      'add_252',
      () => m0.add(f32('FF7FFFFF'), f32('BF000000')),
      f32('FF7FFFFF'),
    );
    returns(
      'add_253',
      () => m0.add(f32('FF7FFFFF'), f32('3F000000')),
      f32('FF7FFFFF'),
    );
    returns(
      'add_254',
      () => m0.add(f32('7F7FFFFF'), f32('BF000000')),
      f32('7F7FFFFF'),
    );
    returns(
      'add_255',
      () => m0.add(f32('7F7FFFFF'), f32('3F000000')),
      f32('7F7FFFFF'),
    );
    returns(
      'add_256',
      () => m0.add(f32('FF7FFFFF'), f32('BF800000')),
      f32('FF7FFFFF'),
    );
    returns(
      'add_257',
      () => m0.add(f32('FF7FFFFF'), f32('3F800000')),
      f32('FF7FFFFF'),
    );
    returns(
      'add_258',
      () => m0.add(f32('7F7FFFFF'), f32('BF800000')),
      f32('7F7FFFFF'),
    );
    returns(
      'add_259',
      () => m0.add(f32('7F7FFFFF'), f32('3F800000')),
      f32('7F7FFFFF'),
    );
    returns(
      'add_260',
      () => m0.add(f32('FF7FFFFF'), f32('C0C90FDB')),
      f32('FF7FFFFF'),
    );
    returns(
      'add_261',
      () => m0.add(f32('FF7FFFFF'), f32('40C90FDB')),
      f32('FF7FFFFF'),
    );
    returns(
      'add_262',
      () => m0.add(f32('7F7FFFFF'), f32('C0C90FDB')),
      f32('7F7FFFFF'),
    );
    returns(
      'add_263',
      () => m0.add(f32('7F7FFFFF'), f32('40C90FDB')),
      f32('7F7FFFFF'),
    );
    returns(
      'add_264',
      () => m0.add(f32('FF7FFFFF'), f32('FF7FFFFF')),
      f32('FF800000'),
    );
    returns(
      'add_265',
      () => m0.add(f32('FF7FFFFF'), f32('7F7FFFFF')),
      f32('0'),
    );
    returns(
      'add_266',
      () => m0.add(f32('7F7FFFFF'), f32('FF7FFFFF')),
      f32('0'),
    );
    returns(
      'add_267',
      () => m0.add(f32('7F7FFFFF'), f32('7F7FFFFF')),
      f32('7F800000'),
    );
    returns(
      'add_268',
      () => m0.add(f32('FF7FFFFF'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'add_269',
      () => m0.add(f32('FF7FFFFF'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'add_270',
      () => m0.add(f32('7F7FFFFF'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'add_271',
      () => m0.add(f32('7F7FFFFF'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'add_272',
      () => m0.add(f32('FF7FFFFF'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'add_273',
      () => m0.add(f32('FF7FFFFF'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'add_274',
      () => m0.add(f32('FF7FFFFF'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'add_275',
      () => m0.add(f32('FF7FFFFF'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'add_276',
      () => m0.add(f32('7F7FFFFF'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'add_277',
      () => m0.add(f32('7F7FFFFF'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'add_278',
      () => m0.add(f32('7F7FFFFF'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'add_279',
      () => m0.add(f32('7F7FFFFF'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'add_280',
      () => m0.add(f32('FF800000'), f32('80000000')),
      f32('FF800000'),
    );
    returns(
      'add_281',
      () => m0.add(f32('FF800000'), f32('0')),
      f32('FF800000'),
    );
    returns(
      'add_282',
      () => m0.add(f32('7F800000'), f32('80000000')),
      f32('7F800000'),
    );
    returns(
      'add_283',
      () => m0.add(f32('7F800000'), f32('0')),
      f32('7F800000'),
    );
    returns(
      'add_284',
      () => m0.add(f32('FF800000'), f32('80000001')),
      f32('FF800000'),
    );
    returns(
      'add_285',
      () => m0.add(f32('FF800000'), f32('1')),
      f32('FF800000'),
    );
    returns(
      'add_286',
      () => m0.add(f32('7F800000'), f32('80000001')),
      f32('7F800000'),
    );
    returns(
      'add_287',
      () => m0.add(f32('7F800000'), f32('1')),
      f32('7F800000'),
    );
    returns(
      'add_288',
      () => m0.add(f32('FF800000'), f32('80800000')),
      f32('FF800000'),
    );
    returns(
      'add_289',
      () => m0.add(f32('FF800000'), f32('800000')),
      f32('FF800000'),
    );
    returns(
      'add_290',
      () => m0.add(f32('7F800000'), f32('80800000')),
      f32('7F800000'),
    );
    returns(
      'add_291',
      () => m0.add(f32('7F800000'), f32('800000')),
      f32('7F800000'),
    );
    returns(
      'add_292',
      () => m0.add(f32('FF800000'), f32('BF000000')),
      f32('FF800000'),
    );
    returns(
      'add_293',
      () => m0.add(f32('FF800000'), f32('3F000000')),
      f32('FF800000'),
    );
    returns(
      'add_294',
      () => m0.add(f32('7F800000'), f32('BF000000')),
      f32('7F800000'),
    );
    returns(
      'add_295',
      () => m0.add(f32('7F800000'), f32('3F000000')),
      f32('7F800000'),
    );
    returns(
      'add_296',
      () => m0.add(f32('FF800000'), f32('BF800000')),
      f32('FF800000'),
    );
    returns(
      'add_297',
      () => m0.add(f32('FF800000'), f32('3F800000')),
      f32('FF800000'),
    );
    returns(
      'add_298',
      () => m0.add(f32('7F800000'), f32('BF800000')),
      f32('7F800000'),
    );
    returns(
      'add_299',
      () => m0.add(f32('7F800000'), f32('3F800000')),
      f32('7F800000'),
    );
    returns(
      'add_300',
      () => m0.add(f32('FF800000'), f32('C0C90FDB')),
      f32('FF800000'),
    );
    returns(
      'add_301',
      () => m0.add(f32('FF800000'), f32('40C90FDB')),
      f32('FF800000'),
    );
    returns(
      'add_302',
      () => m0.add(f32('7F800000'), f32('C0C90FDB')),
      f32('7F800000'),
    );
    returns(
      'add_303',
      () => m0.add(f32('7F800000'), f32('40C90FDB')),
      f32('7F800000'),
    );
    returns(
      'add_304',
      () => m0.add(f32('FF800000'), f32('FF7FFFFF')),
      f32('FF800000'),
    );
    returns(
      'add_305',
      () => m0.add(f32('FF800000'), f32('7F7FFFFF')),
      f32('FF800000'),
    );
    returns(
      'add_306',
      () => m0.add(f32('7F800000'), f32('FF7FFFFF')),
      f32('7F800000'),
    );
    returns(
      'add_307',
      () => m0.add(f32('7F800000'), f32('7F7FFFFF')),
      f32('7F800000'),
    );
    returns(
      'add_308',
      () => m0.add(f32('FF800000'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'add_309',
      () => m0.add(f32('FF800000'), f32('7F800000')),
      double.nan,
    );
    returns(
      'add_310',
      () => m0.add(f32('7F800000'), f32('FF800000')),
      double.nan,
    );
    returns(
      'add_311',
      () => m0.add(f32('7F800000'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'add_312',
      () => m0.add(f32('FF800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'add_313',
      () => m0.add(f32('FF800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'add_314',
      () => m0.add(f32('FF800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'add_315',
      () => m0.add(f32('FF800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'add_316',
      () => m0.add(f32('7F800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'add_317',
      () => m0.add(f32('7F800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'add_318',
      () => m0.add(f32('7F800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'add_319',
      () => m0.add(f32('7F800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'add_320',
      () => m0.add(f32('FFC00000'), f32('80000000')),
      double.nan,
    );
    returns(
      'add_321',
      () => m0.add(f32('FFA00000'), f32('80000000')),
      double.nan,
    );
    returns('add_322', () => m0.add(f32('FFC00000'), f32('0')), double.nan);
    returns('add_323', () => m0.add(f32('FFA00000'), f32('0')), double.nan);
    returns(
      'add_324',
      () => m0.add(f32('7FC00000'), f32('80000000')),
      double.nan,
    );
    returns(
      'add_325',
      () => m0.add(f32('7FA00000'), f32('80000000')),
      double.nan,
    );
    returns('add_326', () => m0.add(f32('7FC00000'), f32('0')), double.nan);
    returns('add_327', () => m0.add(f32('7FA00000'), f32('0')), double.nan);
    returns(
      'add_328',
      () => m0.add(f32('FFC00000'), f32('80000001')),
      double.nan,
    );
    returns(
      'add_329',
      () => m0.add(f32('FFA00000'), f32('80000001')),
      double.nan,
    );
    returns('add_330', () => m0.add(f32('FFC00000'), f32('1')), double.nan);
    returns('add_331', () => m0.add(f32('FFA00000'), f32('1')), double.nan);
    returns(
      'add_332',
      () => m0.add(f32('7FC00000'), f32('80000001')),
      double.nan,
    );
    returns(
      'add_333',
      () => m0.add(f32('7FA00000'), f32('80000001')),
      double.nan,
    );
    returns('add_334', () => m0.add(f32('7FC00000'), f32('1')), double.nan);
    returns('add_335', () => m0.add(f32('7FA00000'), f32('1')), double.nan);
    returns(
      'add_336',
      () => m0.add(f32('FFC00000'), f32('80800000')),
      double.nan,
    );
    returns(
      'add_337',
      () => m0.add(f32('FFA00000'), f32('80800000')),
      double.nan,
    );
    returns(
      'add_338',
      () => m0.add(f32('FFC00000'), f32('800000')),
      double.nan,
    );
    returns(
      'add_339',
      () => m0.add(f32('FFA00000'), f32('800000')),
      double.nan,
    );
    returns(
      'add_340',
      () => m0.add(f32('7FC00000'), f32('80800000')),
      double.nan,
    );
    returns(
      'add_341',
      () => m0.add(f32('7FA00000'), f32('80800000')),
      double.nan,
    );
    returns(
      'add_342',
      () => m0.add(f32('7FC00000'), f32('800000')),
      double.nan,
    );
    returns(
      'add_343',
      () => m0.add(f32('7FA00000'), f32('800000')),
      double.nan,
    );
    returns(
      'add_344',
      () => m0.add(f32('FFC00000'), f32('BF000000')),
      double.nan,
    );
    returns(
      'add_345',
      () => m0.add(f32('FFA00000'), f32('BF000000')),
      double.nan,
    );
    returns(
      'add_346',
      () => m0.add(f32('FFC00000'), f32('3F000000')),
      double.nan,
    );
    returns(
      'add_347',
      () => m0.add(f32('FFA00000'), f32('3F000000')),
      double.nan,
    );
    returns(
      'add_348',
      () => m0.add(f32('7FC00000'), f32('BF000000')),
      double.nan,
    );
    returns(
      'add_349',
      () => m0.add(f32('7FA00000'), f32('BF000000')),
      double.nan,
    );
    returns(
      'add_350',
      () => m0.add(f32('7FC00000'), f32('3F000000')),
      double.nan,
    );
    returns(
      'add_351',
      () => m0.add(f32('7FA00000'), f32('3F000000')),
      double.nan,
    );
    returns(
      'add_352',
      () => m0.add(f32('FFC00000'), f32('BF800000')),
      double.nan,
    );
    returns(
      'add_353',
      () => m0.add(f32('FFA00000'), f32('BF800000')),
      double.nan,
    );
    returns(
      'add_354',
      () => m0.add(f32('FFC00000'), f32('3F800000')),
      double.nan,
    );
    returns(
      'add_355',
      () => m0.add(f32('FFA00000'), f32('3F800000')),
      double.nan,
    );
    returns(
      'add_356',
      () => m0.add(f32('7FC00000'), f32('BF800000')),
      double.nan,
    );
    returns(
      'add_357',
      () => m0.add(f32('7FA00000'), f32('BF800000')),
      double.nan,
    );
    returns(
      'add_358',
      () => m0.add(f32('7FC00000'), f32('3F800000')),
      double.nan,
    );
    returns(
      'add_359',
      () => m0.add(f32('7FA00000'), f32('3F800000')),
      double.nan,
    );
    returns(
      'add_360',
      () => m0.add(f32('FFC00000'), f32('C0C90FDB')),
      double.nan,
    );
    returns(
      'add_361',
      () => m0.add(f32('FFA00000'), f32('C0C90FDB')),
      double.nan,
    );
    returns(
      'add_362',
      () => m0.add(f32('FFC00000'), f32('40C90FDB')),
      double.nan,
    );
    returns(
      'add_363',
      () => m0.add(f32('FFA00000'), f32('40C90FDB')),
      double.nan,
    );
    returns(
      'add_364',
      () => m0.add(f32('7FC00000'), f32('C0C90FDB')),
      double.nan,
    );
    returns(
      'add_365',
      () => m0.add(f32('7FA00000'), f32('C0C90FDB')),
      double.nan,
    );
    returns(
      'add_366',
      () => m0.add(f32('7FC00000'), f32('40C90FDB')),
      double.nan,
    );
    returns(
      'add_367',
      () => m0.add(f32('7FA00000'), f32('40C90FDB')),
      double.nan,
    );
    returns(
      'add_368',
      () => m0.add(f32('FFC00000'), f32('FF7FFFFF')),
      double.nan,
    );
    returns(
      'add_369',
      () => m0.add(f32('FFA00000'), f32('FF7FFFFF')),
      double.nan,
    );
    returns(
      'add_370',
      () => m0.add(f32('FFC00000'), f32('7F7FFFFF')),
      double.nan,
    );
    returns(
      'add_371',
      () => m0.add(f32('FFA00000'), f32('7F7FFFFF')),
      double.nan,
    );
    returns(
      'add_372',
      () => m0.add(f32('7FC00000'), f32('FF7FFFFF')),
      double.nan,
    );
    returns(
      'add_373',
      () => m0.add(f32('7FA00000'), f32('FF7FFFFF')),
      double.nan,
    );
    returns(
      'add_374',
      () => m0.add(f32('7FC00000'), f32('7F7FFFFF')),
      double.nan,
    );
    returns(
      'add_375',
      () => m0.add(f32('7FA00000'), f32('7F7FFFFF')),
      double.nan,
    );
    returns(
      'add_376',
      () => m0.add(f32('FFC00000'), f32('FF800000')),
      double.nan,
    );
    returns(
      'add_377',
      () => m0.add(f32('FFA00000'), f32('FF800000')),
      double.nan,
    );
    returns(
      'add_378',
      () => m0.add(f32('FFC00000'), f32('7F800000')),
      double.nan,
    );
    returns(
      'add_379',
      () => m0.add(f32('FFA00000'), f32('7F800000')),
      double.nan,
    );
    returns(
      'add_380',
      () => m0.add(f32('7FC00000'), f32('FF800000')),
      double.nan,
    );
    returns(
      'add_381',
      () => m0.add(f32('7FA00000'), f32('FF800000')),
      double.nan,
    );
    returns(
      'add_382',
      () => m0.add(f32('7FC00000'), f32('7F800000')),
      double.nan,
    );
    returns(
      'add_383',
      () => m0.add(f32('7FA00000'), f32('7F800000')),
      double.nan,
    );
    returns(
      'add_384',
      () => m0.add(f32('FFC00000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'add_385',
      () => m0.add(f32('FFA00000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'add_386',
      () => m0.add(f32('FFC00000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'add_387',
      () => m0.add(f32('FFA00000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'add_388',
      () => m0.add(f32('FFC00000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'add_389',
      () => m0.add(f32('FFA00000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'add_390',
      () => m0.add(f32('FFC00000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'add_391',
      () => m0.add(f32('FFA00000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'add_392',
      () => m0.add(f32('7FC00000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'add_393',
      () => m0.add(f32('7FA00000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'add_394',
      () => m0.add(f32('7FC00000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'add_395',
      () => m0.add(f32('7FA00000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'add_396',
      () => m0.add(f32('7FC00000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'add_397',
      () => m0.add(f32('7FA00000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'add_398',
      () => m0.add(f32('7FC00000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'add_399',
      () => m0.add(f32('7FA00000'), f32('7FA00000')),
      double.nan,
    );
    returns('sub_0', () => m0.sub(f32('80000000'), f32('80000000')), f32('0'));
    returns('sub_1', () => m0.sub(f32('80000000'), f32('0')), f32('80000000'));
    returns('sub_2', () => m0.sub(f32('0'), f32('80000000')), f32('0'));
    returns('sub_3', () => m0.sub(f32('0'), f32('0')), f32('0'));
    returns('sub_4', () => m0.sub(f32('80000000'), f32('80000001')), f32('1'));
    returns('sub_5', () => m0.sub(f32('80000000'), f32('1')), f32('80000001'));
    returns('sub_6', () => m0.sub(f32('0'), f32('80000001')), f32('1'));
    returns('sub_7', () => m0.sub(f32('0'), f32('1')), f32('80000001'));
    returns(
      'sub_8',
      () => m0.sub(f32('80000000'), f32('80800000')),
      f32('800000'),
    );
    returns(
      'sub_9',
      () => m0.sub(f32('80000000'), f32('800000')),
      f32('80800000'),
    );
    returns('sub_10', () => m0.sub(f32('0'), f32('80800000')), f32('800000'));
    returns('sub_11', () => m0.sub(f32('0'), f32('800000')), f32('80800000'));
    returns(
      'sub_12',
      () => m0.sub(f32('80000000'), f32('BF000000')),
      f32('3F000000'),
    );
    returns(
      'sub_13',
      () => m0.sub(f32('80000000'), f32('3F000000')),
      f32('BF000000'),
    );
    returns('sub_14', () => m0.sub(f32('0'), f32('BF000000')), f32('3F000000'));
    returns('sub_15', () => m0.sub(f32('0'), f32('3F000000')), f32('BF000000'));
    returns(
      'sub_16',
      () => m0.sub(f32('80000000'), f32('BF800000')),
      f32('3F800000'),
    );
    returns(
      'sub_17',
      () => m0.sub(f32('80000000'), f32('3F800000')),
      f32('BF800000'),
    );
    returns('sub_18', () => m0.sub(f32('0'), f32('BF800000')), f32('3F800000'));
    returns('sub_19', () => m0.sub(f32('0'), f32('3F800000')), f32('BF800000'));
    returns(
      'sub_20',
      () => m0.sub(f32('80000000'), f32('C0C90FDB')),
      f32('40C90FDB'),
    );
    returns(
      'sub_21',
      () => m0.sub(f32('80000000'), f32('40C90FDB')),
      f32('C0C90FDB'),
    );
    returns('sub_22', () => m0.sub(f32('0'), f32('C0C90FDB')), f32('40C90FDB'));
    returns('sub_23', () => m0.sub(f32('0'), f32('40C90FDB')), f32('C0C90FDB'));
    returns(
      'sub_24',
      () => m0.sub(f32('80000000'), f32('FF7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'sub_25',
      () => m0.sub(f32('80000000'), f32('7F7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns('sub_26', () => m0.sub(f32('0'), f32('FF7FFFFF')), f32('7F7FFFFF'));
    returns('sub_27', () => m0.sub(f32('0'), f32('7F7FFFFF')), f32('FF7FFFFF'));
    returns(
      'sub_28',
      () => m0.sub(f32('80000000'), f32('FF800000')),
      f32('7F800000'),
    );
    returns(
      'sub_29',
      () => m0.sub(f32('80000000'), f32('7F800000')),
      f32('FF800000'),
    );
    returns('sub_30', () => m0.sub(f32('0'), f32('FF800000')), f32('7F800000'));
    returns('sub_31', () => m0.sub(f32('0'), f32('7F800000')), f32('FF800000'));
    returns(
      'sub_32',
      () => m0.sub(f32('80000000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'sub_33',
      () => m0.sub(f32('80000000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'sub_34',
      () => m0.sub(f32('80000000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'sub_35',
      () => m0.sub(f32('80000000'), f32('7FA00000')),
      double.nan,
    );
    returns('sub_36', () => m0.sub(f32('0'), f32('FFC00000')), double.nan);
    returns('sub_37', () => m0.sub(f32('0'), f32('FFA00000')), double.nan);
    returns('sub_38', () => m0.sub(f32('0'), f32('7FC00000')), double.nan);
    returns('sub_39', () => m0.sub(f32('0'), f32('7FA00000')), double.nan);
    returns(
      'sub_40',
      () => m0.sub(f32('80000001'), f32('80000000')),
      f32('80000001'),
    );
    returns('sub_41', () => m0.sub(f32('80000001'), f32('0')), f32('80000001'));
    returns('sub_42', () => m0.sub(f32('1'), f32('80000000')), f32('1'));
    returns('sub_43', () => m0.sub(f32('1'), f32('0')), f32('1'));
    returns('sub_44', () => m0.sub(f32('80000001'), f32('80000001')), f32('0'));
    returns('sub_45', () => m0.sub(f32('80000001'), f32('1')), f32('80000002'));
    returns('sub_46', () => m0.sub(f32('1'), f32('80000001')), f32('2'));
    returns('sub_47', () => m0.sub(f32('1'), f32('1')), f32('0'));
    returns(
      'sub_48',
      () => m0.sub(f32('80000001'), f32('80800000')),
      f32('7FFFFF'),
    );
    returns(
      'sub_49',
      () => m0.sub(f32('80000001'), f32('800000')),
      f32('80800001'),
    );
    returns('sub_50', () => m0.sub(f32('1'), f32('80800000')), f32('800001'));
    returns('sub_51', () => m0.sub(f32('1'), f32('800000')), f32('807FFFFF'));
    returns(
      'sub_52',
      () => m0.sub(f32('80000001'), f32('BF000000')),
      f32('3F000000'),
    );
    returns(
      'sub_53',
      () => m0.sub(f32('80000001'), f32('3F000000')),
      f32('BF000000'),
    );
    returns('sub_54', () => m0.sub(f32('1'), f32('BF000000')), f32('3F000000'));
    returns('sub_55', () => m0.sub(f32('1'), f32('3F000000')), f32('BF000000'));
    returns(
      'sub_56',
      () => m0.sub(f32('80000001'), f32('BF800000')),
      f32('3F800000'),
    );
    returns(
      'sub_57',
      () => m0.sub(f32('80000001'), f32('3F800000')),
      f32('BF800000'),
    );
    returns('sub_58', () => m0.sub(f32('1'), f32('BF800000')), f32('3F800000'));
    returns('sub_59', () => m0.sub(f32('1'), f32('3F800000')), f32('BF800000'));
    returns(
      'sub_60',
      () => m0.sub(f32('80000001'), f32('C0C90FDB')),
      f32('40C90FDB'),
    );
    returns(
      'sub_61',
      () => m0.sub(f32('80000001'), f32('40C90FDB')),
      f32('C0C90FDB'),
    );
    returns('sub_62', () => m0.sub(f32('1'), f32('C0C90FDB')), f32('40C90FDB'));
    returns('sub_63', () => m0.sub(f32('1'), f32('40C90FDB')), f32('C0C90FDB'));
    returns(
      'sub_64',
      () => m0.sub(f32('80000001'), f32('FF7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'sub_65',
      () => m0.sub(f32('80000001'), f32('7F7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns('sub_66', () => m0.sub(f32('1'), f32('FF7FFFFF')), f32('7F7FFFFF'));
    returns('sub_67', () => m0.sub(f32('1'), f32('7F7FFFFF')), f32('FF7FFFFF'));
    returns(
      'sub_68',
      () => m0.sub(f32('80000001'), f32('FF800000')),
      f32('7F800000'),
    );
    returns(
      'sub_69',
      () => m0.sub(f32('80000001'), f32('7F800000')),
      f32('FF800000'),
    );
    returns('sub_70', () => m0.sub(f32('1'), f32('FF800000')), f32('7F800000'));
    returns('sub_71', () => m0.sub(f32('1'), f32('7F800000')), f32('FF800000'));
    returns(
      'sub_72',
      () => m0.sub(f32('80000001'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'sub_73',
      () => m0.sub(f32('80000001'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'sub_74',
      () => m0.sub(f32('80000001'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'sub_75',
      () => m0.sub(f32('80000001'), f32('7FA00000')),
      double.nan,
    );
    returns('sub_76', () => m0.sub(f32('1'), f32('FFC00000')), double.nan);
    returns('sub_77', () => m0.sub(f32('1'), f32('FFA00000')), double.nan);
    returns('sub_78', () => m0.sub(f32('1'), f32('7FC00000')), double.nan);
    returns('sub_79', () => m0.sub(f32('1'), f32('7FA00000')), double.nan);
    returns(
      'sub_80',
      () => m0.sub(f32('80800000'), f32('80000000')),
      f32('80800000'),
    );
    returns('sub_81', () => m0.sub(f32('80800000'), f32('0')), f32('80800000'));
    returns(
      'sub_82',
      () => m0.sub(f32('800000'), f32('80000000')),
      f32('800000'),
    );
    returns('sub_83', () => m0.sub(f32('800000'), f32('0')), f32('800000'));
    returns(
      'sub_84',
      () => m0.sub(f32('80800000'), f32('80000001')),
      f32('807FFFFF'),
    );
    returns('sub_85', () => m0.sub(f32('80800000'), f32('1')), f32('80800001'));
    returns(
      'sub_86',
      () => m0.sub(f32('800000'), f32('80000001')),
      f32('800001'),
    );
    returns('sub_87', () => m0.sub(f32('800000'), f32('1')), f32('7FFFFF'));
    returns('sub_88', () => m0.sub(f32('80800000'), f32('80800000')), f32('0'));
    returns(
      'sub_89',
      () => m0.sub(f32('80800000'), f32('800000')),
      f32('81000000'),
    );
    returns(
      'sub_90',
      () => m0.sub(f32('800000'), f32('80800000')),
      f32('1000000'),
    );
    returns('sub_91', () => m0.sub(f32('800000'), f32('800000')), f32('0'));
    returns(
      'sub_92',
      () => m0.sub(f32('80800000'), f32('BF000000')),
      f32('3F000000'),
    );
    returns(
      'sub_93',
      () => m0.sub(f32('80800000'), f32('3F000000')),
      f32('BF000000'),
    );
    returns(
      'sub_94',
      () => m0.sub(f32('800000'), f32('BF000000')),
      f32('3F000000'),
    );
    returns(
      'sub_95',
      () => m0.sub(f32('800000'), f32('3F000000')),
      f32('BF000000'),
    );
    returns(
      'sub_96',
      () => m0.sub(f32('80800000'), f32('BF800000')),
      f32('3F800000'),
    );
    returns(
      'sub_97',
      () => m0.sub(f32('80800000'), f32('3F800000')),
      f32('BF800000'),
    );
    returns(
      'sub_98',
      () => m0.sub(f32('800000'), f32('BF800000')),
      f32('3F800000'),
    );
    returns(
      'sub_99',
      () => m0.sub(f32('800000'), f32('3F800000')),
      f32('BF800000'),
    );
    returns(
      'sub_100',
      () => m0.sub(f32('80800000'), f32('C0C90FDB')),
      f32('40C90FDB'),
    );
    returns(
      'sub_101',
      () => m0.sub(f32('80800000'), f32('40C90FDB')),
      f32('C0C90FDB'),
    );
    returns(
      'sub_102',
      () => m0.sub(f32('800000'), f32('C0C90FDB')),
      f32('40C90FDB'),
    );
    returns(
      'sub_103',
      () => m0.sub(f32('800000'), f32('40C90FDB')),
      f32('C0C90FDB'),
    );
    returns(
      'sub_104',
      () => m0.sub(f32('80800000'), f32('FF7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'sub_105',
      () => m0.sub(f32('80800000'), f32('7F7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'sub_106',
      () => m0.sub(f32('800000'), f32('FF7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'sub_107',
      () => m0.sub(f32('800000'), f32('7F7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'sub_108',
      () => m0.sub(f32('80800000'), f32('FF800000')),
      f32('7F800000'),
    );
    returns(
      'sub_109',
      () => m0.sub(f32('80800000'), f32('7F800000')),
      f32('FF800000'),
    );
    returns(
      'sub_110',
      () => m0.sub(f32('800000'), f32('FF800000')),
      f32('7F800000'),
    );
    returns(
      'sub_111',
      () => m0.sub(f32('800000'), f32('7F800000')),
      f32('FF800000'),
    );
    returns(
      'sub_112',
      () => m0.sub(f32('80800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'sub_113',
      () => m0.sub(f32('80800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'sub_114',
      () => m0.sub(f32('80800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'sub_115',
      () => m0.sub(f32('80800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'sub_116',
      () => m0.sub(f32('800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'sub_117',
      () => m0.sub(f32('800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'sub_118',
      () => m0.sub(f32('800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'sub_119',
      () => m0.sub(f32('800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'sub_120',
      () => m0.sub(f32('BF000000'), f32('80000000')),
      f32('BF000000'),
    );
    returns(
      'sub_121',
      () => m0.sub(f32('BF000000'), f32('0')),
      f32('BF000000'),
    );
    returns(
      'sub_122',
      () => m0.sub(f32('3F000000'), f32('80000000')),
      f32('3F000000'),
    );
    returns(
      'sub_123',
      () => m0.sub(f32('3F000000'), f32('0')),
      f32('3F000000'),
    );
    returns(
      'sub_124',
      () => m0.sub(f32('BF000000'), f32('80000001')),
      f32('BF000000'),
    );
    returns(
      'sub_125',
      () => m0.sub(f32('BF000000'), f32('1')),
      f32('BF000000'),
    );
    returns(
      'sub_126',
      () => m0.sub(f32('3F000000'), f32('80000001')),
      f32('3F000000'),
    );
    returns(
      'sub_127',
      () => m0.sub(f32('3F000000'), f32('1')),
      f32('3F000000'),
    );
    returns(
      'sub_128',
      () => m0.sub(f32('BF000000'), f32('80800000')),
      f32('BF000000'),
    );
    returns(
      'sub_129',
      () => m0.sub(f32('BF000000'), f32('800000')),
      f32('BF000000'),
    );
    returns(
      'sub_130',
      () => m0.sub(f32('3F000000'), f32('80800000')),
      f32('3F000000'),
    );
    returns(
      'sub_131',
      () => m0.sub(f32('3F000000'), f32('800000')),
      f32('3F000000'),
    );
    returns(
      'sub_132',
      () => m0.sub(f32('BF000000'), f32('BF000000')),
      f32('0'),
    );
    returns(
      'sub_133',
      () => m0.sub(f32('BF000000'), f32('3F000000')),
      f32('BF800000'),
    );
    returns(
      'sub_134',
      () => m0.sub(f32('3F000000'), f32('BF000000')),
      f32('3F800000'),
    );
    returns(
      'sub_135',
      () => m0.sub(f32('3F000000'), f32('3F000000')),
      f32('0'),
    );
    returns(
      'sub_136',
      () => m0.sub(f32('BF000000'), f32('BF800000')),
      f32('3F000000'),
    );
    returns(
      'sub_137',
      () => m0.sub(f32('BF000000'), f32('3F800000')),
      f32('BFC00000'),
    );
    returns(
      'sub_138',
      () => m0.sub(f32('3F000000'), f32('BF800000')),
      f32('3FC00000'),
    );
    returns(
      'sub_139',
      () => m0.sub(f32('3F000000'), f32('3F800000')),
      f32('BF000000'),
    );
    returns(
      'sub_140',
      () => m0.sub(f32('BF000000'), f32('C0C90FDB')),
      f32('40B90FDB'),
    );
    returns(
      'sub_141',
      () => m0.sub(f32('BF000000'), f32('40C90FDB')),
      f32('C0D90FDB'),
    );
    returns(
      'sub_142',
      () => m0.sub(f32('3F000000'), f32('C0C90FDB')),
      f32('40D90FDB'),
    );
    returns(
      'sub_143',
      () => m0.sub(f32('3F000000'), f32('40C90FDB')),
      f32('C0B90FDB'),
    );
    returns(
      'sub_144',
      () => m0.sub(f32('BF000000'), f32('FF7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'sub_145',
      () => m0.sub(f32('BF000000'), f32('7F7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'sub_146',
      () => m0.sub(f32('3F000000'), f32('FF7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'sub_147',
      () => m0.sub(f32('3F000000'), f32('7F7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'sub_148',
      () => m0.sub(f32('BF000000'), f32('FF800000')),
      f32('7F800000'),
    );
    returns(
      'sub_149',
      () => m0.sub(f32('BF000000'), f32('7F800000')),
      f32('FF800000'),
    );
    returns(
      'sub_150',
      () => m0.sub(f32('3F000000'), f32('FF800000')),
      f32('7F800000'),
    );
    returns(
      'sub_151',
      () => m0.sub(f32('3F000000'), f32('7F800000')),
      f32('FF800000'),
    );
    returns(
      'sub_152',
      () => m0.sub(f32('BF000000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'sub_153',
      () => m0.sub(f32('BF000000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'sub_154',
      () => m0.sub(f32('BF000000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'sub_155',
      () => m0.sub(f32('BF000000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'sub_156',
      () => m0.sub(f32('3F000000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'sub_157',
      () => m0.sub(f32('3F000000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'sub_158',
      () => m0.sub(f32('3F000000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'sub_159',
      () => m0.sub(f32('3F000000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'sub_160',
      () => m0.sub(f32('BF800000'), f32('80000000')),
      f32('BF800000'),
    );
    returns(
      'sub_161',
      () => m0.sub(f32('BF800000'), f32('0')),
      f32('BF800000'),
    );
    returns(
      'sub_162',
      () => m0.sub(f32('3F800000'), f32('80000000')),
      f32('3F800000'),
    );
    returns(
      'sub_163',
      () => m0.sub(f32('3F800000'), f32('0')),
      f32('3F800000'),
    );
    returns(
      'sub_164',
      () => m0.sub(f32('BF800000'), f32('80000001')),
      f32('BF800000'),
    );
    returns(
      'sub_165',
      () => m0.sub(f32('BF800000'), f32('1')),
      f32('BF800000'),
    );
    returns(
      'sub_166',
      () => m0.sub(f32('3F800000'), f32('80000001')),
      f32('3F800000'),
    );
    returns(
      'sub_167',
      () => m0.sub(f32('3F800000'), f32('1')),
      f32('3F800000'),
    );
    returns(
      'sub_168',
      () => m0.sub(f32('BF800000'), f32('80800000')),
      f32('BF800000'),
    );
    returns(
      'sub_169',
      () => m0.sub(f32('BF800000'), f32('800000')),
      f32('BF800000'),
    );
    returns(
      'sub_170',
      () => m0.sub(f32('3F800000'), f32('80800000')),
      f32('3F800000'),
    );
    returns(
      'sub_171',
      () => m0.sub(f32('3F800000'), f32('800000')),
      f32('3F800000'),
    );
    returns(
      'sub_172',
      () => m0.sub(f32('BF800000'), f32('BF000000')),
      f32('BF000000'),
    );
    returns(
      'sub_173',
      () => m0.sub(f32('BF800000'), f32('3F000000')),
      f32('BFC00000'),
    );
    returns(
      'sub_174',
      () => m0.sub(f32('3F800000'), f32('BF000000')),
      f32('3FC00000'),
    );
    returns(
      'sub_175',
      () => m0.sub(f32('3F800000'), f32('3F000000')),
      f32('3F000000'),
    );
    returns(
      'sub_176',
      () => m0.sub(f32('BF800000'), f32('BF800000')),
      f32('0'),
    );
    returns(
      'sub_177',
      () => m0.sub(f32('BF800000'), f32('3F800000')),
      f32('C0000000'),
    );
    returns(
      'sub_178',
      () => m0.sub(f32('3F800000'), f32('BF800000')),
      f32('40000000'),
    );
    returns(
      'sub_179',
      () => m0.sub(f32('3F800000'), f32('3F800000')),
      f32('0'),
    );
    returns(
      'sub_180',
      () => m0.sub(f32('BF800000'), f32('C0C90FDB')),
      f32('40A90FDB'),
    );
    returns(
      'sub_181',
      () => m0.sub(f32('BF800000'), f32('40C90FDB')),
      f32('C0E90FDB'),
    );
    returns(
      'sub_182',
      () => m0.sub(f32('3F800000'), f32('C0C90FDB')),
      f32('40E90FDB'),
    );
    returns(
      'sub_183',
      () => m0.sub(f32('3F800000'), f32('40C90FDB')),
      f32('C0A90FDB'),
    );
    returns(
      'sub_184',
      () => m0.sub(f32('BF800000'), f32('FF7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'sub_185',
      () => m0.sub(f32('BF800000'), f32('7F7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'sub_186',
      () => m0.sub(f32('3F800000'), f32('FF7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'sub_187',
      () => m0.sub(f32('3F800000'), f32('7F7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'sub_188',
      () => m0.sub(f32('BF800000'), f32('FF800000')),
      f32('7F800000'),
    );
    returns(
      'sub_189',
      () => m0.sub(f32('BF800000'), f32('7F800000')),
      f32('FF800000'),
    );
    returns(
      'sub_190',
      () => m0.sub(f32('3F800000'), f32('FF800000')),
      f32('7F800000'),
    );
    returns(
      'sub_191',
      () => m0.sub(f32('3F800000'), f32('7F800000')),
      f32('FF800000'),
    );
    returns(
      'sub_192',
      () => m0.sub(f32('BF800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'sub_193',
      () => m0.sub(f32('BF800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'sub_194',
      () => m0.sub(f32('BF800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'sub_195',
      () => m0.sub(f32('BF800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'sub_196',
      () => m0.sub(f32('3F800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'sub_197',
      () => m0.sub(f32('3F800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'sub_198',
      () => m0.sub(f32('3F800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'sub_199',
      () => m0.sub(f32('3F800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'sub_200',
      () => m0.sub(f32('C0C90FDB'), f32('80000000')),
      f32('C0C90FDB'),
    );
    returns(
      'sub_201',
      () => m0.sub(f32('C0C90FDB'), f32('0')),
      f32('C0C90FDB'),
    );
    returns(
      'sub_202',
      () => m0.sub(f32('40C90FDB'), f32('80000000')),
      f32('40C90FDB'),
    );
    returns(
      'sub_203',
      () => m0.sub(f32('40C90FDB'), f32('0')),
      f32('40C90FDB'),
    );
    returns(
      'sub_204',
      () => m0.sub(f32('C0C90FDB'), f32('80000001')),
      f32('C0C90FDB'),
    );
    returns(
      'sub_205',
      () => m0.sub(f32('C0C90FDB'), f32('1')),
      f32('C0C90FDB'),
    );
    returns(
      'sub_206',
      () => m0.sub(f32('40C90FDB'), f32('80000001')),
      f32('40C90FDB'),
    );
    returns(
      'sub_207',
      () => m0.sub(f32('40C90FDB'), f32('1')),
      f32('40C90FDB'),
    );
    returns(
      'sub_208',
      () => m0.sub(f32('C0C90FDB'), f32('80800000')),
      f32('C0C90FDB'),
    );
    returns(
      'sub_209',
      () => m0.sub(f32('C0C90FDB'), f32('800000')),
      f32('C0C90FDB'),
    );
    returns(
      'sub_210',
      () => m0.sub(f32('40C90FDB'), f32('80800000')),
      f32('40C90FDB'),
    );
    returns(
      'sub_211',
      () => m0.sub(f32('40C90FDB'), f32('800000')),
      f32('40C90FDB'),
    );
    returns(
      'sub_212',
      () => m0.sub(f32('C0C90FDB'), f32('BF000000')),
      f32('C0B90FDB'),
    );
    returns(
      'sub_213',
      () => m0.sub(f32('C0C90FDB'), f32('3F000000')),
      f32('C0D90FDB'),
    );
    returns(
      'sub_214',
      () => m0.sub(f32('40C90FDB'), f32('BF000000')),
      f32('40D90FDB'),
    );
    returns(
      'sub_215',
      () => m0.sub(f32('40C90FDB'), f32('3F000000')),
      f32('40B90FDB'),
    );
    returns(
      'sub_216',
      () => m0.sub(f32('C0C90FDB'), f32('BF800000')),
      f32('C0A90FDB'),
    );
    returns(
      'sub_217',
      () => m0.sub(f32('C0C90FDB'), f32('3F800000')),
      f32('C0E90FDB'),
    );
    returns(
      'sub_218',
      () => m0.sub(f32('40C90FDB'), f32('BF800000')),
      f32('40E90FDB'),
    );
    returns(
      'sub_219',
      () => m0.sub(f32('40C90FDB'), f32('3F800000')),
      f32('40A90FDB'),
    );
    returns(
      'sub_220',
      () => m0.sub(f32('C0C90FDB'), f32('C0C90FDB')),
      f32('0'),
    );
    returns(
      'sub_221',
      () => m0.sub(f32('C0C90FDB'), f32('40C90FDB')),
      f32('C1490FDB'),
    );
    returns(
      'sub_222',
      () => m0.sub(f32('40C90FDB'), f32('C0C90FDB')),
      f32('41490FDB'),
    );
    returns(
      'sub_223',
      () => m0.sub(f32('40C90FDB'), f32('40C90FDB')),
      f32('0'),
    );
    returns(
      'sub_224',
      () => m0.sub(f32('C0C90FDB'), f32('FF7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'sub_225',
      () => m0.sub(f32('C0C90FDB'), f32('7F7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'sub_226',
      () => m0.sub(f32('40C90FDB'), f32('FF7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'sub_227',
      () => m0.sub(f32('40C90FDB'), f32('7F7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'sub_228',
      () => m0.sub(f32('C0C90FDB'), f32('FF800000')),
      f32('7F800000'),
    );
    returns(
      'sub_229',
      () => m0.sub(f32('C0C90FDB'), f32('7F800000')),
      f32('FF800000'),
    );
    returns(
      'sub_230',
      () => m0.sub(f32('40C90FDB'), f32('FF800000')),
      f32('7F800000'),
    );
    returns(
      'sub_231',
      () => m0.sub(f32('40C90FDB'), f32('7F800000')),
      f32('FF800000'),
    );
    returns(
      'sub_232',
      () => m0.sub(f32('C0C90FDB'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'sub_233',
      () => m0.sub(f32('C0C90FDB'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'sub_234',
      () => m0.sub(f32('C0C90FDB'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'sub_235',
      () => m0.sub(f32('C0C90FDB'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'sub_236',
      () => m0.sub(f32('40C90FDB'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'sub_237',
      () => m0.sub(f32('40C90FDB'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'sub_238',
      () => m0.sub(f32('40C90FDB'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'sub_239',
      () => m0.sub(f32('40C90FDB'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'sub_240',
      () => m0.sub(f32('FF7FFFFF'), f32('80000000')),
      f32('FF7FFFFF'),
    );
    returns(
      'sub_241',
      () => m0.sub(f32('FF7FFFFF'), f32('0')),
      f32('FF7FFFFF'),
    );
    returns(
      'sub_242',
      () => m0.sub(f32('7F7FFFFF'), f32('80000000')),
      f32('7F7FFFFF'),
    );
    returns(
      'sub_243',
      () => m0.sub(f32('7F7FFFFF'), f32('0')),
      f32('7F7FFFFF'),
    );
    returns(
      'sub_244',
      () => m0.sub(f32('FF7FFFFF'), f32('80000001')),
      f32('FF7FFFFF'),
    );
    returns(
      'sub_245',
      () => m0.sub(f32('FF7FFFFF'), f32('1')),
      f32('FF7FFFFF'),
    );
    returns(
      'sub_246',
      () => m0.sub(f32('7F7FFFFF'), f32('80000001')),
      f32('7F7FFFFF'),
    );
    returns(
      'sub_247',
      () => m0.sub(f32('7F7FFFFF'), f32('1')),
      f32('7F7FFFFF'),
    );
    returns(
      'sub_248',
      () => m0.sub(f32('FF7FFFFF'), f32('80800000')),
      f32('FF7FFFFF'),
    );
    returns(
      'sub_249',
      () => m0.sub(f32('FF7FFFFF'), f32('800000')),
      f32('FF7FFFFF'),
    );
    returns(
      'sub_250',
      () => m0.sub(f32('7F7FFFFF'), f32('80800000')),
      f32('7F7FFFFF'),
    );
    returns(
      'sub_251',
      () => m0.sub(f32('7F7FFFFF'), f32('800000')),
      f32('7F7FFFFF'),
    );
    returns(
      'sub_252',
      () => m0.sub(f32('FF7FFFFF'), f32('BF000000')),
      f32('FF7FFFFF'),
    );
    returns(
      'sub_253',
      () => m0.sub(f32('FF7FFFFF'), f32('3F000000')),
      f32('FF7FFFFF'),
    );
    returns(
      'sub_254',
      () => m0.sub(f32('7F7FFFFF'), f32('BF000000')),
      f32('7F7FFFFF'),
    );
    returns(
      'sub_255',
      () => m0.sub(f32('7F7FFFFF'), f32('3F000000')),
      f32('7F7FFFFF'),
    );
    returns(
      'sub_256',
      () => m0.sub(f32('FF7FFFFF'), f32('BF800000')),
      f32('FF7FFFFF'),
    );
    returns(
      'sub_257',
      () => m0.sub(f32('FF7FFFFF'), f32('3F800000')),
      f32('FF7FFFFF'),
    );
    returns(
      'sub_258',
      () => m0.sub(f32('7F7FFFFF'), f32('BF800000')),
      f32('7F7FFFFF'),
    );
    returns(
      'sub_259',
      () => m0.sub(f32('7F7FFFFF'), f32('3F800000')),
      f32('7F7FFFFF'),
    );
    returns(
      'sub_260',
      () => m0.sub(f32('FF7FFFFF'), f32('C0C90FDB')),
      f32('FF7FFFFF'),
    );
    returns(
      'sub_261',
      () => m0.sub(f32('FF7FFFFF'), f32('40C90FDB')),
      f32('FF7FFFFF'),
    );
    returns(
      'sub_262',
      () => m0.sub(f32('7F7FFFFF'), f32('C0C90FDB')),
      f32('7F7FFFFF'),
    );
    returns(
      'sub_263',
      () => m0.sub(f32('7F7FFFFF'), f32('40C90FDB')),
      f32('7F7FFFFF'),
    );
    returns(
      'sub_264',
      () => m0.sub(f32('FF7FFFFF'), f32('FF7FFFFF')),
      f32('0'),
    );
    returns(
      'sub_265',
      () => m0.sub(f32('FF7FFFFF'), f32('7F7FFFFF')),
      f32('FF800000'),
    );
    returns(
      'sub_266',
      () => m0.sub(f32('7F7FFFFF'), f32('FF7FFFFF')),
      f32('7F800000'),
    );
    returns(
      'sub_267',
      () => m0.sub(f32('7F7FFFFF'), f32('7F7FFFFF')),
      f32('0'),
    );
    returns(
      'sub_268',
      () => m0.sub(f32('FF7FFFFF'), f32('FF800000')),
      f32('7F800000'),
    );
    returns(
      'sub_269',
      () => m0.sub(f32('FF7FFFFF'), f32('7F800000')),
      f32('FF800000'),
    );
    returns(
      'sub_270',
      () => m0.sub(f32('7F7FFFFF'), f32('FF800000')),
      f32('7F800000'),
    );
    returns(
      'sub_271',
      () => m0.sub(f32('7F7FFFFF'), f32('7F800000')),
      f32('FF800000'),
    );
    returns(
      'sub_272',
      () => m0.sub(f32('FF7FFFFF'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'sub_273',
      () => m0.sub(f32('FF7FFFFF'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'sub_274',
      () => m0.sub(f32('FF7FFFFF'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'sub_275',
      () => m0.sub(f32('FF7FFFFF'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'sub_276',
      () => m0.sub(f32('7F7FFFFF'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'sub_277',
      () => m0.sub(f32('7F7FFFFF'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'sub_278',
      () => m0.sub(f32('7F7FFFFF'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'sub_279',
      () => m0.sub(f32('7F7FFFFF'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'sub_280',
      () => m0.sub(f32('FF800000'), f32('80000000')),
      f32('FF800000'),
    );
    returns(
      'sub_281',
      () => m0.sub(f32('FF800000'), f32('0')),
      f32('FF800000'),
    );
    returns(
      'sub_282',
      () => m0.sub(f32('7F800000'), f32('80000000')),
      f32('7F800000'),
    );
    returns(
      'sub_283',
      () => m0.sub(f32('7F800000'), f32('0')),
      f32('7F800000'),
    );
    returns(
      'sub_284',
      () => m0.sub(f32('FF800000'), f32('80000001')),
      f32('FF800000'),
    );
    returns(
      'sub_285',
      () => m0.sub(f32('FF800000'), f32('1')),
      f32('FF800000'),
    );
    returns(
      'sub_286',
      () => m0.sub(f32('7F800000'), f32('80000001')),
      f32('7F800000'),
    );
    returns(
      'sub_287',
      () => m0.sub(f32('7F800000'), f32('1')),
      f32('7F800000'),
    );
    returns(
      'sub_288',
      () => m0.sub(f32('FF800000'), f32('80800000')),
      f32('FF800000'),
    );
    returns(
      'sub_289',
      () => m0.sub(f32('FF800000'), f32('800000')),
      f32('FF800000'),
    );
    returns(
      'sub_290',
      () => m0.sub(f32('7F800000'), f32('80800000')),
      f32('7F800000'),
    );
    returns(
      'sub_291',
      () => m0.sub(f32('7F800000'), f32('800000')),
      f32('7F800000'),
    );
    returns(
      'sub_292',
      () => m0.sub(f32('FF800000'), f32('BF000000')),
      f32('FF800000'),
    );
    returns(
      'sub_293',
      () => m0.sub(f32('FF800000'), f32('3F000000')),
      f32('FF800000'),
    );
    returns(
      'sub_294',
      () => m0.sub(f32('7F800000'), f32('BF000000')),
      f32('7F800000'),
    );
    returns(
      'sub_295',
      () => m0.sub(f32('7F800000'), f32('3F000000')),
      f32('7F800000'),
    );
    returns(
      'sub_296',
      () => m0.sub(f32('FF800000'), f32('BF800000')),
      f32('FF800000'),
    );
    returns(
      'sub_297',
      () => m0.sub(f32('FF800000'), f32('3F800000')),
      f32('FF800000'),
    );
    returns(
      'sub_298',
      () => m0.sub(f32('7F800000'), f32('BF800000')),
      f32('7F800000'),
    );
    returns(
      'sub_299',
      () => m0.sub(f32('7F800000'), f32('3F800000')),
      f32('7F800000'),
    );
    returns(
      'sub_300',
      () => m0.sub(f32('FF800000'), f32('C0C90FDB')),
      f32('FF800000'),
    );
    returns(
      'sub_301',
      () => m0.sub(f32('FF800000'), f32('40C90FDB')),
      f32('FF800000'),
    );
    returns(
      'sub_302',
      () => m0.sub(f32('7F800000'), f32('C0C90FDB')),
      f32('7F800000'),
    );
    returns(
      'sub_303',
      () => m0.sub(f32('7F800000'), f32('40C90FDB')),
      f32('7F800000'),
    );
    returns(
      'sub_304',
      () => m0.sub(f32('FF800000'), f32('FF7FFFFF')),
      f32('FF800000'),
    );
    returns(
      'sub_305',
      () => m0.sub(f32('FF800000'), f32('7F7FFFFF')),
      f32('FF800000'),
    );
    returns(
      'sub_306',
      () => m0.sub(f32('7F800000'), f32('FF7FFFFF')),
      f32('7F800000'),
    );
    returns(
      'sub_307',
      () => m0.sub(f32('7F800000'), f32('7F7FFFFF')),
      f32('7F800000'),
    );
    returns(
      'sub_308',
      () => m0.sub(f32('FF800000'), f32('FF800000')),
      double.nan,
    );
    returns(
      'sub_309',
      () => m0.sub(f32('FF800000'), f32('7F800000')),
      f32('FF800000'),
    );
    returns(
      'sub_310',
      () => m0.sub(f32('7F800000'), f32('FF800000')),
      f32('7F800000'),
    );
    returns(
      'sub_311',
      () => m0.sub(f32('7F800000'), f32('7F800000')),
      double.nan,
    );
    returns(
      'sub_312',
      () => m0.sub(f32('FF800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'sub_313',
      () => m0.sub(f32('FF800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'sub_314',
      () => m0.sub(f32('FF800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'sub_315',
      () => m0.sub(f32('FF800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'sub_316',
      () => m0.sub(f32('7F800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'sub_317',
      () => m0.sub(f32('7F800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'sub_318',
      () => m0.sub(f32('7F800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'sub_319',
      () => m0.sub(f32('7F800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'sub_320',
      () => m0.sub(f32('FFC00000'), f32('80000000')),
      double.nan,
    );
    returns(
      'sub_321',
      () => m0.sub(f32('FFA00000'), f32('80000000')),
      double.nan,
    );
    returns('sub_322', () => m0.sub(f32('FFC00000'), f32('0')), double.nan);
    returns('sub_323', () => m0.sub(f32('FFA00000'), f32('0')), double.nan);
    returns(
      'sub_324',
      () => m0.sub(f32('7FC00000'), f32('80000000')),
      double.nan,
    );
    returns(
      'sub_325',
      () => m0.sub(f32('7FA00000'), f32('80000000')),
      double.nan,
    );
    returns('sub_326', () => m0.sub(f32('7FC00000'), f32('0')), double.nan);
    returns('sub_327', () => m0.sub(f32('7FA00000'), f32('0')), double.nan);
    returns(
      'sub_328',
      () => m0.sub(f32('FFC00000'), f32('80000001')),
      double.nan,
    );
    returns(
      'sub_329',
      () => m0.sub(f32('FFA00000'), f32('80000001')),
      double.nan,
    );
    returns('sub_330', () => m0.sub(f32('FFC00000'), f32('1')), double.nan);
    returns('sub_331', () => m0.sub(f32('FFA00000'), f32('1')), double.nan);
    returns(
      'sub_332',
      () => m0.sub(f32('7FC00000'), f32('80000001')),
      double.nan,
    );
    returns(
      'sub_333',
      () => m0.sub(f32('7FA00000'), f32('80000001')),
      double.nan,
    );
    returns('sub_334', () => m0.sub(f32('7FC00000'), f32('1')), double.nan);
    returns('sub_335', () => m0.sub(f32('7FA00000'), f32('1')), double.nan);
    returns(
      'sub_336',
      () => m0.sub(f32('FFC00000'), f32('80800000')),
      double.nan,
    );
    returns(
      'sub_337',
      () => m0.sub(f32('FFA00000'), f32('80800000')),
      double.nan,
    );
    returns(
      'sub_338',
      () => m0.sub(f32('FFC00000'), f32('800000')),
      double.nan,
    );
    returns(
      'sub_339',
      () => m0.sub(f32('FFA00000'), f32('800000')),
      double.nan,
    );
    returns(
      'sub_340',
      () => m0.sub(f32('7FC00000'), f32('80800000')),
      double.nan,
    );
    returns(
      'sub_341',
      () => m0.sub(f32('7FA00000'), f32('80800000')),
      double.nan,
    );
    returns(
      'sub_342',
      () => m0.sub(f32('7FC00000'), f32('800000')),
      double.nan,
    );
    returns(
      'sub_343',
      () => m0.sub(f32('7FA00000'), f32('800000')),
      double.nan,
    );
    returns(
      'sub_344',
      () => m0.sub(f32('FFC00000'), f32('BF000000')),
      double.nan,
    );
    returns(
      'sub_345',
      () => m0.sub(f32('FFA00000'), f32('BF000000')),
      double.nan,
    );
    returns(
      'sub_346',
      () => m0.sub(f32('FFC00000'), f32('3F000000')),
      double.nan,
    );
    returns(
      'sub_347',
      () => m0.sub(f32('FFA00000'), f32('3F000000')),
      double.nan,
    );
    returns(
      'sub_348',
      () => m0.sub(f32('7FC00000'), f32('BF000000')),
      double.nan,
    );
    returns(
      'sub_349',
      () => m0.sub(f32('7FA00000'), f32('BF000000')),
      double.nan,
    );
    returns(
      'sub_350',
      () => m0.sub(f32('7FC00000'), f32('3F000000')),
      double.nan,
    );
    returns(
      'sub_351',
      () => m0.sub(f32('7FA00000'), f32('3F000000')),
      double.nan,
    );
    returns(
      'sub_352',
      () => m0.sub(f32('FFC00000'), f32('BF800000')),
      double.nan,
    );
    returns(
      'sub_353',
      () => m0.sub(f32('FFA00000'), f32('BF800000')),
      double.nan,
    );
    returns(
      'sub_354',
      () => m0.sub(f32('FFC00000'), f32('3F800000')),
      double.nan,
    );
    returns(
      'sub_355',
      () => m0.sub(f32('FFA00000'), f32('3F800000')),
      double.nan,
    );
    returns(
      'sub_356',
      () => m0.sub(f32('7FC00000'), f32('BF800000')),
      double.nan,
    );
    returns(
      'sub_357',
      () => m0.sub(f32('7FA00000'), f32('BF800000')),
      double.nan,
    );
    returns(
      'sub_358',
      () => m0.sub(f32('7FC00000'), f32('3F800000')),
      double.nan,
    );
    returns(
      'sub_359',
      () => m0.sub(f32('7FA00000'), f32('3F800000')),
      double.nan,
    );
    returns(
      'sub_360',
      () => m0.sub(f32('FFC00000'), f32('C0C90FDB')),
      double.nan,
    );
    returns(
      'sub_361',
      () => m0.sub(f32('FFA00000'), f32('C0C90FDB')),
      double.nan,
    );
    returns(
      'sub_362',
      () => m0.sub(f32('FFC00000'), f32('40C90FDB')),
      double.nan,
    );
    returns(
      'sub_363',
      () => m0.sub(f32('FFA00000'), f32('40C90FDB')),
      double.nan,
    );
    returns(
      'sub_364',
      () => m0.sub(f32('7FC00000'), f32('C0C90FDB')),
      double.nan,
    );
    returns(
      'sub_365',
      () => m0.sub(f32('7FA00000'), f32('C0C90FDB')),
      double.nan,
    );
    returns(
      'sub_366',
      () => m0.sub(f32('7FC00000'), f32('40C90FDB')),
      double.nan,
    );
    returns(
      'sub_367',
      () => m0.sub(f32('7FA00000'), f32('40C90FDB')),
      double.nan,
    );
    returns(
      'sub_368',
      () => m0.sub(f32('FFC00000'), f32('FF7FFFFF')),
      double.nan,
    );
    returns(
      'sub_369',
      () => m0.sub(f32('FFA00000'), f32('FF7FFFFF')),
      double.nan,
    );
    returns(
      'sub_370',
      () => m0.sub(f32('FFC00000'), f32('7F7FFFFF')),
      double.nan,
    );
    returns(
      'sub_371',
      () => m0.sub(f32('FFA00000'), f32('7F7FFFFF')),
      double.nan,
    );
    returns(
      'sub_372',
      () => m0.sub(f32('7FC00000'), f32('FF7FFFFF')),
      double.nan,
    );
    returns(
      'sub_373',
      () => m0.sub(f32('7FA00000'), f32('FF7FFFFF')),
      double.nan,
    );
    returns(
      'sub_374',
      () => m0.sub(f32('7FC00000'), f32('7F7FFFFF')),
      double.nan,
    );
    returns(
      'sub_375',
      () => m0.sub(f32('7FA00000'), f32('7F7FFFFF')),
      double.nan,
    );
    returns(
      'sub_376',
      () => m0.sub(f32('FFC00000'), f32('FF800000')),
      double.nan,
    );
    returns(
      'sub_377',
      () => m0.sub(f32('FFA00000'), f32('FF800000')),
      double.nan,
    );
    returns(
      'sub_378',
      () => m0.sub(f32('FFC00000'), f32('7F800000')),
      double.nan,
    );
    returns(
      'sub_379',
      () => m0.sub(f32('FFA00000'), f32('7F800000')),
      double.nan,
    );
    returns(
      'sub_380',
      () => m0.sub(f32('7FC00000'), f32('FF800000')),
      double.nan,
    );
    returns(
      'sub_381',
      () => m0.sub(f32('7FA00000'), f32('FF800000')),
      double.nan,
    );
    returns(
      'sub_382',
      () => m0.sub(f32('7FC00000'), f32('7F800000')),
      double.nan,
    );
    returns(
      'sub_383',
      () => m0.sub(f32('7FA00000'), f32('7F800000')),
      double.nan,
    );
    returns(
      'sub_384',
      () => m0.sub(f32('FFC00000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'sub_385',
      () => m0.sub(f32('FFA00000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'sub_386',
      () => m0.sub(f32('FFC00000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'sub_387',
      () => m0.sub(f32('FFA00000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'sub_388',
      () => m0.sub(f32('FFC00000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'sub_389',
      () => m0.sub(f32('FFA00000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'sub_390',
      () => m0.sub(f32('FFC00000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'sub_391',
      () => m0.sub(f32('FFA00000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'sub_392',
      () => m0.sub(f32('7FC00000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'sub_393',
      () => m0.sub(f32('7FA00000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'sub_394',
      () => m0.sub(f32('7FC00000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'sub_395',
      () => m0.sub(f32('7FA00000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'sub_396',
      () => m0.sub(f32('7FC00000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'sub_397',
      () => m0.sub(f32('7FA00000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'sub_398',
      () => m0.sub(f32('7FC00000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'sub_399',
      () => m0.sub(f32('7FA00000'), f32('7FA00000')),
      double.nan,
    );
    returns('mul_0', () => m0.mul(f32('80000000'), f32('80000000')), f32('0'));
    returns('mul_1', () => m0.mul(f32('80000000'), f32('0')), f32('80000000'));
    returns('mul_2', () => m0.mul(f32('0'), f32('80000000')), f32('80000000'));
    returns('mul_3', () => m0.mul(f32('0'), f32('0')), f32('0'));
    returns('mul_4', () => m0.mul(f32('80000000'), f32('80000001')), f32('0'));
    returns('mul_5', () => m0.mul(f32('80000000'), f32('1')), f32('80000000'));
    returns('mul_6', () => m0.mul(f32('0'), f32('80000001')), f32('80000000'));
    returns('mul_7', () => m0.mul(f32('0'), f32('1')), f32('0'));
    returns('mul_8', () => m0.mul(f32('80000000'), f32('80800000')), f32('0'));
    returns(
      'mul_9',
      () => m0.mul(f32('80000000'), f32('800000')),
      f32('80000000'),
    );
    returns('mul_10', () => m0.mul(f32('0'), f32('80800000')), f32('80000000'));
    returns('mul_11', () => m0.mul(f32('0'), f32('800000')), f32('0'));
    returns('mul_12', () => m0.mul(f32('80000000'), f32('BF000000')), f32('0'));
    returns(
      'mul_13',
      () => m0.mul(f32('80000000'), f32('3F000000')),
      f32('80000000'),
    );
    returns('mul_14', () => m0.mul(f32('0'), f32('BF000000')), f32('80000000'));
    returns('mul_15', () => m0.mul(f32('0'), f32('3F000000')), f32('0'));
    returns('mul_16', () => m0.mul(f32('80000000'), f32('BF800000')), f32('0'));
    returns(
      'mul_17',
      () => m0.mul(f32('80000000'), f32('3F800000')),
      f32('80000000'),
    );
    returns('mul_18', () => m0.mul(f32('0'), f32('BF800000')), f32('80000000'));
    returns('mul_19', () => m0.mul(f32('0'), f32('3F800000')), f32('0'));
    returns('mul_20', () => m0.mul(f32('80000000'), f32('C0C90FDB')), f32('0'));
    returns(
      'mul_21',
      () => m0.mul(f32('80000000'), f32('40C90FDB')),
      f32('80000000'),
    );
    returns('mul_22', () => m0.mul(f32('0'), f32('C0C90FDB')), f32('80000000'));
    returns('mul_23', () => m0.mul(f32('0'), f32('40C90FDB')), f32('0'));
    returns('mul_24', () => m0.mul(f32('80000000'), f32('FF7FFFFF')), f32('0'));
    returns(
      'mul_25',
      () => m0.mul(f32('80000000'), f32('7F7FFFFF')),
      f32('80000000'),
    );
    returns('mul_26', () => m0.mul(f32('0'), f32('FF7FFFFF')), f32('80000000'));
    returns('mul_27', () => m0.mul(f32('0'), f32('7F7FFFFF')), f32('0'));
    returns(
      'mul_28',
      () => m0.mul(f32('80000000'), f32('FF800000')),
      double.nan,
    );
    returns(
      'mul_29',
      () => m0.mul(f32('80000000'), f32('7F800000')),
      double.nan,
    );
    returns('mul_30', () => m0.mul(f32('0'), f32('FF800000')), double.nan);
    returns('mul_31', () => m0.mul(f32('0'), f32('7F800000')), double.nan);
    returns(
      'mul_32',
      () => m0.mul(f32('80000000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'mul_33',
      () => m0.mul(f32('80000000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'mul_34',
      () => m0.mul(f32('80000000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'mul_35',
      () => m0.mul(f32('80000000'), f32('7FA00000')),
      double.nan,
    );
    returns('mul_36', () => m0.mul(f32('0'), f32('FFC00000')), double.nan);
    returns('mul_37', () => m0.mul(f32('0'), f32('FFA00000')), double.nan);
    returns('mul_38', () => m0.mul(f32('0'), f32('7FC00000')), double.nan);
    returns('mul_39', () => m0.mul(f32('0'), f32('7FA00000')), double.nan);
    returns('mul_40', () => m0.mul(f32('80000001'), f32('80000000')), f32('0'));
    returns('mul_41', () => m0.mul(f32('80000001'), f32('0')), f32('80000000'));
    returns('mul_42', () => m0.mul(f32('1'), f32('80000000')), f32('80000000'));
    returns('mul_43', () => m0.mul(f32('1'), f32('0')), f32('0'));
    returns('mul_44', () => m0.mul(f32('80000001'), f32('80000001')), f32('0'));
    returns('mul_45', () => m0.mul(f32('80000001'), f32('1')), f32('80000000'));
    returns('mul_46', () => m0.mul(f32('1'), f32('80000001')), f32('80000000'));
    returns('mul_47', () => m0.mul(f32('1'), f32('1')), f32('0'));
    returns('mul_48', () => m0.mul(f32('80000001'), f32('80800000')), f32('0'));
    returns(
      'mul_49',
      () => m0.mul(f32('80000001'), f32('800000')),
      f32('80000000'),
    );
    returns('mul_50', () => m0.mul(f32('1'), f32('80800000')), f32('80000000'));
    returns('mul_51', () => m0.mul(f32('1'), f32('800000')), f32('0'));
    returns('mul_52', () => m0.mul(f32('80000001'), f32('BF000000')), f32('0'));
    returns(
      'mul_53',
      () => m0.mul(f32('80000001'), f32('3F000000')),
      f32('80000000'),
    );
    returns('mul_54', () => m0.mul(f32('1'), f32('BF000000')), f32('80000000'));
    returns('mul_55', () => m0.mul(f32('1'), f32('3F000000')), f32('0'));
    returns('mul_56', () => m0.mul(f32('80000001'), f32('BF800000')), f32('1'));
    returns(
      'mul_57',
      () => m0.mul(f32('80000001'), f32('3F800000')),
      f32('80000001'),
    );
    returns('mul_58', () => m0.mul(f32('1'), f32('BF800000')), f32('80000001'));
    returns('mul_59', () => m0.mul(f32('1'), f32('3F800000')), f32('1'));
    returns('mul_60', () => m0.mul(f32('80000001'), f32('C0C90FDB')), f32('6'));
    returns(
      'mul_61',
      () => m0.mul(f32('80000001'), f32('40C90FDB')),
      f32('80000006'),
    );
    returns('mul_62', () => m0.mul(f32('1'), f32('C0C90FDB')), f32('80000006'));
    returns('mul_63', () => m0.mul(f32('1'), f32('40C90FDB')), f32('6'));
    returns(
      'mul_64',
      () => m0.mul(f32('80000001'), f32('FF7FFFFF')),
      f32('34FFFFFF'),
    );
    returns(
      'mul_65',
      () => m0.mul(f32('80000001'), f32('7F7FFFFF')),
      f32('B4FFFFFF'),
    );
    returns('mul_66', () => m0.mul(f32('1'), f32('FF7FFFFF')), f32('B4FFFFFF'));
    returns('mul_67', () => m0.mul(f32('1'), f32('7F7FFFFF')), f32('34FFFFFF'));
    returns(
      'mul_68',
      () => m0.mul(f32('80000001'), f32('FF800000')),
      f32('7F800000'),
    );
    returns(
      'mul_69',
      () => m0.mul(f32('80000001'), f32('7F800000')),
      f32('FF800000'),
    );
    returns('mul_70', () => m0.mul(f32('1'), f32('FF800000')), f32('FF800000'));
    returns('mul_71', () => m0.mul(f32('1'), f32('7F800000')), f32('7F800000'));
    returns(
      'mul_72',
      () => m0.mul(f32('80000001'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'mul_73',
      () => m0.mul(f32('80000001'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'mul_74',
      () => m0.mul(f32('80000001'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'mul_75',
      () => m0.mul(f32('80000001'), f32('7FA00000')),
      double.nan,
    );
    returns('mul_76', () => m0.mul(f32('1'), f32('FFC00000')), double.nan);
    returns('mul_77', () => m0.mul(f32('1'), f32('FFA00000')), double.nan);
    returns('mul_78', () => m0.mul(f32('1'), f32('7FC00000')), double.nan);
    returns('mul_79', () => m0.mul(f32('1'), f32('7FA00000')), double.nan);
    returns('mul_80', () => m0.mul(f32('80800000'), f32('80000000')), f32('0'));
    returns('mul_81', () => m0.mul(f32('80800000'), f32('0')), f32('80000000'));
    returns(
      'mul_82',
      () => m0.mul(f32('800000'), f32('80000000')),
      f32('80000000'),
    );
    returns('mul_83', () => m0.mul(f32('800000'), f32('0')), f32('0'));
    returns('mul_84', () => m0.mul(f32('80800000'), f32('80000001')), f32('0'));
    returns('mul_85', () => m0.mul(f32('80800000'), f32('1')), f32('80000000'));
    returns(
      'mul_86',
      () => m0.mul(f32('800000'), f32('80000001')),
      f32('80000000'),
    );
    returns('mul_87', () => m0.mul(f32('800000'), f32('1')), f32('0'));
    returns('mul_88', () => m0.mul(f32('80800000'), f32('80800000')), f32('0'));
    returns(
      'mul_89',
      () => m0.mul(f32('80800000'), f32('800000')),
      f32('80000000'),
    );
    returns(
      'mul_90',
      () => m0.mul(f32('800000'), f32('80800000')),
      f32('80000000'),
    );
    returns('mul_91', () => m0.mul(f32('800000'), f32('800000')), f32('0'));
    returns(
      'mul_92',
      () => m0.mul(f32('80800000'), f32('BF000000')),
      f32('400000'),
    );
    returns(
      'mul_93',
      () => m0.mul(f32('80800000'), f32('3F000000')),
      f32('80400000'),
    );
    returns(
      'mul_94',
      () => m0.mul(f32('800000'), f32('BF000000')),
      f32('80400000'),
    );
    returns(
      'mul_95',
      () => m0.mul(f32('800000'), f32('3F000000')),
      f32('400000'),
    );
    returns(
      'mul_96',
      () => m0.mul(f32('80800000'), f32('BF800000')),
      f32('800000'),
    );
    returns(
      'mul_97',
      () => m0.mul(f32('80800000'), f32('3F800000')),
      f32('80800000'),
    );
    returns(
      'mul_98',
      () => m0.mul(f32('800000'), f32('BF800000')),
      f32('80800000'),
    );
    returns(
      'mul_99',
      () => m0.mul(f32('800000'), f32('3F800000')),
      f32('800000'),
    );
    returns(
      'mul_100',
      () => m0.mul(f32('80800000'), f32('C0C90FDB')),
      f32('1C90FDB'),
    );
    returns(
      'mul_101',
      () => m0.mul(f32('80800000'), f32('40C90FDB')),
      f32('81C90FDB'),
    );
    returns(
      'mul_102',
      () => m0.mul(f32('800000'), f32('C0C90FDB')),
      f32('81C90FDB'),
    );
    returns(
      'mul_103',
      () => m0.mul(f32('800000'), f32('40C90FDB')),
      f32('1C90FDB'),
    );
    returns(
      'mul_104',
      () => m0.mul(f32('80800000'), f32('FF7FFFFF')),
      f32('407FFFFF'),
    );
    returns(
      'mul_105',
      () => m0.mul(f32('80800000'), f32('7F7FFFFF')),
      f32('C07FFFFF'),
    );
    returns(
      'mul_106',
      () => m0.mul(f32('800000'), f32('FF7FFFFF')),
      f32('C07FFFFF'),
    );
    returns(
      'mul_107',
      () => m0.mul(f32('800000'), f32('7F7FFFFF')),
      f32('407FFFFF'),
    );
    returns(
      'mul_108',
      () => m0.mul(f32('80800000'), f32('FF800000')),
      f32('7F800000'),
    );
    returns(
      'mul_109',
      () => m0.mul(f32('80800000'), f32('7F800000')),
      f32('FF800000'),
    );
    returns(
      'mul_110',
      () => m0.mul(f32('800000'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'mul_111',
      () => m0.mul(f32('800000'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'mul_112',
      () => m0.mul(f32('80800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'mul_113',
      () => m0.mul(f32('80800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'mul_114',
      () => m0.mul(f32('80800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'mul_115',
      () => m0.mul(f32('80800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'mul_116',
      () => m0.mul(f32('800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'mul_117',
      () => m0.mul(f32('800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'mul_118',
      () => m0.mul(f32('800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'mul_119',
      () => m0.mul(f32('800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'mul_120',
      () => m0.mul(f32('BF000000'), f32('80000000')),
      f32('0'),
    );
    returns(
      'mul_121',
      () => m0.mul(f32('BF000000'), f32('0')),
      f32('80000000'),
    );
    returns(
      'mul_122',
      () => m0.mul(f32('3F000000'), f32('80000000')),
      f32('80000000'),
    );
    returns('mul_123', () => m0.mul(f32('3F000000'), f32('0')), f32('0'));
    returns(
      'mul_124',
      () => m0.mul(f32('BF000000'), f32('80000001')),
      f32('0'),
    );
    returns(
      'mul_125',
      () => m0.mul(f32('BF000000'), f32('1')),
      f32('80000000'),
    );
    returns(
      'mul_126',
      () => m0.mul(f32('3F000000'), f32('80000001')),
      f32('80000000'),
    );
    returns('mul_127', () => m0.mul(f32('3F000000'), f32('1')), f32('0'));
    returns(
      'mul_128',
      () => m0.mul(f32('BF000000'), f32('80800000')),
      f32('400000'),
    );
    returns(
      'mul_129',
      () => m0.mul(f32('BF000000'), f32('800000')),
      f32('80400000'),
    );
    returns(
      'mul_130',
      () => m0.mul(f32('3F000000'), f32('80800000')),
      f32('80400000'),
    );
    returns(
      'mul_131',
      () => m0.mul(f32('3F000000'), f32('800000')),
      f32('400000'),
    );
    returns(
      'mul_132',
      () => m0.mul(f32('BF000000'), f32('BF000000')),
      f32('3E800000'),
    );
    returns(
      'mul_133',
      () => m0.mul(f32('BF000000'), f32('3F000000')),
      f32('BE800000'),
    );
    returns(
      'mul_134',
      () => m0.mul(f32('3F000000'), f32('BF000000')),
      f32('BE800000'),
    );
    returns(
      'mul_135',
      () => m0.mul(f32('3F000000'), f32('3F000000')),
      f32('3E800000'),
    );
    returns(
      'mul_136',
      () => m0.mul(f32('BF000000'), f32('BF800000')),
      f32('3F000000'),
    );
    returns(
      'mul_137',
      () => m0.mul(f32('BF000000'), f32('3F800000')),
      f32('BF000000'),
    );
    returns(
      'mul_138',
      () => m0.mul(f32('3F000000'), f32('BF800000')),
      f32('BF000000'),
    );
    returns(
      'mul_139',
      () => m0.mul(f32('3F000000'), f32('3F800000')),
      f32('3F000000'),
    );
    returns(
      'mul_140',
      () => m0.mul(f32('BF000000'), f32('C0C90FDB')),
      f32('40490FDB'),
    );
    returns(
      'mul_141',
      () => m0.mul(f32('BF000000'), f32('40C90FDB')),
      f32('C0490FDB'),
    );
    returns(
      'mul_142',
      () => m0.mul(f32('3F000000'), f32('C0C90FDB')),
      f32('C0490FDB'),
    );
    returns(
      'mul_143',
      () => m0.mul(f32('3F000000'), f32('40C90FDB')),
      f32('40490FDB'),
    );
    returns(
      'mul_144',
      () => m0.mul(f32('BF000000'), f32('FF7FFFFF')),
      f32('7EFFFFFF'),
    );
    returns(
      'mul_145',
      () => m0.mul(f32('BF000000'), f32('7F7FFFFF')),
      f32('FEFFFFFF'),
    );
    returns(
      'mul_146',
      () => m0.mul(f32('3F000000'), f32('FF7FFFFF')),
      f32('FEFFFFFF'),
    );
    returns(
      'mul_147',
      () => m0.mul(f32('3F000000'), f32('7F7FFFFF')),
      f32('7EFFFFFF'),
    );
    returns(
      'mul_148',
      () => m0.mul(f32('BF000000'), f32('FF800000')),
      f32('7F800000'),
    );
    returns(
      'mul_149',
      () => m0.mul(f32('BF000000'), f32('7F800000')),
      f32('FF800000'),
    );
    returns(
      'mul_150',
      () => m0.mul(f32('3F000000'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'mul_151',
      () => m0.mul(f32('3F000000'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'mul_152',
      () => m0.mul(f32('BF000000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'mul_153',
      () => m0.mul(f32('BF000000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'mul_154',
      () => m0.mul(f32('BF000000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'mul_155',
      () => m0.mul(f32('BF000000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'mul_156',
      () => m0.mul(f32('3F000000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'mul_157',
      () => m0.mul(f32('3F000000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'mul_158',
      () => m0.mul(f32('3F000000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'mul_159',
      () => m0.mul(f32('3F000000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'mul_160',
      () => m0.mul(f32('BF800000'), f32('80000000')),
      f32('0'),
    );
    returns(
      'mul_161',
      () => m0.mul(f32('BF800000'), f32('0')),
      f32('80000000'),
    );
    returns(
      'mul_162',
      () => m0.mul(f32('3F800000'), f32('80000000')),
      f32('80000000'),
    );
    returns('mul_163', () => m0.mul(f32('3F800000'), f32('0')), f32('0'));
    returns(
      'mul_164',
      () => m0.mul(f32('BF800000'), f32('80000001')),
      f32('1'),
    );
    returns(
      'mul_165',
      () => m0.mul(f32('BF800000'), f32('1')),
      f32('80000001'),
    );
    returns(
      'mul_166',
      () => m0.mul(f32('3F800000'), f32('80000001')),
      f32('80000001'),
    );
    returns('mul_167', () => m0.mul(f32('3F800000'), f32('1')), f32('1'));
    returns(
      'mul_168',
      () => m0.mul(f32('BF800000'), f32('80800000')),
      f32('800000'),
    );
    returns(
      'mul_169',
      () => m0.mul(f32('BF800000'), f32('800000')),
      f32('80800000'),
    );
    returns(
      'mul_170',
      () => m0.mul(f32('3F800000'), f32('80800000')),
      f32('80800000'),
    );
    returns(
      'mul_171',
      () => m0.mul(f32('3F800000'), f32('800000')),
      f32('800000'),
    );
    returns(
      'mul_172',
      () => m0.mul(f32('BF800000'), f32('BF000000')),
      f32('3F000000'),
    );
    returns(
      'mul_173',
      () => m0.mul(f32('BF800000'), f32('3F000000')),
      f32('BF000000'),
    );
    returns(
      'mul_174',
      () => m0.mul(f32('3F800000'), f32('BF000000')),
      f32('BF000000'),
    );
    returns(
      'mul_175',
      () => m0.mul(f32('3F800000'), f32('3F000000')),
      f32('3F000000'),
    );
    returns(
      'mul_176',
      () => m0.mul(f32('BF800000'), f32('BF800000')),
      f32('3F800000'),
    );
    returns(
      'mul_177',
      () => m0.mul(f32('BF800000'), f32('3F800000')),
      f32('BF800000'),
    );
    returns(
      'mul_178',
      () => m0.mul(f32('3F800000'), f32('BF800000')),
      f32('BF800000'),
    );
    returns(
      'mul_179',
      () => m0.mul(f32('3F800000'), f32('3F800000')),
      f32('3F800000'),
    );
    returns(
      'mul_180',
      () => m0.mul(f32('BF800000'), f32('C0C90FDB')),
      f32('40C90FDB'),
    );
    returns(
      'mul_181',
      () => m0.mul(f32('BF800000'), f32('40C90FDB')),
      f32('C0C90FDB'),
    );
    returns(
      'mul_182',
      () => m0.mul(f32('3F800000'), f32('C0C90FDB')),
      f32('C0C90FDB'),
    );
    returns(
      'mul_183',
      () => m0.mul(f32('3F800000'), f32('40C90FDB')),
      f32('40C90FDB'),
    );
    returns(
      'mul_184',
      () => m0.mul(f32('BF800000'), f32('FF7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'mul_185',
      () => m0.mul(f32('BF800000'), f32('7F7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'mul_186',
      () => m0.mul(f32('3F800000'), f32('FF7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'mul_187',
      () => m0.mul(f32('3F800000'), f32('7F7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'mul_188',
      () => m0.mul(f32('BF800000'), f32('FF800000')),
      f32('7F800000'),
    );
    returns(
      'mul_189',
      () => m0.mul(f32('BF800000'), f32('7F800000')),
      f32('FF800000'),
    );
    returns(
      'mul_190',
      () => m0.mul(f32('3F800000'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'mul_191',
      () => m0.mul(f32('3F800000'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'mul_192',
      () => m0.mul(f32('BF800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'mul_193',
      () => m0.mul(f32('BF800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'mul_194',
      () => m0.mul(f32('BF800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'mul_195',
      () => m0.mul(f32('BF800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'mul_196',
      () => m0.mul(f32('3F800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'mul_197',
      () => m0.mul(f32('3F800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'mul_198',
      () => m0.mul(f32('3F800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'mul_199',
      () => m0.mul(f32('3F800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'mul_200',
      () => m0.mul(f32('C0C90FDB'), f32('80000000')),
      f32('0'),
    );
    returns(
      'mul_201',
      () => m0.mul(f32('C0C90FDB'), f32('0')),
      f32('80000000'),
    );
    returns(
      'mul_202',
      () => m0.mul(f32('40C90FDB'), f32('80000000')),
      f32('80000000'),
    );
    returns('mul_203', () => m0.mul(f32('40C90FDB'), f32('0')), f32('0'));
    returns(
      'mul_204',
      () => m0.mul(f32('C0C90FDB'), f32('80000001')),
      f32('6'),
    );
    returns(
      'mul_205',
      () => m0.mul(f32('C0C90FDB'), f32('1')),
      f32('80000006'),
    );
    returns(
      'mul_206',
      () => m0.mul(f32('40C90FDB'), f32('80000001')),
      f32('80000006'),
    );
    returns('mul_207', () => m0.mul(f32('40C90FDB'), f32('1')), f32('6'));
    returns(
      'mul_208',
      () => m0.mul(f32('C0C90FDB'), f32('80800000')),
      f32('1C90FDB'),
    );
    returns(
      'mul_209',
      () => m0.mul(f32('C0C90FDB'), f32('800000')),
      f32('81C90FDB'),
    );
    returns(
      'mul_210',
      () => m0.mul(f32('40C90FDB'), f32('80800000')),
      f32('81C90FDB'),
    );
    returns(
      'mul_211',
      () => m0.mul(f32('40C90FDB'), f32('800000')),
      f32('1C90FDB'),
    );
    returns(
      'mul_212',
      () => m0.mul(f32('C0C90FDB'), f32('BF000000')),
      f32('40490FDB'),
    );
    returns(
      'mul_213',
      () => m0.mul(f32('C0C90FDB'), f32('3F000000')),
      f32('C0490FDB'),
    );
    returns(
      'mul_214',
      () => m0.mul(f32('40C90FDB'), f32('BF000000')),
      f32('C0490FDB'),
    );
    returns(
      'mul_215',
      () => m0.mul(f32('40C90FDB'), f32('3F000000')),
      f32('40490FDB'),
    );
    returns(
      'mul_216',
      () => m0.mul(f32('C0C90FDB'), f32('BF800000')),
      f32('40C90FDB'),
    );
    returns(
      'mul_217',
      () => m0.mul(f32('C0C90FDB'), f32('3F800000')),
      f32('C0C90FDB'),
    );
    returns(
      'mul_218',
      () => m0.mul(f32('40C90FDB'), f32('BF800000')),
      f32('C0C90FDB'),
    );
    returns(
      'mul_219',
      () => m0.mul(f32('40C90FDB'), f32('3F800000')),
      f32('40C90FDB'),
    );
    returns(
      'mul_220',
      () => m0.mul(f32('C0C90FDB'), f32('C0C90FDB')),
      f32('421DE9E7'),
    );
    returns(
      'mul_221',
      () => m0.mul(f32('C0C90FDB'), f32('40C90FDB')),
      f32('C21DE9E7'),
    );
    returns(
      'mul_222',
      () => m0.mul(f32('40C90FDB'), f32('C0C90FDB')),
      f32('C21DE9E7'),
    );
    returns(
      'mul_223',
      () => m0.mul(f32('40C90FDB'), f32('40C90FDB')),
      f32('421DE9E7'),
    );
    returns(
      'mul_224',
      () => m0.mul(f32('C0C90FDB'), f32('FF7FFFFF')),
      f32('7F800000'),
    );
    returns(
      'mul_225',
      () => m0.mul(f32('C0C90FDB'), f32('7F7FFFFF')),
      f32('FF800000'),
    );
    returns(
      'mul_226',
      () => m0.mul(f32('40C90FDB'), f32('FF7FFFFF')),
      f32('FF800000'),
    );
    returns(
      'mul_227',
      () => m0.mul(f32('40C90FDB'), f32('7F7FFFFF')),
      f32('7F800000'),
    );
    returns(
      'mul_228',
      () => m0.mul(f32('C0C90FDB'), f32('FF800000')),
      f32('7F800000'),
    );
    returns(
      'mul_229',
      () => m0.mul(f32('C0C90FDB'), f32('7F800000')),
      f32('FF800000'),
    );
    returns(
      'mul_230',
      () => m0.mul(f32('40C90FDB'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'mul_231',
      () => m0.mul(f32('40C90FDB'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'mul_232',
      () => m0.mul(f32('C0C90FDB'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'mul_233',
      () => m0.mul(f32('C0C90FDB'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'mul_234',
      () => m0.mul(f32('C0C90FDB'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'mul_235',
      () => m0.mul(f32('C0C90FDB'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'mul_236',
      () => m0.mul(f32('40C90FDB'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'mul_237',
      () => m0.mul(f32('40C90FDB'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'mul_238',
      () => m0.mul(f32('40C90FDB'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'mul_239',
      () => m0.mul(f32('40C90FDB'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'mul_240',
      () => m0.mul(f32('FF7FFFFF'), f32('80000000')),
      f32('0'),
    );
    returns(
      'mul_241',
      () => m0.mul(f32('FF7FFFFF'), f32('0')),
      f32('80000000'),
    );
    returns(
      'mul_242',
      () => m0.mul(f32('7F7FFFFF'), f32('80000000')),
      f32('80000000'),
    );
    returns('mul_243', () => m0.mul(f32('7F7FFFFF'), f32('0')), f32('0'));
    returns(
      'mul_244',
      () => m0.mul(f32('FF7FFFFF'), f32('80000001')),
      f32('34FFFFFF'),
    );
    returns(
      'mul_245',
      () => m0.mul(f32('FF7FFFFF'), f32('1')),
      f32('B4FFFFFF'),
    );
    returns(
      'mul_246',
      () => m0.mul(f32('7F7FFFFF'), f32('80000001')),
      f32('B4FFFFFF'),
    );
    returns(
      'mul_247',
      () => m0.mul(f32('7F7FFFFF'), f32('1')),
      f32('34FFFFFF'),
    );
    returns(
      'mul_248',
      () => m0.mul(f32('FF7FFFFF'), f32('80800000')),
      f32('407FFFFF'),
    );
    returns(
      'mul_249',
      () => m0.mul(f32('FF7FFFFF'), f32('800000')),
      f32('C07FFFFF'),
    );
    returns(
      'mul_250',
      () => m0.mul(f32('7F7FFFFF'), f32('80800000')),
      f32('C07FFFFF'),
    );
    returns(
      'mul_251',
      () => m0.mul(f32('7F7FFFFF'), f32('800000')),
      f32('407FFFFF'),
    );
    returns(
      'mul_252',
      () => m0.mul(f32('FF7FFFFF'), f32('BF000000')),
      f32('7EFFFFFF'),
    );
    returns(
      'mul_253',
      () => m0.mul(f32('FF7FFFFF'), f32('3F000000')),
      f32('FEFFFFFF'),
    );
    returns(
      'mul_254',
      () => m0.mul(f32('7F7FFFFF'), f32('BF000000')),
      f32('FEFFFFFF'),
    );
    returns(
      'mul_255',
      () => m0.mul(f32('7F7FFFFF'), f32('3F000000')),
      f32('7EFFFFFF'),
    );
    returns(
      'mul_256',
      () => m0.mul(f32('FF7FFFFF'), f32('BF800000')),
      f32('7F7FFFFF'),
    );
    returns(
      'mul_257',
      () => m0.mul(f32('FF7FFFFF'), f32('3F800000')),
      f32('FF7FFFFF'),
    );
    returns(
      'mul_258',
      () => m0.mul(f32('7F7FFFFF'), f32('BF800000')),
      f32('FF7FFFFF'),
    );
    returns(
      'mul_259',
      () => m0.mul(f32('7F7FFFFF'), f32('3F800000')),
      f32('7F7FFFFF'),
    );
    returns(
      'mul_260',
      () => m0.mul(f32('FF7FFFFF'), f32('C0C90FDB')),
      f32('7F800000'),
    );
    returns(
      'mul_261',
      () => m0.mul(f32('FF7FFFFF'), f32('40C90FDB')),
      f32('FF800000'),
    );
    returns(
      'mul_262',
      () => m0.mul(f32('7F7FFFFF'), f32('C0C90FDB')),
      f32('FF800000'),
    );
    returns(
      'mul_263',
      () => m0.mul(f32('7F7FFFFF'), f32('40C90FDB')),
      f32('7F800000'),
    );
    returns(
      'mul_264',
      () => m0.mul(f32('FF7FFFFF'), f32('FF7FFFFF')),
      f32('7F800000'),
    );
    returns(
      'mul_265',
      () => m0.mul(f32('FF7FFFFF'), f32('7F7FFFFF')),
      f32('FF800000'),
    );
    returns(
      'mul_266',
      () => m0.mul(f32('7F7FFFFF'), f32('FF7FFFFF')),
      f32('FF800000'),
    );
    returns(
      'mul_267',
      () => m0.mul(f32('7F7FFFFF'), f32('7F7FFFFF')),
      f32('7F800000'),
    );
    returns(
      'mul_268',
      () => m0.mul(f32('FF7FFFFF'), f32('FF800000')),
      f32('7F800000'),
    );
    returns(
      'mul_269',
      () => m0.mul(f32('FF7FFFFF'), f32('7F800000')),
      f32('FF800000'),
    );
    returns(
      'mul_270',
      () => m0.mul(f32('7F7FFFFF'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'mul_271',
      () => m0.mul(f32('7F7FFFFF'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'mul_272',
      () => m0.mul(f32('FF7FFFFF'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'mul_273',
      () => m0.mul(f32('FF7FFFFF'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'mul_274',
      () => m0.mul(f32('FF7FFFFF'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'mul_275',
      () => m0.mul(f32('FF7FFFFF'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'mul_276',
      () => m0.mul(f32('7F7FFFFF'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'mul_277',
      () => m0.mul(f32('7F7FFFFF'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'mul_278',
      () => m0.mul(f32('7F7FFFFF'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'mul_279',
      () => m0.mul(f32('7F7FFFFF'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'mul_280',
      () => m0.mul(f32('FF800000'), f32('80000000')),
      double.nan,
    );
    returns('mul_281', () => m0.mul(f32('FF800000'), f32('0')), double.nan);
    returns(
      'mul_282',
      () => m0.mul(f32('7F800000'), f32('80000000')),
      double.nan,
    );
    returns('mul_283', () => m0.mul(f32('7F800000'), f32('0')), double.nan);
    returns(
      'mul_284',
      () => m0.mul(f32('FF800000'), f32('80000001')),
      f32('7F800000'),
    );
    returns(
      'mul_285',
      () => m0.mul(f32('FF800000'), f32('1')),
      f32('FF800000'),
    );
    returns(
      'mul_286',
      () => m0.mul(f32('7F800000'), f32('80000001')),
      f32('FF800000'),
    );
    returns(
      'mul_287',
      () => m0.mul(f32('7F800000'), f32('1')),
      f32('7F800000'),
    );
    returns(
      'mul_288',
      () => m0.mul(f32('FF800000'), f32('80800000')),
      f32('7F800000'),
    );
    returns(
      'mul_289',
      () => m0.mul(f32('FF800000'), f32('800000')),
      f32('FF800000'),
    );
    returns(
      'mul_290',
      () => m0.mul(f32('7F800000'), f32('80800000')),
      f32('FF800000'),
    );
    returns(
      'mul_291',
      () => m0.mul(f32('7F800000'), f32('800000')),
      f32('7F800000'),
    );
    returns(
      'mul_292',
      () => m0.mul(f32('FF800000'), f32('BF000000')),
      f32('7F800000'),
    );
    returns(
      'mul_293',
      () => m0.mul(f32('FF800000'), f32('3F000000')),
      f32('FF800000'),
    );
    returns(
      'mul_294',
      () => m0.mul(f32('7F800000'), f32('BF000000')),
      f32('FF800000'),
    );
    returns(
      'mul_295',
      () => m0.mul(f32('7F800000'), f32('3F000000')),
      f32('7F800000'),
    );
    returns(
      'mul_296',
      () => m0.mul(f32('FF800000'), f32('BF800000')),
      f32('7F800000'),
    );
    returns(
      'mul_297',
      () => m0.mul(f32('FF800000'), f32('3F800000')),
      f32('FF800000'),
    );
    returns(
      'mul_298',
      () => m0.mul(f32('7F800000'), f32('BF800000')),
      f32('FF800000'),
    );
    returns(
      'mul_299',
      () => m0.mul(f32('7F800000'), f32('3F800000')),
      f32('7F800000'),
    );
    returns(
      'mul_300',
      () => m0.mul(f32('FF800000'), f32('C0C90FDB')),
      f32('7F800000'),
    );
    returns(
      'mul_301',
      () => m0.mul(f32('FF800000'), f32('40C90FDB')),
      f32('FF800000'),
    );
    returns(
      'mul_302',
      () => m0.mul(f32('7F800000'), f32('C0C90FDB')),
      f32('FF800000'),
    );
    returns(
      'mul_303',
      () => m0.mul(f32('7F800000'), f32('40C90FDB')),
      f32('7F800000'),
    );
    returns(
      'mul_304',
      () => m0.mul(f32('FF800000'), f32('FF7FFFFF')),
      f32('7F800000'),
    );
    returns(
      'mul_305',
      () => m0.mul(f32('FF800000'), f32('7F7FFFFF')),
      f32('FF800000'),
    );
    returns(
      'mul_306',
      () => m0.mul(f32('7F800000'), f32('FF7FFFFF')),
      f32('FF800000'),
    );
    returns(
      'mul_307',
      () => m0.mul(f32('7F800000'), f32('7F7FFFFF')),
      f32('7F800000'),
    );
    returns(
      'mul_308',
      () => m0.mul(f32('FF800000'), f32('FF800000')),
      f32('7F800000'),
    );
    returns(
      'mul_309',
      () => m0.mul(f32('FF800000'), f32('7F800000')),
      f32('FF800000'),
    );
    returns(
      'mul_310',
      () => m0.mul(f32('7F800000'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'mul_311',
      () => m0.mul(f32('7F800000'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'mul_312',
      () => m0.mul(f32('FF800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'mul_313',
      () => m0.mul(f32('FF800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'mul_314',
      () => m0.mul(f32('FF800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'mul_315',
      () => m0.mul(f32('FF800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'mul_316',
      () => m0.mul(f32('7F800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'mul_317',
      () => m0.mul(f32('7F800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'mul_318',
      () => m0.mul(f32('7F800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'mul_319',
      () => m0.mul(f32('7F800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'mul_320',
      () => m0.mul(f32('FFC00000'), f32('80000000')),
      double.nan,
    );
    returns(
      'mul_321',
      () => m0.mul(f32('FFA00000'), f32('80000000')),
      double.nan,
    );
    returns('mul_322', () => m0.mul(f32('FFC00000'), f32('0')), double.nan);
    returns('mul_323', () => m0.mul(f32('FFA00000'), f32('0')), double.nan);
    returns(
      'mul_324',
      () => m0.mul(f32('7FC00000'), f32('80000000')),
      double.nan,
    );
    returns(
      'mul_325',
      () => m0.mul(f32('7FA00000'), f32('80000000')),
      double.nan,
    );
    returns('mul_326', () => m0.mul(f32('7FC00000'), f32('0')), double.nan);
    returns('mul_327', () => m0.mul(f32('7FA00000'), f32('0')), double.nan);
    returns(
      'mul_328',
      () => m0.mul(f32('FFC00000'), f32('80000001')),
      double.nan,
    );
    returns(
      'mul_329',
      () => m0.mul(f32('FFA00000'), f32('80000001')),
      double.nan,
    );
    returns('mul_330', () => m0.mul(f32('FFC00000'), f32('1')), double.nan);
    returns('mul_331', () => m0.mul(f32('FFA00000'), f32('1')), double.nan);
    returns(
      'mul_332',
      () => m0.mul(f32('7FC00000'), f32('80000001')),
      double.nan,
    );
    returns(
      'mul_333',
      () => m0.mul(f32('7FA00000'), f32('80000001')),
      double.nan,
    );
    returns('mul_334', () => m0.mul(f32('7FC00000'), f32('1')), double.nan);
    returns('mul_335', () => m0.mul(f32('7FA00000'), f32('1')), double.nan);
    returns(
      'mul_336',
      () => m0.mul(f32('FFC00000'), f32('80800000')),
      double.nan,
    );
    returns(
      'mul_337',
      () => m0.mul(f32('FFA00000'), f32('80800000')),
      double.nan,
    );
    returns(
      'mul_338',
      () => m0.mul(f32('FFC00000'), f32('800000')),
      double.nan,
    );
    returns(
      'mul_339',
      () => m0.mul(f32('FFA00000'), f32('800000')),
      double.nan,
    );
    returns(
      'mul_340',
      () => m0.mul(f32('7FC00000'), f32('80800000')),
      double.nan,
    );
    returns(
      'mul_341',
      () => m0.mul(f32('7FA00000'), f32('80800000')),
      double.nan,
    );
    returns(
      'mul_342',
      () => m0.mul(f32('7FC00000'), f32('800000')),
      double.nan,
    );
    returns(
      'mul_343',
      () => m0.mul(f32('7FA00000'), f32('800000')),
      double.nan,
    );
    returns(
      'mul_344',
      () => m0.mul(f32('FFC00000'), f32('BF000000')),
      double.nan,
    );
    returns(
      'mul_345',
      () => m0.mul(f32('FFA00000'), f32('BF000000')),
      double.nan,
    );
    returns(
      'mul_346',
      () => m0.mul(f32('FFC00000'), f32('3F000000')),
      double.nan,
    );
    returns(
      'mul_347',
      () => m0.mul(f32('FFA00000'), f32('3F000000')),
      double.nan,
    );
    returns(
      'mul_348',
      () => m0.mul(f32('7FC00000'), f32('BF000000')),
      double.nan,
    );
    returns(
      'mul_349',
      () => m0.mul(f32('7FA00000'), f32('BF000000')),
      double.nan,
    );
    returns(
      'mul_350',
      () => m0.mul(f32('7FC00000'), f32('3F000000')),
      double.nan,
    );
    returns(
      'mul_351',
      () => m0.mul(f32('7FA00000'), f32('3F000000')),
      double.nan,
    );
    returns(
      'mul_352',
      () => m0.mul(f32('FFC00000'), f32('BF800000')),
      double.nan,
    );
    returns(
      'mul_353',
      () => m0.mul(f32('FFA00000'), f32('BF800000')),
      double.nan,
    );
    returns(
      'mul_354',
      () => m0.mul(f32('FFC00000'), f32('3F800000')),
      double.nan,
    );
    returns(
      'mul_355',
      () => m0.mul(f32('FFA00000'), f32('3F800000')),
      double.nan,
    );
    returns(
      'mul_356',
      () => m0.mul(f32('7FC00000'), f32('BF800000')),
      double.nan,
    );
    returns(
      'mul_357',
      () => m0.mul(f32('7FA00000'), f32('BF800000')),
      double.nan,
    );
    returns(
      'mul_358',
      () => m0.mul(f32('7FC00000'), f32('3F800000')),
      double.nan,
    );
    returns(
      'mul_359',
      () => m0.mul(f32('7FA00000'), f32('3F800000')),
      double.nan,
    );
    returns(
      'mul_360',
      () => m0.mul(f32('FFC00000'), f32('C0C90FDB')),
      double.nan,
    );
    returns(
      'mul_361',
      () => m0.mul(f32('FFA00000'), f32('C0C90FDB')),
      double.nan,
    );
    returns(
      'mul_362',
      () => m0.mul(f32('FFC00000'), f32('40C90FDB')),
      double.nan,
    );
    returns(
      'mul_363',
      () => m0.mul(f32('FFA00000'), f32('40C90FDB')),
      double.nan,
    );
    returns(
      'mul_364',
      () => m0.mul(f32('7FC00000'), f32('C0C90FDB')),
      double.nan,
    );
    returns(
      'mul_365',
      () => m0.mul(f32('7FA00000'), f32('C0C90FDB')),
      double.nan,
    );
    returns(
      'mul_366',
      () => m0.mul(f32('7FC00000'), f32('40C90FDB')),
      double.nan,
    );
    returns(
      'mul_367',
      () => m0.mul(f32('7FA00000'), f32('40C90FDB')),
      double.nan,
    );
    returns(
      'mul_368',
      () => m0.mul(f32('FFC00000'), f32('FF7FFFFF')),
      double.nan,
    );
    returns(
      'mul_369',
      () => m0.mul(f32('FFA00000'), f32('FF7FFFFF')),
      double.nan,
    );
    returns(
      'mul_370',
      () => m0.mul(f32('FFC00000'), f32('7F7FFFFF')),
      double.nan,
    );
    returns(
      'mul_371',
      () => m0.mul(f32('FFA00000'), f32('7F7FFFFF')),
      double.nan,
    );
    returns(
      'mul_372',
      () => m0.mul(f32('7FC00000'), f32('FF7FFFFF')),
      double.nan,
    );
    returns(
      'mul_373',
      () => m0.mul(f32('7FA00000'), f32('FF7FFFFF')),
      double.nan,
    );
    returns(
      'mul_374',
      () => m0.mul(f32('7FC00000'), f32('7F7FFFFF')),
      double.nan,
    );
    returns(
      'mul_375',
      () => m0.mul(f32('7FA00000'), f32('7F7FFFFF')),
      double.nan,
    );
    returns(
      'mul_376',
      () => m0.mul(f32('FFC00000'), f32('FF800000')),
      double.nan,
    );
    returns(
      'mul_377',
      () => m0.mul(f32('FFA00000'), f32('FF800000')),
      double.nan,
    );
    returns(
      'mul_378',
      () => m0.mul(f32('FFC00000'), f32('7F800000')),
      double.nan,
    );
    returns(
      'mul_379',
      () => m0.mul(f32('FFA00000'), f32('7F800000')),
      double.nan,
    );
    returns(
      'mul_380',
      () => m0.mul(f32('7FC00000'), f32('FF800000')),
      double.nan,
    );
    returns(
      'mul_381',
      () => m0.mul(f32('7FA00000'), f32('FF800000')),
      double.nan,
    );
    returns(
      'mul_382',
      () => m0.mul(f32('7FC00000'), f32('7F800000')),
      double.nan,
    );
    returns(
      'mul_383',
      () => m0.mul(f32('7FA00000'), f32('7F800000')),
      double.nan,
    );
    returns(
      'mul_384',
      () => m0.mul(f32('FFC00000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'mul_385',
      () => m0.mul(f32('FFA00000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'mul_386',
      () => m0.mul(f32('FFC00000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'mul_387',
      () => m0.mul(f32('FFA00000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'mul_388',
      () => m0.mul(f32('FFC00000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'mul_389',
      () => m0.mul(f32('FFA00000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'mul_390',
      () => m0.mul(f32('FFC00000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'mul_391',
      () => m0.mul(f32('FFA00000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'mul_392',
      () => m0.mul(f32('7FC00000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'mul_393',
      () => m0.mul(f32('7FA00000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'mul_394',
      () => m0.mul(f32('7FC00000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'mul_395',
      () => m0.mul(f32('7FA00000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'mul_396',
      () => m0.mul(f32('7FC00000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'mul_397',
      () => m0.mul(f32('7FA00000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'mul_398',
      () => m0.mul(f32('7FC00000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'mul_399',
      () => m0.mul(f32('7FA00000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'div_0',
      () => m0.div(f32('80000000'), f32('80000000')),
      double.nan,
    );
    returns('div_1', () => m0.div(f32('80000000'), f32('0')), double.nan);
    returns('div_2', () => m0.div(f32('0'), f32('80000000')), double.nan);
    returns('div_3', () => m0.div(f32('0'), f32('0')), double.nan);
    returns('div_4', () => m0.div(f32('80000000'), f32('80000001')), f32('0'));
    returns('div_5', () => m0.div(f32('80000000'), f32('1')), f32('80000000'));
    returns('div_6', () => m0.div(f32('0'), f32('80000001')), f32('80000000'));
    returns('div_7', () => m0.div(f32('0'), f32('1')), f32('0'));
    returns('div_8', () => m0.div(f32('80000000'), f32('80800000')), f32('0'));
    returns(
      'div_9',
      () => m0.div(f32('80000000'), f32('800000')),
      f32('80000000'),
    );
    returns('div_10', () => m0.div(f32('0'), f32('80800000')), f32('80000000'));
    returns('div_11', () => m0.div(f32('0'), f32('800000')), f32('0'));
    returns('div_12', () => m0.div(f32('80000000'), f32('BF000000')), f32('0'));
    returns(
      'div_13',
      () => m0.div(f32('80000000'), f32('3F000000')),
      f32('80000000'),
    );
    returns('div_14', () => m0.div(f32('0'), f32('BF000000')), f32('80000000'));
    returns('div_15', () => m0.div(f32('0'), f32('3F000000')), f32('0'));
    returns('div_16', () => m0.div(f32('80000000'), f32('BF800000')), f32('0'));
    returns(
      'div_17',
      () => m0.div(f32('80000000'), f32('3F800000')),
      f32('80000000'),
    );
    returns('div_18', () => m0.div(f32('0'), f32('BF800000')), f32('80000000'));
    returns('div_19', () => m0.div(f32('0'), f32('3F800000')), f32('0'));
    returns('div_20', () => m0.div(f32('80000000'), f32('C0C90FDB')), f32('0'));
    returns(
      'div_21',
      () => m0.div(f32('80000000'), f32('40C90FDB')),
      f32('80000000'),
    );
    returns('div_22', () => m0.div(f32('0'), f32('C0C90FDB')), f32('80000000'));
    returns('div_23', () => m0.div(f32('0'), f32('40C90FDB')), f32('0'));
    returns('div_24', () => m0.div(f32('80000000'), f32('FF7FFFFF')), f32('0'));
    returns(
      'div_25',
      () => m0.div(f32('80000000'), f32('7F7FFFFF')),
      f32('80000000'),
    );
    returns('div_26', () => m0.div(f32('0'), f32('FF7FFFFF')), f32('80000000'));
    returns('div_27', () => m0.div(f32('0'), f32('7F7FFFFF')), f32('0'));
    returns('div_28', () => m0.div(f32('80000000'), f32('FF800000')), f32('0'));
    returns(
      'div_29',
      () => m0.div(f32('80000000'), f32('7F800000')),
      f32('80000000'),
    );
    returns('div_30', () => m0.div(f32('0'), f32('FF800000')), f32('80000000'));
    returns('div_31', () => m0.div(f32('0'), f32('7F800000')), f32('0'));
    returns(
      'div_32',
      () => m0.div(f32('80000000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'div_33',
      () => m0.div(f32('80000000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'div_34',
      () => m0.div(f32('80000000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'div_35',
      () => m0.div(f32('80000000'), f32('7FA00000')),
      double.nan,
    );
    returns('div_36', () => m0.div(f32('0'), f32('FFC00000')), double.nan);
    returns('div_37', () => m0.div(f32('0'), f32('FFA00000')), double.nan);
    returns('div_38', () => m0.div(f32('0'), f32('7FC00000')), double.nan);
    returns('div_39', () => m0.div(f32('0'), f32('7FA00000')), double.nan);
    returns(
      'div_40',
      () => m0.div(f32('80000001'), f32('80000000')),
      f32('7F800000'),
    );
    returns('div_41', () => m0.div(f32('80000001'), f32('0')), f32('FF800000'));
    returns('div_42', () => m0.div(f32('1'), f32('80000000')), f32('FF800000'));
    returns('div_43', () => m0.div(f32('1'), f32('0')), f32('7F800000'));
    returns(
      'div_44',
      () => m0.div(f32('80000001'), f32('80000001')),
      f32('3F800000'),
    );
    returns('div_45', () => m0.div(f32('80000001'), f32('1')), f32('BF800000'));
    returns('div_46', () => m0.div(f32('1'), f32('80000001')), f32('BF800000'));
    returns('div_47', () => m0.div(f32('1'), f32('1')), f32('3F800000'));
    returns(
      'div_48',
      () => m0.div(f32('80000001'), f32('80800000')),
      f32('34000000'),
    );
    returns(
      'div_49',
      () => m0.div(f32('80000001'), f32('800000')),
      f32('B4000000'),
    );
    returns('div_50', () => m0.div(f32('1'), f32('80800000')), f32('B4000000'));
    returns('div_51', () => m0.div(f32('1'), f32('800000')), f32('34000000'));
    returns('div_52', () => m0.div(f32('80000001'), f32('BF000000')), f32('2'));
    returns(
      'div_53',
      () => m0.div(f32('80000001'), f32('3F000000')),
      f32('80000002'),
    );
    returns('div_54', () => m0.div(f32('1'), f32('BF000000')), f32('80000002'));
    returns('div_55', () => m0.div(f32('1'), f32('3F000000')), f32('2'));
    returns('div_56', () => m0.div(f32('80000001'), f32('BF800000')), f32('1'));
    returns(
      'div_57',
      () => m0.div(f32('80000001'), f32('3F800000')),
      f32('80000001'),
    );
    returns('div_58', () => m0.div(f32('1'), f32('BF800000')), f32('80000001'));
    returns('div_59', () => m0.div(f32('1'), f32('3F800000')), f32('1'));
    returns('div_60', () => m0.div(f32('80000001'), f32('C0C90FDB')), f32('0'));
    returns(
      'div_61',
      () => m0.div(f32('80000001'), f32('40C90FDB')),
      f32('80000000'),
    );
    returns('div_62', () => m0.div(f32('1'), f32('C0C90FDB')), f32('80000000'));
    returns('div_63', () => m0.div(f32('1'), f32('40C90FDB')), f32('0'));
    returns('div_64', () => m0.div(f32('80000001'), f32('FF7FFFFF')), f32('0'));
    returns(
      'div_65',
      () => m0.div(f32('80000001'), f32('7F7FFFFF')),
      f32('80000000'),
    );
    returns('div_66', () => m0.div(f32('1'), f32('FF7FFFFF')), f32('80000000'));
    returns('div_67', () => m0.div(f32('1'), f32('7F7FFFFF')), f32('0'));
    returns('div_68', () => m0.div(f32('80000001'), f32('FF800000')), f32('0'));
    returns(
      'div_69',
      () => m0.div(f32('80000001'), f32('7F800000')),
      f32('80000000'),
    );
    returns('div_70', () => m0.div(f32('1'), f32('FF800000')), f32('80000000'));
    returns('div_71', () => m0.div(f32('1'), f32('7F800000')), f32('0'));
    returns(
      'div_72',
      () => m0.div(f32('80000001'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'div_73',
      () => m0.div(f32('80000001'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'div_74',
      () => m0.div(f32('80000001'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'div_75',
      () => m0.div(f32('80000001'), f32('7FA00000')),
      double.nan,
    );
    returns('div_76', () => m0.div(f32('1'), f32('FFC00000')), double.nan);
    returns('div_77', () => m0.div(f32('1'), f32('FFA00000')), double.nan);
    returns('div_78', () => m0.div(f32('1'), f32('7FC00000')), double.nan);
    returns('div_79', () => m0.div(f32('1'), f32('7FA00000')), double.nan);
    returns(
      'div_80',
      () => m0.div(f32('80800000'), f32('80000000')),
      f32('7F800000'),
    );
    returns('div_81', () => m0.div(f32('80800000'), f32('0')), f32('FF800000'));
    returns(
      'div_82',
      () => m0.div(f32('800000'), f32('80000000')),
      f32('FF800000'),
    );
    returns('div_83', () => m0.div(f32('800000'), f32('0')), f32('7F800000'));
    returns(
      'div_84',
      () => m0.div(f32('80800000'), f32('80000001')),
      f32('4B000000'),
    );
    returns('div_85', () => m0.div(f32('80800000'), f32('1')), f32('CB000000'));
    returns(
      'div_86',
      () => m0.div(f32('800000'), f32('80000001')),
      f32('CB000000'),
    );
    returns('div_87', () => m0.div(f32('800000'), f32('1')), f32('4B000000'));
    returns(
      'div_88',
      () => m0.div(f32('80800000'), f32('80800000')),
      f32('3F800000'),
    );
    returns(
      'div_89',
      () => m0.div(f32('80800000'), f32('800000')),
      f32('BF800000'),
    );
    returns(
      'div_90',
      () => m0.div(f32('800000'), f32('80800000')),
      f32('BF800000'),
    );
    returns(
      'div_91',
      () => m0.div(f32('800000'), f32('800000')),
      f32('3F800000'),
    );
    returns(
      'div_92',
      () => m0.div(f32('80800000'), f32('BF000000')),
      f32('1000000'),
    );
    returns(
      'div_93',
      () => m0.div(f32('80800000'), f32('3F000000')),
      f32('81000000'),
    );
    returns(
      'div_94',
      () => m0.div(f32('800000'), f32('BF000000')),
      f32('81000000'),
    );
    returns(
      'div_95',
      () => m0.div(f32('800000'), f32('3F000000')),
      f32('1000000'),
    );
    returns(
      'div_96',
      () => m0.div(f32('80800000'), f32('BF800000')),
      f32('800000'),
    );
    returns(
      'div_97',
      () => m0.div(f32('80800000'), f32('3F800000')),
      f32('80800000'),
    );
    returns(
      'div_98',
      () => m0.div(f32('800000'), f32('BF800000')),
      f32('80800000'),
    );
    returns(
      'div_99',
      () => m0.div(f32('800000'), f32('3F800000')),
      f32('800000'),
    );
    returns(
      'div_100',
      () => m0.div(f32('80800000'), f32('C0C90FDB')),
      f32('145F30'),
    );
    returns(
      'div_101',
      () => m0.div(f32('80800000'), f32('40C90FDB')),
      f32('80145F30'),
    );
    returns(
      'div_102',
      () => m0.div(f32('800000'), f32('C0C90FDB')),
      f32('80145F30'),
    );
    returns(
      'div_103',
      () => m0.div(f32('800000'), f32('40C90FDB')),
      f32('145F30'),
    );
    returns(
      'div_104',
      () => m0.div(f32('80800000'), f32('FF7FFFFF')),
      f32('0'),
    );
    returns(
      'div_105',
      () => m0.div(f32('80800000'), f32('7F7FFFFF')),
      f32('80000000'),
    );
    returns(
      'div_106',
      () => m0.div(f32('800000'), f32('FF7FFFFF')),
      f32('80000000'),
    );
    returns('div_107', () => m0.div(f32('800000'), f32('7F7FFFFF')), f32('0'));
    returns(
      'div_108',
      () => m0.div(f32('80800000'), f32('FF800000')),
      f32('0'),
    );
    returns(
      'div_109',
      () => m0.div(f32('80800000'), f32('7F800000')),
      f32('80000000'),
    );
    returns(
      'div_110',
      () => m0.div(f32('800000'), f32('FF800000')),
      f32('80000000'),
    );
    returns('div_111', () => m0.div(f32('800000'), f32('7F800000')), f32('0'));
    returns(
      'div_112',
      () => m0.div(f32('80800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'div_113',
      () => m0.div(f32('80800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'div_114',
      () => m0.div(f32('80800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'div_115',
      () => m0.div(f32('80800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'div_116',
      () => m0.div(f32('800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'div_117',
      () => m0.div(f32('800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'div_118',
      () => m0.div(f32('800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'div_119',
      () => m0.div(f32('800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'div_120',
      () => m0.div(f32('BF000000'), f32('80000000')),
      f32('7F800000'),
    );
    returns(
      'div_121',
      () => m0.div(f32('BF000000'), f32('0')),
      f32('FF800000'),
    );
    returns(
      'div_122',
      () => m0.div(f32('3F000000'), f32('80000000')),
      f32('FF800000'),
    );
    returns(
      'div_123',
      () => m0.div(f32('3F000000'), f32('0')),
      f32('7F800000'),
    );
    returns(
      'div_124',
      () => m0.div(f32('BF000000'), f32('80000001')),
      f32('7F800000'),
    );
    returns(
      'div_125',
      () => m0.div(f32('BF000000'), f32('1')),
      f32('FF800000'),
    );
    returns(
      'div_126',
      () => m0.div(f32('3F000000'), f32('80000001')),
      f32('FF800000'),
    );
    returns(
      'div_127',
      () => m0.div(f32('3F000000'), f32('1')),
      f32('7F800000'),
    );
    returns(
      'div_128',
      () => m0.div(f32('BF000000'), f32('80800000')),
      f32('7E000000'),
    );
    returns(
      'div_129',
      () => m0.div(f32('BF000000'), f32('800000')),
      f32('FE000000'),
    );
    returns(
      'div_130',
      () => m0.div(f32('3F000000'), f32('80800000')),
      f32('FE000000'),
    );
    returns(
      'div_131',
      () => m0.div(f32('3F000000'), f32('800000')),
      f32('7E000000'),
    );
    returns(
      'div_132',
      () => m0.div(f32('BF000000'), f32('BF000000')),
      f32('3F800000'),
    );
    returns(
      'div_133',
      () => m0.div(f32('BF000000'), f32('3F000000')),
      f32('BF800000'),
    );
    returns(
      'div_134',
      () => m0.div(f32('3F000000'), f32('BF000000')),
      f32('BF800000'),
    );
    returns(
      'div_135',
      () => m0.div(f32('3F000000'), f32('3F000000')),
      f32('3F800000'),
    );
    returns(
      'div_136',
      () => m0.div(f32('BF000000'), f32('BF800000')),
      f32('3F000000'),
    );
    returns(
      'div_137',
      () => m0.div(f32('BF000000'), f32('3F800000')),
      f32('BF000000'),
    );
    returns(
      'div_138',
      () => m0.div(f32('3F000000'), f32('BF800000')),
      f32('BF000000'),
    );
    returns(
      'div_139',
      () => m0.div(f32('3F000000'), f32('3F800000')),
      f32('3F000000'),
    );
    returns(
      'div_140',
      () => m0.div(f32('BF000000'), f32('C0C90FDB')),
      f32('3DA2F983'),
    );
    returns(
      'div_141',
      () => m0.div(f32('BF000000'), f32('40C90FDB')),
      f32('BDA2F983'),
    );
    returns(
      'div_142',
      () => m0.div(f32('3F000000'), f32('C0C90FDB')),
      f32('BDA2F983'),
    );
    returns(
      'div_143',
      () => m0.div(f32('3F000000'), f32('40C90FDB')),
      f32('3DA2F983'),
    );
    returns(
      'div_144',
      () => m0.div(f32('BF000000'), f32('FF7FFFFF')),
      f32('100000'),
    );
    returns(
      'div_145',
      () => m0.div(f32('BF000000'), f32('7F7FFFFF')),
      f32('80100000'),
    );
    returns(
      'div_146',
      () => m0.div(f32('3F000000'), f32('FF7FFFFF')),
      f32('80100000'),
    );
    returns(
      'div_147',
      () => m0.div(f32('3F000000'), f32('7F7FFFFF')),
      f32('100000'),
    );
    returns(
      'div_148',
      () => m0.div(f32('BF000000'), f32('FF800000')),
      f32('0'),
    );
    returns(
      'div_149',
      () => m0.div(f32('BF000000'), f32('7F800000')),
      f32('80000000'),
    );
    returns(
      'div_150',
      () => m0.div(f32('3F000000'), f32('FF800000')),
      f32('80000000'),
    );
    returns(
      'div_151',
      () => m0.div(f32('3F000000'), f32('7F800000')),
      f32('0'),
    );
    returns(
      'div_152',
      () => m0.div(f32('BF000000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'div_153',
      () => m0.div(f32('BF000000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'div_154',
      () => m0.div(f32('BF000000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'div_155',
      () => m0.div(f32('BF000000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'div_156',
      () => m0.div(f32('3F000000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'div_157',
      () => m0.div(f32('3F000000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'div_158',
      () => m0.div(f32('3F000000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'div_159',
      () => m0.div(f32('3F000000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'div_160',
      () => m0.div(f32('BF800000'), f32('80000000')),
      f32('7F800000'),
    );
    returns(
      'div_161',
      () => m0.div(f32('BF800000'), f32('0')),
      f32('FF800000'),
    );
    returns(
      'div_162',
      () => m0.div(f32('3F800000'), f32('80000000')),
      f32('FF800000'),
    );
    returns(
      'div_163',
      () => m0.div(f32('3F800000'), f32('0')),
      f32('7F800000'),
    );
    returns(
      'div_164',
      () => m0.div(f32('BF800000'), f32('80000001')),
      f32('7F800000'),
    );
    returns(
      'div_165',
      () => m0.div(f32('BF800000'), f32('1')),
      f32('FF800000'),
    );
    returns(
      'div_166',
      () => m0.div(f32('3F800000'), f32('80000001')),
      f32('FF800000'),
    );
    returns(
      'div_167',
      () => m0.div(f32('3F800000'), f32('1')),
      f32('7F800000'),
    );
    returns(
      'div_168',
      () => m0.div(f32('BF800000'), f32('80800000')),
      f32('7E800000'),
    );
    returns(
      'div_169',
      () => m0.div(f32('BF800000'), f32('800000')),
      f32('FE800000'),
    );
    returns(
      'div_170',
      () => m0.div(f32('3F800000'), f32('80800000')),
      f32('FE800000'),
    );
    returns(
      'div_171',
      () => m0.div(f32('3F800000'), f32('800000')),
      f32('7E800000'),
    );
    returns(
      'div_172',
      () => m0.div(f32('BF800000'), f32('BF000000')),
      f32('40000000'),
    );
    returns(
      'div_173',
      () => m0.div(f32('BF800000'), f32('3F000000')),
      f32('C0000000'),
    );
    returns(
      'div_174',
      () => m0.div(f32('3F800000'), f32('BF000000')),
      f32('C0000000'),
    );
    returns(
      'div_175',
      () => m0.div(f32('3F800000'), f32('3F000000')),
      f32('40000000'),
    );
    returns(
      'div_176',
      () => m0.div(f32('BF800000'), f32('BF800000')),
      f32('3F800000'),
    );
    returns(
      'div_177',
      () => m0.div(f32('BF800000'), f32('3F800000')),
      f32('BF800000'),
    );
    returns(
      'div_178',
      () => m0.div(f32('3F800000'), f32('BF800000')),
      f32('BF800000'),
    );
    returns(
      'div_179',
      () => m0.div(f32('3F800000'), f32('3F800000')),
      f32('3F800000'),
    );
    returns(
      'div_180',
      () => m0.div(f32('BF800000'), f32('C0C90FDB')),
      f32('3E22F983'),
    );
    returns(
      'div_181',
      () => m0.div(f32('BF800000'), f32('40C90FDB')),
      f32('BE22F983'),
    );
    returns(
      'div_182',
      () => m0.div(f32('3F800000'), f32('C0C90FDB')),
      f32('BE22F983'),
    );
    returns(
      'div_183',
      () => m0.div(f32('3F800000'), f32('40C90FDB')),
      f32('3E22F983'),
    );
    returns(
      'div_184',
      () => m0.div(f32('BF800000'), f32('FF7FFFFF')),
      f32('200000'),
    );
    returns(
      'div_185',
      () => m0.div(f32('BF800000'), f32('7F7FFFFF')),
      f32('80200000'),
    );
    returns(
      'div_186',
      () => m0.div(f32('3F800000'), f32('FF7FFFFF')),
      f32('80200000'),
    );
    returns(
      'div_187',
      () => m0.div(f32('3F800000'), f32('7F7FFFFF')),
      f32('200000'),
    );
    returns(
      'div_188',
      () => m0.div(f32('BF800000'), f32('FF800000')),
      f32('0'),
    );
    returns(
      'div_189',
      () => m0.div(f32('BF800000'), f32('7F800000')),
      f32('80000000'),
    );
    returns(
      'div_190',
      () => m0.div(f32('3F800000'), f32('FF800000')),
      f32('80000000'),
    );
    returns(
      'div_191',
      () => m0.div(f32('3F800000'), f32('7F800000')),
      f32('0'),
    );
    returns(
      'div_192',
      () => m0.div(f32('BF800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'div_193',
      () => m0.div(f32('BF800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'div_194',
      () => m0.div(f32('BF800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'div_195',
      () => m0.div(f32('BF800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'div_196',
      () => m0.div(f32('3F800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'div_197',
      () => m0.div(f32('3F800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'div_198',
      () => m0.div(f32('3F800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'div_199',
      () => m0.div(f32('3F800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'div_200',
      () => m0.div(f32('C0C90FDB'), f32('80000000')),
      f32('7F800000'),
    );
    returns(
      'div_201',
      () => m0.div(f32('C0C90FDB'), f32('0')),
      f32('FF800000'),
    );
    returns(
      'div_202',
      () => m0.div(f32('40C90FDB'), f32('80000000')),
      f32('FF800000'),
    );
    returns(
      'div_203',
      () => m0.div(f32('40C90FDB'), f32('0')),
      f32('7F800000'),
    );
    returns(
      'div_204',
      () => m0.div(f32('C0C90FDB'), f32('80000001')),
      f32('7F800000'),
    );
    returns(
      'div_205',
      () => m0.div(f32('C0C90FDB'), f32('1')),
      f32('FF800000'),
    );
    returns(
      'div_206',
      () => m0.div(f32('40C90FDB'), f32('80000001')),
      f32('FF800000'),
    );
    returns(
      'div_207',
      () => m0.div(f32('40C90FDB'), f32('1')),
      f32('7F800000'),
    );
    returns(
      'div_208',
      () => m0.div(f32('C0C90FDB'), f32('80800000')),
      f32('7F800000'),
    );
    returns(
      'div_209',
      () => m0.div(f32('C0C90FDB'), f32('800000')),
      f32('FF800000'),
    );
    returns(
      'div_210',
      () => m0.div(f32('40C90FDB'), f32('80800000')),
      f32('FF800000'),
    );
    returns(
      'div_211',
      () => m0.div(f32('40C90FDB'), f32('800000')),
      f32('7F800000'),
    );
    returns(
      'div_212',
      () => m0.div(f32('C0C90FDB'), f32('BF000000')),
      f32('41490FDB'),
    );
    returns(
      'div_213',
      () => m0.div(f32('C0C90FDB'), f32('3F000000')),
      f32('C1490FDB'),
    );
    returns(
      'div_214',
      () => m0.div(f32('40C90FDB'), f32('BF000000')),
      f32('C1490FDB'),
    );
    returns(
      'div_215',
      () => m0.div(f32('40C90FDB'), f32('3F000000')),
      f32('41490FDB'),
    );
    returns(
      'div_216',
      () => m0.div(f32('C0C90FDB'), f32('BF800000')),
      f32('40C90FDB'),
    );
    returns(
      'div_217',
      () => m0.div(f32('C0C90FDB'), f32('3F800000')),
      f32('C0C90FDB'),
    );
    returns(
      'div_218',
      () => m0.div(f32('40C90FDB'), f32('BF800000')),
      f32('C0C90FDB'),
    );
    returns(
      'div_219',
      () => m0.div(f32('40C90FDB'), f32('3F800000')),
      f32('40C90FDB'),
    );
    returns(
      'div_220',
      () => m0.div(f32('C0C90FDB'), f32('C0C90FDB')),
      f32('3F800000'),
    );
    returns(
      'div_221',
      () => m0.div(f32('C0C90FDB'), f32('40C90FDB')),
      f32('BF800000'),
    );
    returns(
      'div_222',
      () => m0.div(f32('40C90FDB'), f32('C0C90FDB')),
      f32('BF800000'),
    );
    returns(
      'div_223',
      () => m0.div(f32('40C90FDB'), f32('40C90FDB')),
      f32('3F800000'),
    );
    returns(
      'div_224',
      () => m0.div(f32('C0C90FDB'), f32('FF7FFFFF')),
      f32('C90FDC'),
    );
    returns(
      'div_225',
      () => m0.div(f32('C0C90FDB'), f32('7F7FFFFF')),
      f32('80C90FDC'),
    );
    returns(
      'div_226',
      () => m0.div(f32('40C90FDB'), f32('FF7FFFFF')),
      f32('80C90FDC'),
    );
    returns(
      'div_227',
      () => m0.div(f32('40C90FDB'), f32('7F7FFFFF')),
      f32('C90FDC'),
    );
    returns(
      'div_228',
      () => m0.div(f32('C0C90FDB'), f32('FF800000')),
      f32('0'),
    );
    returns(
      'div_229',
      () => m0.div(f32('C0C90FDB'), f32('7F800000')),
      f32('80000000'),
    );
    returns(
      'div_230',
      () => m0.div(f32('40C90FDB'), f32('FF800000')),
      f32('80000000'),
    );
    returns(
      'div_231',
      () => m0.div(f32('40C90FDB'), f32('7F800000')),
      f32('0'),
    );
    returns(
      'div_232',
      () => m0.div(f32('C0C90FDB'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'div_233',
      () => m0.div(f32('C0C90FDB'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'div_234',
      () => m0.div(f32('C0C90FDB'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'div_235',
      () => m0.div(f32('C0C90FDB'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'div_236',
      () => m0.div(f32('40C90FDB'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'div_237',
      () => m0.div(f32('40C90FDB'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'div_238',
      () => m0.div(f32('40C90FDB'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'div_239',
      () => m0.div(f32('40C90FDB'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'div_240',
      () => m0.div(f32('FF7FFFFF'), f32('80000000')),
      f32('7F800000'),
    );
    returns(
      'div_241',
      () => m0.div(f32('FF7FFFFF'), f32('0')),
      f32('FF800000'),
    );
    returns(
      'div_242',
      () => m0.div(f32('7F7FFFFF'), f32('80000000')),
      f32('FF800000'),
    );
    returns(
      'div_243',
      () => m0.div(f32('7F7FFFFF'), f32('0')),
      f32('7F800000'),
    );
    returns(
      'div_244',
      () => m0.div(f32('FF7FFFFF'), f32('80000001')),
      f32('7F800000'),
    );
    returns(
      'div_245',
      () => m0.div(f32('FF7FFFFF'), f32('1')),
      f32('FF800000'),
    );
    returns(
      'div_246',
      () => m0.div(f32('7F7FFFFF'), f32('80000001')),
      f32('FF800000'),
    );
    returns(
      'div_247',
      () => m0.div(f32('7F7FFFFF'), f32('1')),
      f32('7F800000'),
    );
    returns(
      'div_248',
      () => m0.div(f32('FF7FFFFF'), f32('80800000')),
      f32('7F800000'),
    );
    returns(
      'div_249',
      () => m0.div(f32('FF7FFFFF'), f32('800000')),
      f32('FF800000'),
    );
    returns(
      'div_250',
      () => m0.div(f32('7F7FFFFF'), f32('80800000')),
      f32('FF800000'),
    );
    returns(
      'div_251',
      () => m0.div(f32('7F7FFFFF'), f32('800000')),
      f32('7F800000'),
    );
    returns(
      'div_252',
      () => m0.div(f32('FF7FFFFF'), f32('BF000000')),
      f32('7F800000'),
    );
    returns(
      'div_253',
      () => m0.div(f32('FF7FFFFF'), f32('3F000000')),
      f32('FF800000'),
    );
    returns(
      'div_254',
      () => m0.div(f32('7F7FFFFF'), f32('BF000000')),
      f32('FF800000'),
    );
    returns(
      'div_255',
      () => m0.div(f32('7F7FFFFF'), f32('3F000000')),
      f32('7F800000'),
    );
    returns(
      'div_256',
      () => m0.div(f32('FF7FFFFF'), f32('BF800000')),
      f32('7F7FFFFF'),
    );
    returns(
      'div_257',
      () => m0.div(f32('FF7FFFFF'), f32('3F800000')),
      f32('FF7FFFFF'),
    );
    returns(
      'div_258',
      () => m0.div(f32('7F7FFFFF'), f32('BF800000')),
      f32('FF7FFFFF'),
    );
    returns(
      'div_259',
      () => m0.div(f32('7F7FFFFF'), f32('3F800000')),
      f32('7F7FFFFF'),
    );
    returns(
      'div_260',
      () => m0.div(f32('FF7FFFFF'), f32('C0C90FDB')),
      f32('7E22F982'),
    );
    returns(
      'div_261',
      () => m0.div(f32('FF7FFFFF'), f32('40C90FDB')),
      f32('FE22F982'),
    );
    returns(
      'div_262',
      () => m0.div(f32('7F7FFFFF'), f32('C0C90FDB')),
      f32('FE22F982'),
    );
    returns(
      'div_263',
      () => m0.div(f32('7F7FFFFF'), f32('40C90FDB')),
      f32('7E22F982'),
    );
    returns(
      'div_264',
      () => m0.div(f32('FF7FFFFF'), f32('FF7FFFFF')),
      f32('3F800000'),
    );
    returns(
      'div_265',
      () => m0.div(f32('FF7FFFFF'), f32('7F7FFFFF')),
      f32('BF800000'),
    );
    returns(
      'div_266',
      () => m0.div(f32('7F7FFFFF'), f32('FF7FFFFF')),
      f32('BF800000'),
    );
    returns(
      'div_267',
      () => m0.div(f32('7F7FFFFF'), f32('7F7FFFFF')),
      f32('3F800000'),
    );
    returns(
      'div_268',
      () => m0.div(f32('FF7FFFFF'), f32('FF800000')),
      f32('0'),
    );
    returns(
      'div_269',
      () => m0.div(f32('FF7FFFFF'), f32('7F800000')),
      f32('80000000'),
    );
    returns(
      'div_270',
      () => m0.div(f32('7F7FFFFF'), f32('FF800000')),
      f32('80000000'),
    );
    returns(
      'div_271',
      () => m0.div(f32('7F7FFFFF'), f32('7F800000')),
      f32('0'),
    );
    returns(
      'div_272',
      () => m0.div(f32('FF7FFFFF'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'div_273',
      () => m0.div(f32('FF7FFFFF'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'div_274',
      () => m0.div(f32('FF7FFFFF'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'div_275',
      () => m0.div(f32('FF7FFFFF'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'div_276',
      () => m0.div(f32('7F7FFFFF'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'div_277',
      () => m0.div(f32('7F7FFFFF'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'div_278',
      () => m0.div(f32('7F7FFFFF'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'div_279',
      () => m0.div(f32('7F7FFFFF'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'div_280',
      () => m0.div(f32('FF800000'), f32('80000000')),
      f32('7F800000'),
    );
    returns(
      'div_281',
      () => m0.div(f32('FF800000'), f32('0')),
      f32('FF800000'),
    );
    returns(
      'div_282',
      () => m0.div(f32('7F800000'), f32('80000000')),
      f32('FF800000'),
    );
    returns(
      'div_283',
      () => m0.div(f32('7F800000'), f32('0')),
      f32('7F800000'),
    );
    returns(
      'div_284',
      () => m0.div(f32('FF800000'), f32('80000001')),
      f32('7F800000'),
    );
    returns(
      'div_285',
      () => m0.div(f32('FF800000'), f32('1')),
      f32('FF800000'),
    );
    returns(
      'div_286',
      () => m0.div(f32('7F800000'), f32('80000001')),
      f32('FF800000'),
    );
    returns(
      'div_287',
      () => m0.div(f32('7F800000'), f32('1')),
      f32('7F800000'),
    );
    returns(
      'div_288',
      () => m0.div(f32('FF800000'), f32('80800000')),
      f32('7F800000'),
    );
    returns(
      'div_289',
      () => m0.div(f32('FF800000'), f32('800000')),
      f32('FF800000'),
    );
    returns(
      'div_290',
      () => m0.div(f32('7F800000'), f32('80800000')),
      f32('FF800000'),
    );
    returns(
      'div_291',
      () => m0.div(f32('7F800000'), f32('800000')),
      f32('7F800000'),
    );
    returns(
      'div_292',
      () => m0.div(f32('FF800000'), f32('BF000000')),
      f32('7F800000'),
    );
    returns(
      'div_293',
      () => m0.div(f32('FF800000'), f32('3F000000')),
      f32('FF800000'),
    );
    returns(
      'div_294',
      () => m0.div(f32('7F800000'), f32('BF000000')),
      f32('FF800000'),
    );
    returns(
      'div_295',
      () => m0.div(f32('7F800000'), f32('3F000000')),
      f32('7F800000'),
    );
    returns(
      'div_296',
      () => m0.div(f32('FF800000'), f32('BF800000')),
      f32('7F800000'),
    );
    returns(
      'div_297',
      () => m0.div(f32('FF800000'), f32('3F800000')),
      f32('FF800000'),
    );
    returns(
      'div_298',
      () => m0.div(f32('7F800000'), f32('BF800000')),
      f32('FF800000'),
    );
    returns(
      'div_299',
      () => m0.div(f32('7F800000'), f32('3F800000')),
      f32('7F800000'),
    );
    returns(
      'div_300',
      () => m0.div(f32('FF800000'), f32('C0C90FDB')),
      f32('7F800000'),
    );
    returns(
      'div_301',
      () => m0.div(f32('FF800000'), f32('40C90FDB')),
      f32('FF800000'),
    );
    returns(
      'div_302',
      () => m0.div(f32('7F800000'), f32('C0C90FDB')),
      f32('FF800000'),
    );
    returns(
      'div_303',
      () => m0.div(f32('7F800000'), f32('40C90FDB')),
      f32('7F800000'),
    );
    returns(
      'div_304',
      () => m0.div(f32('FF800000'), f32('FF7FFFFF')),
      f32('7F800000'),
    );
    returns(
      'div_305',
      () => m0.div(f32('FF800000'), f32('7F7FFFFF')),
      f32('FF800000'),
    );
    returns(
      'div_306',
      () => m0.div(f32('7F800000'), f32('FF7FFFFF')),
      f32('FF800000'),
    );
    returns(
      'div_307',
      () => m0.div(f32('7F800000'), f32('7F7FFFFF')),
      f32('7F800000'),
    );
    returns(
      'div_308',
      () => m0.div(f32('FF800000'), f32('FF800000')),
      double.nan,
    );
    returns(
      'div_309',
      () => m0.div(f32('FF800000'), f32('7F800000')),
      double.nan,
    );
    returns(
      'div_310',
      () => m0.div(f32('7F800000'), f32('FF800000')),
      double.nan,
    );
    returns(
      'div_311',
      () => m0.div(f32('7F800000'), f32('7F800000')),
      double.nan,
    );
    returns(
      'div_312',
      () => m0.div(f32('FF800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'div_313',
      () => m0.div(f32('FF800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'div_314',
      () => m0.div(f32('FF800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'div_315',
      () => m0.div(f32('FF800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'div_316',
      () => m0.div(f32('7F800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'div_317',
      () => m0.div(f32('7F800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'div_318',
      () => m0.div(f32('7F800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'div_319',
      () => m0.div(f32('7F800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'div_320',
      () => m0.div(f32('FFC00000'), f32('80000000')),
      double.nan,
    );
    returns(
      'div_321',
      () => m0.div(f32('FFA00000'), f32('80000000')),
      double.nan,
    );
    returns('div_322', () => m0.div(f32('FFC00000'), f32('0')), double.nan);
    returns('div_323', () => m0.div(f32('FFA00000'), f32('0')), double.nan);
    returns(
      'div_324',
      () => m0.div(f32('7FC00000'), f32('80000000')),
      double.nan,
    );
    returns(
      'div_325',
      () => m0.div(f32('7FA00000'), f32('80000000')),
      double.nan,
    );
    returns('div_326', () => m0.div(f32('7FC00000'), f32('0')), double.nan);
    returns('div_327', () => m0.div(f32('7FA00000'), f32('0')), double.nan);
    returns(
      'div_328',
      () => m0.div(f32('FFC00000'), f32('80000001')),
      double.nan,
    );
    returns(
      'div_329',
      () => m0.div(f32('FFA00000'), f32('80000001')),
      double.nan,
    );
    returns('div_330', () => m0.div(f32('FFC00000'), f32('1')), double.nan);
    returns('div_331', () => m0.div(f32('FFA00000'), f32('1')), double.nan);
    returns(
      'div_332',
      () => m0.div(f32('7FC00000'), f32('80000001')),
      double.nan,
    );
    returns(
      'div_333',
      () => m0.div(f32('7FA00000'), f32('80000001')),
      double.nan,
    );
    returns('div_334', () => m0.div(f32('7FC00000'), f32('1')), double.nan);
    returns('div_335', () => m0.div(f32('7FA00000'), f32('1')), double.nan);
    returns(
      'div_336',
      () => m0.div(f32('FFC00000'), f32('80800000')),
      double.nan,
    );
    returns(
      'div_337',
      () => m0.div(f32('FFA00000'), f32('80800000')),
      double.nan,
    );
    returns(
      'div_338',
      () => m0.div(f32('FFC00000'), f32('800000')),
      double.nan,
    );
    returns(
      'div_339',
      () => m0.div(f32('FFA00000'), f32('800000')),
      double.nan,
    );
    returns(
      'div_340',
      () => m0.div(f32('7FC00000'), f32('80800000')),
      double.nan,
    );
    returns(
      'div_341',
      () => m0.div(f32('7FA00000'), f32('80800000')),
      double.nan,
    );
    returns(
      'div_342',
      () => m0.div(f32('7FC00000'), f32('800000')),
      double.nan,
    );
    returns(
      'div_343',
      () => m0.div(f32('7FA00000'), f32('800000')),
      double.nan,
    );
    returns(
      'div_344',
      () => m0.div(f32('FFC00000'), f32('BF000000')),
      double.nan,
    );
    returns(
      'div_345',
      () => m0.div(f32('FFA00000'), f32('BF000000')),
      double.nan,
    );
    returns(
      'div_346',
      () => m0.div(f32('FFC00000'), f32('3F000000')),
      double.nan,
    );
    returns(
      'div_347',
      () => m0.div(f32('FFA00000'), f32('3F000000')),
      double.nan,
    );
    returns(
      'div_348',
      () => m0.div(f32('7FC00000'), f32('BF000000')),
      double.nan,
    );
    returns(
      'div_349',
      () => m0.div(f32('7FA00000'), f32('BF000000')),
      double.nan,
    );
    returns(
      'div_350',
      () => m0.div(f32('7FC00000'), f32('3F000000')),
      double.nan,
    );
    returns(
      'div_351',
      () => m0.div(f32('7FA00000'), f32('3F000000')),
      double.nan,
    );
    returns(
      'div_352',
      () => m0.div(f32('FFC00000'), f32('BF800000')),
      double.nan,
    );
    returns(
      'div_353',
      () => m0.div(f32('FFA00000'), f32('BF800000')),
      double.nan,
    );
    returns(
      'div_354',
      () => m0.div(f32('FFC00000'), f32('3F800000')),
      double.nan,
    );
    returns(
      'div_355',
      () => m0.div(f32('FFA00000'), f32('3F800000')),
      double.nan,
    );
    returns(
      'div_356',
      () => m0.div(f32('7FC00000'), f32('BF800000')),
      double.nan,
    );
    returns(
      'div_357',
      () => m0.div(f32('7FA00000'), f32('BF800000')),
      double.nan,
    );
    returns(
      'div_358',
      () => m0.div(f32('7FC00000'), f32('3F800000')),
      double.nan,
    );
    returns(
      'div_359',
      () => m0.div(f32('7FA00000'), f32('3F800000')),
      double.nan,
    );
    returns(
      'div_360',
      () => m0.div(f32('FFC00000'), f32('C0C90FDB')),
      double.nan,
    );
    returns(
      'div_361',
      () => m0.div(f32('FFA00000'), f32('C0C90FDB')),
      double.nan,
    );
    returns(
      'div_362',
      () => m0.div(f32('FFC00000'), f32('40C90FDB')),
      double.nan,
    );
    returns(
      'div_363',
      () => m0.div(f32('FFA00000'), f32('40C90FDB')),
      double.nan,
    );
    returns(
      'div_364',
      () => m0.div(f32('7FC00000'), f32('C0C90FDB')),
      double.nan,
    );
    returns(
      'div_365',
      () => m0.div(f32('7FA00000'), f32('C0C90FDB')),
      double.nan,
    );
    returns(
      'div_366',
      () => m0.div(f32('7FC00000'), f32('40C90FDB')),
      double.nan,
    );
    returns(
      'div_367',
      () => m0.div(f32('7FA00000'), f32('40C90FDB')),
      double.nan,
    );
    returns(
      'div_368',
      () => m0.div(f32('FFC00000'), f32('FF7FFFFF')),
      double.nan,
    );
    returns(
      'div_369',
      () => m0.div(f32('FFA00000'), f32('FF7FFFFF')),
      double.nan,
    );
    returns(
      'div_370',
      () => m0.div(f32('FFC00000'), f32('7F7FFFFF')),
      double.nan,
    );
    returns(
      'div_371',
      () => m0.div(f32('FFA00000'), f32('7F7FFFFF')),
      double.nan,
    );
    returns(
      'div_372',
      () => m0.div(f32('7FC00000'), f32('FF7FFFFF')),
      double.nan,
    );
    returns(
      'div_373',
      () => m0.div(f32('7FA00000'), f32('FF7FFFFF')),
      double.nan,
    );
    returns(
      'div_374',
      () => m0.div(f32('7FC00000'), f32('7F7FFFFF')),
      double.nan,
    );
    returns(
      'div_375',
      () => m0.div(f32('7FA00000'), f32('7F7FFFFF')),
      double.nan,
    );
    returns(
      'div_376',
      () => m0.div(f32('FFC00000'), f32('FF800000')),
      double.nan,
    );
    returns(
      'div_377',
      () => m0.div(f32('FFA00000'), f32('FF800000')),
      double.nan,
    );
    returns(
      'div_378',
      () => m0.div(f32('FFC00000'), f32('7F800000')),
      double.nan,
    );
    returns(
      'div_379',
      () => m0.div(f32('FFA00000'), f32('7F800000')),
      double.nan,
    );
    returns(
      'div_380',
      () => m0.div(f32('7FC00000'), f32('FF800000')),
      double.nan,
    );
    returns(
      'div_381',
      () => m0.div(f32('7FA00000'), f32('FF800000')),
      double.nan,
    );
    returns(
      'div_382',
      () => m0.div(f32('7FC00000'), f32('7F800000')),
      double.nan,
    );
    returns(
      'div_383',
      () => m0.div(f32('7FA00000'), f32('7F800000')),
      double.nan,
    );
    returns(
      'div_384',
      () => m0.div(f32('FFC00000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'div_385',
      () => m0.div(f32('FFA00000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'div_386',
      () => m0.div(f32('FFC00000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'div_387',
      () => m0.div(f32('FFA00000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'div_388',
      () => m0.div(f32('FFC00000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'div_389',
      () => m0.div(f32('FFA00000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'div_390',
      () => m0.div(f32('FFC00000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'div_391',
      () => m0.div(f32('FFA00000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'div_392',
      () => m0.div(f32('7FC00000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'div_393',
      () => m0.div(f32('7FA00000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'div_394',
      () => m0.div(f32('7FC00000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'div_395',
      () => m0.div(f32('7FA00000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'div_396',
      () => m0.div(f32('7FC00000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'div_397',
      () => m0.div(f32('7FA00000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'div_398',
      () => m0.div(f32('7FC00000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'div_399',
      () => m0.div(f32('7FA00000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'min_0',
      () => m0.min(f32('80000000'), f32('80000000')),
      f32('80000000'),
    );
    returns('min_1', () => m0.min(f32('80000000'), f32('0')), f32('80000000'));
    returns('min_2', () => m0.min(f32('0'), f32('80000000')), f32('80000000'));
    returns('min_3', () => m0.min(f32('0'), f32('0')), f32('0'));
    returns(
      'min_4',
      () => m0.min(f32('80000000'), f32('80000001')),
      f32('80000001'),
    );
    returns('min_5', () => m0.min(f32('80000000'), f32('1')), f32('80000000'));
    returns('min_6', () => m0.min(f32('0'), f32('80000001')), f32('80000001'));
    returns('min_7', () => m0.min(f32('0'), f32('1')), f32('0'));
    returns(
      'min_8',
      () => m0.min(f32('80000000'), f32('80800000')),
      f32('80800000'),
    );
    returns(
      'min_9',
      () => m0.min(f32('80000000'), f32('800000')),
      f32('80000000'),
    );
    returns('min_10', () => m0.min(f32('0'), f32('80800000')), f32('80800000'));
    returns('min_11', () => m0.min(f32('0'), f32('800000')), f32('0'));
    returns(
      'min_12',
      () => m0.min(f32('80000000'), f32('BF000000')),
      f32('BF000000'),
    );
    returns(
      'min_13',
      () => m0.min(f32('80000000'), f32('3F000000')),
      f32('80000000'),
    );
    returns('min_14', () => m0.min(f32('0'), f32('BF000000')), f32('BF000000'));
    returns('min_15', () => m0.min(f32('0'), f32('3F000000')), f32('0'));
    returns(
      'min_16',
      () => m0.min(f32('80000000'), f32('BF800000')),
      f32('BF800000'),
    );
    returns(
      'min_17',
      () => m0.min(f32('80000000'), f32('3F800000')),
      f32('80000000'),
    );
    returns('min_18', () => m0.min(f32('0'), f32('BF800000')), f32('BF800000'));
    returns('min_19', () => m0.min(f32('0'), f32('3F800000')), f32('0'));
    returns(
      'min_20',
      () => m0.min(f32('80000000'), f32('C0C90FDB')),
      f32('C0C90FDB'),
    );
    returns(
      'min_21',
      () => m0.min(f32('80000000'), f32('40C90FDB')),
      f32('80000000'),
    );
    returns('min_22', () => m0.min(f32('0'), f32('C0C90FDB')), f32('C0C90FDB'));
    returns('min_23', () => m0.min(f32('0'), f32('40C90FDB')), f32('0'));
    returns(
      'min_24',
      () => m0.min(f32('80000000'), f32('FF7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'min_25',
      () => m0.min(f32('80000000'), f32('7F7FFFFF')),
      f32('80000000'),
    );
    returns('min_26', () => m0.min(f32('0'), f32('FF7FFFFF')), f32('FF7FFFFF'));
    returns('min_27', () => m0.min(f32('0'), f32('7F7FFFFF')), f32('0'));
    returns(
      'min_28',
      () => m0.min(f32('80000000'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'min_29',
      () => m0.min(f32('80000000'), f32('7F800000')),
      f32('80000000'),
    );
    returns('min_30', () => m0.min(f32('0'), f32('FF800000')), f32('FF800000'));
    returns('min_31', () => m0.min(f32('0'), f32('7F800000')), f32('0'));
    returns(
      'min_32',
      () => m0.min(f32('80000000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'min_33',
      () => m0.min(f32('80000000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'min_34',
      () => m0.min(f32('80000000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'min_35',
      () => m0.min(f32('80000000'), f32('7FA00000')),
      double.nan,
    );
    returns('min_36', () => m0.min(f32('0'), f32('FFC00000')), double.nan);
    returns('min_37', () => m0.min(f32('0'), f32('FFA00000')), double.nan);
    returns('min_38', () => m0.min(f32('0'), f32('7FC00000')), double.nan);
    returns('min_39', () => m0.min(f32('0'), f32('7FA00000')), double.nan);
    returns(
      'min_40',
      () => m0.min(f32('80000001'), f32('80000000')),
      f32('80000001'),
    );
    returns('min_41', () => m0.min(f32('80000001'), f32('0')), f32('80000001'));
    returns('min_42', () => m0.min(f32('1'), f32('80000000')), f32('80000000'));
    returns('min_43', () => m0.min(f32('1'), f32('0')), f32('0'));
    returns(
      'min_44',
      () => m0.min(f32('80000001'), f32('80000001')),
      f32('80000001'),
    );
    returns('min_45', () => m0.min(f32('80000001'), f32('1')), f32('80000001'));
    returns('min_46', () => m0.min(f32('1'), f32('80000001')), f32('80000001'));
    returns('min_47', () => m0.min(f32('1'), f32('1')), f32('1'));
    returns(
      'min_48',
      () => m0.min(f32('80000001'), f32('80800000')),
      f32('80800000'),
    );
    returns(
      'min_49',
      () => m0.min(f32('80000001'), f32('800000')),
      f32('80000001'),
    );
    returns('min_50', () => m0.min(f32('1'), f32('80800000')), f32('80800000'));
    returns('min_51', () => m0.min(f32('1'), f32('800000')), f32('1'));
    returns(
      'min_52',
      () => m0.min(f32('80000001'), f32('BF000000')),
      f32('BF000000'),
    );
    returns(
      'min_53',
      () => m0.min(f32('80000001'), f32('3F000000')),
      f32('80000001'),
    );
    returns('min_54', () => m0.min(f32('1'), f32('BF000000')), f32('BF000000'));
    returns('min_55', () => m0.min(f32('1'), f32('3F000000')), f32('1'));
    returns(
      'min_56',
      () => m0.min(f32('80000001'), f32('BF800000')),
      f32('BF800000'),
    );
    returns(
      'min_57',
      () => m0.min(f32('80000001'), f32('3F800000')),
      f32('80000001'),
    );
    returns('min_58', () => m0.min(f32('1'), f32('BF800000')), f32('BF800000'));
    returns('min_59', () => m0.min(f32('1'), f32('3F800000')), f32('1'));
    returns(
      'min_60',
      () => m0.min(f32('80000001'), f32('C0C90FDB')),
      f32('C0C90FDB'),
    );
    returns(
      'min_61',
      () => m0.min(f32('80000001'), f32('40C90FDB')),
      f32('80000001'),
    );
    returns('min_62', () => m0.min(f32('1'), f32('C0C90FDB')), f32('C0C90FDB'));
    returns('min_63', () => m0.min(f32('1'), f32('40C90FDB')), f32('1'));
    returns(
      'min_64',
      () => m0.min(f32('80000001'), f32('FF7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'min_65',
      () => m0.min(f32('80000001'), f32('7F7FFFFF')),
      f32('80000001'),
    );
    returns('min_66', () => m0.min(f32('1'), f32('FF7FFFFF')), f32('FF7FFFFF'));
    returns('min_67', () => m0.min(f32('1'), f32('7F7FFFFF')), f32('1'));
    returns(
      'min_68',
      () => m0.min(f32('80000001'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'min_69',
      () => m0.min(f32('80000001'), f32('7F800000')),
      f32('80000001'),
    );
    returns('min_70', () => m0.min(f32('1'), f32('FF800000')), f32('FF800000'));
    returns('min_71', () => m0.min(f32('1'), f32('7F800000')), f32('1'));
    returns(
      'min_72',
      () => m0.min(f32('80000001'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'min_73',
      () => m0.min(f32('80000001'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'min_74',
      () => m0.min(f32('80000001'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'min_75',
      () => m0.min(f32('80000001'), f32('7FA00000')),
      double.nan,
    );
    returns('min_76', () => m0.min(f32('1'), f32('FFC00000')), double.nan);
    returns('min_77', () => m0.min(f32('1'), f32('FFA00000')), double.nan);
    returns('min_78', () => m0.min(f32('1'), f32('7FC00000')), double.nan);
    returns('min_79', () => m0.min(f32('1'), f32('7FA00000')), double.nan);
    returns(
      'min_80',
      () => m0.min(f32('80800000'), f32('80000000')),
      f32('80800000'),
    );
    returns('min_81', () => m0.min(f32('80800000'), f32('0')), f32('80800000'));
    returns(
      'min_82',
      () => m0.min(f32('800000'), f32('80000000')),
      f32('80000000'),
    );
    returns('min_83', () => m0.min(f32('800000'), f32('0')), f32('0'));
    returns(
      'min_84',
      () => m0.min(f32('80800000'), f32('80000001')),
      f32('80800000'),
    );
    returns('min_85', () => m0.min(f32('80800000'), f32('1')), f32('80800000'));
    returns(
      'min_86',
      () => m0.min(f32('800000'), f32('80000001')),
      f32('80000001'),
    );
    returns('min_87', () => m0.min(f32('800000'), f32('1')), f32('1'));
    returns(
      'min_88',
      () => m0.min(f32('80800000'), f32('80800000')),
      f32('80800000'),
    );
    returns(
      'min_89',
      () => m0.min(f32('80800000'), f32('800000')),
      f32('80800000'),
    );
    returns(
      'min_90',
      () => m0.min(f32('800000'), f32('80800000')),
      f32('80800000'),
    );
    returns(
      'min_91',
      () => m0.min(f32('800000'), f32('800000')),
      f32('800000'),
    );
    returns(
      'min_92',
      () => m0.min(f32('80800000'), f32('BF000000')),
      f32('BF000000'),
    );
    returns(
      'min_93',
      () => m0.min(f32('80800000'), f32('3F000000')),
      f32('80800000'),
    );
    returns(
      'min_94',
      () => m0.min(f32('800000'), f32('BF000000')),
      f32('BF000000'),
    );
    returns(
      'min_95',
      () => m0.min(f32('800000'), f32('3F000000')),
      f32('800000'),
    );
    returns(
      'min_96',
      () => m0.min(f32('80800000'), f32('BF800000')),
      f32('BF800000'),
    );
    returns(
      'min_97',
      () => m0.min(f32('80800000'), f32('3F800000')),
      f32('80800000'),
    );
    returns(
      'min_98',
      () => m0.min(f32('800000'), f32('BF800000')),
      f32('BF800000'),
    );
    returns(
      'min_99',
      () => m0.min(f32('800000'), f32('3F800000')),
      f32('800000'),
    );
    returns(
      'min_100',
      () => m0.min(f32('80800000'), f32('C0C90FDB')),
      f32('C0C90FDB'),
    );
    returns(
      'min_101',
      () => m0.min(f32('80800000'), f32('40C90FDB')),
      f32('80800000'),
    );
    returns(
      'min_102',
      () => m0.min(f32('800000'), f32('C0C90FDB')),
      f32('C0C90FDB'),
    );
    returns(
      'min_103',
      () => m0.min(f32('800000'), f32('40C90FDB')),
      f32('800000'),
    );
    returns(
      'min_104',
      () => m0.min(f32('80800000'), f32('FF7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'min_105',
      () => m0.min(f32('80800000'), f32('7F7FFFFF')),
      f32('80800000'),
    );
    returns(
      'min_106',
      () => m0.min(f32('800000'), f32('FF7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'min_107',
      () => m0.min(f32('800000'), f32('7F7FFFFF')),
      f32('800000'),
    );
    returns(
      'min_108',
      () => m0.min(f32('80800000'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'min_109',
      () => m0.min(f32('80800000'), f32('7F800000')),
      f32('80800000'),
    );
    returns(
      'min_110',
      () => m0.min(f32('800000'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'min_111',
      () => m0.min(f32('800000'), f32('7F800000')),
      f32('800000'),
    );
    returns(
      'min_112',
      () => m0.min(f32('80800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'min_113',
      () => m0.min(f32('80800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'min_114',
      () => m0.min(f32('80800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'min_115',
      () => m0.min(f32('80800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'min_116',
      () => m0.min(f32('800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'min_117',
      () => m0.min(f32('800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'min_118',
      () => m0.min(f32('800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'min_119',
      () => m0.min(f32('800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'min_120',
      () => m0.min(f32('BF000000'), f32('80000000')),
      f32('BF000000'),
    );
    returns(
      'min_121',
      () => m0.min(f32('BF000000'), f32('0')),
      f32('BF000000'),
    );
    returns(
      'min_122',
      () => m0.min(f32('3F000000'), f32('80000000')),
      f32('80000000'),
    );
    returns('min_123', () => m0.min(f32('3F000000'), f32('0')), f32('0'));
    returns(
      'min_124',
      () => m0.min(f32('BF000000'), f32('80000001')),
      f32('BF000000'),
    );
    returns(
      'min_125',
      () => m0.min(f32('BF000000'), f32('1')),
      f32('BF000000'),
    );
    returns(
      'min_126',
      () => m0.min(f32('3F000000'), f32('80000001')),
      f32('80000001'),
    );
    returns('min_127', () => m0.min(f32('3F000000'), f32('1')), f32('1'));
    returns(
      'min_128',
      () => m0.min(f32('BF000000'), f32('80800000')),
      f32('BF000000'),
    );
    returns(
      'min_129',
      () => m0.min(f32('BF000000'), f32('800000')),
      f32('BF000000'),
    );
    returns(
      'min_130',
      () => m0.min(f32('3F000000'), f32('80800000')),
      f32('80800000'),
    );
    returns(
      'min_131',
      () => m0.min(f32('3F000000'), f32('800000')),
      f32('800000'),
    );
    returns(
      'min_132',
      () => m0.min(f32('BF000000'), f32('BF000000')),
      f32('BF000000'),
    );
    returns(
      'min_133',
      () => m0.min(f32('BF000000'), f32('3F000000')),
      f32('BF000000'),
    );
    returns(
      'min_134',
      () => m0.min(f32('3F000000'), f32('BF000000')),
      f32('BF000000'),
    );
    returns(
      'min_135',
      () => m0.min(f32('3F000000'), f32('3F000000')),
      f32('3F000000'),
    );
    returns(
      'min_136',
      () => m0.min(f32('BF000000'), f32('BF800000')),
      f32('BF800000'),
    );
    returns(
      'min_137',
      () => m0.min(f32('BF000000'), f32('3F800000')),
      f32('BF000000'),
    );
    returns(
      'min_138',
      () => m0.min(f32('3F000000'), f32('BF800000')),
      f32('BF800000'),
    );
    returns(
      'min_139',
      () => m0.min(f32('3F000000'), f32('3F800000')),
      f32('3F000000'),
    );
    returns(
      'min_140',
      () => m0.min(f32('BF000000'), f32('C0C90FDB')),
      f32('C0C90FDB'),
    );
    returns(
      'min_141',
      () => m0.min(f32('BF000000'), f32('40C90FDB')),
      f32('BF000000'),
    );
    returns(
      'min_142',
      () => m0.min(f32('3F000000'), f32('C0C90FDB')),
      f32('C0C90FDB'),
    );
    returns(
      'min_143',
      () => m0.min(f32('3F000000'), f32('40C90FDB')),
      f32('3F000000'),
    );
    returns(
      'min_144',
      () => m0.min(f32('BF000000'), f32('FF7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'min_145',
      () => m0.min(f32('BF000000'), f32('7F7FFFFF')),
      f32('BF000000'),
    );
    returns(
      'min_146',
      () => m0.min(f32('3F000000'), f32('FF7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'min_147',
      () => m0.min(f32('3F000000'), f32('7F7FFFFF')),
      f32('3F000000'),
    );
    returns(
      'min_148',
      () => m0.min(f32('BF000000'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'min_149',
      () => m0.min(f32('BF000000'), f32('7F800000')),
      f32('BF000000'),
    );
    returns(
      'min_150',
      () => m0.min(f32('3F000000'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'min_151',
      () => m0.min(f32('3F000000'), f32('7F800000')),
      f32('3F000000'),
    );
    returns(
      'min_152',
      () => m0.min(f32('BF000000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'min_153',
      () => m0.min(f32('BF000000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'min_154',
      () => m0.min(f32('BF000000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'min_155',
      () => m0.min(f32('BF000000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'min_156',
      () => m0.min(f32('3F000000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'min_157',
      () => m0.min(f32('3F000000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'min_158',
      () => m0.min(f32('3F000000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'min_159',
      () => m0.min(f32('3F000000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'min_160',
      () => m0.min(f32('BF800000'), f32('80000000')),
      f32('BF800000'),
    );
    returns(
      'min_161',
      () => m0.min(f32('BF800000'), f32('0')),
      f32('BF800000'),
    );
    returns(
      'min_162',
      () => m0.min(f32('3F800000'), f32('80000000')),
      f32('80000000'),
    );
    returns('min_163', () => m0.min(f32('3F800000'), f32('0')), f32('0'));
    returns(
      'min_164',
      () => m0.min(f32('BF800000'), f32('80000001')),
      f32('BF800000'),
    );
    returns(
      'min_165',
      () => m0.min(f32('BF800000'), f32('1')),
      f32('BF800000'),
    );
    returns(
      'min_166',
      () => m0.min(f32('3F800000'), f32('80000001')),
      f32('80000001'),
    );
    returns('min_167', () => m0.min(f32('3F800000'), f32('1')), f32('1'));
    returns(
      'min_168',
      () => m0.min(f32('BF800000'), f32('80800000')),
      f32('BF800000'),
    );
    returns(
      'min_169',
      () => m0.min(f32('BF800000'), f32('800000')),
      f32('BF800000'),
    );
    returns(
      'min_170',
      () => m0.min(f32('3F800000'), f32('80800000')),
      f32('80800000'),
    );
    returns(
      'min_171',
      () => m0.min(f32('3F800000'), f32('800000')),
      f32('800000'),
    );
    returns(
      'min_172',
      () => m0.min(f32('BF800000'), f32('BF000000')),
      f32('BF800000'),
    );
    returns(
      'min_173',
      () => m0.min(f32('BF800000'), f32('3F000000')),
      f32('BF800000'),
    );
    returns(
      'min_174',
      () => m0.min(f32('3F800000'), f32('BF000000')),
      f32('BF000000'),
    );
    returns(
      'min_175',
      () => m0.min(f32('3F800000'), f32('3F000000')),
      f32('3F000000'),
    );
    returns(
      'min_176',
      () => m0.min(f32('BF800000'), f32('BF800000')),
      f32('BF800000'),
    );
    returns(
      'min_177',
      () => m0.min(f32('BF800000'), f32('3F800000')),
      f32('BF800000'),
    );
    returns(
      'min_178',
      () => m0.min(f32('3F800000'), f32('BF800000')),
      f32('BF800000'),
    );
    returns(
      'min_179',
      () => m0.min(f32('3F800000'), f32('3F800000')),
      f32('3F800000'),
    );
    returns(
      'min_180',
      () => m0.min(f32('BF800000'), f32('C0C90FDB')),
      f32('C0C90FDB'),
    );
    returns(
      'min_181',
      () => m0.min(f32('BF800000'), f32('40C90FDB')),
      f32('BF800000'),
    );
    returns(
      'min_182',
      () => m0.min(f32('3F800000'), f32('C0C90FDB')),
      f32('C0C90FDB'),
    );
    returns(
      'min_183',
      () => m0.min(f32('3F800000'), f32('40C90FDB')),
      f32('3F800000'),
    );
    returns(
      'min_184',
      () => m0.min(f32('BF800000'), f32('FF7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'min_185',
      () => m0.min(f32('BF800000'), f32('7F7FFFFF')),
      f32('BF800000'),
    );
    returns(
      'min_186',
      () => m0.min(f32('3F800000'), f32('FF7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'min_187',
      () => m0.min(f32('3F800000'), f32('7F7FFFFF')),
      f32('3F800000'),
    );
    returns(
      'min_188',
      () => m0.min(f32('BF800000'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'min_189',
      () => m0.min(f32('BF800000'), f32('7F800000')),
      f32('BF800000'),
    );
    returns(
      'min_190',
      () => m0.min(f32('3F800000'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'min_191',
      () => m0.min(f32('3F800000'), f32('7F800000')),
      f32('3F800000'),
    );
    returns(
      'min_192',
      () => m0.min(f32('BF800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'min_193',
      () => m0.min(f32('BF800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'min_194',
      () => m0.min(f32('BF800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'min_195',
      () => m0.min(f32('BF800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'min_196',
      () => m0.min(f32('3F800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'min_197',
      () => m0.min(f32('3F800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'min_198',
      () => m0.min(f32('3F800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'min_199',
      () => m0.min(f32('3F800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'min_200',
      () => m0.min(f32('C0C90FDB'), f32('80000000')),
      f32('C0C90FDB'),
    );
    returns(
      'min_201',
      () => m0.min(f32('C0C90FDB'), f32('0')),
      f32('C0C90FDB'),
    );
    returns(
      'min_202',
      () => m0.min(f32('40C90FDB'), f32('80000000')),
      f32('80000000'),
    );
    returns('min_203', () => m0.min(f32('40C90FDB'), f32('0')), f32('0'));
    returns(
      'min_204',
      () => m0.min(f32('C0C90FDB'), f32('80000001')),
      f32('C0C90FDB'),
    );
    returns(
      'min_205',
      () => m0.min(f32('C0C90FDB'), f32('1')),
      f32('C0C90FDB'),
    );
    returns(
      'min_206',
      () => m0.min(f32('40C90FDB'), f32('80000001')),
      f32('80000001'),
    );
    returns('min_207', () => m0.min(f32('40C90FDB'), f32('1')), f32('1'));
    returns(
      'min_208',
      () => m0.min(f32('C0C90FDB'), f32('80800000')),
      f32('C0C90FDB'),
    );
    returns(
      'min_209',
      () => m0.min(f32('C0C90FDB'), f32('800000')),
      f32('C0C90FDB'),
    );
    returns(
      'min_210',
      () => m0.min(f32('40C90FDB'), f32('80800000')),
      f32('80800000'),
    );
    returns(
      'min_211',
      () => m0.min(f32('40C90FDB'), f32('800000')),
      f32('800000'),
    );
    returns(
      'min_212',
      () => m0.min(f32('C0C90FDB'), f32('BF000000')),
      f32('C0C90FDB'),
    );
    returns(
      'min_213',
      () => m0.min(f32('C0C90FDB'), f32('3F000000')),
      f32('C0C90FDB'),
    );
    returns(
      'min_214',
      () => m0.min(f32('40C90FDB'), f32('BF000000')),
      f32('BF000000'),
    );
    returns(
      'min_215',
      () => m0.min(f32('40C90FDB'), f32('3F000000')),
      f32('3F000000'),
    );
    returns(
      'min_216',
      () => m0.min(f32('C0C90FDB'), f32('BF800000')),
      f32('C0C90FDB'),
    );
    returns(
      'min_217',
      () => m0.min(f32('C0C90FDB'), f32('3F800000')),
      f32('C0C90FDB'),
    );
    returns(
      'min_218',
      () => m0.min(f32('40C90FDB'), f32('BF800000')),
      f32('BF800000'),
    );
    returns(
      'min_219',
      () => m0.min(f32('40C90FDB'), f32('3F800000')),
      f32('3F800000'),
    );
    returns(
      'min_220',
      () => m0.min(f32('C0C90FDB'), f32('C0C90FDB')),
      f32('C0C90FDB'),
    );
    returns(
      'min_221',
      () => m0.min(f32('C0C90FDB'), f32('40C90FDB')),
      f32('C0C90FDB'),
    );
    returns(
      'min_222',
      () => m0.min(f32('40C90FDB'), f32('C0C90FDB')),
      f32('C0C90FDB'),
    );
    returns(
      'min_223',
      () => m0.min(f32('40C90FDB'), f32('40C90FDB')),
      f32('40C90FDB'),
    );
    returns(
      'min_224',
      () => m0.min(f32('C0C90FDB'), f32('FF7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'min_225',
      () => m0.min(f32('C0C90FDB'), f32('7F7FFFFF')),
      f32('C0C90FDB'),
    );
    returns(
      'min_226',
      () => m0.min(f32('40C90FDB'), f32('FF7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'min_227',
      () => m0.min(f32('40C90FDB'), f32('7F7FFFFF')),
      f32('40C90FDB'),
    );
    returns(
      'min_228',
      () => m0.min(f32('C0C90FDB'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'min_229',
      () => m0.min(f32('C0C90FDB'), f32('7F800000')),
      f32('C0C90FDB'),
    );
    returns(
      'min_230',
      () => m0.min(f32('40C90FDB'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'min_231',
      () => m0.min(f32('40C90FDB'), f32('7F800000')),
      f32('40C90FDB'),
    );
    returns(
      'min_232',
      () => m0.min(f32('C0C90FDB'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'min_233',
      () => m0.min(f32('C0C90FDB'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'min_234',
      () => m0.min(f32('C0C90FDB'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'min_235',
      () => m0.min(f32('C0C90FDB'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'min_236',
      () => m0.min(f32('40C90FDB'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'min_237',
      () => m0.min(f32('40C90FDB'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'min_238',
      () => m0.min(f32('40C90FDB'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'min_239',
      () => m0.min(f32('40C90FDB'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'min_240',
      () => m0.min(f32('FF7FFFFF'), f32('80000000')),
      f32('FF7FFFFF'),
    );
    returns(
      'min_241',
      () => m0.min(f32('FF7FFFFF'), f32('0')),
      f32('FF7FFFFF'),
    );
    returns(
      'min_242',
      () => m0.min(f32('7F7FFFFF'), f32('80000000')),
      f32('80000000'),
    );
    returns('min_243', () => m0.min(f32('7F7FFFFF'), f32('0')), f32('0'));
    returns(
      'min_244',
      () => m0.min(f32('FF7FFFFF'), f32('80000001')),
      f32('FF7FFFFF'),
    );
    returns(
      'min_245',
      () => m0.min(f32('FF7FFFFF'), f32('1')),
      f32('FF7FFFFF'),
    );
    returns(
      'min_246',
      () => m0.min(f32('7F7FFFFF'), f32('80000001')),
      f32('80000001'),
    );
    returns('min_247', () => m0.min(f32('7F7FFFFF'), f32('1')), f32('1'));
    returns(
      'min_248',
      () => m0.min(f32('FF7FFFFF'), f32('80800000')),
      f32('FF7FFFFF'),
    );
    returns(
      'min_249',
      () => m0.min(f32('FF7FFFFF'), f32('800000')),
      f32('FF7FFFFF'),
    );
    returns(
      'min_250',
      () => m0.min(f32('7F7FFFFF'), f32('80800000')),
      f32('80800000'),
    );
    returns(
      'min_251',
      () => m0.min(f32('7F7FFFFF'), f32('800000')),
      f32('800000'),
    );
    returns(
      'min_252',
      () => m0.min(f32('FF7FFFFF'), f32('BF000000')),
      f32('FF7FFFFF'),
    );
    returns(
      'min_253',
      () => m0.min(f32('FF7FFFFF'), f32('3F000000')),
      f32('FF7FFFFF'),
    );
    returns(
      'min_254',
      () => m0.min(f32('7F7FFFFF'), f32('BF000000')),
      f32('BF000000'),
    );
    returns(
      'min_255',
      () => m0.min(f32('7F7FFFFF'), f32('3F000000')),
      f32('3F000000'),
    );
    returns(
      'min_256',
      () => m0.min(f32('FF7FFFFF'), f32('BF800000')),
      f32('FF7FFFFF'),
    );
    returns(
      'min_257',
      () => m0.min(f32('FF7FFFFF'), f32('3F800000')),
      f32('FF7FFFFF'),
    );
    returns(
      'min_258',
      () => m0.min(f32('7F7FFFFF'), f32('BF800000')),
      f32('BF800000'),
    );
    returns(
      'min_259',
      () => m0.min(f32('7F7FFFFF'), f32('3F800000')),
      f32('3F800000'),
    );
    returns(
      'min_260',
      () => m0.min(f32('FF7FFFFF'), f32('C0C90FDB')),
      f32('FF7FFFFF'),
    );
    returns(
      'min_261',
      () => m0.min(f32('FF7FFFFF'), f32('40C90FDB')),
      f32('FF7FFFFF'),
    );
    returns(
      'min_262',
      () => m0.min(f32('7F7FFFFF'), f32('C0C90FDB')),
      f32('C0C90FDB'),
    );
    returns(
      'min_263',
      () => m0.min(f32('7F7FFFFF'), f32('40C90FDB')),
      f32('40C90FDB'),
    );
    returns(
      'min_264',
      () => m0.min(f32('FF7FFFFF'), f32('FF7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'min_265',
      () => m0.min(f32('FF7FFFFF'), f32('7F7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'min_266',
      () => m0.min(f32('7F7FFFFF'), f32('FF7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'min_267',
      () => m0.min(f32('7F7FFFFF'), f32('7F7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'min_268',
      () => m0.min(f32('FF7FFFFF'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'min_269',
      () => m0.min(f32('FF7FFFFF'), f32('7F800000')),
      f32('FF7FFFFF'),
    );
    returns(
      'min_270',
      () => m0.min(f32('7F7FFFFF'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'min_271',
      () => m0.min(f32('7F7FFFFF'), f32('7F800000')),
      f32('7F7FFFFF'),
    );
    returns(
      'min_272',
      () => m0.min(f32('FF7FFFFF'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'min_273',
      () => m0.min(f32('FF7FFFFF'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'min_274',
      () => m0.min(f32('FF7FFFFF'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'min_275',
      () => m0.min(f32('FF7FFFFF'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'min_276',
      () => m0.min(f32('7F7FFFFF'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'min_277',
      () => m0.min(f32('7F7FFFFF'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'min_278',
      () => m0.min(f32('7F7FFFFF'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'min_279',
      () => m0.min(f32('7F7FFFFF'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'min_280',
      () => m0.min(f32('FF800000'), f32('80000000')),
      f32('FF800000'),
    );
    returns(
      'min_281',
      () => m0.min(f32('FF800000'), f32('0')),
      f32('FF800000'),
    );
    returns(
      'min_282',
      () => m0.min(f32('7F800000'), f32('80000000')),
      f32('80000000'),
    );
    returns('min_283', () => m0.min(f32('7F800000'), f32('0')), f32('0'));
    returns(
      'min_284',
      () => m0.min(f32('FF800000'), f32('80000001')),
      f32('FF800000'),
    );
    returns(
      'min_285',
      () => m0.min(f32('FF800000'), f32('1')),
      f32('FF800000'),
    );
    returns(
      'min_286',
      () => m0.min(f32('7F800000'), f32('80000001')),
      f32('80000001'),
    );
    returns('min_287', () => m0.min(f32('7F800000'), f32('1')), f32('1'));
    returns(
      'min_288',
      () => m0.min(f32('FF800000'), f32('80800000')),
      f32('FF800000'),
    );
    returns(
      'min_289',
      () => m0.min(f32('FF800000'), f32('800000')),
      f32('FF800000'),
    );
    returns(
      'min_290',
      () => m0.min(f32('7F800000'), f32('80800000')),
      f32('80800000'),
    );
    returns(
      'min_291',
      () => m0.min(f32('7F800000'), f32('800000')),
      f32('800000'),
    );
    returns(
      'min_292',
      () => m0.min(f32('FF800000'), f32('BF000000')),
      f32('FF800000'),
    );
    returns(
      'min_293',
      () => m0.min(f32('FF800000'), f32('3F000000')),
      f32('FF800000'),
    );
    returns(
      'min_294',
      () => m0.min(f32('7F800000'), f32('BF000000')),
      f32('BF000000'),
    );
    returns(
      'min_295',
      () => m0.min(f32('7F800000'), f32('3F000000')),
      f32('3F000000'),
    );
    returns(
      'min_296',
      () => m0.min(f32('FF800000'), f32('BF800000')),
      f32('FF800000'),
    );
    returns(
      'min_297',
      () => m0.min(f32('FF800000'), f32('3F800000')),
      f32('FF800000'),
    );
    returns(
      'min_298',
      () => m0.min(f32('7F800000'), f32('BF800000')),
      f32('BF800000'),
    );
    returns(
      'min_299',
      () => m0.min(f32('7F800000'), f32('3F800000')),
      f32('3F800000'),
    );
    returns(
      'min_300',
      () => m0.min(f32('FF800000'), f32('C0C90FDB')),
      f32('FF800000'),
    );
    returns(
      'min_301',
      () => m0.min(f32('FF800000'), f32('40C90FDB')),
      f32('FF800000'),
    );
    returns(
      'min_302',
      () => m0.min(f32('7F800000'), f32('C0C90FDB')),
      f32('C0C90FDB'),
    );
    returns(
      'min_303',
      () => m0.min(f32('7F800000'), f32('40C90FDB')),
      f32('40C90FDB'),
    );
    returns(
      'min_304',
      () => m0.min(f32('FF800000'), f32('FF7FFFFF')),
      f32('FF800000'),
    );
    returns(
      'min_305',
      () => m0.min(f32('FF800000'), f32('7F7FFFFF')),
      f32('FF800000'),
    );
    returns(
      'min_306',
      () => m0.min(f32('7F800000'), f32('FF7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'min_307',
      () => m0.min(f32('7F800000'), f32('7F7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'min_308',
      () => m0.min(f32('FF800000'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'min_309',
      () => m0.min(f32('FF800000'), f32('7F800000')),
      f32('FF800000'),
    );
    returns(
      'min_310',
      () => m0.min(f32('7F800000'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'min_311',
      () => m0.min(f32('7F800000'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'min_312',
      () => m0.min(f32('FF800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'min_313',
      () => m0.min(f32('FF800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'min_314',
      () => m0.min(f32('FF800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'min_315',
      () => m0.min(f32('FF800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'min_316',
      () => m0.min(f32('7F800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'min_317',
      () => m0.min(f32('7F800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'min_318',
      () => m0.min(f32('7F800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'min_319',
      () => m0.min(f32('7F800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'min_320',
      () => m0.min(f32('FFC00000'), f32('80000000')),
      double.nan,
    );
    returns(
      'min_321',
      () => m0.min(f32('FFA00000'), f32('80000000')),
      double.nan,
    );
    returns('min_322', () => m0.min(f32('FFC00000'), f32('0')), double.nan);
    returns('min_323', () => m0.min(f32('FFA00000'), f32('0')), double.nan);
    returns(
      'min_324',
      () => m0.min(f32('7FC00000'), f32('80000000')),
      double.nan,
    );
    returns(
      'min_325',
      () => m0.min(f32('7FA00000'), f32('80000000')),
      double.nan,
    );
    returns('min_326', () => m0.min(f32('7FC00000'), f32('0')), double.nan);
    returns('min_327', () => m0.min(f32('7FA00000'), f32('0')), double.nan);
    returns(
      'min_328',
      () => m0.min(f32('FFC00000'), f32('80000001')),
      double.nan,
    );
    returns(
      'min_329',
      () => m0.min(f32('FFA00000'), f32('80000001')),
      double.nan,
    );
    returns('min_330', () => m0.min(f32('FFC00000'), f32('1')), double.nan);
    returns('min_331', () => m0.min(f32('FFA00000'), f32('1')), double.nan);
    returns(
      'min_332',
      () => m0.min(f32('7FC00000'), f32('80000001')),
      double.nan,
    );
    returns(
      'min_333',
      () => m0.min(f32('7FA00000'), f32('80000001')),
      double.nan,
    );
    returns('min_334', () => m0.min(f32('7FC00000'), f32('1')), double.nan);
    returns('min_335', () => m0.min(f32('7FA00000'), f32('1')), double.nan);
    returns(
      'min_336',
      () => m0.min(f32('FFC00000'), f32('80800000')),
      double.nan,
    );
    returns(
      'min_337',
      () => m0.min(f32('FFA00000'), f32('80800000')),
      double.nan,
    );
    returns(
      'min_338',
      () => m0.min(f32('FFC00000'), f32('800000')),
      double.nan,
    );
    returns(
      'min_339',
      () => m0.min(f32('FFA00000'), f32('800000')),
      double.nan,
    );
    returns(
      'min_340',
      () => m0.min(f32('7FC00000'), f32('80800000')),
      double.nan,
    );
    returns(
      'min_341',
      () => m0.min(f32('7FA00000'), f32('80800000')),
      double.nan,
    );
    returns(
      'min_342',
      () => m0.min(f32('7FC00000'), f32('800000')),
      double.nan,
    );
    returns(
      'min_343',
      () => m0.min(f32('7FA00000'), f32('800000')),
      double.nan,
    );
    returns(
      'min_344',
      () => m0.min(f32('FFC00000'), f32('BF000000')),
      double.nan,
    );
    returns(
      'min_345',
      () => m0.min(f32('FFA00000'), f32('BF000000')),
      double.nan,
    );
    returns(
      'min_346',
      () => m0.min(f32('FFC00000'), f32('3F000000')),
      double.nan,
    );
    returns(
      'min_347',
      () => m0.min(f32('FFA00000'), f32('3F000000')),
      double.nan,
    );
    returns(
      'min_348',
      () => m0.min(f32('7FC00000'), f32('BF000000')),
      double.nan,
    );
    returns(
      'min_349',
      () => m0.min(f32('7FA00000'), f32('BF000000')),
      double.nan,
    );
    returns(
      'min_350',
      () => m0.min(f32('7FC00000'), f32('3F000000')),
      double.nan,
    );
    returns(
      'min_351',
      () => m0.min(f32('7FA00000'), f32('3F000000')),
      double.nan,
    );
    returns(
      'min_352',
      () => m0.min(f32('FFC00000'), f32('BF800000')),
      double.nan,
    );
    returns(
      'min_353',
      () => m0.min(f32('FFA00000'), f32('BF800000')),
      double.nan,
    );
    returns(
      'min_354',
      () => m0.min(f32('FFC00000'), f32('3F800000')),
      double.nan,
    );
    returns(
      'min_355',
      () => m0.min(f32('FFA00000'), f32('3F800000')),
      double.nan,
    );
    returns(
      'min_356',
      () => m0.min(f32('7FC00000'), f32('BF800000')),
      double.nan,
    );
    returns(
      'min_357',
      () => m0.min(f32('7FA00000'), f32('BF800000')),
      double.nan,
    );
    returns(
      'min_358',
      () => m0.min(f32('7FC00000'), f32('3F800000')),
      double.nan,
    );
    returns(
      'min_359',
      () => m0.min(f32('7FA00000'), f32('3F800000')),
      double.nan,
    );
    returns(
      'min_360',
      () => m0.min(f32('FFC00000'), f32('C0C90FDB')),
      double.nan,
    );
    returns(
      'min_361',
      () => m0.min(f32('FFA00000'), f32('C0C90FDB')),
      double.nan,
    );
    returns(
      'min_362',
      () => m0.min(f32('FFC00000'), f32('40C90FDB')),
      double.nan,
    );
    returns(
      'min_363',
      () => m0.min(f32('FFA00000'), f32('40C90FDB')),
      double.nan,
    );
    returns(
      'min_364',
      () => m0.min(f32('7FC00000'), f32('C0C90FDB')),
      double.nan,
    );
    returns(
      'min_365',
      () => m0.min(f32('7FA00000'), f32('C0C90FDB')),
      double.nan,
    );
    returns(
      'min_366',
      () => m0.min(f32('7FC00000'), f32('40C90FDB')),
      double.nan,
    );
    returns(
      'min_367',
      () => m0.min(f32('7FA00000'), f32('40C90FDB')),
      double.nan,
    );
    returns(
      'min_368',
      () => m0.min(f32('FFC00000'), f32('FF7FFFFF')),
      double.nan,
    );
    returns(
      'min_369',
      () => m0.min(f32('FFA00000'), f32('FF7FFFFF')),
      double.nan,
    );
    returns(
      'min_370',
      () => m0.min(f32('FFC00000'), f32('7F7FFFFF')),
      double.nan,
    );
    returns(
      'min_371',
      () => m0.min(f32('FFA00000'), f32('7F7FFFFF')),
      double.nan,
    );
    returns(
      'min_372',
      () => m0.min(f32('7FC00000'), f32('FF7FFFFF')),
      double.nan,
    );
    returns(
      'min_373',
      () => m0.min(f32('7FA00000'), f32('FF7FFFFF')),
      double.nan,
    );
    returns(
      'min_374',
      () => m0.min(f32('7FC00000'), f32('7F7FFFFF')),
      double.nan,
    );
    returns(
      'min_375',
      () => m0.min(f32('7FA00000'), f32('7F7FFFFF')),
      double.nan,
    );
    returns(
      'min_376',
      () => m0.min(f32('FFC00000'), f32('FF800000')),
      double.nan,
    );
    returns(
      'min_377',
      () => m0.min(f32('FFA00000'), f32('FF800000')),
      double.nan,
    );
    returns(
      'min_378',
      () => m0.min(f32('FFC00000'), f32('7F800000')),
      double.nan,
    );
    returns(
      'min_379',
      () => m0.min(f32('FFA00000'), f32('7F800000')),
      double.nan,
    );
    returns(
      'min_380',
      () => m0.min(f32('7FC00000'), f32('FF800000')),
      double.nan,
    );
    returns(
      'min_381',
      () => m0.min(f32('7FA00000'), f32('FF800000')),
      double.nan,
    );
    returns(
      'min_382',
      () => m0.min(f32('7FC00000'), f32('7F800000')),
      double.nan,
    );
    returns(
      'min_383',
      () => m0.min(f32('7FA00000'), f32('7F800000')),
      double.nan,
    );
    returns(
      'min_384',
      () => m0.min(f32('FFC00000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'min_385',
      () => m0.min(f32('FFA00000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'min_386',
      () => m0.min(f32('FFC00000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'min_387',
      () => m0.min(f32('FFA00000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'min_388',
      () => m0.min(f32('FFC00000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'min_389',
      () => m0.min(f32('FFA00000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'min_390',
      () => m0.min(f32('FFC00000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'min_391',
      () => m0.min(f32('FFA00000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'min_392',
      () => m0.min(f32('7FC00000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'min_393',
      () => m0.min(f32('7FA00000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'min_394',
      () => m0.min(f32('7FC00000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'min_395',
      () => m0.min(f32('7FA00000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'min_396',
      () => m0.min(f32('7FC00000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'min_397',
      () => m0.min(f32('7FA00000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'min_398',
      () => m0.min(f32('7FC00000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'min_399',
      () => m0.min(f32('7FA00000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'max_0',
      () => m0.max(f32('80000000'), f32('80000000')),
      f32('80000000'),
    );
    returns('max_1', () => m0.max(f32('80000000'), f32('0')), f32('0'));
    returns('max_2', () => m0.max(f32('0'), f32('80000000')), f32('0'));
    returns('max_3', () => m0.max(f32('0'), f32('0')), f32('0'));
    returns(
      'max_4',
      () => m0.max(f32('80000000'), f32('80000001')),
      f32('80000000'),
    );
    returns('max_5', () => m0.max(f32('80000000'), f32('1')), f32('1'));
    returns('max_6', () => m0.max(f32('0'), f32('80000001')), f32('0'));
    returns('max_7', () => m0.max(f32('0'), f32('1')), f32('1'));
    returns(
      'max_8',
      () => m0.max(f32('80000000'), f32('80800000')),
      f32('80000000'),
    );
    returns(
      'max_9',
      () => m0.max(f32('80000000'), f32('800000')),
      f32('800000'),
    );
    returns('max_10', () => m0.max(f32('0'), f32('80800000')), f32('0'));
    returns('max_11', () => m0.max(f32('0'), f32('800000')), f32('800000'));
    returns(
      'max_12',
      () => m0.max(f32('80000000'), f32('BF000000')),
      f32('80000000'),
    );
    returns(
      'max_13',
      () => m0.max(f32('80000000'), f32('3F000000')),
      f32('3F000000'),
    );
    returns('max_14', () => m0.max(f32('0'), f32('BF000000')), f32('0'));
    returns('max_15', () => m0.max(f32('0'), f32('3F000000')), f32('3F000000'));
    returns(
      'max_16',
      () => m0.max(f32('80000000'), f32('BF800000')),
      f32('80000000'),
    );
    returns(
      'max_17',
      () => m0.max(f32('80000000'), f32('3F800000')),
      f32('3F800000'),
    );
    returns('max_18', () => m0.max(f32('0'), f32('BF800000')), f32('0'));
    returns('max_19', () => m0.max(f32('0'), f32('3F800000')), f32('3F800000'));
    returns(
      'max_20',
      () => m0.max(f32('80000000'), f32('C0C90FDB')),
      f32('80000000'),
    );
    returns(
      'max_21',
      () => m0.max(f32('80000000'), f32('40C90FDB')),
      f32('40C90FDB'),
    );
    returns('max_22', () => m0.max(f32('0'), f32('C0C90FDB')), f32('0'));
    returns('max_23', () => m0.max(f32('0'), f32('40C90FDB')), f32('40C90FDB'));
    returns(
      'max_24',
      () => m0.max(f32('80000000'), f32('FF7FFFFF')),
      f32('80000000'),
    );
    returns(
      'max_25',
      () => m0.max(f32('80000000'), f32('7F7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns('max_26', () => m0.max(f32('0'), f32('FF7FFFFF')), f32('0'));
    returns('max_27', () => m0.max(f32('0'), f32('7F7FFFFF')), f32('7F7FFFFF'));
    returns(
      'max_28',
      () => m0.max(f32('80000000'), f32('FF800000')),
      f32('80000000'),
    );
    returns(
      'max_29',
      () => m0.max(f32('80000000'), f32('7F800000')),
      f32('7F800000'),
    );
    returns('max_30', () => m0.max(f32('0'), f32('FF800000')), f32('0'));
    returns('max_31', () => m0.max(f32('0'), f32('7F800000')), f32('7F800000'));
    returns(
      'max_32',
      () => m0.max(f32('80000000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'max_33',
      () => m0.max(f32('80000000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'max_34',
      () => m0.max(f32('80000000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'max_35',
      () => m0.max(f32('80000000'), f32('7FA00000')),
      double.nan,
    );
    returns('max_36', () => m0.max(f32('0'), f32('FFC00000')), double.nan);
    returns('max_37', () => m0.max(f32('0'), f32('FFA00000')), double.nan);
    returns('max_38', () => m0.max(f32('0'), f32('7FC00000')), double.nan);
    returns('max_39', () => m0.max(f32('0'), f32('7FA00000')), double.nan);
    returns(
      'max_40',
      () => m0.max(f32('80000001'), f32('80000000')),
      f32('80000000'),
    );
    returns('max_41', () => m0.max(f32('80000001'), f32('0')), f32('0'));
    returns('max_42', () => m0.max(f32('1'), f32('80000000')), f32('1'));
    returns('max_43', () => m0.max(f32('1'), f32('0')), f32('1'));
    returns(
      'max_44',
      () => m0.max(f32('80000001'), f32('80000001')),
      f32('80000001'),
    );
    returns('max_45', () => m0.max(f32('80000001'), f32('1')), f32('1'));
    returns('max_46', () => m0.max(f32('1'), f32('80000001')), f32('1'));
    returns('max_47', () => m0.max(f32('1'), f32('1')), f32('1'));
    returns(
      'max_48',
      () => m0.max(f32('80000001'), f32('80800000')),
      f32('80000001'),
    );
    returns(
      'max_49',
      () => m0.max(f32('80000001'), f32('800000')),
      f32('800000'),
    );
    returns('max_50', () => m0.max(f32('1'), f32('80800000')), f32('1'));
    returns('max_51', () => m0.max(f32('1'), f32('800000')), f32('800000'));
    returns(
      'max_52',
      () => m0.max(f32('80000001'), f32('BF000000')),
      f32('80000001'),
    );
    returns(
      'max_53',
      () => m0.max(f32('80000001'), f32('3F000000')),
      f32('3F000000'),
    );
    returns('max_54', () => m0.max(f32('1'), f32('BF000000')), f32('1'));
    returns('max_55', () => m0.max(f32('1'), f32('3F000000')), f32('3F000000'));
    returns(
      'max_56',
      () => m0.max(f32('80000001'), f32('BF800000')),
      f32('80000001'),
    );
    returns(
      'max_57',
      () => m0.max(f32('80000001'), f32('3F800000')),
      f32('3F800000'),
    );
    returns('max_58', () => m0.max(f32('1'), f32('BF800000')), f32('1'));
    returns('max_59', () => m0.max(f32('1'), f32('3F800000')), f32('3F800000'));
    returns(
      'max_60',
      () => m0.max(f32('80000001'), f32('C0C90FDB')),
      f32('80000001'),
    );
    returns(
      'max_61',
      () => m0.max(f32('80000001'), f32('40C90FDB')),
      f32('40C90FDB'),
    );
    returns('max_62', () => m0.max(f32('1'), f32('C0C90FDB')), f32('1'));
    returns('max_63', () => m0.max(f32('1'), f32('40C90FDB')), f32('40C90FDB'));
    returns(
      'max_64',
      () => m0.max(f32('80000001'), f32('FF7FFFFF')),
      f32('80000001'),
    );
    returns(
      'max_65',
      () => m0.max(f32('80000001'), f32('7F7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns('max_66', () => m0.max(f32('1'), f32('FF7FFFFF')), f32('1'));
    returns('max_67', () => m0.max(f32('1'), f32('7F7FFFFF')), f32('7F7FFFFF'));
    returns(
      'max_68',
      () => m0.max(f32('80000001'), f32('FF800000')),
      f32('80000001'),
    );
    returns(
      'max_69',
      () => m0.max(f32('80000001'), f32('7F800000')),
      f32('7F800000'),
    );
    returns('max_70', () => m0.max(f32('1'), f32('FF800000')), f32('1'));
    returns('max_71', () => m0.max(f32('1'), f32('7F800000')), f32('7F800000'));
    returns(
      'max_72',
      () => m0.max(f32('80000001'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'max_73',
      () => m0.max(f32('80000001'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'max_74',
      () => m0.max(f32('80000001'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'max_75',
      () => m0.max(f32('80000001'), f32('7FA00000')),
      double.nan,
    );
    returns('max_76', () => m0.max(f32('1'), f32('FFC00000')), double.nan);
    returns('max_77', () => m0.max(f32('1'), f32('FFA00000')), double.nan);
    returns('max_78', () => m0.max(f32('1'), f32('7FC00000')), double.nan);
    returns('max_79', () => m0.max(f32('1'), f32('7FA00000')), double.nan);
    returns(
      'max_80',
      () => m0.max(f32('80800000'), f32('80000000')),
      f32('80000000'),
    );
    returns('max_81', () => m0.max(f32('80800000'), f32('0')), f32('0'));
    returns(
      'max_82',
      () => m0.max(f32('800000'), f32('80000000')),
      f32('800000'),
    );
    returns('max_83', () => m0.max(f32('800000'), f32('0')), f32('800000'));
    returns(
      'max_84',
      () => m0.max(f32('80800000'), f32('80000001')),
      f32('80000001'),
    );
    returns('max_85', () => m0.max(f32('80800000'), f32('1')), f32('1'));
    returns(
      'max_86',
      () => m0.max(f32('800000'), f32('80000001')),
      f32('800000'),
    );
    returns('max_87', () => m0.max(f32('800000'), f32('1')), f32('800000'));
    returns(
      'max_88',
      () => m0.max(f32('80800000'), f32('80800000')),
      f32('80800000'),
    );
    returns(
      'max_89',
      () => m0.max(f32('80800000'), f32('800000')),
      f32('800000'),
    );
    returns(
      'max_90',
      () => m0.max(f32('800000'), f32('80800000')),
      f32('800000'),
    );
    returns(
      'max_91',
      () => m0.max(f32('800000'), f32('800000')),
      f32('800000'),
    );
    returns(
      'max_92',
      () => m0.max(f32('80800000'), f32('BF000000')),
      f32('80800000'),
    );
    returns(
      'max_93',
      () => m0.max(f32('80800000'), f32('3F000000')),
      f32('3F000000'),
    );
    returns(
      'max_94',
      () => m0.max(f32('800000'), f32('BF000000')),
      f32('800000'),
    );
    returns(
      'max_95',
      () => m0.max(f32('800000'), f32('3F000000')),
      f32('3F000000'),
    );
    returns(
      'max_96',
      () => m0.max(f32('80800000'), f32('BF800000')),
      f32('80800000'),
    );
    returns(
      'max_97',
      () => m0.max(f32('80800000'), f32('3F800000')),
      f32('3F800000'),
    );
    returns(
      'max_98',
      () => m0.max(f32('800000'), f32('BF800000')),
      f32('800000'),
    );
    returns(
      'max_99',
      () => m0.max(f32('800000'), f32('3F800000')),
      f32('3F800000'),
    );
    returns(
      'max_100',
      () => m0.max(f32('80800000'), f32('C0C90FDB')),
      f32('80800000'),
    );
    returns(
      'max_101',
      () => m0.max(f32('80800000'), f32('40C90FDB')),
      f32('40C90FDB'),
    );
    returns(
      'max_102',
      () => m0.max(f32('800000'), f32('C0C90FDB')),
      f32('800000'),
    );
    returns(
      'max_103',
      () => m0.max(f32('800000'), f32('40C90FDB')),
      f32('40C90FDB'),
    );
    returns(
      'max_104',
      () => m0.max(f32('80800000'), f32('FF7FFFFF')),
      f32('80800000'),
    );
    returns(
      'max_105',
      () => m0.max(f32('80800000'), f32('7F7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'max_106',
      () => m0.max(f32('800000'), f32('FF7FFFFF')),
      f32('800000'),
    );
    returns(
      'max_107',
      () => m0.max(f32('800000'), f32('7F7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'max_108',
      () => m0.max(f32('80800000'), f32('FF800000')),
      f32('80800000'),
    );
    returns(
      'max_109',
      () => m0.max(f32('80800000'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'max_110',
      () => m0.max(f32('800000'), f32('FF800000')),
      f32('800000'),
    );
    returns(
      'max_111',
      () => m0.max(f32('800000'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'max_112',
      () => m0.max(f32('80800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'max_113',
      () => m0.max(f32('80800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'max_114',
      () => m0.max(f32('80800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'max_115',
      () => m0.max(f32('80800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'max_116',
      () => m0.max(f32('800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'max_117',
      () => m0.max(f32('800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'max_118',
      () => m0.max(f32('800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'max_119',
      () => m0.max(f32('800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'max_120',
      () => m0.max(f32('BF000000'), f32('80000000')),
      f32('80000000'),
    );
    returns('max_121', () => m0.max(f32('BF000000'), f32('0')), f32('0'));
    returns(
      'max_122',
      () => m0.max(f32('3F000000'), f32('80000000')),
      f32('3F000000'),
    );
    returns(
      'max_123',
      () => m0.max(f32('3F000000'), f32('0')),
      f32('3F000000'),
    );
    returns(
      'max_124',
      () => m0.max(f32('BF000000'), f32('80000001')),
      f32('80000001'),
    );
    returns('max_125', () => m0.max(f32('BF000000'), f32('1')), f32('1'));
    returns(
      'max_126',
      () => m0.max(f32('3F000000'), f32('80000001')),
      f32('3F000000'),
    );
    returns(
      'max_127',
      () => m0.max(f32('3F000000'), f32('1')),
      f32('3F000000'),
    );
    returns(
      'max_128',
      () => m0.max(f32('BF000000'), f32('80800000')),
      f32('80800000'),
    );
    returns(
      'max_129',
      () => m0.max(f32('BF000000'), f32('800000')),
      f32('800000'),
    );
    returns(
      'max_130',
      () => m0.max(f32('3F000000'), f32('80800000')),
      f32('3F000000'),
    );
    returns(
      'max_131',
      () => m0.max(f32('3F000000'), f32('800000')),
      f32('3F000000'),
    );
    returns(
      'max_132',
      () => m0.max(f32('BF000000'), f32('BF000000')),
      f32('BF000000'),
    );
    returns(
      'max_133',
      () => m0.max(f32('BF000000'), f32('3F000000')),
      f32('3F000000'),
    );
    returns(
      'max_134',
      () => m0.max(f32('3F000000'), f32('BF000000')),
      f32('3F000000'),
    );
    returns(
      'max_135',
      () => m0.max(f32('3F000000'), f32('3F000000')),
      f32('3F000000'),
    );
    returns(
      'max_136',
      () => m0.max(f32('BF000000'), f32('BF800000')),
      f32('BF000000'),
    );
    returns(
      'max_137',
      () => m0.max(f32('BF000000'), f32('3F800000')),
      f32('3F800000'),
    );
    returns(
      'max_138',
      () => m0.max(f32('3F000000'), f32('BF800000')),
      f32('3F000000'),
    );
    returns(
      'max_139',
      () => m0.max(f32('3F000000'), f32('3F800000')),
      f32('3F800000'),
    );
    returns(
      'max_140',
      () => m0.max(f32('BF000000'), f32('C0C90FDB')),
      f32('BF000000'),
    );
    returns(
      'max_141',
      () => m0.max(f32('BF000000'), f32('40C90FDB')),
      f32('40C90FDB'),
    );
    returns(
      'max_142',
      () => m0.max(f32('3F000000'), f32('C0C90FDB')),
      f32('3F000000'),
    );
    returns(
      'max_143',
      () => m0.max(f32('3F000000'), f32('40C90FDB')),
      f32('40C90FDB'),
    );
    returns(
      'max_144',
      () => m0.max(f32('BF000000'), f32('FF7FFFFF')),
      f32('BF000000'),
    );
    returns(
      'max_145',
      () => m0.max(f32('BF000000'), f32('7F7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'max_146',
      () => m0.max(f32('3F000000'), f32('FF7FFFFF')),
      f32('3F000000'),
    );
    returns(
      'max_147',
      () => m0.max(f32('3F000000'), f32('7F7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'max_148',
      () => m0.max(f32('BF000000'), f32('FF800000')),
      f32('BF000000'),
    );
    returns(
      'max_149',
      () => m0.max(f32('BF000000'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'max_150',
      () => m0.max(f32('3F000000'), f32('FF800000')),
      f32('3F000000'),
    );
    returns(
      'max_151',
      () => m0.max(f32('3F000000'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'max_152',
      () => m0.max(f32('BF000000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'max_153',
      () => m0.max(f32('BF000000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'max_154',
      () => m0.max(f32('BF000000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'max_155',
      () => m0.max(f32('BF000000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'max_156',
      () => m0.max(f32('3F000000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'max_157',
      () => m0.max(f32('3F000000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'max_158',
      () => m0.max(f32('3F000000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'max_159',
      () => m0.max(f32('3F000000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'max_160',
      () => m0.max(f32('BF800000'), f32('80000000')),
      f32('80000000'),
    );
    returns('max_161', () => m0.max(f32('BF800000'), f32('0')), f32('0'));
    returns(
      'max_162',
      () => m0.max(f32('3F800000'), f32('80000000')),
      f32('3F800000'),
    );
    returns(
      'max_163',
      () => m0.max(f32('3F800000'), f32('0')),
      f32('3F800000'),
    );
    returns(
      'max_164',
      () => m0.max(f32('BF800000'), f32('80000001')),
      f32('80000001'),
    );
    returns('max_165', () => m0.max(f32('BF800000'), f32('1')), f32('1'));
    returns(
      'max_166',
      () => m0.max(f32('3F800000'), f32('80000001')),
      f32('3F800000'),
    );
    returns(
      'max_167',
      () => m0.max(f32('3F800000'), f32('1')),
      f32('3F800000'),
    );
    returns(
      'max_168',
      () => m0.max(f32('BF800000'), f32('80800000')),
      f32('80800000'),
    );
    returns(
      'max_169',
      () => m0.max(f32('BF800000'), f32('800000')),
      f32('800000'),
    );
    returns(
      'max_170',
      () => m0.max(f32('3F800000'), f32('80800000')),
      f32('3F800000'),
    );
    returns(
      'max_171',
      () => m0.max(f32('3F800000'), f32('800000')),
      f32('3F800000'),
    );
    returns(
      'max_172',
      () => m0.max(f32('BF800000'), f32('BF000000')),
      f32('BF000000'),
    );
    returns(
      'max_173',
      () => m0.max(f32('BF800000'), f32('3F000000')),
      f32('3F000000'),
    );
    returns(
      'max_174',
      () => m0.max(f32('3F800000'), f32('BF000000')),
      f32('3F800000'),
    );
    returns(
      'max_175',
      () => m0.max(f32('3F800000'), f32('3F000000')),
      f32('3F800000'),
    );
    returns(
      'max_176',
      () => m0.max(f32('BF800000'), f32('BF800000')),
      f32('BF800000'),
    );
    returns(
      'max_177',
      () => m0.max(f32('BF800000'), f32('3F800000')),
      f32('3F800000'),
    );
    returns(
      'max_178',
      () => m0.max(f32('3F800000'), f32('BF800000')),
      f32('3F800000'),
    );
    returns(
      'max_179',
      () => m0.max(f32('3F800000'), f32('3F800000')),
      f32('3F800000'),
    );
    returns(
      'max_180',
      () => m0.max(f32('BF800000'), f32('C0C90FDB')),
      f32('BF800000'),
    );
    returns(
      'max_181',
      () => m0.max(f32('BF800000'), f32('40C90FDB')),
      f32('40C90FDB'),
    );
    returns(
      'max_182',
      () => m0.max(f32('3F800000'), f32('C0C90FDB')),
      f32('3F800000'),
    );
    returns(
      'max_183',
      () => m0.max(f32('3F800000'), f32('40C90FDB')),
      f32('40C90FDB'),
    );
    returns(
      'max_184',
      () => m0.max(f32('BF800000'), f32('FF7FFFFF')),
      f32('BF800000'),
    );
    returns(
      'max_185',
      () => m0.max(f32('BF800000'), f32('7F7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'max_186',
      () => m0.max(f32('3F800000'), f32('FF7FFFFF')),
      f32('3F800000'),
    );
    returns(
      'max_187',
      () => m0.max(f32('3F800000'), f32('7F7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'max_188',
      () => m0.max(f32('BF800000'), f32('FF800000')),
      f32('BF800000'),
    );
    returns(
      'max_189',
      () => m0.max(f32('BF800000'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'max_190',
      () => m0.max(f32('3F800000'), f32('FF800000')),
      f32('3F800000'),
    );
    returns(
      'max_191',
      () => m0.max(f32('3F800000'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'max_192',
      () => m0.max(f32('BF800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'max_193',
      () => m0.max(f32('BF800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'max_194',
      () => m0.max(f32('BF800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'max_195',
      () => m0.max(f32('BF800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'max_196',
      () => m0.max(f32('3F800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'max_197',
      () => m0.max(f32('3F800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'max_198',
      () => m0.max(f32('3F800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'max_199',
      () => m0.max(f32('3F800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'max_200',
      () => m0.max(f32('C0C90FDB'), f32('80000000')),
      f32('80000000'),
    );
    returns('max_201', () => m0.max(f32('C0C90FDB'), f32('0')), f32('0'));
    returns(
      'max_202',
      () => m0.max(f32('40C90FDB'), f32('80000000')),
      f32('40C90FDB'),
    );
    returns(
      'max_203',
      () => m0.max(f32('40C90FDB'), f32('0')),
      f32('40C90FDB'),
    );
    returns(
      'max_204',
      () => m0.max(f32('C0C90FDB'), f32('80000001')),
      f32('80000001'),
    );
    returns('max_205', () => m0.max(f32('C0C90FDB'), f32('1')), f32('1'));
    returns(
      'max_206',
      () => m0.max(f32('40C90FDB'), f32('80000001')),
      f32('40C90FDB'),
    );
    returns(
      'max_207',
      () => m0.max(f32('40C90FDB'), f32('1')),
      f32('40C90FDB'),
    );
    returns(
      'max_208',
      () => m0.max(f32('C0C90FDB'), f32('80800000')),
      f32('80800000'),
    );
    returns(
      'max_209',
      () => m0.max(f32('C0C90FDB'), f32('800000')),
      f32('800000'),
    );
    returns(
      'max_210',
      () => m0.max(f32('40C90FDB'), f32('80800000')),
      f32('40C90FDB'),
    );
    returns(
      'max_211',
      () => m0.max(f32('40C90FDB'), f32('800000')),
      f32('40C90FDB'),
    );
    returns(
      'max_212',
      () => m0.max(f32('C0C90FDB'), f32('BF000000')),
      f32('BF000000'),
    );
    returns(
      'max_213',
      () => m0.max(f32('C0C90FDB'), f32('3F000000')),
      f32('3F000000'),
    );
    returns(
      'max_214',
      () => m0.max(f32('40C90FDB'), f32('BF000000')),
      f32('40C90FDB'),
    );
    returns(
      'max_215',
      () => m0.max(f32('40C90FDB'), f32('3F000000')),
      f32('40C90FDB'),
    );
    returns(
      'max_216',
      () => m0.max(f32('C0C90FDB'), f32('BF800000')),
      f32('BF800000'),
    );
    returns(
      'max_217',
      () => m0.max(f32('C0C90FDB'), f32('3F800000')),
      f32('3F800000'),
    );
    returns(
      'max_218',
      () => m0.max(f32('40C90FDB'), f32('BF800000')),
      f32('40C90FDB'),
    );
    returns(
      'max_219',
      () => m0.max(f32('40C90FDB'), f32('3F800000')),
      f32('40C90FDB'),
    );
    returns(
      'max_220',
      () => m0.max(f32('C0C90FDB'), f32('C0C90FDB')),
      f32('C0C90FDB'),
    );
    returns(
      'max_221',
      () => m0.max(f32('C0C90FDB'), f32('40C90FDB')),
      f32('40C90FDB'),
    );
    returns(
      'max_222',
      () => m0.max(f32('40C90FDB'), f32('C0C90FDB')),
      f32('40C90FDB'),
    );
    returns(
      'max_223',
      () => m0.max(f32('40C90FDB'), f32('40C90FDB')),
      f32('40C90FDB'),
    );
    returns(
      'max_224',
      () => m0.max(f32('C0C90FDB'), f32('FF7FFFFF')),
      f32('C0C90FDB'),
    );
    returns(
      'max_225',
      () => m0.max(f32('C0C90FDB'), f32('7F7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'max_226',
      () => m0.max(f32('40C90FDB'), f32('FF7FFFFF')),
      f32('40C90FDB'),
    );
    returns(
      'max_227',
      () => m0.max(f32('40C90FDB'), f32('7F7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'max_228',
      () => m0.max(f32('C0C90FDB'), f32('FF800000')),
      f32('C0C90FDB'),
    );
    returns(
      'max_229',
      () => m0.max(f32('C0C90FDB'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'max_230',
      () => m0.max(f32('40C90FDB'), f32('FF800000')),
      f32('40C90FDB'),
    );
    returns(
      'max_231',
      () => m0.max(f32('40C90FDB'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'max_232',
      () => m0.max(f32('C0C90FDB'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'max_233',
      () => m0.max(f32('C0C90FDB'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'max_234',
      () => m0.max(f32('C0C90FDB'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'max_235',
      () => m0.max(f32('C0C90FDB'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'max_236',
      () => m0.max(f32('40C90FDB'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'max_237',
      () => m0.max(f32('40C90FDB'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'max_238',
      () => m0.max(f32('40C90FDB'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'max_239',
      () => m0.max(f32('40C90FDB'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'max_240',
      () => m0.max(f32('FF7FFFFF'), f32('80000000')),
      f32('80000000'),
    );
    returns('max_241', () => m0.max(f32('FF7FFFFF'), f32('0')), f32('0'));
    returns(
      'max_242',
      () => m0.max(f32('7F7FFFFF'), f32('80000000')),
      f32('7F7FFFFF'),
    );
    returns(
      'max_243',
      () => m0.max(f32('7F7FFFFF'), f32('0')),
      f32('7F7FFFFF'),
    );
    returns(
      'max_244',
      () => m0.max(f32('FF7FFFFF'), f32('80000001')),
      f32('80000001'),
    );
    returns('max_245', () => m0.max(f32('FF7FFFFF'), f32('1')), f32('1'));
    returns(
      'max_246',
      () => m0.max(f32('7F7FFFFF'), f32('80000001')),
      f32('7F7FFFFF'),
    );
    returns(
      'max_247',
      () => m0.max(f32('7F7FFFFF'), f32('1')),
      f32('7F7FFFFF'),
    );
    returns(
      'max_248',
      () => m0.max(f32('FF7FFFFF'), f32('80800000')),
      f32('80800000'),
    );
    returns(
      'max_249',
      () => m0.max(f32('FF7FFFFF'), f32('800000')),
      f32('800000'),
    );
    returns(
      'max_250',
      () => m0.max(f32('7F7FFFFF'), f32('80800000')),
      f32('7F7FFFFF'),
    );
    returns(
      'max_251',
      () => m0.max(f32('7F7FFFFF'), f32('800000')),
      f32('7F7FFFFF'),
    );
    returns(
      'max_252',
      () => m0.max(f32('FF7FFFFF'), f32('BF000000')),
      f32('BF000000'),
    );
    returns(
      'max_253',
      () => m0.max(f32('FF7FFFFF'), f32('3F000000')),
      f32('3F000000'),
    );
    returns(
      'max_254',
      () => m0.max(f32('7F7FFFFF'), f32('BF000000')),
      f32('7F7FFFFF'),
    );
    returns(
      'max_255',
      () => m0.max(f32('7F7FFFFF'), f32('3F000000')),
      f32('7F7FFFFF'),
    );
    returns(
      'max_256',
      () => m0.max(f32('FF7FFFFF'), f32('BF800000')),
      f32('BF800000'),
    );
    returns(
      'max_257',
      () => m0.max(f32('FF7FFFFF'), f32('3F800000')),
      f32('3F800000'),
    );
    returns(
      'max_258',
      () => m0.max(f32('7F7FFFFF'), f32('BF800000')),
      f32('7F7FFFFF'),
    );
    returns(
      'max_259',
      () => m0.max(f32('7F7FFFFF'), f32('3F800000')),
      f32('7F7FFFFF'),
    );
    returns(
      'max_260',
      () => m0.max(f32('FF7FFFFF'), f32('C0C90FDB')),
      f32('C0C90FDB'),
    );
    returns(
      'max_261',
      () => m0.max(f32('FF7FFFFF'), f32('40C90FDB')),
      f32('40C90FDB'),
    );
    returns(
      'max_262',
      () => m0.max(f32('7F7FFFFF'), f32('C0C90FDB')),
      f32('7F7FFFFF'),
    );
    returns(
      'max_263',
      () => m0.max(f32('7F7FFFFF'), f32('40C90FDB')),
      f32('7F7FFFFF'),
    );
    returns(
      'max_264',
      () => m0.max(f32('FF7FFFFF'), f32('FF7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'max_265',
      () => m0.max(f32('FF7FFFFF'), f32('7F7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'max_266',
      () => m0.max(f32('7F7FFFFF'), f32('FF7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'max_267',
      () => m0.max(f32('7F7FFFFF'), f32('7F7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'max_268',
      () => m0.max(f32('FF7FFFFF'), f32('FF800000')),
      f32('FF7FFFFF'),
    );
    returns(
      'max_269',
      () => m0.max(f32('FF7FFFFF'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'max_270',
      () => m0.max(f32('7F7FFFFF'), f32('FF800000')),
      f32('7F7FFFFF'),
    );
    returns(
      'max_271',
      () => m0.max(f32('7F7FFFFF'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'max_272',
      () => m0.max(f32('FF7FFFFF'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'max_273',
      () => m0.max(f32('FF7FFFFF'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'max_274',
      () => m0.max(f32('FF7FFFFF'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'max_275',
      () => m0.max(f32('FF7FFFFF'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'max_276',
      () => m0.max(f32('7F7FFFFF'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'max_277',
      () => m0.max(f32('7F7FFFFF'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'max_278',
      () => m0.max(f32('7F7FFFFF'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'max_279',
      () => m0.max(f32('7F7FFFFF'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'max_280',
      () => m0.max(f32('FF800000'), f32('80000000')),
      f32('80000000'),
    );
    returns('max_281', () => m0.max(f32('FF800000'), f32('0')), f32('0'));
    returns(
      'max_282',
      () => m0.max(f32('7F800000'), f32('80000000')),
      f32('7F800000'),
    );
    returns(
      'max_283',
      () => m0.max(f32('7F800000'), f32('0')),
      f32('7F800000'),
    );
    returns(
      'max_284',
      () => m0.max(f32('FF800000'), f32('80000001')),
      f32('80000001'),
    );
    returns('max_285', () => m0.max(f32('FF800000'), f32('1')), f32('1'));
    returns(
      'max_286',
      () => m0.max(f32('7F800000'), f32('80000001')),
      f32('7F800000'),
    );
    returns(
      'max_287',
      () => m0.max(f32('7F800000'), f32('1')),
      f32('7F800000'),
    );
    returns(
      'max_288',
      () => m0.max(f32('FF800000'), f32('80800000')),
      f32('80800000'),
    );
    returns(
      'max_289',
      () => m0.max(f32('FF800000'), f32('800000')),
      f32('800000'),
    );
    returns(
      'max_290',
      () => m0.max(f32('7F800000'), f32('80800000')),
      f32('7F800000'),
    );
    returns(
      'max_291',
      () => m0.max(f32('7F800000'), f32('800000')),
      f32('7F800000'),
    );
    returns(
      'max_292',
      () => m0.max(f32('FF800000'), f32('BF000000')),
      f32('BF000000'),
    );
    returns(
      'max_293',
      () => m0.max(f32('FF800000'), f32('3F000000')),
      f32('3F000000'),
    );
    returns(
      'max_294',
      () => m0.max(f32('7F800000'), f32('BF000000')),
      f32('7F800000'),
    );
    returns(
      'max_295',
      () => m0.max(f32('7F800000'), f32('3F000000')),
      f32('7F800000'),
    );
    returns(
      'max_296',
      () => m0.max(f32('FF800000'), f32('BF800000')),
      f32('BF800000'),
    );
    returns(
      'max_297',
      () => m0.max(f32('FF800000'), f32('3F800000')),
      f32('3F800000'),
    );
    returns(
      'max_298',
      () => m0.max(f32('7F800000'), f32('BF800000')),
      f32('7F800000'),
    );
    returns(
      'max_299',
      () => m0.max(f32('7F800000'), f32('3F800000')),
      f32('7F800000'),
    );
    returns(
      'max_300',
      () => m0.max(f32('FF800000'), f32('C0C90FDB')),
      f32('C0C90FDB'),
    );
    returns(
      'max_301',
      () => m0.max(f32('FF800000'), f32('40C90FDB')),
      f32('40C90FDB'),
    );
    returns(
      'max_302',
      () => m0.max(f32('7F800000'), f32('C0C90FDB')),
      f32('7F800000'),
    );
    returns(
      'max_303',
      () => m0.max(f32('7F800000'), f32('40C90FDB')),
      f32('7F800000'),
    );
    returns(
      'max_304',
      () => m0.max(f32('FF800000'), f32('FF7FFFFF')),
      f32('FF7FFFFF'),
    );
    returns(
      'max_305',
      () => m0.max(f32('FF800000'), f32('7F7FFFFF')),
      f32('7F7FFFFF'),
    );
    returns(
      'max_306',
      () => m0.max(f32('7F800000'), f32('FF7FFFFF')),
      f32('7F800000'),
    );
    returns(
      'max_307',
      () => m0.max(f32('7F800000'), f32('7F7FFFFF')),
      f32('7F800000'),
    );
    returns(
      'max_308',
      () => m0.max(f32('FF800000'), f32('FF800000')),
      f32('FF800000'),
    );
    returns(
      'max_309',
      () => m0.max(f32('FF800000'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'max_310',
      () => m0.max(f32('7F800000'), f32('FF800000')),
      f32('7F800000'),
    );
    returns(
      'max_311',
      () => m0.max(f32('7F800000'), f32('7F800000')),
      f32('7F800000'),
    );
    returns(
      'max_312',
      () => m0.max(f32('FF800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'max_313',
      () => m0.max(f32('FF800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'max_314',
      () => m0.max(f32('FF800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'max_315',
      () => m0.max(f32('FF800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'max_316',
      () => m0.max(f32('7F800000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'max_317',
      () => m0.max(f32('7F800000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'max_318',
      () => m0.max(f32('7F800000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'max_319',
      () => m0.max(f32('7F800000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'max_320',
      () => m0.max(f32('FFC00000'), f32('80000000')),
      double.nan,
    );
    returns(
      'max_321',
      () => m0.max(f32('FFA00000'), f32('80000000')),
      double.nan,
    );
    returns('max_322', () => m0.max(f32('FFC00000'), f32('0')), double.nan);
    returns('max_323', () => m0.max(f32('FFA00000'), f32('0')), double.nan);
    returns(
      'max_324',
      () => m0.max(f32('7FC00000'), f32('80000000')),
      double.nan,
    );
    returns(
      'max_325',
      () => m0.max(f32('7FA00000'), f32('80000000')),
      double.nan,
    );
    returns('max_326', () => m0.max(f32('7FC00000'), f32('0')), double.nan);
    returns('max_327', () => m0.max(f32('7FA00000'), f32('0')), double.nan);
    returns(
      'max_328',
      () => m0.max(f32('FFC00000'), f32('80000001')),
      double.nan,
    );
    returns(
      'max_329',
      () => m0.max(f32('FFA00000'), f32('80000001')),
      double.nan,
    );
    returns('max_330', () => m0.max(f32('FFC00000'), f32('1')), double.nan);
    returns('max_331', () => m0.max(f32('FFA00000'), f32('1')), double.nan);
    returns(
      'max_332',
      () => m0.max(f32('7FC00000'), f32('80000001')),
      double.nan,
    );
    returns(
      'max_333',
      () => m0.max(f32('7FA00000'), f32('80000001')),
      double.nan,
    );
    returns('max_334', () => m0.max(f32('7FC00000'), f32('1')), double.nan);
    returns('max_335', () => m0.max(f32('7FA00000'), f32('1')), double.nan);
    returns(
      'max_336',
      () => m0.max(f32('FFC00000'), f32('80800000')),
      double.nan,
    );
    returns(
      'max_337',
      () => m0.max(f32('FFA00000'), f32('80800000')),
      double.nan,
    );
    returns(
      'max_338',
      () => m0.max(f32('FFC00000'), f32('800000')),
      double.nan,
    );
    returns(
      'max_339',
      () => m0.max(f32('FFA00000'), f32('800000')),
      double.nan,
    );
    returns(
      'max_340',
      () => m0.max(f32('7FC00000'), f32('80800000')),
      double.nan,
    );
    returns(
      'max_341',
      () => m0.max(f32('7FA00000'), f32('80800000')),
      double.nan,
    );
    returns(
      'max_342',
      () => m0.max(f32('7FC00000'), f32('800000')),
      double.nan,
    );
    returns(
      'max_343',
      () => m0.max(f32('7FA00000'), f32('800000')),
      double.nan,
    );
    returns(
      'max_344',
      () => m0.max(f32('FFC00000'), f32('BF000000')),
      double.nan,
    );
    returns(
      'max_345',
      () => m0.max(f32('FFA00000'), f32('BF000000')),
      double.nan,
    );
    returns(
      'max_346',
      () => m0.max(f32('FFC00000'), f32('3F000000')),
      double.nan,
    );
    returns(
      'max_347',
      () => m0.max(f32('FFA00000'), f32('3F000000')),
      double.nan,
    );
    returns(
      'max_348',
      () => m0.max(f32('7FC00000'), f32('BF000000')),
      double.nan,
    );
    returns(
      'max_349',
      () => m0.max(f32('7FA00000'), f32('BF000000')),
      double.nan,
    );
    returns(
      'max_350',
      () => m0.max(f32('7FC00000'), f32('3F000000')),
      double.nan,
    );
    returns(
      'max_351',
      () => m0.max(f32('7FA00000'), f32('3F000000')),
      double.nan,
    );
    returns(
      'max_352',
      () => m0.max(f32('FFC00000'), f32('BF800000')),
      double.nan,
    );
    returns(
      'max_353',
      () => m0.max(f32('FFA00000'), f32('BF800000')),
      double.nan,
    );
    returns(
      'max_354',
      () => m0.max(f32('FFC00000'), f32('3F800000')),
      double.nan,
    );
    returns(
      'max_355',
      () => m0.max(f32('FFA00000'), f32('3F800000')),
      double.nan,
    );
    returns(
      'max_356',
      () => m0.max(f32('7FC00000'), f32('BF800000')),
      double.nan,
    );
    returns(
      'max_357',
      () => m0.max(f32('7FA00000'), f32('BF800000')),
      double.nan,
    );
    returns(
      'max_358',
      () => m0.max(f32('7FC00000'), f32('3F800000')),
      double.nan,
    );
    returns(
      'max_359',
      () => m0.max(f32('7FA00000'), f32('3F800000')),
      double.nan,
    );
    returns(
      'max_360',
      () => m0.max(f32('FFC00000'), f32('C0C90FDB')),
      double.nan,
    );
    returns(
      'max_361',
      () => m0.max(f32('FFA00000'), f32('C0C90FDB')),
      double.nan,
    );
    returns(
      'max_362',
      () => m0.max(f32('FFC00000'), f32('40C90FDB')),
      double.nan,
    );
    returns(
      'max_363',
      () => m0.max(f32('FFA00000'), f32('40C90FDB')),
      double.nan,
    );
    returns(
      'max_364',
      () => m0.max(f32('7FC00000'), f32('C0C90FDB')),
      double.nan,
    );
    returns(
      'max_365',
      () => m0.max(f32('7FA00000'), f32('C0C90FDB')),
      double.nan,
    );
    returns(
      'max_366',
      () => m0.max(f32('7FC00000'), f32('40C90FDB')),
      double.nan,
    );
    returns(
      'max_367',
      () => m0.max(f32('7FA00000'), f32('40C90FDB')),
      double.nan,
    );
    returns(
      'max_368',
      () => m0.max(f32('FFC00000'), f32('FF7FFFFF')),
      double.nan,
    );
    returns(
      'max_369',
      () => m0.max(f32('FFA00000'), f32('FF7FFFFF')),
      double.nan,
    );
    returns(
      'max_370',
      () => m0.max(f32('FFC00000'), f32('7F7FFFFF')),
      double.nan,
    );
    returns(
      'max_371',
      () => m0.max(f32('FFA00000'), f32('7F7FFFFF')),
      double.nan,
    );
    returns(
      'max_372',
      () => m0.max(f32('7FC00000'), f32('FF7FFFFF')),
      double.nan,
    );
    returns(
      'max_373',
      () => m0.max(f32('7FA00000'), f32('FF7FFFFF')),
      double.nan,
    );
    returns(
      'max_374',
      () => m0.max(f32('7FC00000'), f32('7F7FFFFF')),
      double.nan,
    );
    returns(
      'max_375',
      () => m0.max(f32('7FA00000'), f32('7F7FFFFF')),
      double.nan,
    );
    returns(
      'max_376',
      () => m0.max(f32('FFC00000'), f32('FF800000')),
      double.nan,
    );
    returns(
      'max_377',
      () => m0.max(f32('FFA00000'), f32('FF800000')),
      double.nan,
    );
    returns(
      'max_378',
      () => m0.max(f32('FFC00000'), f32('7F800000')),
      double.nan,
    );
    returns(
      'max_379',
      () => m0.max(f32('FFA00000'), f32('7F800000')),
      double.nan,
    );
    returns(
      'max_380',
      () => m0.max(f32('7FC00000'), f32('FF800000')),
      double.nan,
    );
    returns(
      'max_381',
      () => m0.max(f32('7FA00000'), f32('FF800000')),
      double.nan,
    );
    returns(
      'max_382',
      () => m0.max(f32('7FC00000'), f32('7F800000')),
      double.nan,
    );
    returns(
      'max_383',
      () => m0.max(f32('7FA00000'), f32('7F800000')),
      double.nan,
    );
    returns(
      'max_384',
      () => m0.max(f32('FFC00000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'max_385',
      () => m0.max(f32('FFA00000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'max_386',
      () => m0.max(f32('FFC00000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'max_387',
      () => m0.max(f32('FFA00000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'max_388',
      () => m0.max(f32('FFC00000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'max_389',
      () => m0.max(f32('FFA00000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'max_390',
      () => m0.max(f32('FFC00000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'max_391',
      () => m0.max(f32('FFA00000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'max_392',
      () => m0.max(f32('7FC00000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'max_393',
      () => m0.max(f32('7FA00000'), f32('FFC00000')),
      double.nan,
    );
    returns(
      'max_394',
      () => m0.max(f32('7FC00000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'max_395',
      () => m0.max(f32('7FA00000'), f32('FFA00000')),
      double.nan,
    );
    returns(
      'max_396',
      () => m0.max(f32('7FC00000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'max_397',
      () => m0.max(f32('7FA00000'), f32('7FC00000')),
      double.nan,
    );
    returns(
      'max_398',
      () => m0.max(f32('7FC00000'), f32('7FA00000')),
      double.nan,
    );
    returns(
      'max_399',
      () => m0.max(f32('7FA00000'), f32('7FA00000')),
      double.nan,
    );
    returns('sqrt_0', () => m0.sqrt(f32('80000000')), f32('80000000'));
    returns('sqrt_1', () => m0.sqrt(f32('0')), f32('0'));
    returns('sqrt_2', () => m0.sqrt(f32('80000001')), double.nan);
    returns('sqrt_3', () => m0.sqrt(f32('1')), f32('1A3504F3'));
    returns('sqrt_4', () => m0.sqrt(f32('80800000')), double.nan);
    returns('sqrt_5', () => m0.sqrt(f32('800000')), f32('20000000'));
    returns('sqrt_6', () => m0.sqrt(f32('BF000000')), double.nan);
    returns('sqrt_7', () => m0.sqrt(f32('3F000000')), f32('3F3504F3'));
    returns('sqrt_8', () => m0.sqrt(f32('BF800000')), double.nan);
    returns('sqrt_9', () => m0.sqrt(f32('3F800000')), f32('3F800000'));
    returns('sqrt_10', () => m0.sqrt(f32('C0C90FDB')), double.nan);
    returns('sqrt_11', () => m0.sqrt(f32('40C90FDB')), f32('40206C99'));
    returns('sqrt_12', () => m0.sqrt(f32('FF7FFFFF')), double.nan);
    returns('sqrt_13', () => m0.sqrt(f32('7F7FFFFF')), f32('5F7FFFFF'));
    returns('sqrt_14', () => m0.sqrt(f32('FF800000')), double.nan);
    returns('sqrt_15', () => m0.sqrt(f32('7F800000')), f32('7F800000'));
    returns('sqrt_16', () => m0.sqrt(f32('FFC00000')), double.nan);
    returns('sqrt_17', () => m0.sqrt(f32('FFA00000')), double.nan);
    returns('sqrt_18', () => m0.sqrt(f32('7FC00000')), double.nan);
    returns('sqrt_19', () => m0.sqrt(f32('7FA00000')), double.nan);
    returns('floor_0', () => m0.floor(f32('80000000')), f32('80000000'));
    returns('floor_1', () => m0.floor(f32('0')), f32('0'));
    returns('floor_2', () => m0.floor(f32('80000001')), f32('BF800000'));
    returns('floor_3', () => m0.floor(f32('1')), f32('0'));
    returns('floor_4', () => m0.floor(f32('80800000')), f32('BF800000'));
    returns('floor_5', () => m0.floor(f32('800000')), f32('0'));
    returns('floor_6', () => m0.floor(f32('BF000000')), f32('BF800000'));
    returns('floor_7', () => m0.floor(f32('3F000000')), f32('0'));
    returns('floor_8', () => m0.floor(f32('BF800000')), f32('BF800000'));
    returns('floor_9', () => m0.floor(f32('3F800000')), f32('3F800000'));
    returns('floor_10', () => m0.floor(f32('C0C90FDB')), f32('C0E00000'));
    returns('floor_11', () => m0.floor(f32('40C90FDB')), f32('40C00000'));
    returns('floor_12', () => m0.floor(f32('FF7FFFFF')), f32('FF7FFFFF'));
    returns('floor_13', () => m0.floor(f32('7F7FFFFF')), f32('7F7FFFFF'));
    returns('floor_14', () => m0.floor(f32('FF800000')), f32('FF800000'));
    returns('floor_15', () => m0.floor(f32('7F800000')), f32('7F800000'));
    returns('floor_16', () => m0.floor(f32('FFC00000')), double.nan);
    returns('floor_17', () => m0.floor(f32('FFA00000')), double.nan);
    returns('floor_18', () => m0.floor(f32('7FC00000')), double.nan);
    returns('floor_19', () => m0.floor(f32('7FA00000')), double.nan);
    returns('ceil_0', () => m0.ceil(f32('80000000')), f32('80000000'));
    returns('ceil_1', () => m0.ceil(f32('0')), f32('0'));
    returns('ceil_2', () => m0.ceil(f32('80000001')), f32('80000000'));
    returns('ceil_3', () => m0.ceil(f32('1')), f32('3F800000'));
    returns('ceil_4', () => m0.ceil(f32('80800000')), f32('80000000'));
    returns('ceil_5', () => m0.ceil(f32('800000')), f32('3F800000'));
    returns('ceil_6', () => m0.ceil(f32('BF000000')), f32('80000000'));
    returns('ceil_7', () => m0.ceil(f32('3F000000')), f32('3F800000'));
    returns('ceil_8', () => m0.ceil(f32('BF800000')), f32('BF800000'));
    returns('ceil_9', () => m0.ceil(f32('3F800000')), f32('3F800000'));
    returns('ceil_10', () => m0.ceil(f32('C0C90FDB')), f32('C0C00000'));
    returns('ceil_11', () => m0.ceil(f32('40C90FDB')), f32('40E00000'));
    returns('ceil_12', () => m0.ceil(f32('FF7FFFFF')), f32('FF7FFFFF'));
    returns('ceil_13', () => m0.ceil(f32('7F7FFFFF')), f32('7F7FFFFF'));
    returns('ceil_14', () => m0.ceil(f32('FF800000')), f32('FF800000'));
    returns('ceil_15', () => m0.ceil(f32('7F800000')), f32('7F800000'));
    returns('ceil_16', () => m0.ceil(f32('FFC00000')), double.nan);
    returns('ceil_17', () => m0.ceil(f32('FFA00000')), double.nan);
    returns('ceil_18', () => m0.ceil(f32('7FC00000')), double.nan);
    returns('ceil_19', () => m0.ceil(f32('7FA00000')), double.nan);
    returns('trunc_0', () => m0.trunc(f32('80000000')), f32('80000000'));
    returns('trunc_1', () => m0.trunc(f32('0')), f32('0'));
    returns('trunc_2', () => m0.trunc(f32('80000001')), f32('80000000'));
    returns('trunc_3', () => m0.trunc(f32('1')), f32('0'));
    returns('trunc_4', () => m0.trunc(f32('80800000')), f32('80000000'));
    returns('trunc_5', () => m0.trunc(f32('800000')), f32('0'));
    returns('trunc_6', () => m0.trunc(f32('BF000000')), f32('80000000'));
    returns('trunc_7', () => m0.trunc(f32('3F000000')), f32('0'));
    returns('trunc_8', () => m0.trunc(f32('BF800000')), f32('BF800000'));
    returns('trunc_9', () => m0.trunc(f32('3F800000')), f32('3F800000'));
    returns('trunc_10', () => m0.trunc(f32('C0C90FDB')), f32('C0C00000'));
    returns('trunc_11', () => m0.trunc(f32('40C90FDB')), f32('40C00000'));
    returns('trunc_12', () => m0.trunc(f32('FF7FFFFF')), f32('FF7FFFFF'));
    returns('trunc_13', () => m0.trunc(f32('7F7FFFFF')), f32('7F7FFFFF'));
    returns('trunc_14', () => m0.trunc(f32('FF800000')), f32('FF800000'));
    returns('trunc_15', () => m0.trunc(f32('7F800000')), f32('7F800000'));
    returns('trunc_16', () => m0.trunc(f32('FFC00000')), double.nan);
    returns('trunc_17', () => m0.trunc(f32('FFA00000')), double.nan);
    returns('trunc_18', () => m0.trunc(f32('7FC00000')), double.nan);
    returns('trunc_19', () => m0.trunc(f32('7FA00000')), double.nan);
    returns('nearest_0', () => m0.nearest(f32('80000000')), f32('80000000'));
    returns('nearest_1', () => m0.nearest(f32('0')), f32('0'));
    returns('nearest_2', () => m0.nearest(f32('80000001')), f32('80000000'));
    returns('nearest_3', () => m0.nearest(f32('1')), f32('0'));
    returns('nearest_4', () => m0.nearest(f32('80800000')), f32('80000000'));
    returns('nearest_5', () => m0.nearest(f32('800000')), f32('0'));
    returns('nearest_6', () => m0.nearest(f32('BF000000')), f32('80000000'));
    returns('nearest_7', () => m0.nearest(f32('3F000000')), f32('0'));
    returns('nearest_8', () => m0.nearest(f32('BF800000')), f32('BF800000'));
    returns('nearest_9', () => m0.nearest(f32('3F800000')), f32('3F800000'));
    returns('nearest_10', () => m0.nearest(f32('C0C90FDB')), f32('C0C00000'));
    returns('nearest_11', () => m0.nearest(f32('40C90FDB')), f32('40C00000'));
    returns('nearest_12', () => m0.nearest(f32('FF7FFFFF')), f32('FF7FFFFF'));
    returns('nearest_13', () => m0.nearest(f32('7F7FFFFF')), f32('7F7FFFFF'));
    returns('nearest_14', () => m0.nearest(f32('FF800000')), f32('FF800000'));
    returns('nearest_15', () => m0.nearest(f32('7F800000')), f32('7F800000'));
    returns('nearest_16', () => m0.nearest(f32('FFC00000')), double.nan);
    returns('nearest_17', () => m0.nearest(f32('FFA00000')), double.nan);
    returns('nearest_18', () => m0.nearest(f32('7FC00000')), double.nan);
    returns('nearest_19', () => m0.nearest(f32('7FA00000')), double.nan);
  });
}
