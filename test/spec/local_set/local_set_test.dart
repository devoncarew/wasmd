// Generated from spec/test/core/local_set.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'local_set.0.dart' as local_set_0;

void main() {
  group('local_set', () {
    // module local_set.0.dart (line 3)
    var m0 = local_set_0.LocalSet0Module();

    returns('type_local_i32_0', () => m0.type_local_i32(), null);
    returns('type_local_i64_0', () => m0.type_local_i64(), null);
    returns('type_local_f32_0', () => m0.type_local_f32(), null);
    returns('type_local_f64_0', () => m0.type_local_f64(), null);
    returns('type_param_i32_0', () => m0.type_param_i32(0x2), null);
    returns('type_param_i64_0', () => m0.type_param_i64(0x3), null);
    returns(
      'type_param_f32_0',
      () => m0.type_param_f32($f32('408CCCCD')),
      null,
    );
    returns(
      'type_param_f64_0',
      () => m0.type_param_f64($f64('4016000000000000')),
      null,
    );
    returns('as_block_value_0', () => m0.as_block_value(0), null);
    returns('as_loop_value_0', () => m0.as_loop_value(0), null);
    returns('as_br_value_0', () => m0.as_br_value(0), null);
    returns('as_br_if_value_0', () => m0.as_br_if_value(0), null);
    returns('as_br_if_value_cond_0', () => m0.as_br_if_value_cond(0), null);
    returns('as_br_table_value_0', () => m0.as_br_table_value(0), null);
    returns('as_return_value_0', () => m0.as_return_value(0), null);
    returns('as_if_then_0', () => m0.as_if_then(0x1), null);
    returns('as_if_else_0', () => m0.as_if_else(0), null);
    returns(
      'type_mixed_0',
      () => m0.type_mixed(0x1, $f32('400CCCCD'), $f64('400A666666666666'), 0x4, 0x5),
      null,
    );
    returns(
      'write_0',
      () => m0.write(0x1, $f32('40000000'), $f64('400A666666666666'), 0x4, 0x5),
      0x38,
    );
  });
}
