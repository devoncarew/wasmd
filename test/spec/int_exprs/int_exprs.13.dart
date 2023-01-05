// Generated from test/spec/int_exprs/int_exprs.13.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class IntExprs13Module implements Module {
  IntExprs13Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 i32_div_s_5(i32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_const(5);
    frame.i32_div_s();
    return frame.pop();
  }

  i32 i32_div_u_5(i32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_const(5);
    frame.i32_div_u();
    return frame.pop();
  }

  i64 i64_div_s_5(i64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i64_const(5);
    frame.i64_div_s();
    return frame.pop();
  }

  i64 i64_div_u_5(i64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i64_const(5);
    frame.i64_div_u();
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(i32);
typedef FunctionType1 = i64 Function(i64);
