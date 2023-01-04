// Generated from test/spec/exports/exports.25.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Exports25Module implements Module {
  Exports25Module();

  @override
  final Memory memory = Memory(0);

  final Globals globals = Globals();

  @override
  late final List<Table> tables = [];

  i32 get a => globals.global0;
  i32 get b => globals.global1;
}

class Globals {
  final i32 global0 = 0;

  final i32 global1 = 0;
}
