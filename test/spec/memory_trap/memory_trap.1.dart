// Generated from test/spec/memory_trap/memory_trap.1.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class MemoryTrap1Module implements Module {
  MemoryTrap1Module() {
    _data.init(memory);
  }

  @override
  final Memory memory = Memory(1);

  final DataSegments _data = DataSegments();

  @override
  late final List<Table> tables = [];

  f32 f32_load(i32 a) {
    final frame = Frame(this);
    frame.push(a);
    frame.f32_load(2, 0);
    return frame.pop();
  }

  void f32_store(i32 a, f32 v) {
    final frame = Frame(this);
    frame.push(a);
    frame.push(v);
    frame.f32_store(2, 0);
  }

  f64 f64_load(i32 a) {
    final frame = Frame(this);
    frame.push(a);
    frame.f64_load(3, 0);
    return frame.pop();
  }

  void f64_store(i32 a, f64 v) {
    final frame = Frame(this);
    frame.push(a);
    frame.push(v);
    frame.f64_store(3, 0);
  }

  i32 i32_load(i32 a) {
    final frame = Frame(this);
    frame.push(a);
    frame.i32_load(2, 0);
    return frame.pop();
  }

  i32 i32_load16_s(i32 a) {
    final frame = Frame(this);
    frame.push(a);
    frame.i32_load16_s(1, 0);
    return frame.pop();
  }

  i32 i32_load16_u(i32 a) {
    final frame = Frame(this);
    frame.push(a);
    frame.i32_load16_u(1, 0);
    return frame.pop();
  }

  i32 i32_load8_s(i32 a) {
    final frame = Frame(this);
    frame.push(a);
    frame.i32_load8_s(0, 0);
    return frame.pop();
  }

  i32 i32_load8_u(i32 a) {
    final frame = Frame(this);
    frame.push(a);
    frame.i32_load8_u(0, 0);
    return frame.pop();
  }

  void i32_store(i32 a, i32 v) {
    final frame = Frame(this);
    frame.push(a);
    frame.push(v);
    frame.i32_store(2, 0);
  }

  void i32_store16(i32 a, i32 v) {
    final frame = Frame(this);
    frame.push(a);
    frame.push(v);
    frame.i32_store16(1, 0);
  }

  void i32_store8(i32 a, i32 v) {
    final frame = Frame(this);
    frame.push(a);
    frame.push(v);
    frame.i32_store8(0, 0);
  }

  i64 i64_load(i32 a) {
    final frame = Frame(this);
    frame.push(a);
    frame.i64_load(3, 0);
    return frame.pop();
  }

  i64 i64_load16_s(i32 a) {
    final frame = Frame(this);
    frame.push(a);
    frame.i64_load16_s(1, 0);
    return frame.pop();
  }

  i64 i64_load16_u(i32 a) {
    final frame = Frame(this);
    frame.push(a);
    frame.i64_load16_u(1, 0);
    return frame.pop();
  }

  i64 i64_load32_s(i32 a) {
    final frame = Frame(this);
    frame.push(a);
    frame.i64_load32_s(2, 0);
    return frame.pop();
  }

  i64 i64_load32_u(i32 a) {
    final frame = Frame(this);
    frame.push(a);
    frame.i64_load32_u(2, 0);
    return frame.pop();
  }

  i64 i64_load8_s(i32 a) {
    final frame = Frame(this);
    frame.push(a);
    frame.i64_load8_s(0, 0);
    return frame.pop();
  }

  i64 i64_load8_u(i32 a) {
    final frame = Frame(this);
    frame.push(a);
    frame.i64_load8_u(0, 0);
    return frame.pop();
  }

  void i64_store(i32 a, i64 v) {
    final frame = Frame(this);
    frame.push(a);
    frame.push(v);
    frame.i64_store(3, 0);
  }

  void i64_store16(i32 a, i64 v) {
    final frame = Frame(this);
    frame.push(a);
    frame.push(v);
    frame.i64_store16(1, 0);
  }

  void i64_store32(i32 a, i64 v) {
    final frame = Frame(this);
    frame.push(a);
    frame.push(v);
    frame.i64_store32(2, 0);
  }

  void i64_store8(i32 a, i64 v) {
    final frame = Frame(this);
    frame.push(a);
    frame.push(v);
    frame.i64_store8(0, 0);
  }
}

typedef FunctionType0 = i32 Function(i32);
typedef FunctionType1 = i64 Function(i32);
typedef FunctionType2 = f32 Function(i32);
typedef FunctionType3 = f64 Function(i32);
typedef FunctionType4 = void Function(i32, i32);
typedef FunctionType5 = void Function(i32, i64);
typedef FunctionType6 = void Function(i32, f32);
typedef FunctionType7 = void Function(i32, f64);

class DataSegments {
  final Uint8List data0 = decodeDataLiteral(_hex0);

  final Uint8List data1 = decodeDataLiteral(_hex1);

  static const String _hex0 = '\x61\x62\x63\x64\x65\x66\x67\x68';

  static const String _hex1 = '\x61\x62\x63\x64\x65\x66\x67\x68';

  void init(Memory memory) {
    memory.copyFrom(data0, 0, 0, data0.length);
    memory.copyFrom(data1, 0, 65528, data1.length);
  }
}
