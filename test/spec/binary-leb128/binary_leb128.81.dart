// Generated from test/spec/binary-leb128/binary_leb128.81.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class BinaryLeb12881Module implements Module {
  BinaryLeb12881Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  void _func0() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.i32_trunc_sat_f32_s();
    throw Trap('unreachable');
    frame.i32_trunc_sat_f32_u();
    throw Trap('unreachable');
    frame.i64_trunc_sat_f64_s();
    throw Trap('unreachable');
    frame.i64_trunc_sat_f64_u();
    throw Trap('unreachable');
  }
}

typedef FunctionType0 = void Function();
