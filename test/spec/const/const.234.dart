// Generated from test/spec/const/const.234.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Const234Module implements Module {
  Const234Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f() {
    final frame = Frame(this);
    frame.f32_const(8.881785255792436e-16);
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function();