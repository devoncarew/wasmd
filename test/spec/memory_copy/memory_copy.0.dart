// Generated from test/spec/memory_copy/memory_copy.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class MemoryCopy0Module implements Module {
  MemoryCopy0Module() {
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

  void test() => _func0();
  i32 load8_u(i32 arg0) => _func1(arg0);

  void _func0() {
    final frame = Frame(this);
    /* nop */
  }

  i32 _func1(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.i32_load8_u(0, 0);
    return frame.pop();
  }
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = i32 Function(i32);

class DataSegments {
  final Uint8List data0 = decodeDataLiteral(_hex0);

  final Uint8List data1 = decodeDataLiteral(_hex1);

  static const String _hex0 = '\x03\x01\x04\x01';

  static const String _hex1 = '\x07\x05\x02\x03\x06';

  void init(Memory memory) {
    memory.copyFrom(data0, 0, 2, data0.length);
    memory.copyFrom(data1, 0, 12, data1.length);
  }
}
