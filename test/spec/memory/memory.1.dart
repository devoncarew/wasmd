// Generated from test/spec/memory/memory.1.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Memory1Module implements Module {
  Memory1Module();

  @override
  final Memory memory = Memory(1);

  @override
  late final List<Table> tables = [];
}
