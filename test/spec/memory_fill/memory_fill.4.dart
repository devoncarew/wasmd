// Generated from test/spec/memory_fill/memory_fill.4.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class MemoryFill4Module extends Module {
  MemoryFill4Module() {
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

  i32 checkRange(i32 arg0, i32 arg1, i32 arg2) => _func0(arg0, arg1, arg2);
  void test() => _func1();

  i32 _func0(i32 from, i32 to, i32 expected) {
    loop_label_0:
    for (;;) {
      var t0 = vm.i32_eq(from, to);
      if_label_1:
      if (t0 != 0) {
        return -1;
      }
      var t1 = vm.i32_load8_u(0, 0, from);
      var t2 = vm.i32_eq(t1, expected);
      if_label_1:
      if (t2 != 0) {
        var t3 = vm.i32_add(from, 1);
        from = t3;
        continue loop_label_0;
      }
      break;
    }
    return from;
  }

  void _func1() {
    vm.memory_fill(0, 0x10000, 85, 0);
  }
}

typedef FunctionType0 = i32 Function(i32, i32, i32);
typedef FunctionType1 = void Function();
