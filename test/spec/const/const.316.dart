// Generated from test/spec/const/const.316.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Const316Module implements Module {
  Const316Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 f() {
    final frame = Frame(this);
    frame.f32_const(3.4028234663852886e+38);
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function();