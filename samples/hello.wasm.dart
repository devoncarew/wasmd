// Generated from samples/hello.wasm.

// ignore_for_file: camel_case_types
// ignore_for_file: dead_code
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: unused_label
// ignore_for_file: unused_local_variable

import 'package:dasm/runtime.dart';

class Module {
  Module() {
    dataSegments.init(memory);
  }

  final Memory memory = Memory(10);
  final Globals globals = Globals();
  final DataSegments dataSegments = DataSegments();

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
    frame.i32_const(1);
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

class Globals {
  i64 global0 = _initGlobal0();
  final i64 global1 = _initGlobal1();
  final i64 global2 = _initGlobal2();
  i64 global3 = _initGlobal3();

  static final Memory memory = Memory(0);

  static i64 _initGlobal0() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal1() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal2() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }

  static i64 _initGlobal3() {
    final frame = Frame(memory);
    frame.i64_const(0);
    return frame.pop();
  }
}

class DataSegments {
  void init(Memory memory) {}
}
