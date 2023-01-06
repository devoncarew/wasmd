// Generated from spec/test/core/memory_redundancy.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'memory_redundancy.0.dart' as memory_redundancy_0;

void main() {
  group('memory_redundancy', () {
    // module memory_redundancy.0.dart (line 5)
    var m0 = memory_redundancy_0.MemoryRedundancy0Module();

    returns('test_store_to_load_0', () => m0.test_store_to_load(), 0x80);
    invoke('zero_everything_0', () => m0.zero_everything());
    returns('test_redundant_load_0', () => m0.test_redundant_load(), 0x80);
    invoke('zero_everything_1', () => m0.zero_everything());
    returns('test_dead_store_0', () => m0.test_dead_store(), $f32('23'));
    invoke('zero_everything_2', () => m0.zero_everything());
    returns('malloc_aliasing_0', () => m0.malloc_aliasing(), 0x2B);
  });
}
