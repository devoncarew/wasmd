// Generated from test/wasm/bulk_1.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:wasmd/runtime.dart';

import 'src/infra.dart';

void main() {
  group('bulk_1', () {
    final Module m = Module();

    invoke('e_copy_0', m.invoke_copy_0);
    returns('load8_u_0', m.test_load8_u_0, 0);
    returns('load8_u_1', m.test_load8_u_1, 170);
    returns('load8_u_2', m.test_load8_u_2, 187);
    returns('load8_u_3', m.test_load8_u_3, 204);
    returns('load8_u_4', m.test_load8_u_4, 221);
    returns('load8_u_5', m.test_load8_u_5, 0);
    invoke('e_copy_1', m.invoke_copy_1);
    returns('load8_u_6', m.test_load8_u_6, 170);
    returns('load8_u_7', m.test_load8_u_7, 187);
    returns('load8_u_8', m.test_load8_u_8, 204);
    returns('load8_u_9', m.test_load8_u_9, 221);
    returns('load8_u_10', m.test_load8_u_10, 204);
    returns('load8_u_11', m.test_load8_u_11, 221);
    invoke('e_copy_2', m.invoke_copy_2);
    returns('load8_u_12', m.test_load8_u_12, 0);
    returns('load8_u_13', m.test_load8_u_13, 170);
    returns('load8_u_14', m.test_load8_u_14, 187);
    returns('load8_u_15', m.test_load8_u_15, 204);
    returns('load8_u_16', m.test_load8_u_16, 221);
    returns('load8_u_17', m.test_load8_u_17, 204);
    returns('load8_u_18', m.test_load8_u_18, 0);
    invoke('e_copy_3', m.invoke_copy_3);
    invoke('e_copy_4', m.invoke_copy_4);
    invoke('e_copy_5', m.invoke_copy_5);
    invoke('e_copy_6', m.invoke_copy_6);
    traps('copy_7', m.test_copy_7, "out of bounds memory access");
    traps('copy_8', m.test_copy_8, "out of bounds memory access");
  });
}

class Module {
  Module() {
    dataSegments.init(memory);
  }

  final Memory memory = Memory(
    1,
    1,
  );

  final DataSegments dataSegments = DataSegments();

  void copy(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.push(arg2);
    frame.memory_copy(0, 0);
  }

