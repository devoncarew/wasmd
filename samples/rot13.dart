// Generated from samples/rot13.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Module {
  Module({
    required this.hostImports,
    required this.memory,
  });

  final HostImports hostImports;

  /// min pages: 1
  final Memory memory;

  i32 rot13c(i32 c) {
    i32 uc = 0;

    final frame = Frame(memory);
    frame.push(c);
    frame.i32_const(65);
    frame.i32_lt_u();
    if_label_0:
    if (frame.pop() != 0) {
      frame.push(c);
      return frame.pop();
    }
    frame.push(c);
    frame.i32_const(223);
    frame.i32_and();
    uc = frame.pop();
    frame.push(uc);
    frame.i32_const(77);
    frame.i32_le_u();
    if_label_0:
    if (frame.pop() != 0) {
      frame.push(c);
      frame.i32_const(13);
      frame.i32_add();
      return frame.pop();
    }
    frame.push(uc);
    frame.i32_const(90);
    frame.i32_le_u();
    if_label_0:
    if (frame.pop() != 0) {
      frame.push(c);
      frame.i32_const(13);
      frame.i32_sub();
      return frame.pop();
    }
    frame.push(c);
    return frame.pop();
    return frame.pop();
  }

  void rot13() {
    i32 size = 0;
    i32 i = 0;

    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0x400);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(hostImports.fill_buf(t0, t1));
    }
    size = frame.pop();
    block_label_0:
    {
      loop_label_1:
      for (;;) {
        frame.push(i);
        frame.push(size);
        frame.i32_ge_u();
        if_label_2:
        if (frame.pop() != 0) {
          break block_label_0;
        }
        frame.push(i);
        frame.push(i);
        frame.i32_load8_u(0, 0);
        {
          var t0 = frame.pop();
          frame.push(rot13c(t0));
        }
        frame.i32_store8(0, 0);
        frame.push(i);
        frame.i32_const(1);
        frame.i32_add();
        i = frame.pop();
        continue loop_label_1;
        break;
      }
    }
    frame.i32_const(0);
    frame.push(size);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      hostImports.buf_done(t0, t1);
    }
  }
}

typedef FunctionType0 = i32 Function(i32, i32);
typedef FunctionType1 = void Function(i32, i32);
typedef FunctionType2 = i32 Function(i32);
typedef FunctionType3 = void Function();

/// A class representing the symbols imported from the 'host' module.
abstract class HostImports {
  /// The imported 'fill_buf' symbol.
  i32 fill_buf(i32 arg0, i32 arg1);

  /// The imported 'buf_done' symbol.
  void buf_done(i32 arg0, i32 arg1);
}
