// Generated from test/spec/const/const.315.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Const315Module implements Module {
  Const315Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f() {
    final frame = Frame(this);
    frame.f32_const(-4.203895392974451e-45);
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function();
