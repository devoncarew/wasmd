// Generated from test/spec/memory/memory.9.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class Memory9Module implements Module {
  Memory9Module() {
    _data.init(memory);
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(
    0,
    0,
  );

  final DataSegments _data = DataSegments();

  @override
  late final List<Table> tables = [];

  i32 memsize() => _func0();

  i32 _func0() {
    var t0 = vm.memory_size(0);
    return t0;
  }
}

typedef FunctionType0 = i32 Function();

class DataSegments {
  final Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 = '';

  void init(Memory memory) {
    memory.copyFrom(data0, 0, 0, data0.length);
  }
}
