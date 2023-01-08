// Generated from test/unit/blocks.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class BlocksModule implements Module {
  BlocksModule();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 params() => _func0();

  i32 _func0() {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    block_label_0: // i32, i32 => i32
    {
      frame.i32_add();
    }
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = i32 Function(i32, i32);
