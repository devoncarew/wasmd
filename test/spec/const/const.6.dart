// Generated from test/spec/const/const.6.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Const6Module implements Module {
  Const6Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  void _func0() {
    final frame = Frame(this);
    frame.i64_const(0x75bcd15);
    frame.drop();
  }
}

typedef FunctionType0 = void Function();
