// Generated from test/spec/exports/exports.32.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class GlobalModule implements Module {
  GlobalModule();

  @override
  final Memory memory = Memory(0);

  final Globals globals = Globals();

  @override
  late final List<Table> tables = [];

  i32 get e => globals.g;
}

class Globals {
  final i32 g = 42;
}
