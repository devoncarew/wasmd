// Generated from spec/test/core/table_grow.wast.

// ignore_for_file: unused_local_variable

import '../../src/infra.dart';
import 'table_grow.0.dart' as table_grow_0;
import 'table_grow.1.dart' as table_grow_1;
import 'table_grow.2.dart' as table_grow_2;
import 'table_grow.3.dart' as table_grow_3;
import 'table_grow.4.dart' as table_grow_4;

const String _oobta = 'out of bounds table access';

void main() {
  group('table_grow', () {
    // module table_grow.0.dart (line 1)
    var m0 = table_grow_0.TableGrow0Module();

    returns('size_0', () => m0.size(), 0);
    traps('set_0', () => m0.set(0, externref('2')), _oobta);
    traps('get_0', () => m0.get(0), _oobta);
    returns('grow_0', () => m0.grow(0x1, null), 0);
    returns('size_1', () => m0.size(), 0x1);
    returns('get_1', () => m0.get(0), null);
    returns('set_1', () => m0.set(0, externref('2')), null);
    returns('get_2', () => m0.get(0), externref('2'));
    traps('set_2', () => m0.set(0x1, externref('2')), _oobta);
    traps('get_3', () => m0.get(0x1), _oobta);
    returns('grow_1', () => m0.grow(0x4, externref('3')), 0x1);
    returns('size_2', () => m0.size(), 0x5);
    returns('get_4', () => m0.get(0), externref('2'));
    returns('set_3', () => m0.set(0, externref('2')), null);
    returns('get_5', () => m0.get(0), externref('2'));
    returns('get_6', () => m0.get(0x1), externref('3'));
    returns('get_7', () => m0.get(0x4), externref('3'));
    returns('set_4', () => m0.set(0x4, externref('4')), null);
    returns('get_8', () => m0.get(0x4), externref('4'));
    traps('set_5', () => m0.set(0x5, externref('2')), _oobta);
    traps('get_9', () => m0.get(0x5), _oobta);

    // module table_grow.1.dart (line 39)
    var m1 = table_grow_1.TableGrow1Module();

    returns('grow_2', () => m1.grow(), i32('FFFFFFFF'));

    // module table_grow.2.dart (line 50)
    var m2 = table_grow_2.TableGrow2Module();

    returns('grow_3', () => m2.grow(0), 0);
    returns('grow_4', () => m2.grow(0x1), 0);
    returns('grow_5', () => m2.grow(0), 0x1);
    returns('grow_6', () => m2.grow(0x2), 0x1);
    returns('grow_7', () => m2.grow(0x320), 0x3);

    // module table_grow.3.dart (line 64)
    var m3 = table_grow_3.TableGrow3Module();

    returns('grow_8', () => m3.grow(0), 0);
    returns('grow_9', () => m3.grow(0x1), 0);
    returns('grow_10', () => m3.grow(0x1), 0x1);
    returns('grow_11', () => m3.grow(0x2), 0x2);
    returns('grow_12', () => m3.grow(0x6), 0x4);
    returns('grow_13', () => m3.grow(0), 0xA);
    returns('grow_14', () => m3.grow(0x1), i32('FFFFFFFF'));
    returns('grow_15', () => m3.grow(0x10000), i32('FFFFFFFF'));

    // module table_grow.4.dart (line 81)
    var m4 = table_grow_4.TableGrow4Module();

    returns('check_table_null_0', () => m4.check_table_null(0, 0x9), null);
    returns('grow_16', () => m4.grow(0xA), 0xA);
    returns('check_table_null_1', () => m4.check_table_null(0, 0x13), null);
  });
}
