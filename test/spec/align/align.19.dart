// Generated from test/spec/align/align.19.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Align19Module implements Module {
  Align19Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  void _func0() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i64_const(1);
    frame.i64_store32(2, 0);
  }
}

typedef FunctionType0 = void Function();
