// Generated from test/spec/memory/memory.30.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class Memory30Module implements Module {
  Memory30Module() {
    dataSegments.init(memory);
  }

  @override
  final Memory memory = Memory(1);

  final DataSegments dataSegments = DataSegments();

  @override
  late final List<Table> tables = [];

  i32 data() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_load8_u(0, 0);
    frame.i32_const(65);
    frame.i32_eq();
    frame.i32_const(3);
    frame.i32_load8_u(0, 0);
    frame.i32_const(167);
    frame.i32_eq();
    frame.i32_and();
    frame.i32_const(6);
    frame.i32_load8_u(0, 0);
    frame.i32_const(0);
    frame.i32_eq();
    frame.i32_const(19);
    frame.i32_load8_u(0, 0);
    frame.i32_const(0);
    frame.i32_eq();
    frame.i32_and();
    frame.i32_and();
    frame.i32_const(20);
    frame.i32_load8_u(0, 0);
    frame.i32_const(87);
    frame.i32_eq();
    frame.i32_const(23);
    frame.i32_load8_u(0, 0);
    frame.i32_const(77);
    frame.i32_eq();
    frame.i32_and();
    frame.i32_const(24);
    frame.i32_load8_u(0, 0);
    frame.i32_const(0);
    frame.i32_eq();
    frame.i32_const(0x3ff);
    frame.i32_load8_u(0, 0);
    frame.i32_const(0);
    frame.i32_eq();
    frame.i32_and();
    frame.i32_and();
    frame.i32_and();
    return frame.pop();
  }

  f64 cast() {
    final frame = Frame(this);
    frame.i32_const(8);
    frame.i64_const(-0x3039);
    frame.i64_store(3, 0);
    frame.i32_const(8);
    frame.f64_load(3, 0);
    frame.i64_const(-0x3039);
    frame.f64_reinterpret_i64();
    frame.f64_eq();
    if_label_0:
    if (frame.pop() != 0) {
      frame.f64_const(0.0);
      return frame.pop();
    }
    frame.i32_const(9);
    frame.i64_const(0);
    frame.i64_store(0, 0);
    frame.i32_const(15);
    frame.i32_const(0x4045);
    frame.i32_store16(0, 0);
    frame.i32_const(9);
    frame.f64_load(0, 0);
    return frame.pop();
  }

  i32 i32_load8_s(i32 i) {
    final frame = Frame(this);
    frame.i32_const(8);
    frame.push(i);
    frame.i32_store8(0, 0);
    frame.i32_const(8);
    frame.i32_load8_s(0, 0);
    return frame.pop();
  }

  i32 i32_load8_u(i32 i) {
    final frame = Frame(this);
    frame.i32_const(8);
    frame.push(i);
    frame.i32_store8(0, 0);
    frame.i32_const(8);
    frame.i32_load8_u(0, 0);
    return frame.pop();
  }

  i32 i32_load16_s(i32 i) {
    final frame = Frame(this);
    frame.i32_const(8);
    frame.push(i);
    frame.i32_store16(1, 0);
    frame.i32_const(8);
    frame.i32_load16_s(1, 0);
    return frame.pop();
  }

  i32 i32_load16_u(i32 i) {
    final frame = Frame(this);
    frame.i32_const(8);
    frame.push(i);
    frame.i32_store16(1, 0);
    frame.i32_const(8);
    frame.i32_load16_u(1, 0);
    return frame.pop();
  }

  i64 i64_load8_s(i64 i) {
    final frame = Frame(this);
    frame.i32_const(8);
    frame.push(i);
    frame.i64_store8(0, 0);
    frame.i32_const(8);
    frame.i64_load8_s(0, 0);
    return frame.pop();
  }

  i64 i64_load8_u(i64 i) {
    final frame = Frame(this);
    frame.i32_const(8);
    frame.push(i);
    frame.i64_store8(0, 0);
    frame.i32_const(8);
    frame.i64_load8_u(0, 0);
    return frame.pop();
  }

  i64 i64_load16_s(i64 i) {
    final frame = Frame(this);
    frame.i32_const(8);
    frame.push(i);
    frame.i64_store16(1, 0);
    frame.i32_const(8);
    frame.i64_load16_s(1, 0);
    return frame.pop();
  }

  i64 i64_load16_u(i64 i) {
    final frame = Frame(this);
    frame.i32_const(8);
    frame.push(i);
    frame.i64_store16(1, 0);
    frame.i32_const(8);
    frame.i64_load16_u(1, 0);
    return frame.pop();
  }

  i64 i64_load32_s(i64 i) {
    final frame = Frame(this);
    frame.i32_const(8);
    frame.push(i);
    frame.i64_store32(2, 0);
    frame.i32_const(8);
    frame.i64_load32_s(2, 0);
    return frame.pop();
  }

  i64 i64_load32_u(i64 i) {
    final frame = Frame(this);
    frame.i32_const(8);
    frame.push(i);
    frame.i64_store32(2, 0);
    frame.i32_const(8);
    frame.i64_load32_u(2, 0);
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = f64 Function();
typedef FunctionType2 = i32 Function(i32);
typedef FunctionType3 = i64 Function(i64);

class DataSegments {
  Uint8List data0 = decodeDataLiteral(_hex0);

  Uint8List data1 = decodeDataLiteral(_hex1);

  static const String _hex0 = '\x41\x42\x43\xA7\x44';

  static const String _hex1 = '\x57\x41\x53\x4D';

  void init(Memory memory) {
    memory.copyTo(data0, 0);
    memory.copyTo(data1, 20);
  }
}
