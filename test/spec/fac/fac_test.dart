// Generated from spec/test/core/fac.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'fac.0.dart' as fac_0;

void main() {
  group('fac', () {
    // module fac.0.dart (line 1)
    var m0 = fac_0.Fac0Module();

    returns('fac_rec_0', () => m0.fac_rec(0x19), $i64('619FB0907BC00000'));
    returns('fac_iter_0', () => m0.fac_iter(0x19), $i64('619FB0907BC00000'));
    returns(
      'fac_rec_named_0',
      () => m0.fac_rec_named(0x19),
      $i64('619FB0907BC00000'),
    );
    returns(
      'fac_iter_named_0',
      () => m0.fac_iter_named(0x19),
      $i64('619FB0907BC00000'),
    );
    returns('fac_opt_0', () => m0.fac_opt(0x19), $i64('619FB0907BC00000'));
    returns('fac_ssa_0', () => m0.fac_ssa(0x19), $i64('619FB0907BC00000'));
  });
}
