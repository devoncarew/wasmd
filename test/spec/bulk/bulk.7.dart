// Generated from test/spec/bulk/bulk.7.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class Bulk7Module implements Module {
  Bulk7Module() {
    _data.init(memory);
  }

  @override
  final Memory memory = Memory(0);

  final DataSegments _data = DataSegments();

  @override
  late final List<Table> tables = [];

  void _func0() {
    final frame = Frame(this);
    frame.data_drop(0);
  }
}

typedef FunctionType0 = void Function();

class DataSegments {
  final Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 = '\x67\x6F\x6F\x64\x62\x79\x65';

  void init(Memory memory) {}
}
