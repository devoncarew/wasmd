// Generated from test/wasm/local_set.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'package:test/test.dart';
import 'package:wasmd/runtime.dart';

import 'src/infra.dart';

void main() {
  group('local_set', () {
    final Module m = Module();

    returns('type_local_i32_0', m.test_type_local_i32_0);
    returns('type_local_i64_0', m.test_type_local_i64_0);
    returns('type_local_f32_0', m.test_type_local_f32_0);
    returns('type_local_f64_0', m.test_type_local_f64_0);
    returns('type_param_i32_0', m.test_type_param_i32_0);
    returns('type_param_i64_0', m.test_type_param_i64_0);
    returns('type_param_f32_0', m.test_type_param_f32_0);
    returns('type_param_f64_0', m.test_type_param_f64_0);
    returns('as_block_value_0', m.test_as_block_value_0);
    returns('as_loop_value_0', m.test_as_loop_value_0);
    returns('as_br_value_0', m.test_as_br_value_0);
    returns('as_br_if_value_0', m.test_as_br_if_value_0);
    returns('as_br_if_value_cond_0', m.test_as_br_if_value_cond_0);
    returns('as_br_table_value_0', m.test_as_br_table_value_0);
    returns('as_return_value_0', m.test_as_return_value_0);
    returns('as_if_then_0', m.test_as_if_then_0);
    returns('as_if_else_0', m.test_as_if_else_0);
    returns('type_mixed_0', m.test_type_mixed_0);
    returns('write_0', m.test_write_0, 56);
  });
}

class Module {
  Module();

  final Memory memory = Memory(0);

  void type_local_i32() {
    i32 local0 = 0;

    final frame = Frame(memory);
    frame.i32_const(0);
    local0 = frame.pop();
  }

  void type_local_i64() {
    i64 local0 = 0;

    final frame = Frame(memory);
    frame.i64_const(0);
    local0 = frame.pop();
  }

  void type_local_f32() {
    f32 local0 = 0;

    final frame = Frame(memory);
    frame.f32_const(0.0);
    local0 = frame.pop();
  }

  void type_local_f64() {
    f64 local0 = 0;

    final frame = Frame(memory);
    frame.f64_const(0.0);
    local0 = frame.pop();
  }

  void type_param_i32(i32 arg0) {
    final frame = Frame(memory);
    frame.i32_const(10);
    arg0 = frame.pop();
  }

  void type_param_i64(i64 arg0) {
    final frame = Frame(memory);
    frame.i64_const(11);
    arg0 = frame.pop();
  }

  void type_param_f32(f32 arg0) {
    final frame = Frame(memory);
    frame.f32_const(11.100000381469727);
    arg0 = frame.pop();
  }

  void type_param_f64(f64 arg0) {
    final frame = Frame(memory);
    frame.f64_const(12.2);
    arg0 = frame.pop();
  }

  void type_mixed(i64 arg0, f32 arg1, f64 arg2, i32 arg3, i32 arg4) {
    f32 local0 = 0;
    i64 local1 = 0;
    i64 local2 = 0;
    f64 local3 = 0;

    final frame = Frame(memory);
    frame.i64_const(0);
    arg0 = frame.pop();
    frame.f32_const(0.0);
    arg1 = frame.pop();
    frame.f64_const(0.0);
    arg2 = frame.pop();
    frame.i32_const(0);
    arg3 = frame.pop();
    frame.i32_const(0);
    arg4 = frame.pop();
    frame.f32_const(0.0);
    local0 = frame.pop();
    frame.i64_const(0);
    local1 = frame.pop();
    frame.i64_const(0);
    local2 = frame.pop();
    frame.f64_const(0.0);
    local3 = frame.pop();
  }

  i64 write(i64 arg0, f32 arg1, f64 arg2, i32 arg3, i32 arg4) {
    f32 local0 = 0;
    i64 local1 = 0;
    i64 local2 = 0;
    f64 local3 = 0;

    final frame = Frame(memory);
    frame.f32_const(-0.30000001192092896);
    arg1 = frame.pop();
    frame.i32_const(40);
    arg3 = frame.pop();
    frame.i32_const(-7);
    arg4 = frame.pop();
    frame.f32_const(5.5);
    local0 = frame.pop();
    frame.i64_const(6);
    local1 = frame.pop();
    frame.f64_const(8.0);
    local3 = frame.pop();
    frame.push(arg0);
    frame.f64_convert_i64_u();
    frame.push(arg1);
    frame.f64_promote_f32();
    frame.push(arg2);
    frame.push(arg3);
    frame.f64_convert_i32_u();
    frame.push(arg4);
    frame.f64_convert_i32_s();
    frame.push(local0);
    frame.f64_promote_f32();
    frame.push(local1);
    frame.f64_convert_i64_u();
    frame.push(local2);
    frame.f64_convert_i64_u();
    frame.push(local3);
    frame.f64_add();
    frame.f64_add();
    frame.f64_add();
    frame.f64_add();
    frame.f64_add();
    frame.f64_add();
    frame.f64_add();
    frame.f64_add();
    frame.i64_trunc_f64_s();
    return frame.pop();
  }

