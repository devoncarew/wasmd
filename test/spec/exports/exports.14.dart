// Generated from test/spec/exports/exports.14.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Exports14Module implements Module {
  Exports14Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 a() {
    final frame = Frame(this);
    frame.i32_const(42);
    return frame.pop();
  }

  i32 b() => a();
  i32 c() => a();
}

typedef FunctionType0 = i32 Function();
