// Generated from test/spec/const/const.119.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Const119Module implements Module {
  Const119Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  void _func0() {
    final frame = Frame(this);
    frame.i64_const(-0x8000000000000000);
    frame.drop();
  }
}

typedef FunctionType0 = void Function();
