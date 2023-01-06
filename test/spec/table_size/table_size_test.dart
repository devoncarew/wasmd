// Generated from spec/test/core/table_size.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'table_size.0.dart' as table_size_0;

void main() {
  group('table_size', () {
    // module table_size.0.dart (line 1)
    var m0 = table_size_0.TableSize0Module();

    returns('size_t0_0', () => m0.size_t0(), 0);
    returns('grow_t0_0', () => m0.grow_t0(0x1), null);
    returns('size_t0_1', () => m0.size_t0(), 0x1);
    returns('grow_t0_1', () => m0.grow_t0(0x4), null);
    returns('size_t0_2', () => m0.size_t0(), 0x5);
    returns('grow_t0_2', () => m0.grow_t0(0), null);
    returns('size_t0_3', () => m0.size_t0(), 0x5);
    returns('size_t1_0', () => m0.size_t1(), 0x1);
    returns('grow_t1_0', () => m0.grow_t1(0x1), null);
    returns('size_t1_1', () => m0.size_t1(), 0x2);
    returns('grow_t1_1', () => m0.grow_t1(0x4), null);
    returns('size_t1_2', () => m0.size_t1(), 0x6);
    returns('grow_t1_2', () => m0.grow_t1(0), null);
    returns('size_t1_3', () => m0.size_t1(), 0x6);
    returns('size_t2_0', () => m0.size_t2(), 0);
    returns('grow_t2_0', () => m0.grow_t2(0x3), null);
    returns('size_t2_1', () => m0.size_t2(), 0);
    returns('grow_t2_1', () => m0.grow_t2(0x1), null);
    returns('size_t2_2', () => m0.size_t2(), 0x1);
    returns('grow_t2_2', () => m0.grow_t2(0), null);
    returns('size_t2_3', () => m0.size_t2(), 0x1);
    returns('grow_t2_3', () => m0.grow_t2(0x4), null);
    returns('size_t2_4', () => m0.size_t2(), 0x1);
    returns('grow_t2_4', () => m0.grow_t2(0x1), null);
    returns('size_t2_5', () => m0.size_t2(), 0x2);
    returns('size_t3_0', () => m0.size_t3(), 0x3);
    returns('grow_t3_0', () => m0.grow_t3(0x1), null);
    returns('size_t3_1', () => m0.size_t3(), 0x4);
    returns('grow_t3_1', () => m0.grow_t3(0x3), null);
    returns('size_t3_2', () => m0.size_t3(), 0x7);
    returns('grow_t3_2', () => m0.grow_t3(0), null);
    returns('size_t3_3', () => m0.size_t3(), 0x7);
    returns('grow_t3_3', () => m0.grow_t3(0x2), null);
    returns('size_t3_4', () => m0.size_t3(), 0x7);
    returns('grow_t3_4', () => m0.grow_t3(0x1), null);
    returns('size_t3_5', () => m0.size_t3(), 0x8);
  });
}
