// Generated from test/spec/memory_grow/memory_grow.0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class MemoryGrow0Module implements Module {
  MemoryGrow0Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 load_at_zero() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    return frame.pop();
  }

  void store_at_zero() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(2);
    frame.i32_store(2, 0);
  }

  i32 load_at_page_size() {
    final frame = Frame(this);
    frame.i32_const(0x10000);
    frame.i32_load(2, 0);
    return frame.pop();
  }

  void store_at_page_size() {
    final frame = Frame(this);
    frame.i32_const(0x10000);
    frame.i32_const(3);
    frame.i32_store(2, 0);
  }

  i32 grow(i32 sz) {
    final frame = Frame(this);
    frame.push(sz);
    frame.memory_grow(0);
    return frame.pop();
  }

  i32 size() {
    final frame = Frame(this);
    frame.memory_size(0);
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = void Function();
typedef FunctionType2 = i32 Function(i32);
