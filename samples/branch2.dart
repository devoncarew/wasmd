// Generated from samples/branch2.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

/// A class representing the symbols imported from the 'console' module.
abstract class ConsoleImports {
  void log(i32 arg0);
}

class Branch2Module implements Module {
  Branch2Module({required this.consoleImports}) {
    _func0();
  }

  final ConsoleImports consoleImports;

  @override
  final Memory memory = Memory(0);

  final Globals globals = Globals();

  @override
  late final List<Table> tables = [];

  void _func0() {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      frame.push(globals.i);
      frame.i32_const(1);
      frame.i32_add();
      globals.i = frame.pop();
      frame.push(globals.i);
      {
        var t0 = frame.pop();
        consoleImports.log(t0);
      }
      frame.push(globals.i);
      frame.i32_const(10);
      frame.i32_lt_s();
      if (frame.pop() != 0) continue loop_label_0;
      break;
    }
  }
}

typedef FunctionType0 = void Function(i32);
typedef FunctionType1 = void Function();

class Globals {
  i32 i = 0;
}