  i32 load8_u(i32 arg0) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.i32_load8_u(0, 0);
    return frame.pop();
  }

  void invoke_copy_0() {
    final frame = Frame(memory);
    frame.i32_const(10);
    frame.i32_const(0);
    frame.i32_const(4);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      copy(t0, t1, t2);
    }
  }

  i32 test_load8_u_0() {
    final frame = Frame(memory);
    frame.i32_const(9);
    {
      var t0 = frame.pop();
      frame.push(load8_u(t0));
    }
    return frame.pop();
  }

  i32 test_load8_u_1() {
    final frame = Frame(memory);
    frame.i32_const(10);
    {
      var t0 = frame.pop();
      frame.push(load8_u(t0));
    }
    return frame.pop();
  }

  i32 test_load8_u_2() {
    final frame = Frame(memory);
    frame.i32_const(11);
    {
      var t0 = frame.pop();
      frame.push(load8_u(t0));
    }
    return frame.pop();
  }

  i32 test_load8_u_3() {
    final frame = Frame(memory);
    frame.i32_const(12);
    {
      var t0 = frame.pop();
      frame.push(load8_u(t0));
    }
    return frame.pop();
  }

  i32 test_load8_u_4() {
    final frame = Frame(memory);
    frame.i32_const(13);
    {
      var t0 = frame.pop();
      frame.push(load8_u(t0));
    }
    return frame.pop();
  }

  i32 test_load8_u_5() {
    final frame = Frame(memory);
    frame.i32_const(14);
    {
      var t0 = frame.pop();
      frame.push(load8_u(t0));
    }
    return frame.pop();
  }

  void invoke_copy_1() {
    final frame = Frame(memory);
    frame.i32_const(8);
    frame.i32_const(10);
    frame.i32_const(4);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      copy(t0, t1, t2);
    }
  }

  i32 test_load8_u_6() {
    final frame = Frame(memory);
    frame.i32_const(8);
    {
      var t0 = frame.pop();
      frame.push(load8_u(t0));
    }
    return frame.pop();
  }

  i32 test_load8_u_7() {
    final frame = Frame(memory);
    frame.i32_const(9);
    {
      var t0 = frame.pop();
      frame.push(load8_u(t0));
    }
    return frame.pop();
  }

  i32 test_load8_u_8() {
    final frame = Frame(memory);
    frame.i32_const(10);
    {
      var t0 = frame.pop();
      frame.push(load8_u(t0));
    }
    return frame.pop();
  }

  i32 test_load8_u_9() {
    final frame = Frame(memory);
    frame.i32_const(11);
    {
      var t0 = frame.pop();
      frame.push(load8_u(t0));
    }
    return frame.pop();
  }

  i32 test_load8_u_10() {
    final frame = Frame(memory);
    frame.i32_const(12);
    {
      var t0 = frame.pop();
      frame.push(load8_u(t0));
    }
    return frame.pop();
  }

  i32 test_load8_u_11() {
    final frame = Frame(memory);
    frame.i32_const(13);
    {
      var t0 = frame.pop();
      frame.push(load8_u(t0));
    }
    return frame.pop();
  }

  void invoke_copy_2() {
    final frame = Frame(memory);
    frame.i32_const(10);
    frame.i32_const(7);
    frame.i32_const(6);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      copy(t0, t1, t2);
    }
  }

  i32 test_load8_u_12() {
    final frame = Frame(memory);
    frame.i32_const(10);
    {
      var t0 = frame.pop();
      frame.push(load8_u(t0));
    }
    return frame.pop();
  }

  i32 test_load8_u_13() {
    final frame = Frame(memory);
    frame.i32_const(11);
    {
      var t0 = frame.pop();
      frame.push(load8_u(t0));
    }
    return frame.pop();
  }

  i32 test_load8_u_14() {
    final frame = Frame(memory);
    frame.i32_const(12);
    {
      var t0 = frame.pop();
      frame.push(load8_u(t0));
    }
    return frame.pop();
  }

  i32 test_load8_u_15() {
    final frame = Frame(memory);
    frame.i32_const(13);
    {
      var t0 = frame.pop();
      frame.push(load8_u(t0));
    }
    return frame.pop();
  }

  i32 test_load8_u_16() {
    final frame = Frame(memory);
    frame.i32_const(14);
    {
      var t0 = frame.pop();
      frame.push(load8_u(t0));
    }
    return frame.pop();
  }

  i32 test_load8_u_17() {
    final frame = Frame(memory);
    frame.i32_const(15);
    {
      var t0 = frame.pop();
      frame.push(load8_u(t0));
    }
    return frame.pop();
  }

  i32 test_load8_u_18() {
    final frame = Frame(memory);
    frame.i32_const(16);
    {
      var t0 = frame.pop();
      frame.push(load8_u(t0));
    }
    return frame.pop();
  }

  void invoke_copy_3() {
    final frame = Frame(memory);
    frame.i32_const(0xff00);
    frame.i32_const(0);
    frame.i32_const(256);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      copy(t0, t1, t2);
    }
  }

  void invoke_copy_4() {
    final frame = Frame(memory);
    frame.i32_const(0xfe00);
    frame.i32_const(0xff00);
    frame.i32_const(256);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      copy(t0, t1, t2);
    }
  }

  void invoke_copy_5() {
    final frame = Frame(memory);
    frame.i32_const(0x10000);
    frame.i32_const(0);
    frame.i32_const(0);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      copy(t0, t1, t2);
    }
  }

  void invoke_copy_6() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0x10000);
    frame.i32_const(0);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      copy(t0, t1, t2);
    }
  }

  void test_copy_7() {
    final frame = Frame(memory);
    frame.i32_const(0x10001);
    frame.i32_const(0);
    frame.i32_const(0);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      copy(t0, t1, t2);
    }
  }

  void test_copy_8() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0x10001);
    frame.i32_const(0);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      copy(t0, t1, t2);
    }
  }
}

typedef FunctionType0 = void Function(i32, i32, i32);
typedef FunctionType1 = i32 Function(i32);
typedef FunctionType2 = void Function();
typedef FunctionType3 = i32 Function();

class DataSegments {
  Uint8List data0 = decodeDataLiteral(_hex0);

  Uint8List trap_copy_7 = decodeDataLiteral(_hex1);

  Uint8List trap_copy_8 = decodeDataLiteral(_hex2);

  static const String _hex0 = '\xAA\xBB\xCC\xDD';

  static const String _hex1 =
      '\x6F\x75\x74\x20\x6F\x66\x20\x62\x6F\x75\x6E\x64\x73\x20\x6D\x65\x6D\x6F'
      '\x72\x79\x20\x61\x63\x63\x65\x73\x73';

  static const String _hex2 =
      '\x6F\x75\x74\x20\x6F\x66\x20\x62\x6F\x75\x6E\x64\x73\x20\x6D\x65\x6D\x6F'
      '\x72\x79\x20\x61\x63\x63\x65\x73\x73';

  void init(Memory memory) {
    memory.copyTo(data0, 0);
  }
}
