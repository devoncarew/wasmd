// Generated from test/spec/binary-leb128/binary_leb128.11.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

/// A class representing the symbols imported from the 'spectest' module.
abstract class SpectestImports {
  void print_i32(i32 arg0);
}

class BinaryLeb12811Module implements Module {
  BinaryLeb12811Module({required this.spectestImports});

  final SpectestImports spectestImports;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];
}

typedef FunctionType0 = void Function(i32);
