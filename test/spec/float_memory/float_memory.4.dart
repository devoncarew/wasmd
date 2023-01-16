// Generated from test/spec/float_memory/float_memory.4.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatMemory4Module implements Module {
  FloatMemory4Module() {
    _data.init(memory);
    vm = VM(this);
  }

  late final VM vm;

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
    var t0 = vm.f32_load(2, 0, 0);
    return t0;
  }

  i32 _func1() {
    var t0 = vm.i32_load(2, 0, 0);
    return t0;
  }

  void _func2() {
    var t0 = vm.f32_store(2, 0, 0, double.nan);
  }

  void _func3() {
    var t0 = vm.i32_store(2, 0, 0, 0x7fd00001);
  }

  void _func4() {
    var t0 = vm.i32_store(2, 0, 0, 0);
  }
}

typedef FunctionType0 = f32 Function();
typedef FunctionType1 = i32 Function();
typedef FunctionType2 = void Function();

class DataSegments {
  final Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 = '\x01\x00\xD0\x7F';

  void init(Memory memory) {
    memory.copyFrom(data0, 0, 0, data0.length);
  }
}
