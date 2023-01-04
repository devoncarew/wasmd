// Generated from test/spec/float_exprs/float_exprs.36.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs36Module implements Module {
  FloatExprs36Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 no_fold_promote_demote(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.f64_promote_f32();
    frame.f32_demote_f64();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f32);
