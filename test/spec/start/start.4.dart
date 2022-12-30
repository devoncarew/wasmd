// Generated from test/spec/start/start.4.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class Start4Module implements Module {
  Start4Module() {
    dataSegments.init(memory);
    main();
  }

  @override
  final Memory memory = Memory(
    1,
    1,
  );

  final DataSegments dataSegments = DataSegments();

  @override
  late final List<Table> tables = [];

  void inc() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(0);
    frame.i32_load8_u(0, 0);
    frame.i32_const(1);
    frame.i32_add();
    frame.i32_store8(0, 0);
  }

  i32 get() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_load8_u(0, 0);
    return frame.pop();
    return frame.pop();
  }

  void main() {
    final frame = Frame(this);
    inc();
    inc();
    inc();
  }
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = i32 Function();

class DataSegments {
  Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 = '\x41';

  void init(Memory memory) {
    memory.copyFrom(data0, 0, 0, data0.length);
  }
}
