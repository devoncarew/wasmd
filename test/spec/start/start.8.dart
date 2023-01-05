// Generated from test/spec/start/start.8.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Start8Module implements Module {
  Start8Module() {
    _func0();
  }

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  void _func0() {
    final frame = Frame(this);
    throw Trap('unreachable');
  }
}

typedef FunctionType0 = void Function();
