// Generated from test/spec/unreached-valid/unreached_valid.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class UnreachedValid0Module extends Module {
  UnreachedValid0Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 select_trap_left(i32 arg0) => _func0(arg0);
  i32 select_trap_right(i32 arg0) => _func1(arg0);
  void select_unreached() => _func2();
  i32 select_unreached_result_1() => _func3();
  i64 select_unreached_result_2() => _func4();
  void unreachable_num() => _func5();
  void unreachable_ref() => _func6();

  i32 _func0(i32 cond) {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.i32_const(0);
    frame.push(cond);
    frame.select();
    return frame.pop();
  }

  i32 _func1(i32 cond) {
    final frame = Frame(this);
    frame.i32_const(0);
    throw Trap('unreachable');
    frame.push(cond);
    frame.select();
    return frame.pop();
  }

  void _func2() {
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

  i32 _func3() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.select();
    frame.i32_add();
    return frame.pop();
  }

  i64 _func4() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.i64_const(0);
    frame.i32_const(0);
    frame.select();
    frame.i64_add();
    return frame.pop();
  }

  void _func5() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.select();
    frame.i32_eqz();
    frame.drop();
  }

  void _func6() {
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
