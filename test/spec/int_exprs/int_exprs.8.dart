// Generated from test/spec/int_exprs/int_exprs.8.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class IntExprs8Module implements Module {
  IntExprs8Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 i32_no_fold_mul_div_s(i32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_const(6);
    frame.i32_mul();
    frame.i32_const(6);
    frame.i32_div_s();
    return frame.pop();
  }

  i32 i32_no_fold_mul_div_u(i32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_const(6);
    frame.i32_mul();
    frame.i32_const(6);
    frame.i32_div_u();
    return frame.pop();
  }

  i64 i64_no_fold_mul_div_s(i64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i64_const(6);
    frame.i64_mul();
    frame.i64_const(6);
    frame.i64_div_s();
    return frame.pop();
  }

  i64 i64_no_fold_mul_div_u(i64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i64_const(6);
    frame.i64_mul();
    frame.i64_const(6);
    frame.i64_div_u();
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(i32);
typedef FunctionType1 = i64 Function(i64);