  void as_block_value(i32 arg0) {
    final frame = Frame(memory);
    block_label_0:
    {
      frame.i32_const(1);
      arg0 = frame.pop();
    }
  }

  void as_loop_value(i32 arg0) {
    final frame = Frame(memory);

    loop_label_0:
    for (;;) {
      frame.i32_const(3);
      arg0 = frame.pop();
      break;
    }
  }

  void as_br_value(i32 arg0) {
    final frame = Frame(memory);
    block_label_0:
    {
      frame.i32_const(9);
      arg0 = frame.pop();
      break block_label_0;
    }
  }

  void as_br_if_value(i32 arg0) {
    final frame = Frame(memory);
    block_label_0:
    {
      frame.i32_const(8);
      arg0 = frame.pop();
      frame.i32_const(1);
      if (frame.pop() != 0) break block_label_0;
    }
  }

  void as_br_if_value_cond(i32 arg0) {
    final frame = Frame(memory);
    block_label_0:
    {
      frame.i32_const(6);
      frame.i32_const(9);
      arg0 = frame.pop();
      if (frame.pop() != 0) break block_label_0;
    }
  }

  void as_br_table_value(i32 arg0) {
    final frame = Frame(memory);
    block_label_0:
    {
      frame.i32_const(10);
      arg0 = frame.pop();
      frame.i32_const(1);
      var t0 = frame.pop();
      switch (t0) {
        default:
          break block_label_0;
      }
    }
  }

  void as_return_value(i32 arg0) {
    final frame = Frame(memory);
    frame.i32_const(7);
    arg0 = frame.pop();
  }

  void as_if_then(i32 arg0) {
    final frame = Frame(memory);
    frame.push(arg0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(3);
      arg0 = frame.pop();
    }
  }

  void as_if_else(i32 arg0) {
    final frame = Frame(memory);
    frame.push(arg0);
    if_label_0:
    if (frame.pop() != 0) {
    } else {
      frame.i32_const(1);
      arg0 = frame.pop();
    }
  }

  void test_type_local_i32_0() {
    final frame = Frame(memory);
    type_local_i32();
  }

  void test_type_local_i64_0() {
    final frame = Frame(memory);
    type_local_i64();
  }

  void test_type_local_f32_0() {
    final frame = Frame(memory);
    type_local_f32();
  }

  void test_type_local_f64_0() {
    final frame = Frame(memory);
    type_local_f64();
  }

  void test_type_param_i32_0() {
    final frame = Frame(memory);
    frame.i32_const(2);
    {
      var t0 = frame.pop();
      type_param_i32(t0);
    }
  }

  void test_type_param_i64_0() {
    final frame = Frame(memory);
    frame.i64_const(3);
    {
      var t0 = frame.pop();
      type_param_i64(t0);
    }
  }

  void test_type_param_f32_0() {
    final frame = Frame(memory);
    frame.f32_const(4.400000095367432);
    {
      var t0 = frame.pop();
      type_param_f32(t0);
    }
  }

  void test_type_param_f64_0() {
    final frame = Frame(memory);
    frame.f64_const(5.5);
    {
      var t0 = frame.pop();
      type_param_f64(t0);
    }
  }

  void test_as_block_value_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      as_block_value(t0);
    }
  }

  void test_as_loop_value_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      as_loop_value(t0);
    }
  }

  void test_as_br_value_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      as_br_value(t0);
    }
  }

  void test_as_br_if_value_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      as_br_if_value(t0);
    }
  }

  void test_as_br_if_value_cond_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      as_br_if_value_cond(t0);
    }
  }

  void test_as_br_table_value_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      as_br_table_value(t0);
    }
  }

  void test_as_return_value_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      as_return_value(t0);
    }
  }

  void test_as_if_then_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      as_if_then(t0);
    }
  }

  void test_as_if_else_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      as_if_else(t0);
    }
  }

  void test_type_mixed_0() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.f32_const(2.200000047683716);
    frame.f64_const(3.3);
    frame.i32_const(4);
    frame.i32_const(5);
    {
      var t4 = frame.pop();
      var t3 = frame.pop();
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      type_mixed(t0, t1, t2, t3, t4);
    }
  }

  i64 test_write_0() {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.f32_const(2.0);
    frame.f64_const(3.3);
    frame.i32_const(4);
    frame.i32_const(5);
    {
      var t4 = frame.pop();
      var t3 = frame.pop();
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(write(t0, t1, t2, t3, t4));
    }
    return frame.pop();
  }
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = void Function(i32);
typedef FunctionType2 = void Function(i64);
typedef FunctionType3 = void Function(f32);
typedef FunctionType4 = void Function(f64);
typedef FunctionType5 = void Function(i64, f32, f64, i32, i32);
typedef FunctionType6 = i64 Function(i64, f32, f64, i32, i32);
typedef FunctionType7 = i64 Function();
