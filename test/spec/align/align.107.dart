// Generated from test/spec/align/align.107.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class Align107Module extends Module {
  Align107Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(1);

  @override
  late final List<Table> tables = [];

  void store(i32 arg0, i64 arg1) => _func0(arg0, arg1);
  i32 load(i32 arg0) => _func1(arg0);

  void _func0(i32 arg0, i64 arg1) {
    vm.i64_store(2, 0, arg0, arg1);
  }

  i32 _func1(i32 arg0) {
    var t0 = vm.i32_load(2, 0, arg0);
    return t0;
  }
}

typedef FunctionType0 = void Function(i32, i64);
typedef FunctionType1 = i32 Function(i32);
