// Generated from test/wasm/memory_fill_1.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:wasmd/runtime.dart';

import 'src/infra.dart';

void main() {
  group('memory_fill_1', () {
    final Module m = Module();

    traps('test_test_0', m.test_test_0, "out of bounds memory access");
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

  i32 checkRange(i32 from, i32 to, i32 expected) {
    final frame = Frame(memory);

    loop_label_0:
    for (;;) {
      frame.push(from);
      frame.push(to);
      frame.i32_eq();
      if_label_1:
      if (frame.pop() != 0) {
        frame.i32_const(-1);
        return frame.pop();
      }
      frame.push(from);
      frame.i32_load8_u(0, 0);
      frame.push(expected);
      frame.i32_eq();
      if_label_1:
      if (frame.pop() != 0) {
        frame.push(from);
        frame.i32_const(1);
        frame.i32_add();
        from = frame.pop();
        continue loop_label_0;
      }
      break;
    }
    frame.push(from);
    return frame.pop();
    return frame.pop();
  }

  void test() {
    final frame = Frame(memory);
    frame.i32_const(0xff00);
    frame.i32_const(85);
    frame.i32_const(257);
    frame.memory_fill(0);
  }

  void test_test_0() {
    final frame = Frame(memory);
    test();
  }
}

typedef FunctionType0 = i32 Function(i32, i32, i32);
typedef FunctionType1 = void Function();

class DataSegments {
  Uint8List trap_test_0 = decodeDataLiteral(_hex0);

  static const String _hex0 =
      '\x6F\x75\x74\x20\x6F\x66\x20\x62\x6F\x75\x6E\x64\x73\x20\x6D\x65\x6D\x6F'
      '\x72\x79\x20\x61\x63\x63\x65\x73\x73';

  void init(Memory memory) {}
}
