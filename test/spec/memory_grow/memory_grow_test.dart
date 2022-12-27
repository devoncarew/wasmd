// Generated from spec/test/core/memory_grow.wast.

// ignore_for_file: unused_local_variable

import '../../src/infra.dart';
import 'memory_grow.0.dart' as memory_grow_0;
import 'memory_grow.1.dart' as memory_grow_1;
import 'memory_grow.2.dart' as memory_grow_2;
import 'memory_grow.3.dart' as memory_grow_3;
import 'memory_grow.4.dart' as memory_grow_4;

const String _oobma = 'out of bounds memory access';
const String _ue = 'undefined element';

void main() {
  group('memory_grow', () {
    // module memory_grow.0.dart (line 1)
    var m0 = memory_grow_0.MemoryGrow0Module();

    returns('size_0', () => m0.size(), 0);
    traps('store_at_zero_0', () => m0.store_at_zero(), _oobma);
    traps('load_at_zero_0', () => m0.load_at_zero(), _oobma);
    traps('store_at_page_size_0', () => m0.store_at_page_size(), _oobma);
    traps('load_at_page_size_0', () => m0.load_at_page_size(), _oobma);
    returns('grow_0', () => m0.grow(0x1), 0);
    returns('size_1', () => m0.size(), 0x1);
    returns('load_at_zero_1', () => m0.load_at_zero(), 0);
    returns('store_at_zero_1', () => m0.store_at_zero(), null);
    returns('load_at_zero_2', () => m0.load_at_zero(), 0x2);
    traps('store_at_page_size_1', () => m0.store_at_page_size(), _oobma);
    traps('load_at_page_size_1', () => m0.load_at_page_size(), _oobma);
    returns('grow_1', () => m0.grow(0x4), 0x1);
    returns('size_2', () => m0.size(), 0x5);
    returns('load_at_zero_3', () => m0.load_at_zero(), 0x2);
    returns('store_at_zero_2', () => m0.store_at_zero(), null);
    returns('load_at_zero_4', () => m0.load_at_zero(), 0x2);
    returns('load_at_page_size_2', () => m0.load_at_page_size(), 0);
    returns('store_at_page_size_2', () => m0.store_at_page_size(), null);
    returns('load_at_page_size_3', () => m0.load_at_page_size(), 0x3);

    // module memory_grow.1.dart (line 36)
    var m1 = memory_grow_1.MemoryGrow1Module();

    returns('grow_2', () => m1.grow(0), 0);
    returns('grow_3', () => m1.grow(0x1), 0);
    returns('grow_4', () => m1.grow(0), 0x1);
    returns('grow_5', () => m1.grow(0x2), 0x1);
    returns('grow_6', () => m1.grow(0x320), 0x3);
    returns('grow_7', () => m1.grow(0x10000), i32('FFFFFFFF'));
    returns('grow_8', () => m1.grow(0xFCE0), i32('FFFFFFFF'));
    returns('grow_9', () => m1.grow(0x1), 0x323);

    // module memory_grow.2.dart (line 50)
    var m2 = memory_grow_2.MemoryGrow2Module();

    returns('grow_10', () => m2.grow(0), 0);
    returns('grow_11', () => m2.grow(0x1), 0);
    returns('grow_12', () => m2.grow(0x1), 0x1);
    returns('grow_13', () => m2.grow(0x2), 0x2);
    returns('grow_14', () => m2.grow(0x6), 0x4);
    returns('grow_15', () => m2.grow(0), 0xA);
    returns('grow_16', () => m2.grow(0x1), i32('FFFFFFFF'));
    returns('grow_17', () => m2.grow(0x10000), i32('FFFFFFFF'));

    // module memory_grow.3.dart (line 66)
    var m3 = memory_grow_3.MemoryGrow3Module();

    returns('check_memory_zero_0', () => m3.check_memory_zero(0, 0xFFFF), 0);
    returns('grow_18', () => m3.grow(0x1), 0x1);
    returns(
      'check_memory_zero_1',
      () => m3.check_memory_zero(0x10000, 0x1FFFF),
      0,
    );
    returns('grow_19', () => m3.grow(0x1), 0x2);
    returns(
      'check_memory_zero_2',
      () => m3.check_memory_zero(0x20000, 0x2FFFF),
      0,
    );
    returns('grow_20', () => m3.grow(0x1), 0x3);
    returns(
      'check_memory_zero_3',
      () => m3.check_memory_zero(0x30000, 0x3FFFF),
      0,
    );
    returns('grow_21', () => m3.grow(0x1), 0x4);
    returns(
      'check_memory_zero_4',
      () => m3.check_memory_zero(0x40000, 0x4FFFF),
      0,
    );
    returns('grow_22', () => m3.grow(0x1), 0x5);
    returns(
      'check_memory_zero_5',
      () => m3.check_memory_zero(0x50000, 0x5FFFF),
      0,
    );

    // module memory_grow.4.dart (line 101)
    var m4 = memory_grow_4.MemoryGrow4Module();

    returns('as_br_value_0', () => m4.as_br_value(), 0x1);
    returns('as_br_if_cond_0', () => m4.as_br_if_cond(), null);
    returns('as_br_if_value_0', () => m4.as_br_if_value(), 0x1);
    returns('as_br_if_value_cond_0', () => m4.as_br_if_value_cond(), 0x6);
    returns('as_br_table_index_0', () => m4.as_br_table_index(), null);
    returns('as_br_table_value_0', () => m4.as_br_table_value(), 0x1);
    returns(
      'as_br_table_value_index_0',
      () => m4.as_br_table_value_index(),
      0x6,
    );
    returns('as_return_value_0', () => m4.as_return_value(), 0x1);
    returns('as_if_cond_0', () => m4.as_if_cond(), 0);
    returns('as_if_then_0', () => m4.as_if_then(), 0x1);
    returns('as_if_else_0', () => m4.as_if_else(), 0x1);
    returns('as_select_first_0', () => m4.as_select_first(0, 0x1), 0x1);
    returns('as_select_second_0', () => m4.as_select_second(0, 0), 0x1);
    returns('as_select_cond_0', () => m4.as_select_cond(), 0);
    returns('as_call_first_0', () => m4.as_call_first(), i32('FFFFFFFF'));
    returns('as_call_mid_0', () => m4.as_call_mid(), i32('FFFFFFFF'));
    returns('as_call_last_0', () => m4.as_call_last(), i32('FFFFFFFF'));
    returns(
      'as_call_indirect_first_0',
      () => m4.as_call_indirect_first(),
      i32('FFFFFFFF'),
    );
    returns(
      'as_call_indirect_mid_0',
      () => m4.as_call_indirect_mid(),
      i32('FFFFFFFF'),
    );
    returns(
      'as_call_indirect_last_0',
      () => m4.as_call_indirect_last(),
      i32('FFFFFFFF'),
    );
    traps('as_call_indirect_index_0', () => m4.as_call_indirect_index(), _ue);
    returns('as_local_set_value_0', () => m4.as_local_set_value(), null);
    returns('as_local_tee_value_0', () => m4.as_local_tee_value(), 0x1);
    returns('as_global_set_value_0', () => m4.as_global_set_value(), null);
    returns('as_load_address_0', () => m4.as_load_address(), 0);
    returns('as_loadN_address_0', () => m4.as_loadN_address(), 0);
    returns('as_store_address_0', () => m4.as_store_address(), null);
    returns('as_store_value_0', () => m4.as_store_value(), null);
    returns('as_storeN_address_0', () => m4.as_storeN_address(), null);
    returns('as_storeN_value_0', () => m4.as_storeN_value(), null);
    returns('as_unary_operand_0', () => m4.as_unary_operand(), 0x1F);
    returns('as_binary_left_0', () => m4.as_binary_left(), 0xB);
    returns('as_binary_right_0', () => m4.as_binary_right(), 0x9);
    returns('as_test_operand_0', () => m4.as_test_operand(), 0);
    returns('as_compare_left_0', () => m4.as_compare_left(), 0x1);
    returns('as_compare_right_0', () => m4.as_compare_right(), 0x1);
    returns('as_memory_grow_size_0', () => m4.as_memory_grow_size(), 0x1);
  });
}
