// Generated from test/spec/table/table.5.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Table5Module implements Module {
  Table5Module();

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(
    0,
    65536,
  );

  @override
  late final List<Table> tables = [table0];
}