// Generated from test/spec/memory_copy/memory_copy.14.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class MemoryCopy14Module implements Module {
  MemoryCopy14Module() {
    _data.init(memory);
  }

  @override
  final Memory memory = Memory(
    1,
    1,
  );

  final DataSegments _data = DataSegments();

  @override
  late final List<Table> tables = [];

  i32 load8_u(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.i32_load8_u(0, 0);
    return frame.pop();
  }

  void run(i32 targetOffs, i32 srcOffs, i32 len) {
    final frame = Frame(this);
    frame.push(targetOffs);
    frame.push(srcOffs);
    frame.push(len);
    frame.memory_copy(0, 0);
  }
}

typedef FunctionType0 = void Function(i32, i32, i32);
typedef FunctionType1 = i32 Function(i32);

class DataSegments {
  final Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 =
      '\x00\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0A\x0B\x0C\x0D\x0E\x0F\x10\x11\x12\x13';

  void init(Memory memory) {
    memory.copyFrom(data0, 0, 65506, data0.length);
  }
}
