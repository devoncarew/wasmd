// Generated from test/spec/float_memory/float_memory.4.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class FloatMemory4Module implements Module {
  FloatMemory4Module() {
    dataSegments.init(memory);
  }

  @override
  final Memory memory = Memory(
    1,
    1,
  );

  final DataSegments dataSegments = DataSegments();

  @override
  late final List<Table> tables = [];

  f32 f32_load() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.f32_load(2, 0);
    return frame.pop();
  }

  i32 i32_load() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    return frame.pop();
  }

  void f32_store() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.f32_const(double.nan);
    frame.f32_store(2, 0);
  }

  void i32_store() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(0x7fd00001);
    frame.i32_store(2, 0);
  }

  void reset() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(0);
    frame.i32_store(2, 0);
  }
}

typedef FunctionType0 = f32 Function();
typedef FunctionType1 = i32 Function();
typedef FunctionType2 = void Function();

class DataSegments {
  Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 = '\x01\x00\xD0\x7F';

  void init(Memory memory) {
    memory.copyTo(data0, 0);
  }
}
