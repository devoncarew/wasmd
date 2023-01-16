// Generated from samples/branch2.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

/// A class representing the symbols imported from the 'console' module.
abstract class ConsoleImports {
  void log(i32 arg0);
}

class Branch2Module extends Module {
  Branch2Module({required this.consoleImports}) {
    _func0();
    vm = VM(this);
  }

  final ConsoleImports consoleImports;

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  final Globals globals = Globals();

  @override
  late final List<Table> tables = [];

  void _func0() {
    loop_label_0:
    for (;;) {
      var t0 = vm.i32_add(globals.i, 1);
      globals.i = t0;
      consoleImports.log(globals.i);
      var t1 = vm.i32_lt_s(globals.i, 10);
      if (t1 != 0) continue loop_label_0;
      break;
    }
  }
}

typedef FunctionType0 = void Function(i32);
typedef FunctionType1 = void Function();

class Globals {
  i32 i = 0;
}
