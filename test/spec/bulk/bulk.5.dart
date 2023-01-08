// Generated from test/spec/bulk/bulk.5.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class Bulk5Module implements Module {
  Bulk5Module() {
    _data.init(memory);
  }

  @override
  final Memory memory = Memory(1);

  final DataSegments _data = DataSegments();

  @override
  late final List<Table> tables = [];

  void drop_passive() => _func0();
  void init_passive(i32 arg0) => _func1(arg0);
  void drop_active() => _func2();
  void init_active(i32 arg0) => _func3(arg0);

  void _func0() {
    final frame = Frame(this);
    frame.data_drop(0);
  }

  void _func1(i32 len) {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(0);
    frame.push(len);
    {
      i32 count = frame.pop() as i32;
      i32 srcOffset = frame.pop() as i32;
      i32 dstOffset = frame.pop() as i32;
      memory.copyFrom(_data.p, srcOffset, dstOffset, count);
    }
  }

  void _func2() {
    final frame = Frame(this);
    frame.data_drop(1);
  }

  void _func3(i32 len) {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(0);
    frame.push(len);
    {
      i32 count = frame.pop() as i32;
      i32 srcOffset = frame.pop() as i32;
      i32 dstOffset = frame.pop() as i32;
      memory.copyFrom(_data.a, srcOffset, dstOffset, count);
    }
  }
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = void Function(i32);

class DataSegments {
  final Uint8List p = decodeDataLiteral(_hex0);

  final Uint8List a = decodeDataLiteral(_hex1);

  static const String _hex0 = '\x78';

  static const String _hex1 = '\x78';

  void init(Memory memory) {
    memory.copyFrom(a, 0, 0, a.length);
  }
}
