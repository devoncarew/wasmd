// Generated from test/spec/bulk/bulk.2.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Bulk2Module implements Module {
  Bulk2Module();

  @override
  final Memory memory = Memory(1);

  @override
  late final List<Table> tables = [];

  void fill(i32 arg0, i32 arg1, i32 arg2) => _func0(arg0, arg1, arg2);
  i32 load8_u(i32 arg0) => _func1(arg0);

  void _func0(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.push(arg2);
    frame.memory_fill(0);
  }

  i32 _func1(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.i32_load8_u(0, 0);
    return frame.pop();
  }
}

typedef FunctionType0 = void Function(i32, i32, i32);
typedef FunctionType1 = i32 Function(i32);
