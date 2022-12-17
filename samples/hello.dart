// Generated from samples/hello.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Module {
  Module();

  final Memory memory = Memory(10);
  final Globals globals = Globals();

  i32 add(i32 arg0, i32 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.i32_add();
    return frame.pop();
  }

  i32 _func1(i32 arg0, i32 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.i32_sub();
    return frame.pop();
  }

  i32 complex(i32 arg0, i32 arg1) {
    i32 local0 = 0;

    final frame = Frame(memory);
    frame.i32_const(-1);
    local0 = frame.pop();
    frame.i32_const(-0x80000000);
    local0 = frame.pop();
    frame.push(arg0);
    frame.push(arg1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(_func1(t0, t1));
    }
    frame.push(local0);
    frame.i32_mul();
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(i32, i32);

class Globals {
  i64 global0 = 0;
  final i64 global1 = 0;
  final i64 global2 = 0;
  i64 global3 = 0;
}
