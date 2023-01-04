// Generated from test/spec/exports/exports.51.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Exports51Module implements Module {
  Exports51Module();

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(
    0,
    1,
  );

  @override
  late final List<Table> tables = [table0];
}
