// Generated from test/spec/memory_init/memory_init.89.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class MemoryInit89Module implements Module {
  MemoryInit89Module() {
    dataSegments.init(memory);
  }

  @override
  final Memory memory = Memory(1);

  final DataSegments dataSegments = DataSegments();

  @override
  late final List<Table> tables = [];

  i32 checkRange(i32 from, i32 to, i32 expected) {
    final frame = Frame(this);

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

  void run(i32 offs, i32 len) {
    final frame = Frame(this);
    frame.push(offs);
    frame.i32_const(0);
    frame.push(len);
    {
      i32 count = frame.pop() as i32;
      i32 sourceOffset = frame.pop() as i32;
      i32 destOffset = frame.pop() as i32;
      memory.copyFrom(dataSegments.data0, sourceOffset, destOffset, count);
    }
  }
}

typedef FunctionType0 = i32 Function(i32, i32, i32);
typedef FunctionType1 = void Function(i32, i32);

class DataSegments {
  Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 =
      '\x42\x42\x42\x42\x42\x42\x42\x42\x42\x42\x42\x42\x42\x42\x42\x42';

  void init(Memory memory) {}
}
