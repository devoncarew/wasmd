// Generated from test/unit/blocks.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class BlocksModule extends Module {
  BlocksModule();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 nested_block_value_1(i32 arg0) => _func0(arg0);
  i32 nested_block_value_2() => _func1();
  i32 params() => _func2();

  i32 _func0(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    block_label_0: // => i32
    {
      frame.i32_const(2);
      frame.drop();
      frame.i32_const(4);
      block_label_1: // => i32
      {
        frame.i32_const(8);
        frame.push(arg0);
        if (frame.pop() != 0) {
          frame.unwindTo(1, 1);
          break block_label_0;
        }
        frame.drop();
        frame.i32_const(16);
      }
      frame.i32_add();
    }
    frame.i32_add();
    return frame.pop();
  }

  i32 _func1() {
    final frame = Frame(this);
    frame.i32_const(1);
    block_label_0: // => i32
    {
      _dummy();
      frame.i32_const(4);
      frame.i32_const(8);
      frame.unwindTo(1, 1);
      break block_label_0;
      frame.i32_add();
    }
    frame.i32_add();
    return frame.pop();
  }

  i32 _func2() {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    block_label_0: // i32, i32 => i32
    {
      frame.i32_add();
    }
    return frame.pop();
  }

  void _dummy() {
    final frame = Frame(this);
  }
}

typedef FunctionType0 = i32 Function(i32);
typedef FunctionType1 = i32 Function();
typedef FunctionType2 = i32 Function(i32, i32);
typedef FunctionType3 = void Function();
