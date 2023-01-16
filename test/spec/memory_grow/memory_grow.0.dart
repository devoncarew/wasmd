// Generated from test/spec/memory_grow/memory_grow.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class MemoryGrow0Module extends Module {
  MemoryGrow0Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 load_at_zero() => _func0();
  void store_at_zero() => _func1();
  i32 load_at_page_size() => _func2();
  void store_at_page_size() => _func3();
  i32 grow(i32 arg0) => _func4(arg0);
  i32 size() => _func5();

  i32 _func0() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    return frame.pop();
  }

  void _func1() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(2);
    frame.i32_store(2, 0);
  }

  i32 _func2() {
    final frame = Frame(this);
    frame.i32_const(0x10000);
    frame.i32_load(2, 0);
    return frame.pop();
  }

  void _func3() {
    final frame = Frame(this);
    frame.i32_const(0x10000);
    frame.i32_const(3);
    frame.i32_store(2, 0);
  }

  i32 _func4(i32 sz) {
    final frame = Frame(this);
    frame.push(sz);
    frame.memory_grow(0);
    return frame.pop();
  }

  i32 _func5() {
    final frame = Frame(this);
    frame.memory_size(0);
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = void Function();
typedef FunctionType2 = i32 Function(i32);
