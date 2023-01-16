// Generated from test/spec/memory_redundancy/memory_redundancy.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class MemoryRedundancy0Module extends Module {
  MemoryRedundancy0Module() {
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

  void zero_everything() => _func0();
  i32 test_store_to_load() => _func1();
  i32 test_redundant_load() => _func2();
  f32 test_dead_store() => _func3();
  i32 malloc(i32 arg0) => _malloc(arg0);
  i32 malloc_aliasing() => _func5();

  void _func0() {
    vm.i32_store(2, 0, 0, 0);
    vm.i32_store(2, 0, 4, 0);
    vm.i32_store(2, 0, 8, 0);
    vm.i32_store(2, 0, 12, 0);
  }

  i32 _func1() {
    vm.i32_store(2, 0, 8, 0);
    vm.f32_store(2, 0, 5, -0.0);
    var t0 = vm.i32_load(2, 0, 8);
    return t0;
  }

  i32 _func2() {
    i32 t = 0;
    i32 s = 0;

    var t0 = vm.i32_load(2, 0, 8);
    t = t0;
    vm.i32_store(2, 0, 5, -0x80000000);
    var t1 = vm.i32_load(2, 0, 8);
    s = t1;
    var t2 = vm.i32_add(t, s);
    return t2;
  }

  f32 _func3() {
    f32 t = 0;

    vm.i32_store(2, 0, 8, 0x23232323);
    var t0 = vm.f32_load(2, 0, 11);
    t = t0;
    vm.i32_store(2, 0, 8, 0);
    return t;
  }

  i32 _malloc(i32 size) {
    return 16;
  }

  i32 _func5() {
    i32 x = 0;
    i32 y = 0;

    var t0 = _malloc(4);
    x = t0;
    var t1 = _malloc(4);
    y = t1;
    vm.i32_store(2, 0, x, 42);
    vm.i32_store(2, 0, y, 43);
    var t2 = vm.i32_load(2, 0, x);
    return t2;
  }
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = i32 Function();
typedef FunctionType2 = f32 Function();
typedef FunctionType3 = i32 Function(i32);
