// Generated from spec/test/core/stack.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'stack.0.dart' as stack_0;
import 'stack.1.dart' as stack_1;

void main() {
  group('stack', () {
    // module stack.0.dart (line 1)
    var m0 = stack_0.Stack0Module();

    returns('fac_expr_0', () => m0.fac_expr(0x19), $i64('619FB0907BC00000'));
    returns('fac_stack_0', () => m0.fac_stack(0x19), $i64('619FB0907BC00000'));
    returns('fac_mixed_0', () => m0.fac_mixed(0x19), $i64('619FB0907BC00000'));
    returns('not_quite_a_tree_0', () => m0.not_quite_a_tree(), 0x3);
    returns('not_quite_a_tree_1', () => m0.not_quite_a_tree(), 0x9);

    // module stack.1.dart (line 156)
    var m1 = stack_1.Stack1Module();
  });
}
