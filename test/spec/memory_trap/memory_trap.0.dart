// Generated from test/spec/memory_trap/memory_trap.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class MemoryTrap0Module implements Module {
  MemoryTrap0Module();

  @override
  final Memory memory = Memory(1);

  @override
  late final List<Table> tables = [];

  void store(i32 arg0, i32 arg1) => _func1(arg0, arg1);
  i32 load(i32 arg0) => _func2(arg0);
  i32 memory_grow(i32 arg0) => _func3(arg0);

  i32 _addr_limit() {
    final frame = Frame(this);
    frame.memory_size(0);
    frame.i32_const(0x10000);
    frame.i32_mul();
    return frame.pop();
  }

  void _func1(i32 i, i32 v) {
    final frame = Frame(this);
    frame.push(_addr_limit());
    frame.push(i);
    frame.i32_add();
    frame.push(v);
    frame.i32_store(2, 0);
  }

  i32 _func2(i32 i) {
    final frame = Frame(this);
    frame.push(_addr_limit());
    frame.push(i);
    frame.i32_add();
    frame.i32_load(2, 0);
    return frame.pop();
  }

  i32 _func3(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.memory_grow(0);
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = void Function(i32, i32);
typedef FunctionType2 = i32 Function(i32);
