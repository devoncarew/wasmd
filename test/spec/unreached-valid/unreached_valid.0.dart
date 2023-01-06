// Generated from test/spec/unreached-valid/unreached_valid.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class UnreachedValid0Module implements Module {
  UnreachedValid0Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 select_trap_left(i32 cond) {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.i32_const(0);
    frame.push(cond);
    frame.select();
    return frame.pop();
  }

  i32 select_trap_right(i32 cond) {
    final frame = Frame(this);
    frame.i32_const(0);
    throw Trap('unreachable');
    frame.push(cond);
    frame.select();
    return frame.pop();
  }

  void select_unreached() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.select();
    throw Trap('unreachable');
    frame.i32_const(0);
    frame.select();
    throw Trap('unreachable');
    frame.i32_const(0);
    frame.i32_const(0);
    frame.select();
    throw Trap('unreachable');
    frame.i32_const(0);
    frame.i32_const(0);
    frame.i32_const(0);
    frame.select();
    throw Trap('unreachable');
    frame.f32_const(0.0);
    frame.i32_const(0);
    frame.select();
    throw Trap('unreachable');
  }

  i32 select_unreached_result_1() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.select();
    frame.i32_add();
    return frame.pop();
  }

  i64 select_unreached_result_2() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.i64_const(0);
    frame.i32_const(0);
    frame.select();
    frame.i64_add();
    return frame.pop();
  }

  void unreachable_num() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.select();
    frame.i32_eqz();
    frame.drop();
  }

  void unreachable_ref() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.select();
    frame.ref_is_null();
    frame.drop();
  }
}

typedef FunctionType0 = i32 Function(i32);
typedef FunctionType1 = void Function();
typedef FunctionType2 = i32 Function();
typedef FunctionType3 = i64 Function();
