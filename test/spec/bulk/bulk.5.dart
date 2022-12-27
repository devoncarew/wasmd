// Generated from test/spec/bulk/bulk.5.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class Module {
  Module() {
    dataSegments.init(memory);
  }

  final Memory memory = Memory(1);

  final DataSegments dataSegments = DataSegments();

  void drop_passive() {
    final frame = Frame(memory);
    /* data.drop index 0 */
  }

  void init_passive(i32 len) {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0);
    frame.push(len);
    throw 'unreachable (0xFC 0x08)';
  }

  void drop_active() {
    final frame = Frame(memory);
    /* data.drop index 1 */
  }

  void init_active(i32 len) {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0);
    frame.push(len);
    throw 'unreachable (0xFC 0x08)';
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
    memory.copyTo(a, 0);
  }
}
