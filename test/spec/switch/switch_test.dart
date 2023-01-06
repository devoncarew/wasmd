// Generated from spec/test/core/switch.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'switch.0.dart' as switch_0;

void main() {
  group('switch', () {
    // module switch.0.dart (line 1)
    var m0 = switch_0.Switch0Module();

    returns('stmt_0', () => m0.stmt(0), 0);
    returns('stmt_1', () => m0.stmt(0x1), $i32('FFFFFFFF'));
    returns('stmt_2', () => m0.stmt(0x2), $i32('FFFFFFFE'));
    returns('stmt_3', () => m0.stmt(0x3), $i32('FFFFFFFD'));
    returns('stmt_4', () => m0.stmt(0x4), 0x64);
    returns('stmt_5', () => m0.stmt(0x5), 0x65);
    returns('stmt_6', () => m0.stmt(0x6), 0x66);
    returns('stmt_7', () => m0.stmt(0x7), 0x64);
    returns('stmt_8', () => m0.stmt($i32('FFFFFFF6')), 0x66);
    returns('expr_0', () => m0.expr(0), 0);
    returns('expr_1', () => m0.expr(0x1), $i64('FFFFFFFFFFFFFFFF'));
    returns('expr_2', () => m0.expr(0x2), $i64('FFFFFFFFFFFFFFFE'));
    returns('expr_3', () => m0.expr(0x3), $i64('FFFFFFFFFFFFFFFD'));
    returns('expr_4', () => m0.expr(0x6), 0x65);
    returns('expr_5', () => m0.expr(0x7), $i64('FFFFFFFFFFFFFFFB'));
    returns('expr_6', () => m0.expr($i64('FFFFFFFFFFFFFFF6')), 0x64);
    returns('arg_0', () => m0.arg(0), 0x6E);
    returns('arg_1', () => m0.arg(0x1), 0xC);
    returns('arg_2', () => m0.arg(0x2), 0x4);
    returns('arg_3', () => m0.arg(0x3), 0x45C);
    returns('arg_4', () => m0.arg(0x4), 0x76);
    returns('arg_5', () => m0.arg(0x5), 0x14);
    returns('arg_6', () => m0.arg(0x6), 0xC);
    returns('arg_7', () => m0.arg(0x7), 0x464);
    returns('arg_8', () => m0.arg(0x8), 0x7E);
    returns('corner_0', () => m0.corner(), 0x1);
  });
}
