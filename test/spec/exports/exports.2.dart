// Generated from test/spec/exports/exports.2.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class Exports2Module extends Module {
  Exports2Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  void a() => _func0();
  void b() => _func1();

  void _func0() {}

  void _func1() {}
}

typedef FunctionType0 = void Function();
