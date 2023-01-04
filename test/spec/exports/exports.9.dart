// Generated from test/spec/exports/exports.9.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Exports9Module implements Module {
  Exports9Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  void a() {
    final frame = Frame(this);
  }
}

typedef FunctionType0 = void Function();
