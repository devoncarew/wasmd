// Generated from samples/hello.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class HelloWorldModule implements Module {
  HelloWorldModule();

  @override
  final Memory memory = Memory(10);

  final Globals globals = Globals();

  @override
  late final List<Table> tables = [];

  i32 add(i32 lhs, i32 rhs) {
    final frame = Frame(this);
    frame.push(lhs);
    frame.push(rhs);
    frame.i32_add();
    return frame.pop();
  }

  i32 complex(i32 lhs, i32 rhs) {
    i32 i = 0;

    final frame = Frame(this);
    frame.i32_const(-1);
    i = frame.pop();
    frame.i32_const(-0x80000000);
    i = frame.pop();
    frame.push(lhs);
    frame.push(rhs);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(_func1(t0, t1));
    }
    frame.push(i);
    frame.i32_mul();
    return frame.pop();
  }

  i32 _func1(i32 lhs, i32 rhs) {
    final frame = Frame(this);
    frame.push(lhs);
    frame.push(rhs);
    frame.i32_sub();
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(i32, i32);

class Globals {
  i64 a_0 = 0;

  final i64 b_0 = 0;

  final i64 a_1 = 0;

  i64 b_1 = 0;
}
