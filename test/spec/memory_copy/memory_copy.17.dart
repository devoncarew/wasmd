// Generated from test/spec/memory_copy/memory_copy.17.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class MemoryCopy17Module extends Module {
  MemoryCopy17Module() {
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

  void run(i32 arg0, i32 arg1, i32 arg2) => _func0(arg0, arg1, arg2);
  i32 load8_u(i32 arg0) => _func1(arg0);

  void _func0(i32 targetOffs, i32 srcOffs, i32 len) {
    vm.memory_copy(0, 0, targetOffs, srcOffs, len);
  }

  i32 _func1(i32 arg0) {
    var t0 = vm.i32_load8_u(0, 0, arg0);
    return t0;
  }
}

typedef FunctionType0 = void Function(i32, i32, i32);
typedef FunctionType1 = i32 Function(i32);

class DataSegments extends AbstractDataSegments {
  final Uint8List data0 = decodeDataLiteral(_hex0);

  @override
  late final List<Uint8List> data = [data0];

  static const String _hex0 =
      '\x00\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0A\x0B\x0C\x0D\x0E\x0F\x10\x11\x12\x13';

  void init(Memory memory) {
    memory.copyFrom(data0, 0, 65516, data0.length);
  }
}
