// Generated from test/spec/func/func.4.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Func4Module extends Module {
  Func4Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 f(i32 arg0) => _func0(arg0);
  i32 g(i32 arg0) => _func2(arg0);
  i32 p() => _func3();

  i32 _func0(i32 arg0) {
    i32 $var = 0;

    final frame = Frame(this);
    frame.push($var);
    return frame.pop();
  }

  i32 _g(i32 arg0) {
    i32 $var = 0;

    final frame = Frame(this);
    frame.push($var);
    return frame.pop();
  }

  i32 _func2(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    {
      var t0 = frame.pop();
      frame.push(_g(t0));
    }
    return frame.pop();
  }

  i32 _func3() {
    i32 $var = 0;

    final frame = Frame(this);
    frame.i32_const(42);
    $var = frame.pop();
    frame.push($var);
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = i32 Function(i32);
