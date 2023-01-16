// Generated from samples/branch1.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class Branch1Module extends Module {
  Branch1Module() {
    _foo();
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  final Globals globals = Globals();

  @override
  late final List<Table> tables = [];

  i32 sample() => _sample();

  i32 _sample() {
    loop_label_0:
    for (;;) {
      var t0 = vm.i32_add(globals.i, 1);
      globals.i = t0;
      var t1 = vm.i32_lt_s(globals.i, 10);
      if (t1 != 0) continue loop_label_0;
      break;
    }
    return globals.i;
  }

  void _foo() {
    globals.i = 1;
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = void Function();

class Globals {
  i32 i = 0;
}
