// Generated from test/spec/memory_trap/memory_trap.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class MemoryTrap0Module extends Module {
  MemoryTrap0Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(1);

  @override
  late final List<Table> tables = [];

  void store(i32 arg0, i32 arg1) => _func1(arg0, arg1);
  i32 load(i32 arg0) => _func2(arg0);
  i32 memory_grow(i32 arg0) => _func3(arg0);

  i32 _addr_limit() {
    var t0 = vm.memory_size(0);
    var t1 = vm.i32_mul(t0, 0x10000);
    return t1;
  }

  void _func1(i32 i, i32 v) {
    var t0 = _addr_limit();
    var t1 = vm.i32_add(t0, i);
    vm.i32_store(2, 0, t1, v);
  }

  i32 _func2(i32 i) {
    var t0 = _addr_limit();
    var t1 = vm.i32_add(t0, i);
    var t2 = vm.i32_load(2, 0, t1);
    return t2;
  }

  i32 _func3(i32 arg0) {
    var t0 = vm.memory_grow(0, arg0);
    return t0;
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = void Function(i32, i32);
typedef FunctionType2 = i32 Function(i32);
