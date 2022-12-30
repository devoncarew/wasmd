// Generated from test/spec/memory_init/memory_init.3.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class MemoryInit3Module implements Module {
  MemoryInit3Module() {
    dataSegments.init(memory);
  }

  @override
  final Memory memory = Memory(
    1,
    1,
  );

  final DataSegments dataSegments = DataSegments();

  @override
  late final List<Table> tables = [];

  void test() {
    final frame = Frame(this);
    frame.i32_const(7);
    frame.i32_const(0);
    frame.i32_const(4);
    {
      i32 count = frame.pop() as i32;
      i32 sourceOffset = frame.pop() as i32;
      i32 destOffset = frame.pop() as i32;
      memory.copyFrom(dataSegments.data1, sourceOffset, destOffset, count);
    }
    frame.data_drop(1);
    frame.i32_const(15);
    frame.i32_const(1);
    frame.i32_const(3);
    {
      i32 count = frame.pop() as i32;
      i32 sourceOffset = frame.pop() as i32;
      i32 destOffset = frame.pop() as i32;
      memory.copyFrom(dataSegments.data3, sourceOffset, destOffset, count);
    }
    frame.data_drop(3);
    frame.i32_const(20);
    frame.i32_const(15);
    frame.i32_const(5);
    frame.memory_copy(0, 0);
    frame.i32_const(21);
    frame.i32_const(29);
    frame.i32_const(1);
    frame.memory_copy(0, 0);
    frame.i32_const(24);
    frame.i32_const(10);
    frame.i32_const(1);
    frame.memory_copy(0, 0);
    frame.i32_const(13);
    frame.i32_const(11);
    frame.i32_const(4);
    frame.memory_copy(0, 0);
    frame.i32_const(19);
    frame.i32_const(20);
    frame.i32_const(5);
    frame.memory_copy(0, 0);
  }

  i32 load8_u(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.i32_load8_u(0, 0);
    return frame.pop();
  }
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = i32 Function(i32);

class DataSegments {
  Uint8List data0 = decodeDataLiteral(_hex0);

  Uint8List data1 = decodeDataLiteral(_hex1);

  Uint8List data2 = decodeDataLiteral(_hex2);

  Uint8List data3 = decodeDataLiteral(_hex3);

  static const String _hex0 = '\x03\x01\x04\x01';

  static const String _hex1 = '\x02\x07\x01\x08';

  static const String _hex2 = '\x07\x05\x02\x03\x06';

  static const String _hex3 = '\x05\x09\x02\x07\x06';

  void init(Memory memory) {
    memory.copyFrom(data0, 0, 2, data0.length);
    memory.copyFrom(data2, 0, 12, data2.length);
  }
}
