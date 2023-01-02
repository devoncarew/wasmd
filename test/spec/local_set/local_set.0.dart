// Generated from test/spec/local_set/local_set.0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class LocalSet0Module implements Module {
  LocalSet0Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  void type_local_i32() {
    i32 local0 = 0;

    final frame = Frame(this);
    frame.i32_const(0);
    local0 = frame.pop();
  }

  void type_local_i64() {
    i64 local0 = 0;

    final frame = Frame(this);
    frame.i64_const(0);
    local0 = frame.pop();
  }

  void type_local_f32() {
    f32 local0 = 0;

    final frame = Frame(this);
    frame.f32_const(0.0);
    local0 = frame.pop();
  }

  void type_local_f64() {
    f64 local0 = 0;

    final frame = Frame(this);
    frame.f64_const(0.0);
    local0 = frame.pop();
  }

  void type_param_i32(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(10);
    arg0 = frame.pop();
  }

  void type_param_i64(i64 arg0) {
    final frame = Frame(this);
    frame.i64_const(11);
    arg0 = frame.pop();
  }

  void type_param_f32(f32 arg0) {
    final frame = Frame(this);
    frame.f32_const(11.100000381469727);
    arg0 = frame.pop();
  }

  void type_param_f64(f64 arg0) {
    final frame = Frame(this);
    frame.f64_const(12.2);
    arg0 = frame.pop();
  }

  void type_mixed(i64 arg0, f32 arg1, f64 arg2, i32 arg3, i32 arg4) {
    f32 local0 = 0;
    i64 local1 = 0;
    i64 local2 = 0;
    f64 local3 = 0;

    final frame = Frame(this);
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

    final frame = Frame(this);
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
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      arg0 = frame.pop();
    }
  }

  void as_loop_value(i32 arg0) {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      frame.i32_const(3);
      arg0 = frame.pop();
      break;
    }
  }

  void as_br_value(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(9);
      arg0 = frame.pop();
      frame.unwindTo(0, 0);
      break block_label_0;
    }
  }

  void as_br_if_value(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(8);
      arg0 = frame.pop();
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 0);
        break block_label_0;
      }
    }
  }

  void as_br_if_value_cond(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(6);
      frame.i32_const(9);
      arg0 = frame.pop();
      if (frame.pop() != 0) {
        frame.unwindTo(0, 0);
        break block_label_0;
      }
    }
  }

  void as_br_table_value(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(10);
      arg0 = frame.pop();
      frame.i32_const(1);
      var t0 = frame.pop();
      switch (t0) {
        default:
          frame.unwindTo(0, 0);
          break block_label_0;
      }
    }
  }

  void as_return_value(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(7);
    arg0 = frame.pop();
  }

  void as_if_then(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(3);
      arg0 = frame.pop();
    }
  }

  void as_if_else(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0:
    if (frame.pop() != 0) {
    } else {
      frame.i32_const(1);
      arg0 = frame.pop();
    }
  }
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = void Function(i32);
typedef FunctionType2 = void Function(i64);
typedef FunctionType3 = void Function(f32);
typedef FunctionType4 = void Function(f64);
typedef FunctionType5 = void Function(i64, f32, f64, i32, i32);
typedef FunctionType6 = i64 Function(i64, f32, f64, i32, i32);
