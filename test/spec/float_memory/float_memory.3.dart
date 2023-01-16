// Generated from test/spec/float_memory/float_memory.3.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatMemory3Module implements Module {
  FloatMemory3Module() {
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

  f64 f64_load() => _func0();
  i64 i64_load() => _func1();
  void f64_store() => _func2();
  void i64_store() => _func3();
  void reset() => _func4();

  f64 _func0() {
    var t0 = vm.f64_load(3, 0, 1);
    return t0;
  }

  i64 _func1() {
    var t0 = vm.i64_load(3, 0, 1);
    return t0;
  }

  void _func2() {
    var t0 = vm.f64_store(3, 0, 1, double.nan);
  }

  void _func3() {
    var t0 = vm.i64_store(3, 0, 1, 0x7ff4000000000000);
  }

  void _func4() {
    var t0 = vm.i64_store(3, 0, 1, 0);
  }
}

typedef FunctionType0 = f64 Function();
typedef FunctionType1 = i64 Function();
typedef FunctionType2 = void Function();

class DataSegments {
  final Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 = '\x00\x00\x00\x00\x00\x00\x00\xF4\x7F';

  void init(Memory memory) {
    memory.copyFrom(data0, 0, 0, data0.length);
  }
}
