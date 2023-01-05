// Generated from test/spec/exports/exports.5.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Exports5Module implements Module {
  Exports5Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  void a(i32 arg0) {
    final frame = Frame(this);
  }

  void b(i32 arg0) => a(arg0);
}

typedef FunctionType0 = void Function(i32);
