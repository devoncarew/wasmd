// Generated from test/spec/align/align.22.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Align22Module implements Module {
  Align22Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  void _func0() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.f64_const(1.0);
    frame.f64_store(3, 0);
  }
}

typedef FunctionType0 = void Function();
