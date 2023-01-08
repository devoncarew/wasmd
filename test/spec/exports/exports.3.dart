// Generated from test/spec/exports/exports.3.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Exports3Module implements Module {
  Exports3Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  void a() => _func0();

  void _func0() {
    final frame = Frame(this);
  }
}

typedef FunctionType0 = void Function();
