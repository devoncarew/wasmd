// Generated from test/spec/align/align.15.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Align15Module implements Module {
  Align15Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  void _func0() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(1);
    frame.i32_store16(1, 0);
  }
}

typedef FunctionType0 = void Function();