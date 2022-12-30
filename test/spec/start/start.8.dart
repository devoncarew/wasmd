// Generated from test/spec/start/start.8.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Start8Module implements Module {
  Start8Module() {
    main();
  }

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  void main() {
    final frame = Frame(this);
    throw 'unreachable';
  }
}

typedef FunctionType0 = void Function();
