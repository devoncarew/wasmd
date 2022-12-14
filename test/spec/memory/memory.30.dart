// Generated from test/spec/memory/memory.30.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class Memory30Module implements Module {
  Memory30Module() {
    _data.init(memory);
  }

  @override
  final Memory memory = Memory(1);

  final DataSegments _data = DataSegments();

  @override
  late final List<Table> tables = [];

  i32 data() => _func00();
  f64 cast() => _func01();
  i32 i32_load8_s(i32 arg0) => _func02(arg0);
  i32 i32_load8_u(i32 arg0) => _func03(arg0);
  i32 i32_load16_s(i32 arg0) => _func04(arg0);
  i32 i32_load16_u(i32 arg0) => _func05(arg0);
  i64 i64_load8_s(i64 arg0) => _func06(arg0);
  i64 i64_load8_u(i64 arg0) => _func07(arg0);
  i64 i64_load16_s(i64 arg0) => _func08(arg0);
  i64 i64_load16_u(i64 arg0) => _func09(arg0);
  i64 i64_load32_s(i64 arg0) => _func10(arg0);
  i64 i64_load32_u(i64 arg0) => _func11(arg0);

  i32 _func00() {
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

  f64 _func01() {
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

  i32 _func02(i32 i) {
    final frame = Frame(this);
    frame.i32_const(8);
    frame.push(i);
    frame.i32_store8(0, 0);
    frame.i32_const(8);
    frame.i32_load8_s(0, 0);
    return frame.pop();
  }

  i32 _func03(i32 i) {
    final frame = Frame(this);
    frame.i32_const(8);
    frame.push(i);
    frame.i32_store8(0, 0);
    frame.i32_const(8);
    frame.i32_load8_u(0, 0);
    return frame.pop();
  }

  i32 _func04(i32 i) {
    final frame = Frame(this);
    frame.i32_const(8);
    frame.push(i);
    frame.i32_store16(1, 0);
    frame.i32_const(8);
    frame.i32_load16_s(1, 0);
    return frame.pop();
  }

  i32 _func05(i32 i) {
    final frame = Frame(this);
    frame.i32_const(8);
    frame.push(i);
    frame.i32_store16(1, 0);
    frame.i32_const(8);
    frame.i32_load16_u(1, 0);
    return frame.pop();
  }

  i64 _func06(i64 i) {
    final frame = Frame(this);
    frame.i32_const(8);
    frame.push(i);
    frame.i64_store8(0, 0);
    frame.i32_const(8);
    frame.i64_load8_s(0, 0);
    return frame.pop();
  }

  i64 _func07(i64 i) {
    final frame = Frame(this);
    frame.i32_const(8);
    frame.push(i);
    frame.i64_store8(0, 0);
    frame.i32_const(8);
    frame.i64_load8_u(0, 0);
    return frame.pop();
  }

  i64 _func08(i64 i) {
    final frame = Frame(this);
    frame.i32_const(8);
    frame.push(i);
    frame.i64_store16(1, 0);
    frame.i32_const(8);
    frame.i64_load16_s(1, 0);
    return frame.pop();
  }

  i64 _func09(i64 i) {
    final frame = Frame(this);
    frame.i32_const(8);
    frame.push(i);
    frame.i64_store16(1, 0);
    frame.i32_const(8);
    frame.i64_load16_u(1, 0);
    return frame.pop();
  }

  i64 _func10(i64 i) {
    final frame = Frame(this);
    frame.i32_const(8);
    frame.push(i);
    frame.i64_store32(2, 0);
    frame.i32_const(8);
    frame.i64_load32_s(2, 0);
    return frame.pop();
  }

  i64 _func11(i64 i) {
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
  final Uint8List data0 = decodeDataLiteral(_hex0);

  final Uint8List data1 = decodeDataLiteral(_hex1);

  static const String _hex0 = '\x41\x42\x43\xA7\x44';

  static const String _hex1 = '\x57\x41\x53\x4D';

  void init(Memory memory) {
    memory.copyFrom(data0, 0, 0, data0.length);
    memory.copyFrom(data1, 0, 20, data1.length);
  }
}
