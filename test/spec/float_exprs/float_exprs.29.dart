// Generated from test/spec/float_exprs/float_exprs.29.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs29Module implements Module {
  FloatExprs29Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 i32_no_fold_f32_s(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.f32_convert_i32_s();
    frame.i32_trunc_f32_s();
    return frame.pop();
  }

  i32 i32_no_fold_f32_u(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.f32_convert_i32_u();
    frame.i32_trunc_f32_u();
    return frame.pop();
  }

  i64 i64_no_fold_f64_s(i64 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.f64_convert_i64_s();
    frame.i64_trunc_f64_s();
    return frame.pop();
  }

  i64 i64_no_fold_f64_u(i64 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.f64_convert_i64_u();
    frame.i64_trunc_f64_u();
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(i32);
typedef FunctionType1 = i64 Function(i64);
