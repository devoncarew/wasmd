// Generated from test/spec/memory_init/memory_init.8.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class MemoryInit8Module implements Module {
  MemoryInit8Module() {
    data.init(memory);
  }

  @override
  final Memory memory = Memory(1);

  final DataSegments data = DataSegments();

  @override
  late final List<Table> tables = [];

  void test() {
    final frame = Frame(this);
    frame.i32_const(0x4d2);
    frame.i32_const(1);
    frame.i32_const(1);
    {
      i32 count = frame.pop() as i32;
      i32 sourceOffset = frame.pop() as i32;
      i32 destOffset = frame.pop() as i32;
      memory.copyFrom(dataSegments.data0, sourceOffset, destOffset, count);
    }
  }
}

typedef FunctionType0 = void Function();

class DataSegments {
  final Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 = '\x37';

  void init(Memory memory) {
    memory.copyFrom(data0, 0, 0, data0.length);
  }
}
