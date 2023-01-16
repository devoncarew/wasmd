// Generated from test/spec/memory_copy/memory_copy.94.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class MemoryCopy94Module implements Module {
  MemoryCopy94Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(
    1,
    1,
  );

  @override
  late final List<Table> tables = [];

  void test() => _func0();

  void _func0() {
    var t0 = vm.memory_copy(0, 0, 0x10000, 0x10000, 0);
  }
}

typedef FunctionType0 = void Function();
