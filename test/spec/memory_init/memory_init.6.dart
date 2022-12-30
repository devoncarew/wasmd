// Generated from test/spec/memory_init/memory_init.6.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class MemoryInit6Module implements Module {
  MemoryInit6Module() {
    dataSegments.init(memory);
  }

  @override
  final Memory memory = Memory(1);

  final DataSegments dataSegments = DataSegments();

  @override
  late final List<Table> tables = [];

  void test() {
    final frame = Frame(this);
    frame.data_drop(0);
    frame.data_drop(0);
  }
}

typedef FunctionType0 = void Function();

class DataSegments {
  Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 = '\x37';

  void init(Memory memory) {}
}
