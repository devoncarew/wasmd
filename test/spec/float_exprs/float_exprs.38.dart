// Generated from test/spec/float_exprs/float_exprs.38.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs38Module implements Module {
  FloatExprs38Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 no_demote_mixed_sub(f64 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_promote_f32();
    frame.f64_sub();
    frame.f32_demote_f64();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f64, f32);
