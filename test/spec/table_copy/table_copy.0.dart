// Generated from test/spec/table_copy/table_copy.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class TableCopy0Module implements Module {
  TableCopy0Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 ef0() {
    final frame = Frame(this);
    frame.i32_const(0);
    return frame.pop();
  }

  i32 ef1() {
    final frame = Frame(this);
    frame.i32_const(1);
    return frame.pop();
  }

  i32 ef2() {
    final frame = Frame(this);
    frame.i32_const(2);
    return frame.pop();
  }

  i32 ef3() {
    final frame = Frame(this);
    frame.i32_const(3);
    return frame.pop();
  }

  i32 ef4() {
    final frame = Frame(this);
    frame.i32_const(4);
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function();
