// Generated from test/spec/unreached-valid/unreached_valid.1.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class UnreachedValid1Module implements Module {
  UnreachedValid1Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  void meet_bottom() => _func0();

  void _func0() {
    final frame = Frame(this);
    block_label_0: // => f64
    {
      block_label_1: // => f32
      {
        throw Trap('unreachable');
        frame.i32_const(1);
        var t0 = frame.pop();
        switch (t0) {
          case 0:
            break block_label_1;
          case 1:
            break block_label_0;
          default:
            break block_label_0;
        }
      }
      frame.drop();
      frame.f64_const(0.0);
    }
    frame.drop();
  }
}

typedef FunctionType0 = void Function();
