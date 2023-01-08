// Generated from test/spec/float_memory/float_memory.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class FloatMemory0Module implements Module {
  FloatMemory0Module() {
    _data.init(memory);
  }

  @override
  final Memory memory = Memory(
    1,
    1,
  );

  final DataSegments _data = DataSegments();

  @override
  late final List<Table> tables = [];

  f32 f32_load() => _func0();
  i32 i32_load() => _func1();
  void f32_store() => _func2();
  void i32_store() => _func3();
  void reset() => _func4();

  f32 _func0() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.f32_load(2, 0);
    return frame.pop();
  }

  i32 _func1() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    return frame.pop();
  }

  void _func2() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.f32_const(double.nan);
    frame.f32_store(2, 0);
  }

  void _func3() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(0x7fa00000);
    frame.i32_store(2, 0);
  }

  void _func4() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(0);
    frame.i32_store(2, 0);
  }
}

typedef FunctionType0 = f32 Function();
typedef FunctionType1 = i32 Function();
typedef FunctionType2 = void Function();

class DataSegments {
  final Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 = '\x00\x00\xA0\x7F';

  void init(Memory memory) {
    memory.copyFrom(data0, 0, 0, data0.length);
  }
}
