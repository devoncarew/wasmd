// Generated from spec/test/core/store.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'store.0.dart' as store_0;

void main() {
  group('store', () {
    // module store.0.dart (line 3)
    var m0 = store_0.Store0Module();

    returns('as_block_value_0', () => m0.as_block_value(), null);
    returns('as_loop_value_0', () => m0.as_loop_value(), null);
    returns('as_br_value_0', () => m0.as_br_value(), null);
    returns('as_br_if_value_0', () => m0.as_br_if_value(), null);
    returns('as_br_if_value_cond_0', () => m0.as_br_if_value_cond(), null);
    returns('as_br_table_value_0', () => m0.as_br_table_value(), null);
    returns('as_return_value_0', () => m0.as_return_value(), null);
    returns('as_if_then_0', () => m0.as_if_then(), null);
    returns('as_if_else_0', () => m0.as_if_else(), null);
  });
}
