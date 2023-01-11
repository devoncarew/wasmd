// Generated from test/spec/table/table.7.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Table7Module implements Module {
  Table7Module();

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(0);

  final Table table1 = Table(0);

  @override
  late final List<Table> tables = [
    table0,
    table1,
  ];
}
