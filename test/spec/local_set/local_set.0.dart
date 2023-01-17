// Generated from test/spec/local_set/local_set.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class LocalSet0Module extends Module {
  LocalSet0Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  void type_local_i32() => _func00();
  void type_local_i64() => _func01();
  void type_local_f32() => _func02();
  void type_local_f64() => _func03();
  void type_param_i32(i32 arg0) => _func04(arg0);
  void type_param_i64(i64 arg0) => _func05(arg0);
  void type_param_f32(f32 arg0) => _func06(arg0);
  void type_param_f64(f64 arg0) => _func07(arg0);
  void type_mixed(i64 arg0, f32 arg1, f64 arg2, i32 arg3, i32 arg4) => _func08(arg0, arg1, arg2, arg3, arg4);
  i64 write(i64 arg0, f32 arg1, f64 arg2, i32 arg3, i32 arg4) => _func09(arg0, arg1, arg2, arg3, arg4);
  void as_block_value(i32 arg0) => _func10(arg0);
  void as_loop_value(i32 arg0) => _func11(arg0);
  void as_br_value(i32 arg0) => _func12(arg0);
  void as_br_if_value(i32 arg0) => _func13(arg0);
  void as_br_if_value_cond(i32 arg0) => _func14(arg0);
  void as_br_table_value(i32 arg0) => _func15(arg0);
  void as_return_value(i32 arg0) => _func16(arg0);
  void as_if_then(i32 arg0) => _func17(arg0);
  void as_if_else(i32 arg0) => _func18(arg0);

  void _func00() {
    i32 local0 = 0;

    local0 = 0;
  }

  void _func01() {
    i64 local0 = 0;

    local0 = 0;
  }

  void _func02() {
    f32 local0 = 0;

    local0 = 0.0;
  }

  void _func03() {
    f64 local0 = 0;

    local0 = 0.0;
  }

  void _func04(i32 arg0) {
    arg0 = 10;
  }

  void _func05(i64 arg0) {
    arg0 = 11;
  }

  void _func06(f32 arg0) {
    arg0 = 11.100000381469727;
  }

  void _func07(f64 arg0) {
    arg0 = 12.2;
  }

  void _func08(i64 arg0, f32 arg1, f64 arg2, i32 arg3, i32 arg4) {
    f32 local0 = 0;
    i64 local1 = 0;
    i64 local2 = 0;
    f64 local3 = 0;

    arg0 = 0;
    arg1 = 0.0;
    arg2 = 0.0;
    arg3 = 0;
    arg4 = 0;
    local0 = 0.0;
    local1 = 0;
    local2 = 0;
    local3 = 0.0;
  }

  i64 _func09(i64 arg0, f32 arg1, f64 arg2, i32 arg3, i32 arg4) {
    f32 local0 = 0;
    i64 local1 = 0;
    i64 local2 = 0;
    f64 local3 = 0;

    arg1 = -0.30000001192092896;
    arg3 = 40;
    arg4 = -7;
    local0 = 5.5;
    local1 = 6;
    local3 = 8.0;
    var t0 = vm.f64_convert_i64_u(arg0);
    var t1 = vm.f64_promote_f32(arg1);
    var t2 = vm.f64_convert_i32_u(arg3);
    var t3 = vm.f64_convert_i32_s(arg4);
    var t4 = vm.f64_promote_f32(local0);
    var t5 = vm.f64_convert_i64_u(local1);
    var t6 = vm.f64_convert_i64_u(local2);
    var t7 = vm.f64_add(t6, local3);
    var t8 = vm.f64_add(t5, t7);
    var t9 = vm.f64_add(t4, t8);
    var t10 = vm.f64_add(t3, t9);
    var t11 = vm.f64_add(t2, t10);
    var t12 = vm.f64_add(arg2, t11);
    var t13 = vm.f64_add(t1, t12);
    var t14 = vm.f64_add(t0, t13);
    var t15 = vm.i64_trunc_f64_s(t14);
    return t15;
  }

  void _func10(i32 arg0) {
    block_label_0:
    {
      arg0 = 1;
    }
  }

  void _func11(i32 arg0) {
    loop_label_0:
    for (;;) {
      arg0 = 3;
      break;
    }
  }

  void _func12(i32 arg0) {
    block_label_0:
    {
      arg0 = 9;
      break block_label_0;
    }
  }

  void _func13(i32 arg0) {
    block_label_0:
    {
      arg0 = 8;
      if (1 != 0) break block_label_0;
    }
  }

  void _func14(i32 arg0) {
    block_label_0:
    {
      arg0 = 9;
      if (6 != 0) break block_label_0;
    }
  }

  void _func15(i32 arg0) {
    block_label_0:
    {
      arg0 = 10;
      switch (1) {
        default:
          break block_label_0;
      }
    }
  }

  void _func16(i32 arg0) {
    arg0 = 7;
    return;
  }

  void _func17(i32 arg0) {
    if_label_0:
    if (arg0 != 0) {
      arg0 = 3;
    }
  }

  void _func18(i32 arg0) {
    if_label_0:
    if (arg0 != 0) {
    } else {
      arg0 = 1;
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
