// Generated from test/spec/bulk/bulk.5.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class Bulk5Module implements Module {
  Bulk5Module() {
    dataSegments.init(memory);
  }

  @override
  final Memory memory = Memory(1);

  final DataSegments dataSegments = DataSegments();

  @override
  late final List<Table> tables = [];

  void drop_passive() {
    final frame = Frame(this);
    frame.data_drop(0);
  }

  void init_passive(i32 len) {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(0);
    frame.push(len);
    {
      i32 count = frame.pop() as i32;
      i32 sourceOffset = frame.pop() as i32;
      i32 destOffset = frame.pop() as i32;
      memory.copyFrom(dataSegments.p, sourceOffset, destOffset, count);
    }
  }

  void drop_active() {
    final frame = Frame(this);
    frame.data_drop(1);
  }

  void init_active(i32 len) {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(0);
    frame.push(len);
    {
      i32 count = frame.pop() as i32;
      i32 sourceOffset = frame.pop() as i32;
      i32 destOffset = frame.pop() as i32;
      memory.copyFrom(dataSegments.a, sourceOffset, destOffset, count);
    }
  }
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = void Function(i32);

class DataSegments {
  Uint8List p = decodeDataLiteral(_hex0);

  Uint8List a = decodeDataLiteral(_hex1);

  static const String _hex0 = '\x78';

  static const String _hex1 = '\x78';

  void init(Memory memory) {
    memory.copyFrom(a, 0, 0, a.length);
  }
}
