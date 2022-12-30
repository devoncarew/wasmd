// Generated from test/spec/start/start.7.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

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

/// A class representing the symbols imported from the 'spectest' module.
abstract class SpectestImports {
  /// The imported 'print' symbol.
  void print();
}

class SpectestImportsImpl extends SpectestImports {
  @override
  void print() {}
}
