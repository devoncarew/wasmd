// Generated from test/spec/exports/exports.10.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Exports10Module implements Module {
  Exports10Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  void a() => _a();

  void _a() {
    final frame = Frame(this);
  }
}

typedef FunctionType0 = void Function();
