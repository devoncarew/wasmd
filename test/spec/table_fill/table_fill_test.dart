// Generated from spec/test/core/table_fill.wast.

// ignore_for_file: unused_local_variable

import '../../src/infra.dart';
import 'table_fill.0.dart' as table_fill_0;

const String _oobta = 'out of bounds table access';

void main() {
  group('table_fill', () {
    // module table_fill.0.dart (line 1)
    var m0 = table_fill_0.TableFill0Module();

    returns('get_0', () => m0.get(0x1), null);
    returns('get_1', () => m0.get(0x2), null);
    returns('get_2', () => m0.get(0x3), null);
    returns('get_3', () => m0.get(0x4), null);
    returns('get_4', () => m0.get(0x5), null);
    returns('fill_0', () => m0.fill(0x2, externref('1'), 0x3), null);
    returns('get_5', () => m0.get(0x1), null);
    returns('get_6', () => m0.get(0x2), externref('1'));
    returns('get_7', () => m0.get(0x3), externref('1'));
    returns('get_8', () => m0.get(0x4), externref('1'));
    returns('get_9', () => m0.get(0x5), null);
    returns('fill_1', () => m0.fill(0x4, externref('2'), 0x2), null);
    returns('get_10', () => m0.get(0x3), externref('1'));
    returns('get_11', () => m0.get(0x4), externref('2'));
    returns('get_12', () => m0.get(0x5), externref('2'));
    returns('get_13', () => m0.get(0x6), null);
    returns('fill_2', () => m0.fill(0x4, externref('3'), 0), null);
    returns('get_14', () => m0.get(0x3), externref('1'));
    returns('get_15', () => m0.get(0x4), externref('2'));
    returns('get_16', () => m0.get(0x5), externref('2'));
    returns('fill_3', () => m0.fill(0x8, externref('4'), 0x2), null);
    returns('get_17', () => m0.get(0x7), null);
    returns('get_18', () => m0.get(0x8), externref('4'));
    returns('get_19', () => m0.get(0x9), externref('4'));
    returns('fill_4', () => m0.fill(0x9, null, 0x1), null);
    returns('get_20', () => m0.get(0x8), externref('4'));
    returns('get_21', () => m0.get(0x9), null);
    returns('fill_5', () => m0.fill(0xA, externref('5'), 0), null);
    returns('get_22', () => m0.get(0x9), null);
    traps('fill_6', () => m0.fill(0x8, externref('6'), 0x3), _oobta);
    returns('get_23', () => m0.get(0x7), null);
    returns('get_24', () => m0.get(0x8), externref('4'));
    returns('get_25', () => m0.get(0x9), null);
    traps('fill_7', () => m0.fill(0xB, null, 0), _oobta);
    traps('fill_8', () => m0.fill(0xB, null, 0xA), _oobta);
  });
}
