// Generated from test/spec/float_exprs/float_exprs.37.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs37Module implements Module {
  FloatExprs37Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 no_demote_mixed_add(f64 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_promote_f32();
    frame.f64_add();
    frame.f32_demote_f64();
    return frame.pop();
  }

  f32 no_demote_mixed_add_commuted(f32 y, f64 x) {
    final frame = Frame(this);
    frame.push(y);
    frame.f64_promote_f32();
    frame.push(x);
    frame.f64_add();
    frame.f32_demote_f64();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(f64, f32);
typedef FunctionType1 = f32 Function(f32, f64);
