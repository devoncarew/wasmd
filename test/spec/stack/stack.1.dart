// Generated from test/spec/stack/stack.1.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Stack1Module implements Module {
  Stack1Module();

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(1);

  @override
  late final List<Table> tables = [table0];

  void _func0() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
    }

    loop_label_0:
    for (;;) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
      break;
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
    } else {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
    }
    block_label_0:
    {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
    }

    loop_label_0:
    for (;;) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
      break;
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
    } else {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
    }
    block_label_0:
    {
      frame.i32_const(0);
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType1;
        var t0 = frame.pop();
        func(t0);
      }
    }

    loop_label_0:
    for (;;) {
      frame.i32_const(0);
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType1;
        var t0 = frame.pop();
        func(t0);
      }
      break;
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType1;
        var t0 = frame.pop();
        func(t0);
      }
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType1;
        var t0 = frame.pop();
        func(t0);
      }
    } else {
      frame.i32_const(0);
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType1;
        var t0 = frame.pop();
        func(t0);
      }
    }
    block_label_0:
    {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType2;
        frame.push(func());
      }
    }
    frame.drop();

    loop_label_0:
    for (;;) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType2;
        frame.push(func());
      }
      break;
    }
    frame.drop();
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType2;
        frame.push(func());
      }
    } else {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType2;
        frame.push(func());
      }
    }
    frame.drop();
    block_label_0:
    {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
    }

    loop_label_0:
    for (;;) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
      break;
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
    } else {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
    }
    block_label_0:
    {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
    }

    loop_label_0:
    for (;;) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
      break;
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
    } else {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
    }
    block_label_0:
    {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
    }

    loop_label_0:
    for (;;) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
      break;
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
    } else {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
    }
    block_label_0:
    {
      frame.i32_const(0);
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType1;
        var t0 = frame.pop();
        func(t0);
      }
    }

    loop_label_0:
    for (;;) {
      frame.i32_const(0);
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType1;
        var t0 = frame.pop();
        func(t0);
      }
      break;
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType1;
        var t0 = frame.pop();
        func(t0);
      }
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType1;
        var t0 = frame.pop();
        func(t0);
      }
    } else {
      frame.i32_const(0);
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType1;
        var t0 = frame.pop();
        func(t0);
      }
    }
    block_label_0:
    {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType2;
        frame.push(func());
      }
    }
    frame.drop();

    loop_label_0:
    for (;;) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType2;
        frame.push(func());
      }
      break;
    }
    frame.drop();
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType2;
        frame.push(func());
      }
    } else {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType2;
        frame.push(func());
      }
    }
    frame.drop();
    block_label_0:
    {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
    }

    loop_label_0:
    for (;;) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
      break;
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
    } else {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()]! as FunctionType0;
        func();
      }
    }
    frame.i32_const(0);
    {
      var func = table0[frame.pop()]! as FunctionType0;
      func();
    }
  }
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = void Function(i32);
typedef FunctionType2 = i32 Function();
