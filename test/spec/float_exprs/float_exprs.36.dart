// Generated from test/spec/float_exprs/float_exprs.36.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs36Module implements Module {
  FloatExprs36Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 no_fold_promote_demote(f32 arg0) => _func0(arg0);

  f32 _func0(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_promote_f32();
    frame.f32_demote_f64();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32);
