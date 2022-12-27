// Generated from test/spec/ref_null/ref_null.0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class RefNull0Module implements Module {
  RefNull0Module();

  @override
  final Memory memory = Memory(0);

  final Globals globals = Globals();

  @override
  late final List<Table> tables = [];

  ExternRef? externref() {
    final frame = Frame(this);
    frame.ref_null(111);
    return frame.pop();
  }

  FuncRef? funcref() {
    final frame = Frame(this);
    frame.ref_null(112);
    return frame.pop();
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
