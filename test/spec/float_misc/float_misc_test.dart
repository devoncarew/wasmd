// Generated from spec/test/core/float_misc.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'float_misc.0.dart' as float_misc_0;

void main() {
  group('float_misc', () {
    // module float_misc.0.dart (line 17)
    var m0 = float_misc_0.FloatMisc0Module();

    returns(
      'f32_add_0',
      () => m0.f32_add($f32('3F8FCD6F'), $f32('2F07BC16')),
      $f32('3F8FCD6F'),
    );
    returns(
      'f64_add_0',
      () => m0.f64_add($f64('3FF1F9ADD3739636'), $f64('3DE0F782BF7CC83F')),
      $f64('3FF1F9ADD37C11F7'),
    );
    returns(
      'f32_add_1',
      () => m0.f32_add($f32('3F800000'), $f32('33800000')),
      $f32('3F800000'),
    );
    returns(
      'f32_add_2',
      () => m0.f32_add($f32('3F800000'), $f32('33800001')),
      $f32('3F800001'),
    );
    returns(
      'f64_add_1',
      () => m0.f64_add($f64('3FF0000000000000'), $f64('3CA0000000000000')),
      $f64('3FF0000000000000'),
    );
    returns(
      'f64_add_2',
      () => m0.f64_add($f64('3FF0000000000000'), $f64('3CA0000000000001')),
      $f64('3FF0000000000001'),
    );
    returns(
      'f32_add_3',
      () => m0.f32_add($f32('1'), $f32('7FFFFF')),
      $f32('800000'),
    );
    returns(
      'f64_add_3',
      () => m0.f64_add($f64('1'), $f64('FFFFFFFFFFFFF')),
      $f64('10000000000000'),
    );
    returns(
      'f32_add_4',
      () => m0.f32_add($f32('4F000000'), $f32('44800800')),
      $f32('4F000004'),
    );
    returns(
      'f64_add_4',
      () => m0.f64_add($f64('43E0000000000000'), $f64('4090010000000000')),
      $f64('43E0000000000001'),
    );
    returns(
      'f64_add_5',
      () => m0.f64_add($f64('80F0000000000000'), $f64('1716')),
      $f64('80EFFFFFFFFFFFFF'),
    );
    returns(
      'f64_add_6',
      () => m0.f64_add($f64('4340000000000000'), $f64('3FF0000A7C5AC472')),
      $f64('4340000000000001'),
    );
    returns(
      'f64_add_7',
      () => m0.f64_add($f64('4340000000000001'), $f64('3FEFFFE000000000')),
      $f64('4340000000000001'),
    );
    returns(
      'f32_add_5',
      () => m0.f32_add($f32('4B000000'), $f32('3F000000')),
      $f32('4B000000'),
    );
    returns(
      'f32_add_6',
      () => m0.f32_add($f32('4B000001'), $f32('3F000000')),
      $f32('4B000002'),
    );
    returns(
      'f64_add_8',
      () => m0.f64_add($f64('4330000000000000'), $f64('3FE0000000000000')),
      $f64('4330000000000000'),
    );
    returns(
      'f64_add_9',
      () => m0.f64_add($f64('4330000000000001'), $f64('3FE0000000000000')),
      $f64('4330000000000002'),
    );
    returns(
      'f32_add_7',
      () => m0.f32_add($f32('F29CB3AD'), $f32('E3B64A6')),
      $f32('F29CB3AD'),
    );
    returns(
      'f32_add_8',
      () => m0.f32_add($f32('61360792'), $f32('D995C968')),
      $f32('61360666'),
    );
    returns(
      'f32_add_9',
      () => m0.f32_add($f32('1673118C'), $f32('17BA55F')),
      $f32('1673118C'),
    );
    returns(
      'f32_add_10',
      () => m0.f32_add($f32('531538EA'), $f32('DB64F886')),
      $f32('DB64F7F1'),
    );
    returns(
      'f32_add_11',
      () => m0.f32_add($f32('387C7B9B'), $f32('74BDEA2F')),
      $f32('74BDEA2F'),
    );
    returns(
      'f64_add_10',
      () => m0.f64_add($f64('262F33E1FBCA27AA'), $f64('CF86B192891ED610')),
      $f64('CF86B192891ED610'),
    );
    returns(
      'f64_add_11',
      () => m0.f64_add($f64('C4B46F75D130EEB1'), $f64('34725275D6F7A4AC')),
      $f64('C4B46F75D130EEB1'),
    );
    returns(
      'f64_add_12',
      () => m0.f64_add($f64('36B04DEC9265A731'), $f64('BF311EED4E8C127C')),
      $f64('BF311EED4E8C127C'),
    );
    returns(
      'f64_add_13',
      () => m0.f64_add($f64('5F005773B7166B0A'), $f64('441134022F2DA37B')),
      $f64('5F005773B7166B0A'),
    );
    returns(
      'f64_add_14',
      () => m0.f64_add($f64('540EF4F794282A82'), $f64('58914A82266BADE0')),
      $f64('58914A82266BADE0'),
    );
    returns(
      'f32_add_12',
      () => m0.f32_add($f32('638DFCBB'), $f32('C9BFAC34')),
      $f32('638DFCBB'),
    );
    returns(
      'f32_add_13',
      () => m0.f32_add($f32('293FCE36'), $f32('98DCDD87')),
      $f32('293FCE36'),
    );
    returns(
      'f32_add_14',
      () => m0.f32_add($f32('AA9968DE'), $f32('7E7BE90A')),
      $f32('7E7BE90A'),
    );
    returns(
      'f32_add_15',
      () => m0.f32_add($f32('A9C72E07'), $f32('8A9D7D26')),
      $f32('A9C72E07'),
    );
    returns(
      'f32_add_16',
      () => m0.f32_add($f32('3A89E6BC'), $f32('8A1D798B')),
      $f32('3A89E6BC'),
    );
    returns(
      'f64_add_15',
      () => m0.f64_add($f64('4B2F8DD15CA97D4A'), $f64('9F0367317D1FE8BF')),
      $f64('4B2F8DD15CA97D4A'),
    );
    returns(
      'f64_add_16',
      () => m0.f64_add($f64('49A5DB08D739228C'), $f64('BC2FB316FA147DCB')),
      $f64('49A5DB08D739228C'),
    );
    returns(
      'f64_add_17',
      () => m0.f64_add($f64('26BBBB403CB85C07'), $f64('82C7E44046B8BBF3')),
      $f64('26BBBB403CB85C07'),
    );
    returns(
      'f64_add_18',
      () => m0.f64_add($f64('C9234D38AF291831'), $f64('C8A9890B47439953')),
      $f64('C92366C1BA705BCA'),
    );
    returns(
      'f64_add_19',
      () => m0.f64_add($f64('C02B61DEDF4E0306'), $f64('52109E2F31773C4A')),
      $f64('52109E2F31773C4A'),
    );
    returns(
      'f32_add_17',
      () => m0.f32_add($f32('85094DEC'), $f32('2A63A809')),
      $f32('2A63A809'),
    );
    returns(
      'f32_add_18',
      () => m0.f32_add($f32('B7E10251'), $f32('32405899')),
      $f32('B7E0EA46'),
    );
    returns(
      'f32_add_19',
      () => m0.f32_add($f32('D1EF660E'), $f32('963446D')),
      $f32('D1EF660E'),
    );
    returns(
      'f32_add_20',
      () => m0.f32_add($f32('4B0E735'), $f32('CEBB9449')),
      $f32('CEBB9449'),
    );
    returns(
      'f32_add_21',
      () => m0.f32_add($f32('839EE413'), $f32('6F7E1FB3')),
      $f32('6F7E1FB3'),
    );
    returns(
      'f64_add_20',
      () => m0.f64_add($f64('F6BF68ACC263A0F'), $f64('FEB5F9352965E5A6')),
      $f64('FEB5F9352965E5A6'),
    );
    returns(
      'f64_add_21',
      () => m0.f64_add($f64('E0376EAA70911F51'), $f64('DEC2D746324CE47A')),
      $f64('E0376EAA963FABB6'),
    );
    returns(
      'f64_add_22',
      () => m0.f64_add($f64('838B637D82C15A7A'), $f64('2E4CC654CCAB4152')),
      $f64('2E4CC654CCAB4152'),
    );
    returns(
      'f64_add_23',
      () => m0.f64_add($f64('A02A5B1FB66E846E'), $f64('A34BDD36F0BB5CC')),
      $f64('A02A5B1FB66E846E'),
    );
    returns(
      'f64_add_24',
      () => m0.f64_add($f64('FC514108DA880F9E'), $f64('71F417F35701E89F')),
      $f64('FC514108DA880F9E'),
    );
    returns(
      'f64_add_25',
      () => m0.f64_add($f64('F23FA0CAF21FFEBC'), $f64('7394CA8FDCFF89F9')),
      $f64('7394CA8F5E7C5E31'),
    );
    returns(
      'f64_add_26',
      () => m0.f64_add($f64('70F016F1FCBDFD38'), $f64('6E9375DFFCBC9A2C')),
      $f64('70F016F1FCBE4B0F'),
    );
    returns(
      'f64_add_27',
      () => m0.f64_add($f64('E6FDFFDA6D5BFF3A'), $f64('6A1F9E8CC2DFF782')),
      $f64('6A1F9E8CC2DFF77B'),
    );
    returns(
      'f64_add_28',
      () => m0.f64_add($f64('5CEFFF4B43687DFB'), $f64('6040FD5617C4A809')),
      $f64('6040FD5617C4A809'),
    );
    returns(
      'f64_add_29',
      () => m0.f64_add($f64('1C535D380035DA2'), $f64('3CCCE37DDDBB73B')),
      $f64('3CCCE37DDF0ED0F'),
    );
    returns(
      'f64_add_30',
      () => m0.f64_add($f64('EEFD91CD3FC0C66F'), $f64('FB74E18C80229734')),
      $f64('FB74E18C80229734'),
    );
    returns(
      'f64_add_31',
      () => m0.f64_add($f64('4C0AFC70FD36E372'), $f64('D10BD10A9B377B46')),
      $f64('D10BD10A9B377B46'),
    );
    returns(
      'f64_add_32',
      () => m0.f64_add($f64('D2D2ABD570B078B2'), $f64('258B3C1AD759CB5B')),
      $f64('D2D2ABD570B078B2'),
    );
    returns(
      'f64_add_33',
      () => m0.f64_add($f64('AC25B2AE84C0686C'), $f64('DD1DBA7A1C022823')),
      $f64('DD1DBA7A1C022823'),
    );
    returns(
      'f64_add_34',
      () => m0.f64_add($f64('B39AC627BD7CBF38'), $f64('212312E265B8D59')),
      $f64('B39AC627BD7CBF38'),
    );
    returns(
      'f32_add_22',
      () => m0.f32_add($f32('7995C8D0'), $f32('7F65E6A9')),
      $f32('7F65F962'),
    );
    returns(
      'f32_add_23',
      () => m0.f32_add($f32('7F4B79C9'), $f32('F5359FF6')),
      $f32('7F4B79BE'),
    );
    returns(
      'f32_add_24',
      () => m0.f32_add($f32('7A89978E'), $f32('FF31EB19')),
      $f32('FF31A64D'),
    );
    returns(
      'f32_add_25',
      () => m0.f32_add($f32('FB8EED32'), $f32('FF778170')),
      $f32('FF789F4A'),
    );
    returns(
      'f32_add_26',
      () => m0.f32_add($f32('FF256C6D'), $f32('FE757041')),
      $f32('FF62C87D'),
    );
    returns(
      'f64_add_35',
      () => m0.f64_add($f64('7FE017099F2A4B8B'), $f64('7D41F63B28F05454')),
      $f64('7FE017099F2A5009'),
    );
    returns(
      'f64_add_36',
      () => m0.f64_add($f64('7FED88B6C74984EF'), $f64('7DD33B444775EABC')),
      $f64('7FED88B6C7532291'),
    );
    returns(
      'f64_add_37',
      () => m0.f64_add($f64('FFE84576422FDF50'), $f64('7F360EE6AA12FB9C')),
      $f64('FFE842B4655A9CF1'),
    );
    returns(
      'f64_add_38',
      () => m0.f64_add($f64('FE89AAACE3E79F7D'), $f64('7FEE4068AF295CB6')),
      $f64('7FEE4068487EA926'),
    );
    returns(
      'f64_add_39',
      () => m0.f64_add($f64('7FE06CDAE79F27B9'), $f64('FDEE05CB0C96F975')),
      $f64('7FE06CDAE78121EE'),
    );
    returns(
      'f32_add_27',
      () => m0.f32_add($f32('5A8688'), $f32('26F')),
      $f32('5A88F7'),
    );
    returns(
      'f32_add_28',
      () => m0.f32_add($f32('25'), $f32('80000002')),
      $f32('23'),
    );
    returns(
      'f32_add_29',
      () => m0.f32_add($f32('80000008'), $f32('387940')),
      $f32('387938'),
    );
    returns(
      'f32_add_30',
      () => m0.f32_add($f32('80000014'), $f32('2A12029')),
      $f32('2A12028'),
    );
    returns(
      'f32_add_31',
      () => m0.f32_add($f32('1C5'), $f32('80005CBE')),
      $f32('80005AF9'),
    );
    returns(
      'f64_add_40',
      () => m0.f64_add($f64('14774C681D1E21'), $f64('802271E58E9F58CA')),
      $f64('80106C7EB5219373'),
    );
    returns(
      'f64_add_41',
      () => m0.f64_add($f64('210B3A75E31916'), $f64('802FFB82B0E868A7')),
      $f64('801DE090760A9F22'),
    );
    returns(
      'f64_add_42',
      () => m0.f64_add($f64('8006B58448B8098A'), $f64('801579796ED04CBE')),
      $f64('801C2EFDB7885648'),
    );
    returns(
      'f64_add_43',
      () => m0.f64_add($f64('39EB9E7BAAE8D1'), $f64('803D58E136F8C6EE')),
      $f64('800DB50AED377874'),
    );
    returns(
      'f64_add_44',
      () => m0.f64_add($f64('801F1115DEEAFA0B'), $f64('1221B1C87DCA29')),
      $f64('800CEF64166D2FE2'),
    );
    returns(
      'f32_add_32',
      () => m0.f32_add($f32('7F7FFFFE'), $f32('73800000')),
      $f32('7F7FFFFF'),
    );
    returns(
      'f64_add_45',
      () => m0.f64_add($f64('7FEFFFFFFFFFFFFE'), $f64('7CA0000000000000')),
      $f64('7FEFFFFFFFFFFFFF'),
    );
    returns(
      'f32_add_33',
      () => m0.f32_add($f32('40000000'), $f32('40000000')),
      $f32('40800000'),
    );
    returns(
      'f64_add_46',
      () => m0.f64_add($f64('4000000000000000'), $f64('4000000000000000')),
      $f64('4010000000000000'),
    );
    returns(
      'f32_add_34',
      () => m0.f32_add($f32('7F7FFFFF'), $f32('72FFFFFF')),
      $f32('7F7FFFFF'),
    );
    returns(
      'f32_add_35',
      () => m0.f32_add($f32('7F7FFFFF'), $f32('73000000')),
      $f32('7F800000'),
    );
    returns(
      'f64_add_47',
      () => m0.f64_add($f64('7FEFFFFFFFFFFFFF'), $f64('7C8FFFFFFFFFFFFF')),
      $f64('7FEFFFFFFFFFFFFF'),
    );
    returns(
      'f64_add_48',
      () => m0.f64_add($f64('7FEFFFFFFFFFFFFF'), $f64('7C90000000000000')),
      $f64('7FF0000000000000'),
    );
    returns(
      'f32_sub_0',
      () => m0.f32_sub($f32('47800000'), $f32('2D000000')),
      $f32('47800000'),
    );
    returns(
      'f64_sub_0',
      () => m0.f64_sub($f64('40F0000000000000'), $f64('3DA0000000000000')),
      $f64('40EFFFFFFFFFFFFF'),
    );
    returns(
      'f32_sub_1',
      () => m0.f32_sub($f32('3F800000'), $f32('33000000')),
      $f32('3F800000'),
    );
    returns(
      'f32_sub_2',
      () => m0.f32_sub($f32('3F800000'), $f32('33000001')),
      $f32('3F7FFFFF'),
    );
    returns(
      'f64_sub_1',
      () => m0.f64_sub($f64('3FF0000000000000'), $f64('3C90000000000000')),
      $f64('3FF0000000000000'),
    );
    returns(
      'f64_sub_2',
      () => m0.f64_sub($f64('3FF0000000000000'), $f64('3C90000000000001')),
      $f64('3FEFFFFFFFFFFFFF'),
    );
    returns(
      'f32_sub_3',
      () => m0.f32_sub($f32('AF71233'), $f32('FB0B13BF')),
      $f32('7B0B13BF'),
    );
    returns(
      'f32_sub_4',
      () => m0.f32_sub($f32('FB2237CF'), $f32('D521CB52')),
      $f32('FB2237CF'),
    );
    returns(
      'f32_sub_5',
      () => m0.f32_sub($f32('3FBA3B9E'), $f32('96D12A89')),
      $f32('3FBA3B9E'),
    );
    returns(
      'f32_sub_6',
      () => m0.f32_sub($f32('549A2E2'), $f32('19B3C961')),
      $f32('99B3C961'),
    );
    returns(
      'f32_sub_7',
      () => m0.f32_sub($f32('36CF67D2'), $f32('8A4325A2')),
      $f32('36CF67D2'),
    );
    returns(
      'f64_sub_3',
      () => m0.f64_sub($f64('AB25B798875E7845'), $f64('878B5147117452FE')),
      $f64('AB25B798875E7845'),
    );
    returns(
      'f64_sub_4',
      () => m0.f64_sub($f64('E276C87BAEB6D72D'), $f64('B6164FB35D4B5571')),
      $f64('E276C87BAEB6D72D'),
    );
    returns(
      'f64_sub_5',
      () => m0.f64_sub($f64('232B3D369FCF74B0'), $f64('8BAEA1668C0DEC93')),
      $f64('232B3D369FCF74B0'),
    );
    returns(
      'f64_sub_6',
      () => m0.f64_sub($f64('120ABD449353EAD'), $f64('C990422EA3E82EE9')),
      $f64('4990422EA3E82EE9'),
    );
    returns(
      'f64_sub_7',
      () => m0.f64_sub($f64('B70AADBC6B43CC3D'), $f64('9E4E7F922EF1EE58')),
      $f64('B70AADBC6B43CC3D'),
    );
    returns(
      'f32_sub_8',
      () => m0.f32_sub($f32('F5B0F131'), $f32('F7DD79F2')),
      $f32('77D26ADF'),
    );
    returns(
      'f32_sub_9',
      () => m0.f32_sub($f32('F631617B'), $f32('42B728A5')),
      $f32('F631617B'),
    );
    returns(
      'f32_sub_10',
      () => m0.f32_sub($f32('96143E4A'), $f32('338797CE')),
      $f32('B38797CE'),
    );
    returns(
      'f32_sub_11',
      () => m0.f32_sub($f32('9964412E'), $f32('B9A5756B')),
      $f32('39A5756B'),
    );
    returns(
      'f32_sub_12',
      () => m0.f32_sub($f32('F114BB52'), $f32('226371DC')),
      $f32('F114BB52'),
    );
    returns(
      'f64_sub_8',
      () => m0.f64_sub($f64('CC976CB28AE6C045'), $f64('F840611F2AF4E9B9')),
      $f64('7840611F2AF4E9B9'),
    );
    returns(
      'f64_sub_9',
      () => m0.f64_sub($f64('28FBAF35EFF22E9E'), $f64('23C5C3E08ECF73EC')),
      $f64('28FBAF35EFF22E9E'),
    );
    returns(
      'f64_sub_10',
      () => m0.f64_sub($f64('B378FD354B376F1F'), $f64('203513C860F386FF')),
      $f64('B378FD354B376F1F'),
    );
    returns(
      'f64_sub_11',
      () => m0.f64_sub($f64('81F760D447230AE6'), $f64('AB716F788438AE3E')),
      $f64('2B716F788438AE3E'),
    );
    returns(
      'f64_sub_12',
      () => m0.f64_sub($f64('C6F73AAB4FCFC7A0'), $f64('4AA7C589F990B884')),
      $f64('CAA7C589F990B884'),
    );
    returns(
      'f32_sub_13',
      () => m0.f32_sub($f32('6F751326'), $f32('384294C4')),
      $f32('6F751326'),
    );
    returns(
      'f32_sub_14',
      () => m0.f32_sub($f32('C90A763E'), $f32('AE0569FF')),
      $f32('C90A763E'),
    );
    returns(
      'f32_sub_15',
      () => m0.f32_sub($f32('AD9928ED'), $f32('A3A4E4BF')),
      $f32('AD9928E3'),
    );
    returns(
      'f32_sub_16',
      () => m0.f32_sub($f32('B889AB2F'), $f32('3917C4D4')),
      $f32('B95C9A6C'),
    );
    returns(
      'f32_sub_17',
      () => m0.f32_sub($f32('AF30195B'), $f32('8BDDA8CB')),
      $f32('AF30195B'),
    );
    returns(
      'f64_sub_13',
      () => m0.f64_sub($f64('B62B5B0797AF4910'), $f64('ED1694B8348189E8')),
      $f64('6D1694B8348189E8'),
    );
    returns(
      'f64_sub_14',
      () => m0.f64_sub($f64('EF672B142826ED73'), $f64('F86010477BC9AFBD')),
      $f64('786010477BC9AFBD'),
    );
    returns(
      'f64_sub_15',
      () => m0.f64_sub($f64('E383273B6BB94CF'), $f64('4B41A93F948A2ABB')),
      $f64('CB41A93F948A2ABB'),
    );
    returns(
      'f64_sub_16',
      () => m0.f64_sub($f64('9C2207E7156CBF20'), $f64('1DFCF3F12FD3814D')),
      $f64('9DFCF3F13063C086'),
    );
    returns(
      'f64_sub_17',
      () => m0.f64_sub($f64('9D0837E6844F1718'), $f64('BF11C29B757F98AB')),
      $f64('3F11C29B757F98AB'),
    );
    returns(
      'f64_sub_18',
      () => m0.f64_sub($f64('3B1C21151A709B6C'), $f64('38C0A12FFF8910F6')),
      $f64('3B1C21151A701663'),
    );
    returns(
      'f64_sub_19',
      () => m0.f64_sub($f64('29C57912AAE2F64'), $f64('DDBFBD4800B7CF')),
      $f64('29C579128D2338F'),
    );
    returns(
      'f64_sub_20',
      () => m0.f64_sub($f64('301FFEF4399AF9C6'), $f64('337EDB96DFAEA8B1')),
      $f64('B37EDB96DFAEA8B1'),
    );
    returns(
      'f64_sub_21',
      () => m0.f64_sub($f64('BD8363EEE391CDE2'), $f64('BBAA65462000265F')),
      $f64('BD8363EEE32838C9'),
    );
    returns(
      'f64_sub_22',
      () => m0.f64_sub($f64('3E659016DBA002A1'), $f64('3FC5D4374F124CCC')),
      $f64('BFC5D436F8D1F15D'),
    );
    returns(
      'f64_sub_23',
      () => m0.f64_sub($f64('8D118196BCA005CF'), $f64('901DB7B01CE3F52F')),
      $f64('101DB7B01CE3F51D'),
    );
    returns(
      'f64_sub_24',
      () => m0.f64_sub($f64('C20D17B3528D2190'), $f64('56EFD739D4EA220A')),
      $f64('D6EFD739D4EA220A'),
    );
    returns(
      'f64_sub_25',
      () => m0.f64_sub($f64('471DEA46994DE319'), $f64('1B1B5B19CD55C7D3')),
      $f64('471DEA46994DE319'),
    );
    returns(
      'f64_sub_26',
      () => m0.f64_sub($f64('216B60F9B2FBD9EC'), $f64('9496F81C59EC5B8E')),
      $f64('216B60F9B2FBD9EC'),
    );
    returns(
      'f64_sub_27',
      () => m0.f64_sub($f64('3C65E423FE8571F4'), $f64('1959624ED7C162DF')),
      $f64('3C65E423FE8571F4'),
    );
    returns(
      'f32_sub_18',
      () => m0.f32_sub($f32('41B92023'), $f32('40490FDB')),
      $f32('419FFE28'),
    );
    returns(
      'f64_sub_28',
      () => m0.f64_sub($f64('403724046EB0933A'), $f64('400921FB54442D18')),
      $f64('4033FFC504280D97'),
    );
    returns(
      'f32_sub_19',
      () => m0.f32_sub($f32('4A371AFC'), $f32('4A371AF8')),
      $f32('3F800000'),
    );
    returns(
      'f32_sub_20',
      () => m0.f32_sub($f32('49F423F8'), $f32('49F423D8')),
      $f32('40800000'),
    );
    returns(
      'f32_sub_21',
      () => m0.f32_sub($f32('49F423F8'), $f32('49F423C8')),
      $f32('40C00000'),
    );
    returns(
      'f32_sub_22',
      () => m0.f32_sub($f32('48C35040'), $f32('48C35020')),
      $f32('3F800000'),
    );
    returns(
      'f32_sub_23',
      () => m0.f32_sub($f32('48C35040'), $f32('48C35000')),
      $f32('40000000'),
    );
    returns(
      'f64_sub_29',
      () => m0.f64_sub($f64('432550F7DCA6FFFE'), $f64('432550F7DCA6FFFC')),
      $f64('3FF0000000000000'),
    );
    returns(
      'f64_sub_30',
      () => m0.f64_sub($f64('431C6BF52633FFFC'), $f64('431C6BF52633FFEC')),
      $f64('4010000000000000'),
    );
    returns(
      'f64_sub_31',
      () => m0.f64_sub($f64('431C6BF52633FFFC'), $f64('431C6BF52633FFE4')),
      $f64('4018000000000000'),
    );
    returns(
      'f64_sub_32',
      () => m0.f64_sub($f64('42F6BCC41E900020'), $f64('42F6BCC41E900010')),
      $f64('3FF0000000000000'),
    );
    returns(
      'f64_sub_33',
      () => m0.f64_sub($f64('42F6BCC41E900020'), $f64('42F6BCC41E900000')),
      $f64('4000000000000000'),
    );
    returns(
      'f32_sub_24',
      () => m0.f32_sub($f32('800000'), $f32('7FFFFF')),
      $f32('1'),
    );
    returns(
      'f64_sub_34',
      () => m0.f64_sub($f64('10000000000000'), $f64('FFFFFFFFFFFFF')),
      $f64('1'),
    );
    returns(
      'f32_sub_25',
      () => m0.f32_sub($f32('3F800001'), $f32('3F7FFFFF')),
      $f32('34400000'),
    );
    returns(
      'f32_sub_26',
      () => m0.f32_sub($f32('3F800001'), $f32('3F800000')),
      $f32('34000000'),
    );
    returns(
      'f32_sub_27',
      () => m0.f32_sub($f32('3F800000'), $f32('3F7FFFFF')),
      $f32('33800000'),
    );
    returns(
      'f64_sub_35',
      () => m0.f64_sub($f64('3FF0000000000001'), $f64('3FEFFFFFFFFFFFFF')),
      $f64('3CB8000000000000'),
    );
    returns(
      'f64_sub_36',
      () => m0.f64_sub($f64('3FF0000000000001'), $f64('3FF0000000000000')),
      $f64('3CB0000000000000'),
    );
    returns(
      'f64_sub_37',
      () => m0.f64_sub($f64('3FF0000000000000'), $f64('3FEFFFFFFFFFFFFF')),
      $f64('3CA0000000000000'),
    );
    returns(
      'f32_sub_28',
      () => m0.f32_sub($f32('7F7FFFFF'), $f32('72FFFFFF')),
      $f32('7F7FFFFF'),
    );
    returns(
      'f32_sub_29',
      () => m0.f32_sub($f32('7F7FFFFF'), $f32('73000000')),
      $f32('7F7FFFFE'),
    );
    returns(
      'f64_sub_38',
      () => m0.f64_sub($f64('7FEFFFFFFFFFFFFF'), $f64('7C8FFFFFFFFFFFFF')),
      $f64('7FEFFFFFFFFFFFFF'),
    );
    returns(
      'f64_sub_39',
      () => m0.f64_sub($f64('7FEFFFFFFFFFFFFF'), $f64('7C90000000000000')),
      $f64('7FEFFFFFFFFFFFFE'),
    );
    returns(
      'f32_mul_0',
      () => m0.f32_mul($f32('58635FA9'), $f32('58635FA9')),
      $f32('7149F2C9'),
    );
    returns(
      'f32_mul_1',
      () => m0.f32_mul($f32('60AD78EC'), $f32('60AD78EC')),
      $f32('7F800000'),
    );
    returns(
      'f32_mul_2',
      () => m0.f32_mul($f32('69045951'), $f32('69045951')),
      $f32('7F800000'),
    );
    returns(
      'f64_mul_0',
      () => m0.f64_mul($f64('430C6BF526340000'), $f64('430C6BF526340000')),
      $f64('46293E5939A08CEA'),
    );
    returns(
      'f64_mul_1',
      () => m0.f64_mul($f64('4415AF1D78B58C40'), $f64('4415AF1D78B58C40')),
      $f64('483D6329F1C35CA5'),
    );
    returns(
      'f64_mul_2',
      () => m0.f64_mul($f64('45208B2A2C280291'), $f64('45208B2A2C280291')),
      $f64('4A511B0EC57E649B'),
    );
    returns(
      'f32_mul_3',
      () => m0.f32_mul($f32('4EDC672F'), $f32('5094AC4F')),
      $f32('60000001'),
    );
    returns(
      'f64_mul_3',
      () => m0.f64_mul($f64('41DB8CE5D7C00000'), $f64('42129589D27C0000')),
      $f64('4400000000000001'),
    );
    returns(
      'f32_mul_4',
      () => m0.f32_mul($f32('429A3333'), $f32('44548000')),
      $f32('477FFF00'),
    );
    returns(
      'f64_mul_4',
      () => m0.f64_mul($f64('4053466666666666'), $f64('408A900000000000')),
      $f64('40EFFFDFFFFFFFFF'),
    );
    returns(
      'f32_mul_5',
      () => m0.f32_mul($f32('DE0A6F97'), $f32('2DBA443C')),
      $f32('CC4973F4'),
    );
    returns(
      'f32_mul_6',
      () => m0.f32_mul($f32('F2AB14F1'), $f32('8CE19809')),
      $f32('4016C302'),
    );
    returns(
      'f32_mul_7',
      () => m0.f32_mul($f32('EDD8BB4A'), $f32('8F725AB5')),
      $f32('3DCD2DD7'),
    );
    returns(
      'f32_mul_8',
      () => m0.f32_mul($f32('E70B1353'), $f32('9A62BEB8')),
      $f32('41F65D57'),
    );
    returns(
      'f32_mul_9',
      () => m0.f32_mul($f32('5A3D67B9'), $f32('423644D6')),
      $f32('5D06DAAB'),
    );
    returns(
      'f64_mul_5',
      () => m0.f64_mul($f64('DA825C293F6F37E4'), $f64('7B0F5FD4FA41C6D8')),
      $f64('FFF0000000000000'),
    );
    returns(
      'f64_mul_6',
      () => m0.f64_mul($f64('825CC1AE79FFFC5B'), $f64('B24C36CCC2861CA6')),
      $f64('0'),
    );
    returns(
      'f64_mul_7',
      () => m0.f64_mul($f64('65DC0232B3E64B56'), $f64('C69F6939CF3AFFAA')),
      $f64('EC8B7E3AEDF190D3'),
    );
    returns(
      'f64_mul_8',
      () => m0.f64_mul($f64('AC660F289966B271'), $f64('64628A5497F0C259')),
      $f64('D0D98FC50BCEC259'),
    );
    returns(
      'f64_mul_9',
      () => m0.f64_mul($f64('71A37DAB12D3AFA2'), $f64('A581E156BD393F1')),
      $f64('3C0D6126554B8298'),
    );
    returns(
      'f32_mul_10',
      () => m0.f32_mul($f32('931FABD1'), $f32('ED820EB4')),
      $f32('41223CD8'),
    );
    returns(
      'f32_mul_11',
      () => m0.f32_mul($f32('642682C1'), $f32('4937021D')),
      $f32('6DEE11B0'),
    );
    returns(
      'f32_mul_12',
      () => m0.f32_mul($f32('AF97ED00'), $f32('E4F0B98E')),
      $f32('550EDC4F'),
    );
    returns(
      'f32_mul_13',
      () => m0.f32_mul($f32('613DE47F'), $f32('C71D6AC9')),
      $f32('E8E988AF'),
    );
    returns(
      'f32_mul_14',
      () => m0.f32_mul($f32('4EC9B3A1'), $f32('E0D3D0C8')),
      $f32('F026E38D'),
    );
    returns(
      'f64_mul_10',
      () => m0.f64_mul($f64('980BA737B4CA3B13'), $f64('2C58923309857438')),
      $f64('84753BC0D07BAA37'),
    );
    returns(
      'f64_mul_11',
      () => m0.f64_mul($f64('2EB7C1932E610219'), $f64('9842605DB646489F')),
      $f64('870B48DA2B0D2AE3'),
    );
    returns(
      'f64_mul_12',
      () => m0.f64_mul($f64('D48E43CDF3B21080'), $f64('F4299D96ABBD61D1')),
      $f64('7FF0000000000000'),
    );
    returns(
      'f64_mul_13',
      () => m0.f64_mul($f64('7B24C19466551DA3'), $f64('2480BDCD6C7646E9')),
      $f64('5FB5B7CD8C3F638A'),
    );
    returns(
      'f64_mul_14',
      () => m0.f64_mul($f64('552FF1DA1726E3DF'), $f64('CA8043C44F52B158')),
      $f64('DFC03C9364BB585C'),
    );
    returns(
      'f32_mul_15',
      () => m0.f32_mul($f32('D6C83F45'), $f32('EF2E9B34')),
      $f32('7F800000'),
    );
    returns(
      'f32_mul_16',
      () => m0.f32_mul($f32('BE464FBA'), $f32('E715A29')),
      $f32('8D3AF6E6'),
    );
    returns(
      'f32_mul_17',
      () => m0.f32_mul($f32('B666302D'), $f32('7476190D')),
      $f32('EB5D48D2'),
    );
    returns(
      'f32_mul_18',
      () => m0.f32_mul($f32('DBAFDDBD'), $f32('FD44B2F')),
      $f32('AC11D747'),
    );
    returns(
      'f32_mul_19',
      () => m0.f32_mul($f32('C7FDBF89'), $f32('41D380D')),
      $f32('8C9BD606'),
    );
    returns(
      'f64_mul_15',
      () => m0.f64_mul($f64('A0F5B0266454C26B'), $f64('DB0AF5787E3E0399')),
      $f64('3C12457D81949E0B'),
    );
    returns(
      'f64_mul_16',
      () => m0.f64_mul($f64('5DD0D54A82393D45'), $f64('903425760807CEAE')),
      $f64('AE1532068C8D0D5D'),
    );
    returns(
      'f64_mul_17',
      () => m0.f64_mul($f64('CABB532AF9817860'), $f64('566ADA95085BA36F')),
      $f64('E136EE38C1E01864'),
    );
    returns(
      'f64_mul_18',
      () => m0.f64_mul($f64('6FFE132F4D49D1CE'), $f64('D75A75AFE9A7D864')),
      $f64('FFF0000000000000'),
    );
    returns(
      'f64_mul_19',
      () => m0.f64_mul($f64('45068BBF1CFFF90A'), $f64('44509CD17D652C50')),
      $f64('496768B8D67D7940'),
    );
    returns(
      'f64_mul_20',
      () => m0.f64_mul($f64('2AAF99FB602C89B7'), $f64('1C06CAAB46A31A2E')),
      $f64('6C68201F986E9D7'),
    );
    returns(
      'f64_mul_21',
      () => m0.f64_mul($f64('BF686999C5EEE379'), $f64('6D26E3B9E0D53E0D')),
      $f64('ECA17654A0EF35F5'),
    );
    returns(
      'f64_mul_22',
      () => m0.f64_mul($f64('D6E069571B176F90'), $f64('973E248B6AB0A0E3')),
      $f64('2E2EEAFF575CAE1D'),
    );
    returns(
      'f64_mul_23',
      () => m0.f64_mul($f64('706C217645777DD2'), $f64('43BD93F5715DD646')),
      $f64('743A0064AA1D920D'),
    );
    returns(
      'f64_mul_24',
      () => m0.f64_mul($f64('AEB848981B6E694A'), $f64('77FF5AACB64A0D19')),
      $f64('E6C7CB2296E6C2E5'),
    );
    returns(
      'f64_mul_25',
      () => m0.f64_mul($f64('1A8DB3BD2A286944'), $f64('256CE910AF1D55CA')),
      $f64('D6ACCDD538A39'),
    );
    returns(
      'f64_mul_26',
      () => m0.f64_mul($f64('BC6ACA2239160120'), $f64('8392B2B4958DD228')),
      $f64('FA74ECCAE5615'),
    );
    returns(
      'f64_mul_27',
      () => m0.f64_mul($f64('A17BD062DEF16CFF'), $f64('9E77DDD91A0C4C0E')),
      $f64('A5F4D7769D90D'),
    );
    returns(
      'f64_mul_28',
      () => m0.f64_mul($f64('8FBC6A56169E9CE0'), $f64('300517D55A474122')),
      $f64('80012BAF260AFB77'),
    );
    returns(
      'f64_mul_29',
      () => m0.f64_mul($f64('9FB08951B0B41705'), $f64('A04102DC27168D09')),
      $f64('8CA6DBF3F592B'),
    );
    returns(
      'f64_mul_30',
      () => m0.f64_mul($f64('7538D0DEA50C8C9B'), $f64('8E21CAC31D87A24')),
      $f64('3E2C177311F7CD73'),
    );
    returns(
      'f64_mul_31',
      () => m0.f64_mul($f64('3F898049118E3063'), $f64('36A6362525151B58')),
      $f64('3641B358514103F9'),
    );
    returns(
      'f64_mul_32',
      () => m0.f64_mul($f64('C00EA65CB0631323'), $f64('3D6FCE683201A19B')),
      $f64('BD8E76DC8C223667'),
    );
    returns(
      'f64_mul_33',
      () => m0.f64_mul($f64('28AE4D235961D543'), $f64('332BC56F20EF9A48')),
      $f64('1BEA4C09EFCB71D6'),
    );
    returns(
      'f64_mul_34',
      () => m0.f64_mul($f64('C4CB9612E66FABA8'), $f64('2A3E2BC6AA782273')),
      $f64('AF1A026EA4F81DB1'),
    );
    returns(
      'f32_mul_20',
      () => m0.f32_mul($f32('1A000000'), $f32('1A000000')),
      $f32('0'),
    );
    returns(
      'f32_mul_21',
      () => m0.f32_mul($f32('1A000001'), $f32('1A000001')),
      $f32('1'),
    );
    returns(
      'f64_mul_35',
      () => m0.f64_mul($f64('1E56A09E667F3BCC'), $f64('1E56A09E667F3BCC')),
      $f64('0'),
    );
    returns(
      'f64_mul_36',
      () => m0.f64_mul($f64('1E56A09E667F3BCD'), $f64('1E56A09E667F3BCD')),
      $f64('1'),
    );
    returns(
      'f32_mul_22',
      () => m0.f32_mul($f32('5F7FFFFF'), $f32('5F7FFFFF')),
      $f32('7F7FFFFE'),
    );
    returns(
      'f32_mul_23',
      () => m0.f32_mul($f32('5F800000'), $f32('5F800000')),
      $f32('7F800000'),
    );
    returns(
      'f64_mul_37',
      () => m0.f64_mul($f64('5FEFFFFFFFFFFFFF'), $f64('5FEFFFFFFFFFFFFF')),
      $f64('7FEFFFFFFFFFFFFE'),
    );
    returns(
      'f64_mul_38',
      () => m0.f64_mul($f64('5FF0000000000000'), $f64('5FF0000000000000')),
      $f64('7FF0000000000000'),
    );
    returns(
      'f32_mul_24',
      () => m0.f32_mul($f32('3F800001'), $f32('3F800001')),
      $f32('3F800002'),
    );
    returns(
      'f32_mul_25',
      () => m0.f32_mul($f32('3F7FFFFF'), $f32('3F7FFFFF')),
      $f32('3F7FFFFE'),
    );
    returns(
      'f64_mul_39',
      () => m0.f64_mul($f64('3FF0000000000001'), $f64('3FF0000000000001')),
      $f64('3FF0000000000002'),
    );
    returns(
      'f64_mul_40',
      () => m0.f64_mul($f64('3FEFFFFFFFFFFFFF'), $f64('3FEFFFFFFFFFFFFF')),
      $f64('3FEFFFFFFFFFFFFE'),
    );
    returns(
      'f32_mul_26',
      () => m0.f32_mul($f32('3F800001'), $f32('3F7FFFFF')),
      $f32('3F800000'),
    );
    returns(
      'f32_mul_27',
      () => m0.f32_mul($f32('3F800002'), $f32('3F7FFFFE')),
      $f32('3F800001'),
    );
    returns(
      'f64_mul_41',
      () => m0.f64_mul($f64('3FF0000000000001'), $f64('3FEFFFFFFFFFFFFF')),
      $f64('3FF0000000000000'),
    );
    returns(
      'f64_mul_42',
      () => m0.f64_mul($f64('3FF0000000000002'), $f64('3FEFFFFFFFFFFFFE')),
      $f64('3FF0000000000001'),
    );
    returns(
      'f32_mul_28',
      () => m0.f32_mul($f32('800000'), $f32('34000000')),
      $f32('1'),
    );
    returns(
      'f64_mul_43',
      () => m0.f64_mul($f64('10000000000000'), $f64('3CB0000000000000')),
      $f64('1'),
    );
    returns(
      'f32_mul_29',
      () => m0.f32_mul($f32('C1800300'), $f32('34000')),
      $f32('80340138'),
    );
    returns(
      'f32_div_0',
      () => m0.f32_div($f32('3F8FCD6F'), $f32('42C80000')),
      $f32('3C381132'),
    );
    returns(
      'f32_div_1',
      () => m0.f32_div($f32('4B000BF3'), $f32('4B3FFFF9')),
      $f32('3F2ABAA0'),
    );
    returns(
      'f32_div_2',
      () => m0.f32_div($f32('47800000'), $f32('2D000000')),
      $f32('5A000000'),
    );
    returns(
      'f32_div_3',
      () => m0.f32_div($f32('3FEE5FB5'), $f32('7F7FFFFF')),
      $f32('3B97ED'),
    );
    returns(
      'f32_div_4',
      () => m0.f32_div($f32('40800000'), $f32('40400000')),
      $f32('3FAAAAAB'),
    );
    returns(
      'f64_div_0',
      () => m0.f64_div($f64('3FF1F9ADD3739636'), $f64('4059000000000000')),
      $f64('3F8702262D60C045'),
    );
    returns(
      'f64_div_1',
      () => m0.f64_div($f64('4160017E60000000'), $f64('4167FFFF20000000')),
      $f64('3FE55753F1D9BA27'),
    );
    returns(
      'f64_div_2',
      () => m0.f64_div($f64('40F0000000000000'), $f64('3DA0000000000000')),
      $f64('4340000000000000'),
    );
    returns(
      'f64_div_3',
      () => m0.f64_div($f64('3FFDCBF6A0000000'), $f64('7FEFFFFFFFFFFFFF')),
      $f64('772FDA8000000'),
    );
    returns(
      'f64_div_4',
      () => m0.f64_div($f64('4010000000000000'), $f64('4008000000000000')),
      $f64('3FF5555555555555'),
    );
    returns(
      'f32_div_5',
      () => m0.f32_div($f32('4A800BF6'), $f32('4A3FFFFC')),
      $f32('3FAABAA1'),
    );
    returns(
      'f64_div_5',
      () => m0.f64_div($f64('4150017EC0000000'), $f64('4147FFFF80000000')),
      $f64('3FF557541C7C6B43'),
    );
    returns(
      'f32_div_6',
      () => m0.f32_div($f32('27B5362D'), $f32('7F7D05B8')),
      $f32('0'),
    );
    returns(
      'f32_div_7',
      () => m0.f32_div($f32('1430B7D9'), $f32('619990B9')),
      $f32('0'),
    );
    returns(
      'f32_div_8',
      () => m0.f32_div($f32('C7CB73BC'), $f32('17F5862B')),
      $f32('EF542205'),
    );
    returns(
      'f32_div_9',
      () => m0.f32_div($f32('99F13120'), $f32('82F691B7')),
      $f32('567A6AC2'),
    );
    returns(
      'f32_div_10',
      () => m0.f32_div($f32('D4711BA7'), $f32('17B8FE6E')),
      $f32('FC26D383'),
    );
    returns(
      'f64_div_6',
      () => m0.f64_div($f64('492163C09D0C38C1'), $f64('4DEE04CC737348E6')),
      $f64('3B2289921CAEED23'),
    );
    returns(
      'f64_div_7',
      () => m0.f64_div($f64('18DD6867E741E0A9'), $f64('33335EB19A9AAE4')),
      $f64('55987E342D11F519'),
    );
    returns(
      'f64_div_8',
      () => m0.f64_div($f64('D29D5EDF648AEB98'), $f64('67F0DDA15B079355')),
      $f64('AA9BDCEAF9734B5C'),
    );
    returns(
      'f64_div_9',
      () => m0.f64_div($f64('EB2B683E3934AEDA'), $f64('4F5C364E1DF00DFF')),
      $f64('DBBF16456E7AFE3B'),
    );
    returns(
      'f64_div_10',
      () => m0.f64_div($f64('E1B44CA7539CC851'), $f64('5C458501BCCC58FE')),
      $f64('C55E2F8657E0924E'),
    );
    returns(
      'f32_div_11',
      () => m0.f32_div($f32('E26162A5'), $f32('948068A1')),
      $f32('7F800000'),
    );
    returns(
      'f32_div_12',
      () => m0.f32_div($f32('28F1AD5F'), $f32('55E34EF8')),
      $f32('1288175A'),
    );
    returns(
      'f32_div_13',
      () => m0.f32_div($f32('3FA2FF95'), $f32('EC0F43AA')),
      $f32('9311A1A7'),
    );
    returns(
      'f32_div_14',
      () => m0.f32_div($f32('2646D8C5'), $f32('28F8CF')),
      $f32('661B4DCB'),
    );
    returns(
      'f32_div_15',
      () => m0.f32_div($f32('6CBC2CC8'), $f32('6B29A0A2')),
      $f32('410DFEEE'),
    );
    returns(
      'f64_div_11',
      () => m0.f64_div($f64('F331C4F47EB51'), $f64('D69C7FF45BF6F03A')),
      $f64('8000000000000000'),
    );
    returns(
      'f64_div_12',
      () => m0.f64_div($f64('8240FC8707B9D19C'), $f64('1E777524D5F4A563')),
      $f64('A3B72C1A937D2310'),
    );
    returns(
      'f64_div_13',
      () => m0.f64_div($f64('A6CEDB3AA64BB338'), $f64('C2C1C7C164320E40')),
      $f64('23FBC44CC1C5AE63'),
    );
    returns(
      'f64_div_14',
      () => m0.f64_div($f64('C4F6534B34E8686B'), $f64('E8C34A7FC59E3C3')),
      $f64('F6595421BF291B66'),
    );
    returns(
      'f64_div_15',
      () => m0.f64_div($f64('CEB91F58D7ED1237'), $f64('C36F190D808383C8')),
      $f64('4B39D9EB0836F906'),
    );
    returns(
      'f32_div_16',
      () => m0.f32_div($f32('4CB25952'), $f32('474ABA9')),
      $f32('7F800000'),
    );
    returns(
      'f32_div_17',
      () => m0.f32_div($f32('E629E4DB'), $f32('4D6B44D0')),
      $f32('D838DD52'),
    );
    returns(
      'f32_div_18',
      () => m0.f32_div($f32('52B32545'), $f32('EFACEDD1')),
      $f32('A28499FA'),
    );
    returns(
      'f32_div_19',
      () => m0.f32_div($f32('F74CF07D'), $f32('C4615AD4')),
      $f32('7268CEF3'),
    );
    returns(
      'f32_div_20',
      () => m0.f32_div($f32('EDAD40AD'), $f32('C65AC105')),
      $f32('66CAC05C'),
    );
    returns(
      'f64_div_16',
      () => m0.f64_div($f64('97081FD1E2AF7BEB'), $f64('14CEDEFC4EAE536C')),
      $f64('C22901ABDD91B661'),
    );
    returns(
      'f64_div_17',
      () => m0.f64_div($f64('F0D47CF932953C43'), $f64('9D6BC40496B1F2A1')),
      $f64('7FF0000000000000'),
    );
    returns(
      'f64_div_18',
      () => m0.f64_div($f64('9152BD2E8FBDCAD7'), $f64('3BEB115674CC476E')),
      $f64('95562752BF19FA81'),
    );
    returns(
      'f64_div_19',
      () => m0.f64_div($f64('D3CF923E3FEA9EFE'), $f64('9B38044C74D27A39')),
      $f64('7885086518CC7186'),
    );
    returns(
      'f64_div_20',
      () => m0.f64_div($f64('4B4516ED2051D6BB'), $f64('CD5C9F455EB9C2EE')),
      $f64('BDD79414D67F2889'),
    );
    returns(
      'f64_div_21',
      () => m0.f64_div($f64('E489C52726AED366'), $f64('CC27D0568C75660F')),
      $f64('5851507CA2A65F23'),
    );
    returns(
      'f64_div_22',
      () => m0.f64_div($f64('E21522672F461667'), $f64('D4936D36572C9F71')),
      $f64('4D71681369370619'),
    );
    returns(
      'f64_div_23',
      () => m0.f64_div($f64('4B801051B4E8CD61'), $f64('FC42CBB5CA3D33EB')),
      $f64('8F2B59471598A2F3'),
    );
    returns(
      'f64_div_24',
      () => m0.f64_div($f64('4D85F93BB80FC2CB'), $f64('5AA7E051AAE9F0ED')),
      $f64('32CD732FA926BA4F'),
    );
    returns(
      'f64_div_25',
      () => m0.f64_div($f64('F38E251D762163CC'), $f64('55C3EE63581E1796')),
      $f64('DDB8330077D90A07'),
    );
    returns(
      'f64_div_26',
      () => m0.f64_div($f64('3FFDCBF69F10006D'), $f64('7FEFFFFFFFFFFFFF')),
      $f64('772FDA7C4001B'),
    );
    returns(
      'f64_div_27',
      () => m0.f64_div($f64('CE14169442FBCA'), $f64('40B505451D62FF7D')),
      $f64('B727E85F38B39'),
    );
    returns(
      'f64_div_28',
      () => m0.f64_div($f64('B6FD3EBE726EC964'), $f64('F6F4A7BFC0B83608')),
      $f64('5A9D8C50CBF87'),
    );
    returns(
      'f64_div_29',
      () => m0.f64_div($f64('A766C3DEF770AEE1'), $f64('E768B84724347598')),
      $f64('3AF0707FCD0C7'),
    );
    returns(
      'f64_div_30',
      () => m0.f64_div($f64('A716ABDA1BB3CB3'), $f64('4A56C9C7198EB1E6')),
      $f64('C3A8FD6741649'),
    );
    returns(
      'f64_div_31',
      () => m0.f64_div($f64('127057D6AB553CA'), $f64('C162ABF1E98660EB')),
      $f64('80004EE8D8EC01CD'),
    );
    returns(
      'f32_div_21',
      () => m0.f32_div($f32('6C56D4D5'), $f32('54B4C426')),
      $f32('57181F17'),
    );
    returns(
      'f32_div_22',
      () => m0.f32_div($f32('6CC140E4'), $f32('F4B1441E')),
      $f32('B78B8B4E'),
    );
    returns(
      'f32_div_23',
      () => m0.f32_div($f32('682E35F1'), $f32('3F680EFF')),
      $f32('68402F19'),
    );
    returns(
      'f32_div_24',
      () => m0.f32_div($f32('C95DE929'), $f32('D07DD4A8')),
      $f32('385FCEAB'),
    );
    returns(
      'f32_div_25',
      () => m0.f32_div($f32('AA87A0EB'), $f32('DB9F96DF')),
      $f32('E59906C'),
    );
    returns(
      'f64_div_32',
      () => m0.f64_div($f64('43CB2348A1C81899'), $f64('8A24A58AAD903DD3')),
      $f64('F99507C1E2A41B35'),
    );
    returns(
      'f64_div_33',
      () => m0.f64_div($f64('37D23FA5137A918A'), $f64('9F67268DB1951263')),
      $f64('D8593965E0D896BE'),
    );
    returns(
      'f64_div_34',
      () => m0.f64_div($f64('69CDCB3915D82DEE'), $f64('67D50CAAA1DC6B19')),
      $f64('41E6A58EC814B09D'),
    );
    returns(
      'f64_div_35',
      () => m0.f64_div($f64('CB5046E378C0CC46'), $f64('704AC925009A922B')),
      $f64('9AF3720AA94DAB18'),
    );
    returns(
      'f64_div_36',
      () => m0.f64_div($f64('8988945FD69D8E11'), $f64('9790A37870AF809A')),
      $f64('31E7A2E286C62382'),
    );
    returns(
      'f64_div_37',
      () => m0.f64_div($f64('3C682002AF0EA1F3'), $f64('3FFD0A9B0C2FA339')),
      $f64('3C5A952FBD1FC17C'),
    );
    returns(
      'f64_div_38',
      () => m0.f64_div($f64('3991E12B515DB471'), $f64('BD541FC3C94FBA50')),
      $f64('BC2C6E50CCCB7CB6'),
    );
    returns(
      'f64_div_39',
      () => m0.f64_div($f64('3D6ABA5ADCD6F583'), $f64('38F17DFAC639CE0F')),
      $f64('446872B0A008C326'),
    );
    returns(
      'f64_div_40',
      () => m0.f64_div($f64('458CF82510D0AE6B'), $f64('4600207D86498053')),
      $f64('3F7CBDC804E2CF14'),
    );
    returns(
      'f64_div_41',
      () => m0.f64_div($f64('3F44C82CBB508E21'), $f64('C336B57208C2D5D5')),
      $f64('BBFD48E8B369129A'),
    );
    returns(
      'f32_div_26',
      () => m0.f32_div($f32('800000'), $f32('7FFFFF')),
      $f32('3F800001'),
    );
    returns(
      'f32_div_27',
      () => m0.f32_div($f32('7FFFFF'), $f32('800000')),
      $f32('3F7FFFFE'),
    );
    returns(
      'f64_div_42',
      () => m0.f64_div($f64('10000000000000'), $f64('FFFFFFFFFFFFF')),
      $f64('3FF0000000000001'),
    );
    returns(
      'f64_div_43',
      () => m0.f64_div($f64('FFFFFFFFFFFFF'), $f64('10000000000000')),
      $f64('3FEFFFFFFFFFFFFE'),
    );
    returns(
      'f32_div_28',
      () => m0.f32_div($f32('347FFFFF'), $f32('7F7FFFFF')),
      $f32('0'),
    );
    returns(
      'f32_div_29',
      () => m0.f32_div($f32('34800000'), $f32('7F7FFFFF')),
      $f32('1'),
    );
    returns(
      'f64_div_44',
      () => m0.f64_div($f64('3CBFFFFFFFFFFFFF'), $f64('7FEFFFFFFFFFFFFF')),
      $f64('0'),
    );
    returns(
      'f64_div_45',
      () => m0.f64_div($f64('3CC0000000000000'), $f64('7FEFFFFFFFFFFFFF')),
      $f64('1'),
    );
    returns(
      'f32_div_30',
      () => m0.f32_div($f32('3F800000'), $f32('200000')),
      $f32('7F800000'),
    );
    returns(
      'f32_div_31',
      () => m0.f32_div($f32('3F800000'), $f32('200001')),
      $f32('7F7FFFF8'),
    );
    returns(
      'f64_div_46',
      () => m0.f64_div($f64('3FF0000000000000'), $f64('4000000000000')),
      $f64('7FF0000000000000'),
    );
    returns(
      'f64_div_47',
      () => m0.f64_div($f64('3FF0000000000000'), $f64('4000000000001')),
      $f64('7FEFFFFFFFFFFFF8'),
    );
    returns(
      'f32_div_32',
      () => m0.f32_div($f32('3F800000'), $f32('7E800001')),
      $f32('7FFFFF'),
    );
    returns(
      'f32_div_33',
      () => m0.f32_div($f32('3F800000'), $f32('7E800000')),
      $f32('800000'),
    );
    returns(
      'f64_div_48',
      () => m0.f64_div($f64('3FF0000000000000'), $f64('7FD0000000000001')),
      $f64('FFFFFFFFFFFFF'),
    );
    returns(
      'f64_div_49',
      () => m0.f64_div($f64('3FF0000000000000'), $f64('7FD0000000000000')),
      $f64('10000000000000'),
    );
    returns(
      'f32_div_34',
      () => m0.f32_div($f32('3F800000'), $f32('40400000')),
      $f32('3EAAAAAB'),
    );
    returns(
      'f32_div_35',
      () => m0.f32_div($f32('40400000'), $f32('41100000')),
      $f32('3EAAAAAB'),
    );
    returns(
      'f32_div_36',
      () => m0.f32_div($f32('41100000'), $f32('41D80000')),
      $f32('3EAAAAAB'),
    );
    returns(
      'f64_div_50',
      () => m0.f64_div($f64('3FF0000000000000'), $f64('4008000000000000')),
      $f64('3FD5555555555555'),
    );
    returns(
      'f64_div_51',
      () => m0.f64_div($f64('4008000000000000'), $f64('4022000000000000')),
      $f64('3FD5555555555555'),
    );
    returns(
      'f64_div_52',
      () => m0.f64_div($f64('4022000000000000'), $f64('403B000000000000')),
      $f64('3FD5555555555555'),
    );
    returns(
      'f32_div_37',
      () => m0.f32_div($f32('3F800001'), $f32('3F7FFFFF')),
      $f32('3F800002'),
    );
    returns(
      'f32_div_38',
      () => m0.f32_div($f32('3F7FFFFF'), $f32('3F800001')),
      $f32('3F7FFFFD'),
    );
    returns(
      'f32_div_39',
      () => m0.f32_div($f32('3F800000'), $f32('3F7FFFFF')),
      $f32('3F800001'),
    );
    returns(
      'f32_div_40',
      () => m0.f32_div($f32('3F800000'), $f32('3F800001')),
      $f32('3F7FFFFE'),
    );
    returns(
      'f64_div_53',
      () => m0.f64_div($f64('3FF0000000000001'), $f64('3FEFFFFFFFFFFFFF')),
      $f64('3FF0000000000002'),
    );
    returns(
      'f64_div_54',
      () => m0.f64_div($f64('3FEFFFFFFFFFFFFF'), $f64('3FF0000000000001')),
      $f64('3FEFFFFFFFFFFFFD'),
    );
    returns(
      'f64_div_55',
      () => m0.f64_div($f64('3FF0000000000000'), $f64('3FEFFFFFFFFFFFFF')),
      $f64('3FF0000000000001'),
    );
    returns(
      'f64_div_56',
      () => m0.f64_div($f64('3FF0000000000000'), $f64('3FF0000000000001')),
      $f64('3FEFFFFFFFFFFFFE'),
    );
    returns(
      'f32_sqrt_0',
      () => m0.f32_sqrt($f32('432B0000')),
      $f32('41513A26'),
    );
    returns(
      'f32_sqrt_1',
      () => m0.f32_sqrt($f32('342CA6FE')),
      $f32('39D23C4E'),
    );
    returns(
      'f64_sqrt_0',
      () => m0.f64_sqrt($f64('4065600000000000')),
      $f64('402A2744CE9674F5'),
    );
    returns(
      'f64_sqrt_1',
      () => m0.f64_sqrt($f64('3E8594DFC70AA105')),
      $f64('3F3A4789C0E37F99'),
    );
    returns(
      'f64_sqrt_2',
      () => m0.f64_sqrt($f64('35B0263FCC94F259')),
      $f64('3AD0131485DE579F'),
    );
    returns(
      'f64_sqrt_3',
      () => m0.f64_sqrt($f64('551352DFA278C43D')),
      $f64('4A8195607DAC5417'),
    );
    returns(
      'f64_sqrt_4',
      () => m0.f64_sqrt($f64('591B15DAA23924FA')),
      $f64('4C84D143DB561493'),
    );
    returns(
      'f64_sqrt_5',
      () => m0.f64_sqrt($f64('3DA518C8E68CB753')),
      $f64('3EC9FB8EF1AD5BFD'),
    );
    returns(
      'f64_sqrt_6',
      () => m0.f64_sqrt($f64('28D86D8B6518078E')),
      $f64('3463C5142A48FCAD'),
    );
    returns(
      'f64_sqrt_7',
      () => m0.f64_sqrt($f64('3FEFFFFFFFFFFFFF')),
      $f64('3FEFFFFFFFFFFFFF'),
    );
    returns(
      'f32_sqrt_2',
      () => m0.f32_sqrt($f32('3E04C032')),
      $f32('3EB85918'),
    );
    returns(
      'f32_sqrt_3',
      () => m0.f32_sqrt($f32('71ECDF78')),
      $f32('58AE2029'),
    );
    returns(
      'f32_sqrt_4',
      () => m0.f32_sqrt($f32('3DA15ADB')),
      $f32('3E8FB687'),
    );
    returns(
      'f32_sqrt_5',
      () => m0.f32_sqrt($f32('1C1B4268')),
      $f32('2DC75D71'),
    );
    returns(
      'f32_sqrt_6',
      () => m0.f32_sqrt($f32('3A6C5E27')),
      $f32('3CF5FCF5'),
    );
    returns(
      'f64_sqrt_8',
      () => m0.f64_sqrt($f64('635C39F220D5704')),
      $f64('2312A92BC24CEAE9'),
    );
    returns(
      'f64_sqrt_9',
      () => m0.f64_sqrt($f64('6D653521A635745C')),
      $f64('56AA0CFDC4EF8FF1'),
    );
    returns(
      'f64_sqrt_10',
      () => m0.f64_sqrt($f64('580DFD5BBC9F4678')),
      $f64('4BFEFA817117C94C'),
    );
    returns(
      'f64_sqrt_11',
      () => m0.f64_sqrt($f64('46833F9640811CD4')),
      $f64('4338D17C9243BAA3'),
    );
    returns(
      'f64_sqrt_12',
      () => m0.f64_sqrt($f64('7E66C0EF0267FF45')),
      $f64('5F2AFBCFAE3F2B40'),
    );
    returns(
      'f32_sqrt_7',
      () => m0.f32_sqrt($f32('4D135317')),
      $f32('46423428'),
    );
    returns('f32_sqrt_8', () => m0.f32_sqrt($f32('70B3001')), $f32('233CC3B1'));
    returns(
      'f32_sqrt_9',
      () => m0.f32_sqrt($f32('381EFDA8')),
      $f32('3BC9BF1C'),
    );
    returns(
      'f32_sqrt_10',
      () => m0.f32_sqrt($f32('3987596')),
      $f32('218BB203'),
    );
    returns(
      'f32_sqrt_11',
      () => m0.f32_sqrt($f32('265B82E')),
      $f32('20F28105'),
    );
    returns(
      'f64_sqrt_13',
      () => m0.f64_sqrt($f64('6B6EDAE8AEA05430')),
      $f64('55AF6C1EA4FC8DD2'),
    );
    returns(
      'f64_sqrt_14',
      () => m0.f64_sqrt($f64('104F7EE4BDA5C9C3')),
      $f64('281FBF30BDAF11C5'),
    );
    returns(
      'f64_sqrt_15',
      () => m0.f64_sqrt($f64('3E1A48F348266AD1')),
      $f64('3F0481EE7540BAF7'),
    );
    returns(
      'f64_sqrt_16',
      () => m0.f64_sqrt($f64('30DFEB5A1CE3ED9C')),
      $f64('3866995060C20D46'),
    );
    returns(
      'f64_sqrt_17',
      () => m0.f64_sqrt($f64('7A1957D9796E3834')),
      $f64('5D042305213157BA'),
    );
    returns(
      'f32_sqrt_12',
      () => m0.f32_sqrt($f32('7AB2BC3E')),
      $f32('5D174152'),
    );
    returns(
      'f32_sqrt_13',
      () => m0.f32_sqrt($f32('4739B022')),
      $f32('435A0720'),
    );
    returns(
      'f32_sqrt_14',
      () => m0.f32_sqrt($f32('3F500768')),
      $f32('3F66C576'),
    );
    returns(
      'f32_sqrt_15',
      () => m0.f32_sqrt($f32('143D2640')),
      $f32('29DC0CF2'),
    );
    returns(
      'f32_sqrt_16',
      () => m0.f32_sqrt($f32('10AE926A')),
      $f32('28157BAF'),
    );
    returns(
      'f64_sqrt_18',
      () => m0.f64_sqrt($f64('6E1A008948EAD274')),
      $f64('5704659B37C39B19'),
    );
    returns(
      'f64_sqrt_19',
      () => m0.f64_sqrt($f64('28270F6199ED21F5')),
      $f64('340B2A2BDDF3300D'),
    );
    returns(
      'f64_sqrt_20',
      () => m0.f64_sqrt($f64('7C435C1D49F2A352')),
      $f64('5E18E3D9F01A9716'),
    );
    returns(
      'f64_sqrt_21',
      () => m0.f64_sqrt($f64('3D23FBDCFB2B2A15')),
      $f64('3E8949BA4FECA42A'),
    );
    returns(
      'f64_sqrt_22',
      () => m0.f64_sqrt($f64('213C201B94757145')),
      $f64('3095369EE6BF2967'),
    );
    returns(
      'f64_sqrt_23',
      () => m0.f64_sqrt($f64('83C360E8D0032AD0')),
      double.nan,
    );
    returns(
      'f64_sqrt_24',
      () => m0.f64_sqrt($f64('466D9A6F5EEF0503')),
      $f64('432EC73F56C166F6'),
    );
    returns(
      'f64_sqrt_25',
      () => m0.f64_sqrt($f64('107AA051A5C4EC27')),
      $f64('2834A3E771FF5149'),
    );
    returns(
      'f64_sqrt_26',
      () => m0.f64_sqrt($f64('2EBE5522A741BABE')),
      $f64('375607AE2B6FEB7D'),
    );
    returns(
      'f64_sqrt_27',
      () => m0.f64_sqrt($f64('6364832BADC0C061')),
      $f64('51A99EC7934139B2'),
    );
    returns(
      'f32_sqrt_17',
      () => m0.f32_sqrt($f32('3F800001')),
      $f32('3F800000'),
    );
    returns(
      'f32_sqrt_18',
      () => m0.f32_sqrt($f32('3F800002')),
      $f32('3F800001'),
    );
    returns(
      'f64_sqrt_28',
      () => m0.f64_sqrt($f64('3FF0000000000001')),
      $f64('3FF0000000000000'),
    );
    returns(
      'f64_sqrt_29',
      () => m0.f64_sqrt($f64('3FF0000000000002')),
      $f64('3FF0000000000001'),
    );
    returns(
      'f32_sqrt_19',
      () => m0.f32_sqrt($f32('3F7FFFFE')),
      $f32('3F7FFFFF'),
    );
    returns(
      'f32_sqrt_20',
      () => m0.f32_sqrt($f32('3F7FFFFD')),
      $f32('3F7FFFFE'),
    );
    returns(
      'f64_sqrt_30',
      () => m0.f64_sqrt($f64('3FEFFFFFFFFFFFFE')),
      $f64('3FEFFFFFFFFFFFFF'),
    );
    returns(
      'f64_sqrt_31',
      () => m0.f64_sqrt($f64('3FEFFFFFFFFFFFFD')),
      $f64('3FEFFFFFFFFFFFFE'),
    );
    returns('f32_abs_0', () => m0.f32_abs($f32('7F80F1E2')), $f32('7F80F1E2'));
    returns('f32_abs_1', () => m0.f32_abs($f32('FF80F1E2')), $f32('7F80F1E2'));
    returns(
      'f64_abs_0',
      () => m0.f64_abs($f64('7FF00000F1E27A6B')),
      $f64('7FF00000F1E27A6B'),
    );
    returns(
      'f64_abs_1',
      () => m0.f64_abs($f64('FFF00000F1E27A6B')),
      $f64('7FF00000F1E27A6B'),
    );
    returns('f32_neg_0', () => m0.f32_neg($f32('7F80F1E2')), $f32('FF80F1E2'));
    returns('f32_neg_1', () => m0.f32_neg($f32('FF80F1E2')), $f32('7F80F1E2'));
    returns(
      'f64_neg_0',
      () => m0.f64_neg($f64('7FF00000F1E27A6B')),
      $f64('FFF00000F1E27A6B'),
    );
    returns(
      'f64_neg_1',
      () => m0.f64_neg($f64('FFF00000F1E27A6B')),
      $f64('7FF00000F1E27A6B'),
    );
    returns(
      'f32_copysign_0',
      () => m0.f32_copysign($f32('7F80F1E2'), $f32('7FC00000')),
      $f32('7F80F1E2'),
    );
    returns(
      'f32_copysign_1',
      () => m0.f32_copysign($f32('7F80F1E2'), $f32('FFC00000')),
      $f32('FF80F1E2'),
    );
    returns(
      'f32_copysign_2',
      () => m0.f32_copysign($f32('FF80F1E2'), $f32('7FC00000')),
      $f32('7F80F1E2'),
    );
    returns(
      'f32_copysign_3',
      () => m0.f32_copysign($f32('FF80F1E2'), $f32('FFC00000')),
      $f32('FF80F1E2'),
    );
    returns(
      'f64_copysign_0',
      () => m0.f64_copysign($f64('7FF00000F1E27A6B'), $f64('7FF8000000000000')),
      $f64('7FF00000F1E27A6B'),
    );
    returns(
      'f64_copysign_1',
      () => m0.f64_copysign($f64('7FF00000F1E27A6B'), $f64('FFF8000000000000')),
      $f64('FFF00000F1E27A6B'),
    );
    returns(
      'f64_copysign_2',
      () => m0.f64_copysign($f64('FFF00000F1E27A6B'), $f64('7FF8000000000000')),
      $f64('7FF00000F1E27A6B'),
    );
    returns(
      'f64_copysign_3',
      () => m0.f64_copysign($f64('FFF00000F1E27A6B'), $f64('FFF8000000000000')),
      $f64('FFF00000F1E27A6B'),
    );
    returns(
      'f32_ceil_0',
      () => m0.f32_ceil($f32('3F7FFFFF')),
      $f32('3F800000'),
    );
    returns(
      'f32_ceil_1',
      () => m0.f32_ceil($f32('3F800001')),
      $f32('40000000'),
    );
    returns(
      'f64_ceil_0',
      () => m0.f64_ceil($f64('3FEFFFFFFFFFFFFF')),
      $f64('3FF0000000000000'),
    );
    returns(
      'f64_ceil_1',
      () => m0.f64_ceil($f64('3FF0000000000001')),
      $f64('4000000000000000'),
    );
    returns(
      'f32_ceil_2',
      () => m0.f32_ceil($f32('4AFFFFFF')),
      $f32('4B000000'),
    );
    returns(
      'f32_ceil_3',
      () => m0.f32_ceil($f32('CAFFFFFF')),
      $f32('CAFFFFFE'),
    );
    returns(
      'f64_ceil_2',
      () => m0.f64_ceil($f64('432FFFFFFFFFFFFF')),
      $f64('4330000000000000'),
    );
    returns(
      'f64_ceil_3',
      () => m0.f64_ceil($f64('C32FFFFFFFFFFFFF')),
      $f64('C32FFFFFFFFFFFFE'),
    );
    returns(
      'f32_ceil_4',
      () => m0.f32_ceil($f32('4B7FFFFF')),
      $f32('4B7FFFFF'),
    );
    returns(
      'f32_ceil_5',
      () => m0.f32_ceil($f32('CB7FFFFF')),
      $f32('CB7FFFFF'),
    );
    returns(
      'f64_ceil_4',
      () => m0.f64_ceil($f64('433FFFFFFFFFFFFF')),
      $f64('433FFFFFFFFFFFFF'),
    );
    returns(
      'f64_ceil_5',
      () => m0.f64_ceil($f64('C33FFFFFFFFFFFFF')),
      $f64('C33FFFFFFFFFFFFF'),
    );
    returns(
      'f32_floor_0',
      () => m0.f32_floor($f32('BF7FFFFF')),
      $f32('BF800000'),
    );
    returns(
      'f32_floor_1',
      () => m0.f32_floor($f32('BF800001')),
      $f32('C0000000'),
    );
    returns(
      'f64_floor_0',
      () => m0.f64_floor($f64('BFEFFFFFFFFFFFFF')),
      $f64('BFF0000000000000'),
    );
    returns(
      'f64_floor_1',
      () => m0.f64_floor($f64('BFF0000000000001')),
      $f64('C000000000000000'),
    );
    returns(
      'f32_floor_2',
      () => m0.f32_floor($f32('CAFFFFFF')),
      $f32('CB000000'),
    );
    returns(
      'f32_floor_3',
      () => m0.f32_floor($f32('4AFFFFFF')),
      $f32('4AFFFFFE'),
    );
    returns(
      'f64_floor_2',
      () => m0.f64_floor($f64('C32FFFFFFFFFFFFF')),
      $f64('C330000000000000'),
    );
    returns(
      'f64_floor_3',
      () => m0.f64_floor($f64('432FFFFFFFFFFFFF')),
      $f64('432FFFFFFFFFFFFE'),
    );
    returns(
      'f32_floor_4',
      () => m0.f32_floor($f32('47AD0F80')),
      $f32('47AD0F80'),
    );
    returns(
      'f64_floor_4',
      () => m0.f64_floor($f64('40F5A1F000000000')),
      $f64('40F5A1F000000000'),
    );
    returns(
      'f32_trunc_0',
      () => m0.f32_trunc($f32('CAFFFFFF')),
      $f32('CAFFFFFE'),
    );
    returns(
      'f32_trunc_1',
      () => m0.f32_trunc($f32('4AFFFFFF')),
      $f32('4AFFFFFE'),
    );
    returns(
      'f64_trunc_0',
      () => m0.f64_trunc($f64('C32FFFFFFFFFFFFF')),
      $f64('C32FFFFFFFFFFFFE'),
    );
    returns(
      'f64_trunc_1',
      () => m0.f64_trunc($f64('432FFFFFFFFFFFFF')),
      $f64('432FFFFFFFFFFFFE'),
    );
    returns(
      'f32_nearest_0',
      () => m0.f32_nearest($f32('4B000001')),
      $f32('4B000001'),
    );
    returns(
      'f32_nearest_1',
      () => m0.f32_nearest($f32('4B000002')),
      $f32('4B000002'),
    );
    returns('f32_nearest_2', () => m0.f32_nearest($f32('3EFFFFFF')), $f32('0'));
    returns(
      'f32_nearest_3',
      () => m0.f32_nearest($f32('577FFFFF')),
      $f32('577FFFFF'),
    );
    returns(
      'f64_nearest_0',
      () => m0.f64_nearest($f64('4330000000000001')),
      $f64('4330000000000001'),
    );
    returns(
      'f64_nearest_1',
      () => m0.f64_nearest($f64('4330000000000002')),
      $f64('4330000000000002'),
    );
    returns(
      'f64_nearest_2',
      () => m0.f64_nearest($f64('3FDFFFFFFFFFFFFF')),
      $f64('0'),
    );
    returns(
      'f64_nearest_3',
      () => m0.f64_nearest($f64('468FFFFFFFFFFFFF')),
      $f64('468FFFFFFFFFFFFF'),
    );
    returns(
      'f32_nearest_4',
      () => m0.f32_nearest($f32('40900000')),
      $f32('40800000'),
    );
    returns(
      'f32_nearest_5',
      () => m0.f32_nearest($f32('C0900000')),
      $f32('C0800000'),
    );
    returns(
      'f32_nearest_6',
      () => m0.f32_nearest($f32('C0600000')),
      $f32('C0800000'),
    );
    returns(
      'f64_nearest_4',
      () => m0.f64_nearest($f64('4012000000000000')),
      $f64('4010000000000000'),
    );
    returns(
      'f64_nearest_5',
      () => m0.f64_nearest($f64('C012000000000000')),
      $f64('C010000000000000'),
    );
    returns(
      'f64_nearest_6',
      () => m0.f64_nearest($f64('C00C000000000000')),
      $f64('C010000000000000'),
    );
    returns(
      'f32_nearest_7',
      () => m0.f32_nearest($f32('CAFFFFFF')),
      $f32('CB000000'),
    );
    returns(
      'f32_nearest_8',
      () => m0.f32_nearest($f32('4AFFFFFF')),
      $f32('4B000000'),
    );
    returns(
      'f64_nearest_7',
      () => m0.f64_nearest($f64('C32FFFFFFFFFFFFF')),
      $f64('C330000000000000'),
    );
    returns(
      'f64_nearest_8',
      () => m0.f64_nearest($f64('432FFFFFFFFFFFFF')),
      $f64('4330000000000000'),
    );
  });
}
