// Generated from test/spec/memory_grow/memory_grow.1.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class MemoryGrow1Module extends Module {
  MemoryGrow1Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 grow(i32 arg0) => _func0(arg0);

  i32 _func0(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.memory_grow(0);
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(i32);
