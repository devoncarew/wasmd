// Generated from test/spec/bulk/bulk.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class Bulk0Module implements Module {
  Bulk0Module() {
    data.init(memory);
  }

  @override
  final Memory memory = Memory(1);

  final DataSegments data = DataSegments();

  @override
  late final List<Table> tables = [];
}

class DataSegments {
  final Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 = '\x66\x6F\x6F';

  void init(Memory memory) {}
}
