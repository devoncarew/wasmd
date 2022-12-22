// Generated from test/wasm/forward.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'package:test/test.dart';
import 'package:wasmd/runtime.dart';

import 'src/infra.dart';

void main() {
  group('forward', () {
    final Module m = Module();

    returns('test_even_0', m.test_even_0, 0);
    returns('test_even_1', m.test_even_1, 1);
    returns('test_odd_0', m.test_odd_0, 1);
    returns('test_odd_1', m.test_odd_1, 0);
  });
}

class Module {
  Module();

  final Memory memory = Memory(0);

  i32 even(i32 n) {
    final frame = Frame(memory);
    frame.push(n);
    frame.i32_const(0);
    frame.i32_eq();
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(1);
    } else {
      frame.push(n);
      frame.i32_const(1);
      frame.i32_sub();
      {
        var t0 = frame.pop();
        frame.push(odd(t0));
      }
    }
    return frame.pop();
  }

  i32 odd(i32 n) {
    final frame = Frame(memory);
    frame.push(n);
    frame.i32_const(0);
    frame.i32_eq();
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
    } else {
      frame.push(n);
      frame.i32_const(1);
      frame.i32_sub();
      {
        var t0 = frame.pop();
        frame.push(even(t0));
      }
    }
    return frame.pop();
  }

  i32 test_even_0() {
    final frame = Frame(memory);
    frame.i32_const(13);
    {
      var t0 = frame.pop();
      frame.push(even(t0));
    }
    return frame.pop();
  }

  i32 test_even_1() {
    final frame = Frame(memory);
    frame.i32_const(20);
    {
      var t0 = frame.pop();
      frame.push(even(t0));
    }
    return frame.pop();
  }

  i32 test_odd_0() {
    final frame = Frame(memory);
    frame.i32_const(13);
    {
      var t0 = frame.pop();
      frame.push(odd(t0));
    }
    return frame.pop();
  }

  i32 test_odd_1() {
    final frame = Frame(memory);
    frame.i32_const(20);
    {
      var t0 = frame.pop();
      frame.push(odd(t0));
    }
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(i32);
typedef FunctionType1 = i32 Function();
