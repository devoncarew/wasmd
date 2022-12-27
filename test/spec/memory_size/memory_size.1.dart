// Generated from test/spec/memory_size/memory_size.1.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class MemorySize1Module implements Module {
  MemorySize1Module();

  @override
  final Memory memory = Memory(1);

  @override
  late final List<Table> tables = [];

  i32 size() {
    final frame = Frame(this);
    frame.memory_size(0);
    return frame.pop();
  }

  void grow(i32 sz) {
    final frame = Frame(this);
    frame.push(sz);
    frame.memory_grow(0);
    frame.drop();
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = void Function(i32);
