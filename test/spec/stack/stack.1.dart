// Generated from test/spec/stack/stack.1.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

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
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
    }

    loop_label_0:
    for (;;) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
      break;
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
    } else {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
    }
    block_label_0:
    {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
    }

    loop_label_0:
    for (;;) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
      break;
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
    } else {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
    }
    block_label_0:
    {
      frame.i32_const(0);
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType1) throw Trap('indirect call type mismatch');
        var t0 = frame.pop();
        func(t0);
      }
    }

    loop_label_0:
    for (;;) {
      frame.i32_const(0);
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType1) throw Trap('indirect call type mismatch');
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
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType1) throw Trap('indirect call type mismatch');
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
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType1) throw Trap('indirect call type mismatch');
        var t0 = frame.pop();
        func(t0);
      }
    } else {
      frame.i32_const(0);
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType1) throw Trap('indirect call type mismatch');
        var t0 = frame.pop();
        func(t0);
      }
    }
    block_label_0: // => i32
    {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType2) throw Trap('indirect call type mismatch');
        frame.push(func());
      }
    }
    frame.drop();

    loop_label_0: // => i32
    for (;;) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType2) throw Trap('indirect call type mismatch');
        frame.push(func());
      }
      break;
    }
    frame.drop();
    frame.i32_const(0);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType2) throw Trap('indirect call type mismatch');
        frame.push(func());
      }
    } else {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType2) throw Trap('indirect call type mismatch');
        frame.push(func());
      }
    }
    frame.drop();
    block_label_0:
    {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
    }

    loop_label_0:
    for (;;) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
      break;
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
    } else {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
    }
    block_label_0:
    {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
    }

    loop_label_0:
    for (;;) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
      break;
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
    } else {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
    }
    block_label_0:
    {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
    }

    loop_label_0:
    for (;;) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
      break;
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
    } else {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
    }
    block_label_0:
    {
      frame.i32_const(0);
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType1) throw Trap('indirect call type mismatch');
        var t0 = frame.pop();
        func(t0);
      }
    }

    loop_label_0:
    for (;;) {
      frame.i32_const(0);
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType1) throw Trap('indirect call type mismatch');
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
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType1) throw Trap('indirect call type mismatch');
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
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType1) throw Trap('indirect call type mismatch');
        var t0 = frame.pop();
        func(t0);
      }
    } else {
      frame.i32_const(0);
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType1) throw Trap('indirect call type mismatch');
        var t0 = frame.pop();
        func(t0);
      }
    }
    block_label_0: // => i32
    {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType2) throw Trap('indirect call type mismatch');
        frame.push(func());
      }
    }
    frame.drop();

    loop_label_0: // => i32
    for (;;) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType2) throw Trap('indirect call type mismatch');
        frame.push(func());
      }
      break;
    }
    frame.drop();
    frame.i32_const(0);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType2) throw Trap('indirect call type mismatch');
        frame.push(func());
      }
    } else {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType2) throw Trap('indirect call type mismatch');
        frame.push(func());
      }
    }
    frame.drop();
    block_label_0:
    {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
    }

    loop_label_0:
    for (;;) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
      break;
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
    } else {
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        func();
      }
    }
    frame.i32_const(0);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      func();
    }
  }
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = void Function(i32);
typedef FunctionType2 = i32 Function();
