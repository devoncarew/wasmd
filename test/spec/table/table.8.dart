// Generated from test/spec/table/table.8.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

/// A class representing the symbols imported from the 'spectest' module.
abstract class SpectestImports {
  /// min size: 0
  Table get table;
}

class Table8Module extends Module {
  Table8Module({required this.spectestImports}) {
    vm = VM(this);
  }

  final SpectestImports spectestImports;

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  final Table table1 = Table(0);

  @override
  late final List<Table> tables = [
    table0,
    table1,
  ];

  Table get table0 => spectestImports.table;
}
