// Generated from test/spec/start/start.5.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Start5Module implements Module {
  Start5Module({required this.spectestImports}) {
    main();
  }

  final SpectestImports spectestImports;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  void main() {
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

/// A class representing the symbols imported from the 'spectest' module.
abstract class SpectestImports {
  /// The imported 'print_i32' symbol.
  void print_i32(i32 arg0);
}

class SpectestImportsImpl extends SpectestImports {
  @override
  void print_i32(i32 arg0) {}
}
