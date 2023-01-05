// Generated from test/spec/memory/memory.4.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Memory4Module implements Module {
  Memory4Module();

  @override
  final Memory memory = Memory(
    1,
    256,
  );

  @override
  late final List<Table> tables = [];
}
