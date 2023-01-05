// Generated from test/spec/exports/exports.11.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FuncModule implements Module {
  FuncModule();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 e(i32 n) {
    final frame = Frame(this);
    frame.push(n);
    frame.i32_const(1);
    frame.i32_add();
    return frame.pop();
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(i32);
