// Generated from test/spec/memory_redundancy/memory_redundancy.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class MemoryRedundancy0Module implements Module {
  MemoryRedundancy0Module();

  @override
  final Memory memory = Memory(
    1,
    1,
  );

  @override
  late final List<Table> tables = [];

  i32 malloc(i32 size) {
    final frame = Frame(this);
    frame.i32_const(16);
    return frame.pop();
  }

  i32 malloc_aliasing() {
    i32 x = 0;
    i32 y = 0;

    final frame = Frame(this);
    frame.i32_const(4);
    {
      var t0 = frame.pop();
      frame.push(malloc(t0));
    }
    x = frame.pop();
    frame.i32_const(4);
    {
      var t0 = frame.pop();
      frame.push(malloc(t0));
    }
    y = frame.pop();
    frame.push(x);
    frame.i32_const(42);
    frame.i32_store(2, 0);
    frame.push(y);
    frame.i32_const(43);
    frame.i32_store(2, 0);
    frame.push(x);
    frame.i32_load(2, 0);
    return frame.pop();
  }

  f32 test_dead_store() {
    f32 t = 0;

    final frame = Frame(this);
    frame.i32_const(8);
    frame.i32_const(0x23232323);
    frame.i32_store(2, 0);
    frame.i32_const(11);
    frame.f32_load(2, 0);
    t = frame.pop();
    frame.i32_const(8);
    frame.i32_const(0);
    frame.i32_store(2, 0);
    frame.push(t);
    return frame.pop();
  }

  i32 test_redundant_load() {
    i32 t = 0;
    i32 s = 0;

    final frame = Frame(this);
    frame.i32_const(8);
    frame.i32_load(2, 0);
    t = frame.pop();
    frame.i32_const(5);
    frame.i32_const(-0x80000000);
    frame.i32_store(2, 0);
    frame.i32_const(8);
    frame.i32_load(2, 0);
    s = frame.pop();
    frame.push(t);
    frame.push(s);
    frame.i32_add();
    return frame.pop();
  }

  i32 test_store_to_load() {
    final frame = Frame(this);
    frame.i32_const(8);
    frame.i32_const(0);
    frame.i32_store(2, 0);
    frame.i32_const(5);
    frame.f32_const(-0.0);
    frame.f32_store(2, 0);
    frame.i32_const(8);
    frame.i32_load(2, 0);
    return frame.pop();
  }

  void zero_everything() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(0);
    frame.i32_store(2, 0);
    frame.i32_const(4);
    frame.i32_const(0);
    frame.i32_store(2, 0);
    frame.i32_const(8);
    frame.i32_const(0);
    frame.i32_store(2, 0);
    frame.i32_const(12);
    frame.i32_const(0);
    frame.i32_store(2, 0);
  }
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = i32 Function();
typedef FunctionType2 = f32 Function();
typedef FunctionType3 = i32 Function(i32);
