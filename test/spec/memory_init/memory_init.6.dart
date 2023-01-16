// Generated from test/spec/memory_init/memory_init.6.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class MemoryInit6Module extends Module {
  MemoryInit6Module() {
    dataSegments.init(memory);
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(1);

  @override
  final DataSegments dataSegments = DataSegments();

  @override
  late final List<Table> tables = [];

  void test() => _func0();

  void _func0() {
    vm.data_drop(0);
    vm.data_drop(0);
  }
}

typedef FunctionType0 = void Function();

class DataSegments extends AbstractDataSegments {
  final Uint8List data0 = decodeDataLiteral(_hex0);

  @override
  late final List<Uint8List> data = [data0];

  static const String _hex0 = '\x37';

  void init(Memory memory) {}
}
