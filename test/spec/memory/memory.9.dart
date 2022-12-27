// Generated from test/spec/memory/memory.9.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class Memory9Module implements Module {
  Memory9Module() {
    dataSegments.init(memory);
  }

  @override
  final Memory memory = Memory(
    0,
    0,
  );

  final DataSegments dataSegments = DataSegments();

  @override
  late final List<Table> tables = [];

  i32 memsize() {
    final frame = Frame(this);
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
