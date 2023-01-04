// Generated from spec/test/core/unwind.wast.

// ignore_for_file: non_constant_identifier_names, unused_local_variable

import '../../src/infra.dart';
import 'unwind.0.dart' as unwind_0;

const String _u = 'unreachable';

void main() {
  group('unwind', () {
    // module unwind.0.dart (line 3)
    var m0 = unwind_0.Unwind0Module();

    traps(
      'func_unwind_by_unreachable_0',
      () => m0.func_unwind_by_unreachable(),
      _u,
    );
    returns('func_unwind_by_br_0', () => m0.func_unwind_by_br(), null);
    returns(
      'func_unwind_by_br_value_0',
      () => m0.func_unwind_by_br_value(),
      0x9,
    );
    returns('func_unwind_by_br_if_0', () => m0.func_unwind_by_br_if(), null);
    returns(
      'func_unwind_by_br_if_value_0',
      () => m0.func_unwind_by_br_if_value(),
      0x9,
    );
    returns(
      'func_unwind_by_br_table_0',
      () => m0.func_unwind_by_br_table(),
      null,
    );
    returns(
      'func_unwind_by_br_table_value_0',
      () => m0.func_unwind_by_br_table_value(),
      0x9,
    );
    returns('func_unwind_by_return_0', () => m0.func_unwind_by_return(), 0x9);
    traps(
      'block_unwind_by_unreachable_0',
      () => m0.block_unwind_by_unreachable(),
      _u,
    );
    returns('block_unwind_by_br_0', () => m0.block_unwind_by_br(), 0x9);
    returns(
      'block_unwind_by_br_value_0',
      () => m0.block_unwind_by_br_value(),
      0x9,
    );
    returns('block_unwind_by_br_if_0', () => m0.block_unwind_by_br_if(), 0x9);
    returns(
      'block_unwind_by_br_if_value_0',
      () => m0.block_unwind_by_br_if_value(),
      0x9,
    );
    returns(
      'block_unwind_by_br_table_0',
      () => m0.block_unwind_by_br_table(),
      0x9,
    );
    returns(
      'block_unwind_by_br_table_value_0',
      () => m0.block_unwind_by_br_table_value(),
      0x9,
    );
    returns('block_unwind_by_return_0', () => m0.block_unwind_by_return(), 0x9);
    traps(
      'block_nested_unwind_by_unreachable_0',
      () => m0.block_nested_unwind_by_unreachable(),
      _u,
    );
    returns(
      'block_nested_unwind_by_br_0',
      () => m0.block_nested_unwind_by_br(),
      0x9,
    );
    returns(
      'block_nested_unwind_by_br_value_0',
      () => m0.block_nested_unwind_by_br_value(),
      0x9,
    );
    returns(
      'block_nested_unwind_by_br_if_0',
      () => m0.block_nested_unwind_by_br_if(),
      0x9,
    );
    returns(
      'block_nested_unwind_by_br_if_value_0',
      () => m0.block_nested_unwind_by_br_if_value(),
      0x9,
    );
    returns(
      'block_nested_unwind_by_br_table_0',
      () => m0.block_nested_unwind_by_br_table(),
      0x9,
    );
    returns(
      'block_nested_unwind_by_br_table_value_0',
      () => m0.block_nested_unwind_by_br_table_value(),
      0x9,
    );
    returns(
      'block_nested_unwind_by_return_0',
      () => m0.block_nested_unwind_by_return(),
      0x9,
    );
    traps('unary_after_unreachable_0', () => m0.unary_after_unreachable(), _u);
    returns('unary_after_br_0', () => m0.unary_after_br(), 0x9);
    returns('unary_after_br_if_0', () => m0.unary_after_br_if(), 0x9);
    returns('unary_after_br_table_0', () => m0.unary_after_br_table(), 0x9);
    returns('unary_after_return_0', () => m0.unary_after_return(), 0x9);
    traps(
      'binary_after_unreachable_0',
      () => m0.binary_after_unreachable(),
      _u,
    );
    returns('binary_after_br_0', () => m0.binary_after_br(), 0x9);
    returns('binary_after_br_if_0', () => m0.binary_after_br_if(), 0x9);
    returns('binary_after_br_table_0', () => m0.binary_after_br_table(), 0x9);
    returns('binary_after_return_0', () => m0.binary_after_return(), 0x9);
    traps(
      'select_after_unreachable_0',
      () => m0.select_after_unreachable(),
      _u,
    );
    returns('select_after_br_0', () => m0.select_after_br(), 0x9);
    returns('select_after_br_if_0', () => m0.select_after_br_if(), 0x9);
    returns('select_after_br_table_0', () => m0.select_after_br_table(), 0x9);
    returns('select_after_return_0', () => m0.select_after_return(), 0x9);
    traps(
      'block_value_after_unreachable_0',
      () => m0.block_value_after_unreachable(),
      _u,
    );
    returns('block_value_after_br_0', () => m0.block_value_after_br(), 0x9);
    returns(
      'block_value_after_br_if_0',
      () => m0.block_value_after_br_if(),
      0x9,
    );
    returns(
      'block_value_after_br_table_0',
      () => m0.block_value_after_br_table(),
      0x9,
    );
    returns(
      'block_value_after_return_0',
      () => m0.block_value_after_return(),
      0x9,
    );
    traps(
      'loop_value_after_unreachable_0',
      () => m0.loop_value_after_unreachable(),
      _u,
    );
    returns('loop_value_after_br_0', () => m0.loop_value_after_br(), 0x9);
    returns('loop_value_after_br_if_0', () => m0.loop_value_after_br_if(), 0x9);
    returns(
      'loop_value_after_br_table_0',
      () => m0.loop_value_after_br_table(),
      0x9,
    );
    returns(
      'loop_value_after_return_0',
      () => m0.loop_value_after_return(),
      0x9,
    );
  });
}
