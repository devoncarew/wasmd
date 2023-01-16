// Generated from test/spec/ref_null/ref_null.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class RefNull0Module extends Module {
  RefNull0Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  final Globals globals = Globals();

  @override
  late final List<Table> tables = [];

  ExternRef? externref() => _func0();
  FuncRef? funcref() => _func1();

  ExternRef? _func0() {
    return null;
  }

  FuncRef? _func1() {
    return null;
  }
}

typedef FunctionType0 = ExternRef? Function();
typedef FunctionType1 = FuncRef? Function();

class Globals {
  final ExternRef? global0 = _initGlobal0();

  final FuncRef? global1 = _initGlobal1();

  static ExternRef? _initGlobal0() {
    final frame = Frame(stubModule);
    frame.ref_null(111);
    return frame.pop();
  }

  static FuncRef? _initGlobal1() {
    final frame = Frame(stubModule);
    frame.ref_null(112);
    return frame.pop();
  }
}
