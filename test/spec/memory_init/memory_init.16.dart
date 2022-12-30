// Generated from test/spec/memory_init/memory_init.16.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class MemoryInit16Module implements Module {
  MemoryInit16Module() {
    dataSegments.init(memory);
  }

  @override
  final Memory memory = Memory(1);

  final DataSegments dataSegments = DataSegments();

  @override
  late final List<Table> tables = [];

  void test() {
    final frame = Frame(this);
    frame.i32_const(0x4d2);
    frame.i32_const(1);
    frame.i32_const(0);
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
  Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 = '\x37';

  void init(Memory memory) {}
}
