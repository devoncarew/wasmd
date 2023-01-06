// Generated from test/spec/start/start.7.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

/// A class representing the symbols imported from the 'spectest' module.
abstract class SpectestImports {
  void print();
}

class Start7Module implements Module {
  Start7Module({required this.spectestImports}) {
    spectestImports.print();
  }

  final SpectestImports spectestImports;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];
}

typedef FunctionType0 = void Function();
