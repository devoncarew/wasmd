// Generated from test/spec/address/address.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class Address0Module implements Module {
  Address0Module() {
    _data.init(memory);
  }

  @override
  final Memory memory = Memory(1);

  final DataSegments _data = DataSegments();

  @override
  late final List<Table> tables = [];

  void $16s_bad(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load16_s(1, 0xffffffff);
    frame.drop();
  }

  i32 $16s_good1(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load16_s(1, 0);
    return frame.pop();
  }

  i32 $16s_good2(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load16_s(0, 0);
    return frame.pop();
  }

  i32 $16s_good3(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load16_s(0, 1);
    return frame.pop();
  }

  i32 $16s_good4(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load16_s(1, 2);
    return frame.pop();
  }

  i32 $16s_good5(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load16_s(1, 25);
    return frame.pop();
  }

  void $16u_bad(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load16_u(1, 0xffffffff);
    frame.drop();
  }

  i32 $16u_good1(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load16_u(1, 0);
    return frame.pop();
  }

  i32 $16u_good2(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load16_u(0, 0);
    return frame.pop();
  }

  i32 $16u_good3(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load16_u(0, 1);
    return frame.pop();
  }

  i32 $16u_good4(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load16_u(1, 2);
    return frame.pop();
  }

  i32 $16u_good5(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load16_u(1, 25);
    return frame.pop();
  }

  void $32_bad(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load(2, 0xffffffff);
    frame.drop();
  }

  i32 $32_good1(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load(2, 0);
    return frame.pop();
  }

  i32 $32_good2(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load(0, 0);
    return frame.pop();
  }

  i32 $32_good3(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load(0, 1);
    return frame.pop();
  }

  i32 $32_good4(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load(1, 2);
    return frame.pop();
  }

  i32 $32_good5(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load(2, 25);
    return frame.pop();
  }

  void $8s_bad(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load8_s(0, 0xffffffff);
    frame.drop();
  }

  i32 $8s_good1(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load8_s(0, 0);
    return frame.pop();
  }

  i32 $8s_good2(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load8_s(0, 0);
    return frame.pop();
  }

  i32 $8s_good3(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load8_s(0, 1);
    return frame.pop();
  }

  i32 $8s_good4(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load8_s(0, 2);
    return frame.pop();
  }

  i32 $8s_good5(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load8_s(0, 25);
    return frame.pop();
  }

  void $8u_bad(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load8_u(0, 0xffffffff);
    frame.drop();
  }

  i32 $8u_good1(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load8_u(0, 0);
    return frame.pop();
  }

  i32 $8u_good2(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load8_u(0, 0);
    return frame.pop();
  }

  i32 $8u_good3(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load8_u(0, 1);
    return frame.pop();
  }

  i32 $8u_good4(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load8_u(0, 2);
    return frame.pop();
  }

  i32 $8u_good5(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load8_u(0, 25);
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(i32);
typedef FunctionType1 = void Function(i32);

class DataSegments {
  final Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 =
      '\x61\x62\x63\x64\x65\x66\x67\x68\x69\x6A\x6B\x6C\x6D\x6E\x6F\x70\x71\x72\x73\x74\x75\x76\x77\x78\x79\x7A';

  void init(Memory memory) {
    memory.copyFrom(data0, 0, 0, data0.length);
  }
}
