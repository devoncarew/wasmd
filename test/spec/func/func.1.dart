// Generated from test/spec/func/func.1.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Func1Module implements Module {
  Func1Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f64 _f() {
    final frame = Frame(this);
    frame.f64_const(0.0);
    return frame.pop();
  }

  void _g(i32 arg0) {
    final frame = Frame(this);
  }

  void _func2(i32 arg0) {
    final frame = Frame(this);
  }

  f64 _func3() {
    final frame = Frame(this);
    frame.f64_const(0.0);
    return frame.pop();
  }

  void _check() {
    final frame = Frame(this);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      _func2(t0);
    }
    frame.push(_func3());
    frame.drop();
  }
}

typedef FunctionType0 = void Function(i32);
typedef FunctionType1 = f64 Function();
typedef FunctionType2 = void Function();
