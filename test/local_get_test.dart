// Generated from test/wasm/local_get.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'package:test/test.dart';
import 'package:wasmd/runtime.dart';

import 'src/infra.dart';

void main() {
  group('local_get', () {
    final Module m = Module();
    final Globals g = m.globals;

    returns('test_type_local_i32_0', m.test_type_local_i32_0, 0);
    returns('test_type_local_i64_0', m.test_type_local_i64_0, 0);
    returns('test_type_local_f32_0', m.test_type_local_f32_0,
        g.expect_type_local_f32_0);
    returns('test_type_local_f64_0', m.test_type_local_f64_0,
        g.expect_type_local_f64_0);
    returns('test_type_param_i32_0', m.test_type_param_i32_0, 2);
    returns('test_type_param_i64_0', m.test_type_param_i64_0, 3);
    returns('test_type_param_f32_0', m.test_type_param_f32_0,
        g.expect_type_param_f32_0);
    returns('test_type_param_f64_0', m.test_type_param_f64_0,
        g.expect_type_param_f64_0);
    returns('test_as_block_value_0', m.test_as_block_value_0, 6);
    returns('test_as_loop_value_0', m.test_as_loop_value_0, 7);
    returns('test_as_br_value_0', m.test_as_br_value_0, 8);
    returns('test_as_br_if_value_0', m.test_as_br_if_value_0, 9);
    returns('test_as_br_if_value_cond_0', m.test_as_br_if_value_cond_0, 10);
    returns('test_as_br_table_value_0', m.test_as_br_table_value_0, 2);
    returns('test_as_return_value_0', m.test_as_return_value_0, 0);
    returns('test_as_if_then_0', m.test_as_if_then_0, 1);
    returns('test_as_if_else_0', m.test_as_if_else_0, 0);
    returns('test_type_mixed_0', m.test_type_mixed_0);
    returns('test_read_0', m.test_read_0, g.expect_read_0);
  });
}

class Module {
  Module();

  final Memory memory = Memory(0);

  final Globals globals = Globals();

  i32 type_local_i32() {
    i32 local0 = 0;

    final frame = Frame(memory);
    frame.push(local0);
    return frame.pop();
  }

  i64 type_local_i64() {
    i64 local0 = 0;

    final frame = Frame(memory);
    frame.push(local0);
    return frame.pop();
  }

  f32 type_local_f32() {
    f32 local0 = 0;

    final frame = Frame(memory);
    frame.push(local0);
    return frame.pop();
  }

  f64 type_local_f64() {
    f64 local0 = 0;

    final frame = Frame(memory);
    frame.push(local0);
    return frame.pop();
  }

  i32 type_param_i32(i32 arg0) {
    final frame = Frame(memory);
    frame.push(arg0);
    return frame.pop();
  }

  i64 type_param_i64(i64 arg0) {
    final frame = Frame(memory);
    frame.push(arg0);
    return frame.pop();
  }

  f32 type_param_f32(f32 arg0) {
    final frame = Frame(memory);
    frame.push(arg0);
    return frame.pop();
  }

  f64 type_param_f64(f64 arg0) {
    final frame = Frame(memory);
    frame.push(arg0);
    return frame.pop();
  }

  void type_mixed(i64 arg0, f32 arg1, f64 arg2, i32 arg3, i32 arg4) {
    f32 local0 = 0;
    i64 local1 = 0;
    i64 local2 = 0;
    f64 local3 = 0;

    final frame = Frame(memory);
    frame.push(arg0);
    frame.i64_eqz();
    frame.drop();
    frame.push(arg1);
    frame.f32_neg();
    frame.drop();
    frame.push(arg2);
    frame.f64_neg();
    frame.drop();
    frame.push(arg3);
    frame.i32_eqz();
    frame.drop();
    frame.push(arg4);
    frame.i32_eqz();
    frame.drop();
    frame.push(local0);
    frame.f32_neg();
    frame.drop();
    frame.push(local1);
    frame.i64_eqz();
    frame.drop();
    frame.push(local2);
    frame.i64_eqz();
    frame.drop();
    frame.push(local3);
    frame.f64_neg();
    frame.drop();
  }

  f64 read(i64 arg0, f32 arg1, f64 arg2, i32 arg3, i32 arg4) {
    f32 local0 = 0;
    i64 local1 = 0;
    i64 local2 = 0;
    f64 local3 = 0;

    final frame = Frame(memory);
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
    return frame.pop();
  }

  i32 as_block_value(i32 arg0) {
    final frame = Frame(memory);
    block_label_0:
    {
      frame.push(arg0);
    }
    return frame.pop();
  }

  i32 as_loop_value(i32 arg0) {
    final frame = Frame(memory);

    loop_label_0:
    for (;;) {
      frame.push(arg0);
      break;
    }
    return frame.pop();
  }

  i32 as_br_value(i32 arg0) {
    final frame = Frame(memory);
    block_label_0:
    {
      frame.push(arg0);
      break block_label_0;
    }
    return frame.pop();
  }

  i32 as_br_if_value(i32 arg0) {
    final frame = Frame(memory);
    block_label_0:
    {
      frame.push(arg0);
      frame.i32_const(1);
      if (frame.pop() != 0) break block_label_0;
    }
    return frame.pop();
  }

  i32 as_br_if_value_cond(i32 arg0) {
    final frame = Frame(memory);
    block_label_0:
    {
      frame.push(arg0);
      frame.push(arg0);
      if (frame.pop() != 0) break block_label_0;
    }
    return frame.pop();
  }

