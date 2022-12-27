// Generated from test/spec/memory/memory.0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Memory0Module implements Module {
  Memory0Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];
}
