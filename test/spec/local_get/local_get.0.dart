// Generated from test/spec/local_get/local_get.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class LocalGet0Module implements Module {
  LocalGet0Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 type_local_i32() => _func00();
  i64 type_local_i64() => _func01();
  f32 type_local_f32() => _func02();
  f64 type_local_f64() => _func03();
  i32 type_param_i32(i32 arg0) => _func04(arg0);
  i64 type_param_i64(i64 arg0) => _func05(arg0);
  f32 type_param_f32(f32 arg0) => _func06(arg0);
  f64 type_param_f64(f64 arg0) => _func07(arg0);
  void type_mixed(i64 arg0, f32 arg1, f64 arg2, i32 arg3, i32 arg4) => _func08(arg0, arg1, arg2, arg3, arg4);
  f64 read(i64 arg0, f32 arg1, f64 arg2, i32 arg3, i32 arg4) => _func09(arg0, arg1, arg2, arg3, arg4);
  i32 as_block_value(i32 arg0) => _func10(arg0);
  i32 as_loop_value(i32 arg0) => _func11(arg0);
  i32 as_br_value(i32 arg0) => _func12(arg0);
  i32 as_br_if_value(i32 arg0) => _func13(arg0);
  i32 as_br_if_value_cond(i32 arg0) => _func14(arg0);
  i32 as_br_table_value(i32 arg0) => _func15(arg0);
  i32 as_return_value(i32 arg0) => _func16(arg0);
  i32 as_if_then(i32 arg0) => _func17(arg0);
  i32 as_if_else(i32 arg0) => _func18(arg0);

  i32 _func00() {
    i32 local0 = 0;

    final frame = Frame(this);
    frame.push(local0);
    return frame.pop();
  }

  i64 _func01() {
    i64 local0 = 0;

    final frame = Frame(this);
    frame.push(local0);
    return frame.pop();
  }

  f32 _func02() {
    f32 local0 = 0;

    final frame = Frame(this);
    frame.push(local0);
    return frame.pop();
  }

  f64 _func03() {
    f64 local0 = 0;

    final frame = Frame(this);
    frame.push(local0);
    return frame.pop();
  }

  i32 _func04(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    return frame.pop();
  }

  i64 _func05(i64 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    return frame.pop();
  }

  f32 _func06(f32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    return frame.pop();
  }

  f64 _func07(f64 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    return frame.pop();
  }

  void _func08(i64 arg0, f32 arg1, f64 arg2, i32 arg3, i32 arg4) {
    f32 local0 = 0;
    i64 local1 = 0;
    i64 local2 = 0;
    f64 local3 = 0;

    final frame = Frame(this);
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

  f64 _func09(i64 arg0, f32 arg1, f64 arg2, i32 arg3, i32 arg4) {
    f32 local0 = 0;
    i64 local1 = 0;
    i64 local2 = 0;
    f64 local3 = 0;

    final frame = Frame(this);
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

  i32 _func10(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      frame.push(arg0);
    }
    return frame.pop();
  }

  i32 _func11(i32 arg0) {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      frame.push(arg0);
      break;
    }
    return frame.pop();
  }

  i32 _func12(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      frame.push(arg0);
      frame.unwindTo(0, 1);
      break block_label_0;
    }
    return frame.pop();
  }

  i32 _func13(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      frame.push(arg0);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
    }
    return frame.pop();
  }

  i32 _func14(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      frame.push(arg0);
      frame.push(arg0);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
    }
    return frame.pop();
  }

  i32 _func15(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      block_label_1:
      {
        block_label_2:
        {
          frame.push(arg0);
          var t0 = frame.pop();
          switch (t0) {
            case 0:
              frame.unwindTo(0, 0);
              break block_label_2;

            case 1:
              frame.unwindTo(0, 0);
              break block_label_1;

            default:
              frame.unwindTo(0, 0);
              break block_label_0;
          }

          frame.i32_const(0);
          return frame.pop();
        }
        frame.i32_const(1);
        return frame.pop();
      }
      frame.i32_const(2);
      return frame.pop();
    }
    frame.i32_const(3);
    return frame.pop();
  }

  i32 _func16(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    return frame.pop();
    return frame.pop();
  }

  i32 _func17(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.push(arg0);
    } else {
      frame.i32_const(0);
    }
    return frame.pop();
  }

  i32 _func18(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(1);
    } else {
      frame.push(arg0);
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
