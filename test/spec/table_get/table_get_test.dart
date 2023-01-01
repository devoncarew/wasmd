// Generated from spec/test/core/table_get.wast.

// ignore_for_file: non_constant_identifier_names, unused_local_variable

import '../../src/infra.dart';
import 'table_get.0.dart' as table_get_0;

const String _oobta = 'out of bounds table access';

void main() {
  group('table_get', () {
    // module table_get.0.dart (line 1)
    var m0 = table_get_0.TableGet0Module();

    invoke('init_0', () => m0.init(externref('1')));
    returns('get_externref_0', () => m0.get_externref(0), null);
    returns('get_externref_1', () => m0.get_externref(0x1), externref('1'));
    returns('get_funcref_0', () => m0.get_funcref(0), null);
    returns('is_null_funcref_0', () => m0.is_null_funcref(0x1), 0);
    returns('is_null_funcref_1', () => m0.is_null_funcref(0x2), 0);
    traps('get_externref_2', () => m0.get_externref(0x2), _oobta);
    traps('get_funcref_1', () => m0.get_funcref(0x3), _oobta);
    traps('get_externref_3', () => m0.get_externref(i32('FFFFFFFF')), _oobta);
    traps('get_funcref_2', () => m0.get_funcref(i32('FFFFFFFF')), _oobta);
  });
}
