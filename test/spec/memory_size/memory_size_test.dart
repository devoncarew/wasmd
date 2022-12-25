// Generated from spec/test/core/memory_size.wast.

// ignore_for_file: unused_local_variable

import '../../src/infra.dart';
import 'memory_size.0.dart' as memory_size_0;
import 'memory_size.1.dart' as memory_size_1;
import 'memory_size.2.dart' as memory_size_2;
import 'memory_size.3.dart' as memory_size_3;

void main() {
  group('memory_size', () {
    // module memory_size.0.dart
    var m0 = memory_size_0.Module();

    returns('size_0', () => m0.size(), 0);
    returns('grow_0', () => m0.grow(0x1), null);
    returns('size_1', () => m0.size(), 0x1);
    returns('grow_1', () => m0.grow(0x4), null);
    returns('size_2', () => m0.size(), 0x5);
    returns('grow_2', () => m0.grow(0), null);
    returns('size_3', () => m0.size(), 0x5);

    // module memory_size.1.dart
    var m1 = memory_size_1.Module();

    returns('size_4', () => m1.size(), 0x1);
    returns('grow_3', () => m1.grow(0x1), null);
    returns('size_5', () => m1.size(), 0x2);
    returns('grow_4', () => m1.grow(0x4), null);
    returns('size_6', () => m1.size(), 0x6);
    returns('grow_5', () => m1.grow(0), null);
    returns('size_7', () => m1.size(), 0x6);

    // module memory_size.2.dart
    var m2 = memory_size_2.Module();

    returns('size_8', () => m2.size(), 0);
    returns('grow_6', () => m2.grow(0x3), null);
    returns('size_9', () => m2.size(), 0);
    returns('grow_7', () => m2.grow(0x1), null);
    returns('size_10', () => m2.size(), 0x1);
    returns('grow_8', () => m2.grow(0), null);
    returns('size_11', () => m2.size(), 0x1);
    returns('grow_9', () => m2.grow(0x4), null);
    returns('size_12', () => m2.size(), 0x1);
    returns('grow_10', () => m2.grow(0x1), null);
    returns('size_13', () => m2.size(), 0x2);

    // module memory_size.3.dart
    var m3 = memory_size_3.Module();

    returns('size_14', () => m3.size(), 0x3);
    returns('grow_11', () => m3.grow(0x1), null);
    returns('size_15', () => m3.size(), 0x4);
    returns('grow_12', () => m3.grow(0x3), null);
    returns('size_16', () => m3.size(), 0x7);
    returns('grow_13', () => m3.grow(0), null);
    returns('size_17', () => m3.size(), 0x7);
    returns('grow_14', () => m3.grow(0x2), null);
    returns('size_18', () => m3.size(), 0x7);
    returns('grow_15', () => m3.grow(0x1), null);
    returns('size_19', () => m3.size(), 0x8);
  });
}
