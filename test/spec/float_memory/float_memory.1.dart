// Generated from test/spec/float_memory/float_memory.1.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class Module {
  Module() {
    dataSegments.init(memory);
  }

  final Memory memory = Memory(
    1,
    1,
  );

  final DataSegments dataSegments = DataSegments();

  f64 f64_load() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.f64_load(3, 0);
    return frame.pop();
  }

  i64 i64_load() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i64_load(3, 0);
    return frame.pop();
  }

  void f64_store() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.f64_const(double.nan);
    frame.f64_store(3, 0);
  }

  void i64_store() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i64_const(0x7ff4000000000000);
    frame.i64_store(3, 0);
  }

  void reset() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i64_const(0);
    frame.i64_store(3, 0);
  }
}

typedef FunctionType0 = f64 Function();
typedef FunctionType1 = i64 Function();
typedef FunctionType2 = void Function();

class DataSegments {
  Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 = '\x00\x00\x00\x00\x00\x00\xF4\x7F';

  void init(Memory memory) {
    memory.copyTo(data0, 0);
  }
}
