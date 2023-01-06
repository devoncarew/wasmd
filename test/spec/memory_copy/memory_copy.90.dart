// Generated from test/spec/memory_copy/memory_copy.90.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class MemoryCopy90Module implements Module {
  MemoryCopy90Module();

  @override
  final Memory memory = Memory(
    1,
    1,
  );

  @override
  late final List<Table> tables = [];

  void test() {
    final frame = Frame(this);
    frame.i32_const(0x10000);
    frame.i32_const(0x7000);
    frame.i32_const(0);
    frame.memory_copy(0, 0);
  }
}

typedef FunctionType0 = void Function();
