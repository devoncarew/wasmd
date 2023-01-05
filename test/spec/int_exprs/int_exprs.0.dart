// Generated from test/spec/int_exprs/int_exprs.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class IntExprs0Module implements Module {
  IntExprs0Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 i32_no_fold_cmp_s_offset(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_const(1);
    frame.i32_add();
    frame.push(y);
    frame.i32_const(1);
    frame.i32_add();
    frame.i32_lt_s();
    return frame.pop();
  }

  i32 i32_no_fold_cmp_u_offset(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_const(1);
    frame.i32_add();
    frame.push(y);
    frame.i32_const(1);
    frame.i32_add();
    frame.i32_lt_u();
    return frame.pop();
  }

  i32 i64_no_fold_cmp_s_offset(i64 x, i64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.i64_const(1);
    frame.i64_add();
    frame.push(y);
    frame.i64_const(1);
    frame.i64_add();
    frame.i64_lt_s();
    return frame.pop();
  }

  i32 i64_no_fold_cmp_u_offset(i64 x, i64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.i64_const(1);
    frame.i64_add();
    frame.push(y);
    frame.i64_const(1);
    frame.i64_add();
    frame.i64_lt_u();
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(i32, i32);
typedef FunctionType1 = i32 Function(i64, i64);
