// Generated from test/spec/address/address.4.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class Address4Module implements Module {
  Address4Module() {
    data.init(memory);
  }

  @override
  final Memory memory = Memory(1);

  final DataSegments data = DataSegments();

  @override
  late final List<Table> tables = [];

  void $64_bad(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.f64_load(3, 0xffffffff);
    frame.drop();
  }

  f64 $64_good1(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.f64_load(3, 0);
    return frame.pop();
  }

  f64 $64_good2(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.f64_load(0, 0);
    return frame.pop();
  }

  f64 $64_good3(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.f64_load(0, 1);
    return frame.pop();
  }

  f64 $64_good4(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.f64_load(1, 2);
    return frame.pop();
  }

  f64 $64_good5(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.f64_load(3, 18);
    return frame.pop();
  }
}

typedef FunctionType0 = f64 Function(i32);
typedef FunctionType1 = void Function(i32);

class DataSegments {
  final Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 =
      '\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xF4\x7F\x01\x00\x00\x00\x00\x00\xFC\x7F';

  void init(Memory memory) {
    memory.copyFrom(data0, 0, 0, data0.length);
  }
}
