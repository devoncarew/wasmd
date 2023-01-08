// Generated from test/spec/bulk/bulk.3.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class Bulk3Module implements Module {
  Bulk3Module() {
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

  void copy(i32 arg0, i32 arg1, i32 arg2) => _func0(arg0, arg1, arg2);
  i32 load8_u(i32 arg0) => _func1(arg0);

  void _func0(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.push(arg2);
    frame.memory_copy(0, 0);
  }

  i32 _func1(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.i32_load8_u(0, 0);
    return frame.pop();
  }
}

typedef FunctionType0 = void Function(i32, i32, i32);
typedef FunctionType1 = i32 Function(i32);

class DataSegments {
  final Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 = '\xAA\xBB\xCC\xDD';

  void init(Memory memory) {
    memory.copyFrom(data0, 0, 0, data0.length);
  }
}
