// Generated from test/spec/address/address.3.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class Address3Module implements Module {
  Address3Module() {
    dataSegments.init(memory);
  }

  @override
  final Memory memory = Memory(1);

  final DataSegments dataSegments = DataSegments();

  @override
  late final List<Table> tables = [];

  f32 $32_good1(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.f32_load(2, 0);
    return frame.pop();
  }

  f32 $32_good2(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.f32_load(0, 0);
    return frame.pop();
  }

  f32 $32_good3(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.f32_load(0, 1);
    return frame.pop();
  }

  f32 $32_good4(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.f32_load(1, 2);
    return frame.pop();
  }

  f32 $32_good5(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.f32_load(2, 8);
    return frame.pop();
  }

  void $32_bad(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.f32_load(2, 0xffffffff);
    frame.drop();
  }
}

typedef FunctionType0 = f32 Function(i32);
typedef FunctionType1 = void Function(i32);

class DataSegments {
  Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 =
      '\x00\x00\x00\x00\x00\x00\xA0\x7F\x01\x00\xD0\x7F';

  void init(Memory memory) {
    memory.copyTo(data0, 0);
  }
}
