// Generated from test/spec/align/align.107.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Align107Module implements Module {
  Align107Module();

  @override
  final Memory memory = Memory(1);

  @override
  late final List<Table> tables = [];

  void store(i32 arg0, i64 arg1) => _func0(arg0, arg1);
  i32 load(i32 arg0) => _func1(arg0);

  void _func0(i32 arg0, i64 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.i64_store(2, 0);
  }

  i32 _func1(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.i32_load(2, 0);
    return frame.pop();
  }
}

typedef FunctionType0 = void Function(i32, i64);
typedef FunctionType1 = i32 Function(i32);
