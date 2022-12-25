// Generated from test/spec/memory/memory.8.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class Module {
  Module() {
    dataSegments.init(memory);
  }

  final Memory memory = Memory(
    0,
    0,
  );

  final DataSegments dataSegments = DataSegments();

  i32 memsize() {
    final frame = Frame(memory);
    frame.memory_size(0);
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function();

class DataSegments {
  Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 = '';

  void init(Memory memory) {
    memory.copyTo(data0, 0);
  }
}
