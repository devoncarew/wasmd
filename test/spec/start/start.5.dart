// Generated from test/spec/start/start.5.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

/// A class representing the symbols imported from the 'spectest' module.
abstract class SpectestImports {
  void print_i32(i32 arg0);
}

class Start5Module implements Module {
  Start5Module({required this.spectestImports}) {
    _main();
  }

  final SpectestImports spectestImports;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  void _main() {
    final frame = Frame(this);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      spectestImports.print_i32(t0);
    }
  }
}

typedef FunctionType0 = void Function(i32);
typedef FunctionType1 = void Function();