  i32 as_br_table_value(i32 arg0) {
    final frame = Frame(memory);
    block_label_0:
    {
      block_label_1:
      {
        block_label_2:
        {
          frame.push(arg0);
          throw 'unreachable (0x0E)';
        }
      }
    }
  }

  i32 as_return_value(i32 arg0) {
    final frame = Frame(memory);
    frame.push(arg0);
    return frame.pop();
    return frame.pop();
  }

  i32 as_if_then(i32 arg0) {
    final frame = Frame(memory);
    frame.push(arg0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.push(arg0);
    } else {
      frame.i32_const(0);
    }
    return frame.pop();
  }

  i32 as_if_else(i32 arg0) {
    final frame = Frame(memory);
    frame.push(arg0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(1);
    } else {
      frame.push(arg0);
    }
    return frame.pop();
  }

  i32 test_type_local_i32_0() {
    final frame = Frame(memory);
    frame.push(type_local_i32());
    return frame.pop();
  }

  i64 test_type_local_i64_0() {
    final frame = Frame(memory);
    frame.push(type_local_i64());
    return frame.pop();
  }

  f32 test_type_local_f32_0() {
    final frame = Frame(memory);
    frame.push(type_local_f32());
    return frame.pop();
  }

  f64 test_type_local_f64_0() {
    final frame = Frame(memory);
    frame.push(type_local_f64());
    return frame.pop();
  }

  i32 test_type_param_i32_0() {
    final frame = Frame(memory);
    frame.i32_const(2);
    {
      var t0 = frame.pop();
      frame.push(type_param_i32(t0));
    }
    return frame.pop();
  }

  i64 test_type_param_i64_0() {
    final frame = Frame(memory);
    frame.i64_const(3);
    {
      var t0 = frame.pop();
      frame.push(type_param_i64(t0));
    }
    return frame.pop();
  }

  f32 test_type_param_f32_0() {
    final frame = Frame(memory);
    frame.f32_const(4.400000095367432);
    {
      var t0 = frame.pop();
      frame.push(type_param_f32(t0));
    }
    return frame.pop();
  }

  f64 test_type_param_f64_0() {
    final frame = Frame(memory);
    frame.f64_const(5.5);
    {
      var t0 = frame.pop();
      frame.push(type_param_f64(t0));
    }
    return frame.pop();
  }

  i32 test_as_block_value_0() {
    final frame = Frame(memory);
    frame.i32_const(6);
    {
      var t0 = frame.pop();
      frame.push(as_block_value(t0));
    }
    return frame.pop();
  }

  i32 test_as_loop_value_0() {
    final frame = Frame(memory);
    frame.i32_const(7);
    {
      var t0 = frame.pop();
      frame.push(as_loop_value(t0));
    }
    return frame.pop();
  }

  i32 test_as_br_value_0() {
    final frame = Frame(memory);
    frame.i32_const(8);
    {
      var t0 = frame.pop();
      frame.push(as_br_value(t0));
    }
    return frame.pop();
  }

  i32 test_as_br_if_value_0() {
    final frame = Frame(memory);
    frame.i32_const(9);
    {
      var t0 = frame.pop();
      frame.push(as_br_if_value(t0));
    }
    return frame.pop();
  }

  i32 test_as_br_if_value_cond_0() {
    final frame = Frame(memory);
    frame.i32_const(10);
    {
      var t0 = frame.pop();
      frame.push(as_br_if_value_cond(t0));
    }
    return frame.pop();
  }

  i32 test_as_br_table_value_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      frame.push(as_br_table_value(t0));
    }
    return frame.pop();
  }

  i32 test_as_return_value_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_return_value(t0));
    }
    return frame.pop();
  }

  i32 test_as_if_then_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      frame.push(as_if_then(t0));
    }
    return frame.pop();
  }

  i32 test_as_if_else_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push(as_if_else(t0));
    }
    return frame.pop();
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

  f64 test_read_0() {
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
      frame.push(read(t0, t1, t2, t3, t4));
    }
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = i64 Function();
typedef FunctionType2 = f32 Function();
typedef FunctionType3 = f64 Function();
typedef FunctionType4 = i32 Function(i32);
typedef FunctionType5 = i64 Function(i64);
typedef FunctionType6 = f32 Function(f32);
typedef FunctionType7 = f64 Function(f64);
typedef FunctionType8 = void Function(i64, f32, f64, i32, i32);
typedef FunctionType9 = f64 Function(i64, f32, f64, i32, i32);
typedef FunctionType10 = void Function();

class Globals {
  final f32 expect_type_local_f32_0 = _initExpect_type_local_f32_0();

  final f64 expect_type_local_f64_0 = _initExpect_type_local_f64_0();

  final f32 expect_type_param_f32_0 = _initExpect_type_param_f32_0();

  final f64 expect_type_param_f64_0 = _initExpect_type_param_f64_0();

  final f64 expect_read_0 = _initExpect_read_0();

  static final Memory memory = Memory(0);

  static f32 _initExpect_type_local_f32_0() {
    final frame = Frame(memory);
    frame.f32_const(0.0);
    return frame.pop();
  }

  static f64 _initExpect_type_local_f64_0() {
    final frame = Frame(memory);
    frame.f64_const(0.0);
    return frame.pop();
  }

  static f32 _initExpect_type_param_f32_0() {
    final frame = Frame(memory);
    frame.f32_const(4.400000095367432);
    return frame.pop();
  }

  static f64 _initExpect_type_param_f64_0() {
    final frame = Frame(memory);
    frame.f64_const(5.5);
    return frame.pop();
  }

  static f64 _initExpect_read_0() {
    final frame = Frame(memory);
    frame.f64_const(34.8);
    return frame.pop();
  }
}