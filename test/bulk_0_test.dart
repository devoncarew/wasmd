// Generated from test/wasm/bulk_0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:wasmd/runtime.dart';

import 'src/infra.dart';

void main() {
  group('bulk_0', () {
    final Module m = Module();

    invoke('e_fill_0', m.invoke_fill_0);
    returns('load8_u_0', m.test_load8_u_0, 0);
    returns('load8_u_1', m.test_load8_u_1, 255);
    returns('load8_u_2', m.test_load8_u_2, 255);
    returns('load8_u_3', m.test_load8_u_3, 255);
    returns('load8_u_4', m.test_load8_u_4, 0);
    invoke('e_fill_1', m.invoke_fill_1);
    returns('load8_u_5', m.test_load8_u_5, 170);
    returns('load8_u_6', m.test_load8_u_6, 170);
    invoke('e_fill_2', m.invoke_fill_2);
    traps('fill_3', m.test_fill_3, "out of bounds memory access");
    returns('load8_u_7', m.test_load8_u_7, 0);
    returns('load8_u_8', m.test_load8_u_8, 0);
    invoke('e_fill_4', m.invoke_fill_4);
    traps('fill_5', m.test_fill_5, "out of bounds memory access");
  });
}

class Module {
  Module() {
    dataSegments.init(memory);
  }

  final Memory memory = Memory(1);

  final DataSegments dataSegments = DataSegments();

  void fill(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.push(arg2);
    frame.memory_fill(0);
  }

  i32 load8_u(i32 arg0) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.i32_load8_u(0, 0);
    return frame.pop();
  }

  void invoke_fill_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    frame.i32_const(255);
    frame.i32_const(3);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      fill(t0, t1, t2);
    }
  }

  i32 test_load8_u_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(load8_u(t0));
    }
    return frame.pop();
  }

  i32 test_load8_u_1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      frame.push(load8_u(t0));
    }
    return frame.pop();
  }

  i32 test_load8_u_2() {
    final frame = Frame(memory);
    frame.i32_const(2);
    {
      var t0 = frame.pop();
      frame.push(load8_u(t0));
    }
    return frame.pop();
  }

  i32 test_load8_u_3() {
    final frame = Frame(memory);
    frame.i32_const(3);
    {
      var t0 = frame.pop();
      frame.push(load8_u(t0));
    }
    return frame.pop();
  }

  i32 test_load8_u_4() {
    final frame = Frame(memory);
    frame.i32_const(4);
    {
      var t0 = frame.pop();
      frame.push(load8_u(t0));
    }
    return frame.pop();
  }

  void invoke_fill_1() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0xbbaa);
    frame.i32_const(2);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      fill(t0, t1, t2);
    }
  }

  i32 test_load8_u_5() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(load8_u(t0));
    }
    return frame.pop();
  }

  i32 test_load8_u_6() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      frame.push(load8_u(t0));
    }
    return frame.pop();
  }

  void invoke_fill_2() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0);
    frame.i32_const(0x10000);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      fill(t0, t1, t2);
    }
  }

  void test_fill_3() {
    final frame = Frame(memory);
    frame.i32_const(0xff00);
    frame.i32_const(1);
    frame.i32_const(257);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      fill(t0, t1, t2);
    }
  }

  i32 test_load8_u_7() {
    final frame = Frame(memory);
    frame.i32_const(0xff00);
    {
      var t0 = frame.pop();
      frame.push(load8_u(t0));
    }
    return frame.pop();
  }

  i32 test_load8_u_8() {
    final frame = Frame(memory);
    frame.i32_const(0xffff);
    {
      var t0 = frame.pop();
      frame.push(load8_u(t0));
    }
    return frame.pop();
  }

  void invoke_fill_4() {
    final frame = Frame(memory);
    frame.i32_const(0x10000);
    frame.i32_const(0);
    frame.i32_const(0);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      fill(t0, t1, t2);
    }
  }

  void test_fill_5() {
    final frame = Frame(memory);
    frame.i32_const(0x10001);
    frame.i32_const(0);
    frame.i32_const(0);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      fill(t0, t1, t2);
    }
  }
}

typedef FunctionType0 = void Function(i32, i32, i32);
typedef FunctionType1 = i32 Function(i32);
typedef FunctionType2 = void Function();
typedef FunctionType3 = i32 Function();

class DataSegments {
  Uint8List trap_fill_3 = decodeDataLiteral(_hex0);

  Uint8List trap_fill_5 = decodeDataLiteral(_hex1);

  static const String _hex0 =
      '\x6F\x75\x74\x20\x6F\x66\x20\x62\x6F\x75\x6E\x64\x73\x20\x6D\x65\x6D\x6F'
      '\x72\x79\x20\x61\x63\x63\x65\x73\x73';

  static const String _hex1 =
      '\x6F\x75\x74\x20\x6F\x66\x20\x62\x6F\x75\x6E\x64\x73\x20\x6D\x65\x6D\x6F'
      '\x72\x79\x20\x61\x63\x63\x65\x73\x73';

  void init(Memory memory) {}
}
