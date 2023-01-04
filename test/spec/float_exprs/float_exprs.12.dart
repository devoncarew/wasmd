// Generated from test/spec/float_exprs/float_exprs.12.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs12Module implements Module {
  FloatExprs12Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 f32_no_fold_eq_self(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(x);
    frame.f32_eq();
    return frame.pop();
  }

  i32 f64_no_fold_eq_self(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(x);
    frame.f64_eq();
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(f32);
typedef FunctionType1 = i32 Function(f64);
