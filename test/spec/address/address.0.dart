// Generated from test/spec/address/address.0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class Address0Module implements Module {
  Address0Module() {
    dataSegments.init(memory);
  }

  @override
  final Memory memory = Memory(1);

  final DataSegments dataSegments = DataSegments();

  @override
  late final List<Table> tables = [];

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

  void $8u_bad(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load8_u(0, 0xffffffff);
    frame.drop();
  }

  void $8s_bad(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load8_s(0, 0xffffffff);
    frame.drop();
  }

  void $16u_bad(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load16_u(1, 0xffffffff);
    frame.drop();
  }

  void $16s_bad(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load16_s(1, 0xffffffff);
    frame.drop();
  }

  void $32_bad(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load(2, 0xffffffff);
    frame.drop();
  }
}

typedef FunctionType0 = i32 Function(i32);
typedef FunctionType1 = void Function(i32);

class DataSegments {
  Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 =
      '\x61\x62\x63\x64\x65\x66\x67\x68\x69\x6A\x6B\x6C\x6D\x6E\x6F\x70\x71\x72'
      '\x73\x74\x75\x76\x77\x78\x79\x7A';

  void init(Memory memory) {
    memory.copyTo(data0, 0);
  }
}
