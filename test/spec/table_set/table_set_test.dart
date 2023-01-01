// Generated from spec/test/core/table_set.wast.

// ignore_for_file: non_constant_identifier_names, unused_local_variable

import '../../src/infra.dart';
import 'table_set.0.dart' as table_set_0;

const String _oobta = 'out of bounds table access';

void main() {
  group('table_set', () {
    // module table_set.0.dart (line 1)
    var m0 = table_set_0.TableSet0Module();

    returns('get_externref_0', () => m0.get_externref(0), null);
    returns('set_externref_0', () => m0.set_externref(0, externref('1')), null);
    returns('get_externref_1', () => m0.get_externref(0), externref('1'));
    returns('set_externref_1', () => m0.set_externref(0, null), null);
    returns('get_externref_2', () => m0.get_externref(0), null);
    returns('get_funcref_0', () => m0.get_funcref(0), null);
    returns('set_funcref_from_0', () => m0.set_funcref_from(0, 0x1), null);
    returns('is_null_funcref_0', () => m0.is_null_funcref(0), 0);
    returns('set_funcref_0', () => m0.set_funcref(0, null), null);
    returns('get_funcref_1', () => m0.get_funcref(0), null);
    traps('set_externref_2', () => m0.set_externref(0x2, null), _oobta);
    traps('set_funcref_1', () => m0.set_funcref(0x3, null), _oobta);
    traps(
      'set_externref_3',
      () => m0.set_externref(i32('FFFFFFFF'), null),
      _oobta,
    );
    traps('set_funcref_2', () => m0.set_funcref(i32('FFFFFFFF'), null), _oobta);
    traps(
      'set_externref_4',
      () => m0.set_externref(0x2, externref('0')),
      _oobta,
    );
    traps('set_funcref_from_1', () => m0.set_funcref_from(0x3, 0x1), _oobta);
    traps(
      'set_externref_5',
      () => m0.set_externref(i32('FFFFFFFF'), externref('0')),
      _oobta,
    );
    traps(
      'set_funcref_from_2',
      () => m0.set_funcref_from(i32('FFFFFFFF'), 0x1),
      _oobta,
    );
  });
}
