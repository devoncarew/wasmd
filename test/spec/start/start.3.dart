// Generated from test/spec/start/start.3.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class Start3Module implements Module {
  Start3Module() {
    _data.init(memory);
    _func2();
  }

  @override
  final Memory memory = Memory(
    1,
    1,
  );

  final DataSegments _data = DataSegments();

  @override
  late final List<Table> tables = [];

  i32 get() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_load8_u(0, 0);
    return frame.pop();
    return frame.pop();
  }

  void inc() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(0);
    frame.i32_load8_u(0, 0);
    frame.i32_const(1);
    frame.i32_add();
    frame.i32_store8(0, 0);
  }

  void _func2() {
    final frame = Frame(this);
    inc();
    inc();
    inc();
  }
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = i32 Function();

class DataSegments {
  final Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 = '\x41';

  void init(Memory memory) {
    memory.copyFrom(data0, 0, 0, data0.length);
  }
}
