// Generated from test/spec/memory_size/memory_size.3.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class MemorySize3Module implements Module {
  MemorySize3Module();

  @override
  final Memory memory = Memory(
    3,
    8,
  );

  @override
  late final List<Table> tables = [];

  i32 size() => _func0();
  void grow(i32 arg0) => _func1(arg0);

  i32 _func0() {
    final frame = Frame(this);
    frame.memory_size(0);
    return frame.pop();
  }

  void _func1(i32 sz) {
    final frame = Frame(this);
    frame.push(sz);
    frame.memory_grow(0);
    frame.drop();
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = void Function(i32);
