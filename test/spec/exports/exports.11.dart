// Generated from test/spec/exports/exports.11.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FuncModule extends Module {
  FuncModule() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 e(i32 arg0) => _f(arg0);

  i32 _f(i32 n) {
    var t0 = vm.i32_add(n, 1);
    return t0;
  }
}

typedef FunctionType0 = i32 Function(i32);
