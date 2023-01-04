// Generated from test/spec/int_exprs/int_exprs.15.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class IntExprs15Module implements Module {
  IntExprs15Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 i32_rem_s_3(i32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_const(3);
    frame.i32_rem_s();
    return frame.pop();
  }

  i32 i32_rem_u_3(i32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_const(3);
    frame.i32_rem_u();
    return frame.pop();
  }

  i64 i64_rem_s_3(i64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i64_const(3);
    frame.i64_rem_s();
    return frame.pop();
  }

  i64 i64_rem_u_3(i64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i64_const(3);
    frame.i64_rem_u();
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(i32);
typedef FunctionType1 = i64 Function(i64);
