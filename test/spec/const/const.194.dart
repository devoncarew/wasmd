// Generated from test/spec/const/const.194.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Const194Module implements Module {
  Const194Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f() {
    final frame = Frame(this);
    frame.f32_const(8.88178631458362e-16);
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function();
