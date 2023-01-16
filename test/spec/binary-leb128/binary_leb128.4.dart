// Generated from test/spec/binary-leb128/binary_leb128.4.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class BinaryLeb1284Module extends Module {
  BinaryLeb1284Module() {
    dataSegments.init(memory);
  }

  @override
  final Memory memory = Memory(0);

  @override
  final DataSegments dataSegments = DataSegments();

  @override
  late final List<Table> tables = [];
}

class DataSegments extends AbstractDataSegments {
  final Uint8List data0 = decodeDataLiteral(_hex0);

  @override
  late final List<Uint8List> data = [data0];

  static const String _hex0 = '';

  void init(Memory memory) {
    memory.copyFrom(data0, 0, 0, data0.length);
  }
}
