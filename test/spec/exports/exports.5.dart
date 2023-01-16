// Generated from test/spec/exports/exports.5.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class Exports5Module extends Module {
  Exports5Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  void a(i32 arg0) => _func0(arg0);
  void b(i32 arg0) => _func0(arg0);

  void _func0(i32 arg0) {}
}

typedef FunctionType0 = void Function(i32);
