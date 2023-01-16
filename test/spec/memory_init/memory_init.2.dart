// Generated from test/spec/memory_init/memory_init.2.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class MemoryInit2Module extends Module {
  MemoryInit2Module() {
    dataSegments.init(memory);
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(
    1,
    1,
  );

  @override
  final DataSegments dataSegments = DataSegments();

  @override
  late final List<Table> tables = [];

  void test() => _func0();
  i32 load8_u(i32 arg0) => _func1(arg0);

  void _func0() {
    vm.memory_init(3, 0, 15, 1, 3);
  }

  i32 _func1(i32 arg0) {
    var t0 = vm.i32_load8_u(0, 0, arg0);
    return t0;
  }
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = i32 Function(i32);

class DataSegments extends AbstractDataSegments {
  final Uint8List data0 = decodeDataLiteral(_hex0);

  final Uint8List data1 = decodeDataLiteral(_hex1);

  final Uint8List data2 = decodeDataLiteral(_hex2);

  final Uint8List data3 = decodeDataLiteral(_hex3);

  @override
  late final List<Uint8List> data = [data0, data1, data2, data3];

  static const String _hex0 = '\x03\x01\x04\x01';

  static const String _hex1 = '\x02\x07\x01\x08';

  static const String _hex2 = '\x07\x05\x02\x03\x06';

  static const String _hex3 = '\x05\x09\x02\x07\x06';

  void init(Memory memory) {
    memory.copyFrom(data0, 0, 2, data0.length);
    memory.copyFrom(data2, 0, 12, data2.length);
  }
}
