// Generated from samples/rot13.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'package:dasm/runtime.dart';

class Module {
  Module({
    required this.hostImports,
    required this.memory,
  });

  final HostImports hostImports;

  /// min pages: 1
  final Memory memory;

  i32 _func0(i32 arg0) {
    i32 local0 = 0;

    final frame = Frame(memory);
    frame.push(arg0);
    frame.i32_const(65);
    frame.i32_lt_u();
    if_label_0:
    if (frame.pop() != 0) {
      frame.push(arg0);
      return frame.pop();
    }
    frame.push(arg0);
    frame.i32_const(223);
    frame.i32_and();
    local0 = frame.pop();
    frame.push(local0);
    frame.i32_const(77);
    frame.i32_le_u();
    if_label_0:
    if (frame.pop() != 0) {
      frame.push(arg0);
      frame.i32_const(13);
      frame.i32_add();
      return frame.pop();
    }
    frame.push(local0);
    frame.i32_const(90);
    frame.i32_le_u();
    if_label_0:
    if (frame.pop() != 0) {
      frame.push(arg0);
      frame.i32_const(13);
      frame.i32_sub();
      return frame.pop();
    }
    frame.push(arg0);
    return frame.pop();
    return frame.pop();
  }

  void rot13() {
    i32 local0 = 0;
    i32 local1 = 0;

    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(1024);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(hostImports.fill_buf(t0, t1));
    }
    local0 = frame.pop();
    block_label_0:
    {
      loop_label_1:
      for (;;) {
        frame.push(local1);
        frame.push(local0);
        frame.i32_ge_u();
        if_label_2:
        if (frame.pop() != 0) {
          break block_label_0;
        }
        frame.push(local1);
        frame.push(local1);
        frame.i32_load8_u(0, 0);
        frame.push(_func0(frame.pop()));
        frame.i32_store8(0, 0);
        frame.push(local1);
        frame.i32_const(1);
        frame.i32_add();
        local1 = frame.pop();
        continue loop_label_1;
        break;
      }
    }
    frame.i32_const(0);
    frame.push(local0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      hostImports.buf_done(t0, t1);
    }
  }
}

/// A class representing the symbols imported from the 'host' module.
abstract class HostImports {
  /// The imported 'fill_buf' symbol.
  i32 fill_buf(i32 arg0, i32 arg1);

  /// The imported 'buf_done' symbol.
  void buf_done(i32 arg0, i32 arg1);
}
