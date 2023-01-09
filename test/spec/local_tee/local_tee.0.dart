// Generated from test/spec/local_tee/local_tee.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class LocalTee0Module implements Module {
  LocalTee0Module() {
    segments.init();
  }

  @override
  final Memory memory = Memory(1);

  final Globals globals = Globals();

  final Table table0 = Table(
    1,
    1,
  );

  @override
  late final List<Table> tables = [table0];

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  i32 type_local_i32() => _func00();
  i64 type_local_i64() => _func01();
  f32 type_local_f32() => _func02();
  f64 type_local_f64() => _func03();
  i32 type_param_i32(i32 arg0) => _func04(arg0);
  i64 type_param_i64(i64 arg0) => _func05(arg0);
  f32 type_param_f32(f32 arg0) => _func06(arg0);
  f64 type_param_f64(f64 arg0) => _func07(arg0);
  void type_mixed(i64 arg0, f32 arg1, f64 arg2, i32 arg3, i32 arg4) => _func08(arg0, arg1, arg2, arg3, arg4);
  i64 write(i64 arg0, f32 arg1, f64 arg2, i32 arg3, i32 arg4) => _func09(arg0, arg1, arg2, arg3, arg4);
  f64 result(i64 arg0, f32 arg1, f64 arg2, i32 arg3, i32 arg4) => _func10(arg0, arg1, arg2, arg3, arg4);
  i32 as_block_first(i32 arg0) => _func12(arg0);
  i32 as_block_mid(i32 arg0) => _func13(arg0);
  i32 as_block_last(i32 arg0) => _func14(arg0);
  i32 as_loop_first(i32 arg0) => _func15(arg0);
  i32 as_loop_mid(i32 arg0) => _func16(arg0);
  i32 as_loop_last(i32 arg0) => _func17(arg0);
  i32 as_br_value(i32 arg0) => _func18(arg0);
  void as_br_if_cond(i32 arg0) => _func19(arg0);
  i32 as_br_if_value(i32 arg0) => _func20(arg0);
  i32 as_br_if_value_cond(i32 arg0) => _func21(arg0);
  void as_br_table_index(i32 arg0) => _func22(arg0);
  i32 as_br_table_value(i32 arg0) => _func23(arg0);
  i32 as_br_table_value_index(i32 arg0) => _func24(arg0);
  i32 as_return_value(i32 arg0) => _func25(arg0);
  i32 as_if_cond(i32 arg0) => _func26(arg0);
  i32 as_if_then(i32 arg0) => _func27(arg0);
  i32 as_if_else(i32 arg0) => _func28(arg0);
  i32 as_select_first(i32 arg0, i32 arg1) => _func29(arg0, arg1);
  i32 as_select_second(i32 arg0, i32 arg1) => _func30(arg0, arg1);
  i32 as_select_cond(i32 arg0) => _func31(arg0);
  i32 as_call_first(i32 arg0) => _func33(arg0);
  i32 as_call_mid(i32 arg0) => _func34(arg0);
  i32 as_call_last(i32 arg0) => _func35(arg0);
  i32 as_call_indirect_first(i32 arg0) => _func36(arg0);
  i32 as_call_indirect_mid(i32 arg0) => _func37(arg0);
  i32 as_call_indirect_last(i32 arg0) => _func38(arg0);
  i32 as_call_indirect_index(i32 arg0) => _func39(arg0);
  void as_local_set_value() => _func40();
  i32 as_local_tee_value(i32 arg0) => _func41(arg0);
  void as_global_set_value() => _func42();
  i32 as_load_address(i32 arg0) => _func43(arg0);
  i32 as_loadN_address(i32 arg0) => _func44(arg0);
  void as_store_address(i32 arg0) => _func45(arg0);
  void as_store_value(i32 arg0) => _func46(arg0);
  void as_storeN_address(i32 arg0) => _func47(arg0);
  void as_storeN_value(i32 arg0) => _func48(arg0);
  f32 as_unary_operand(f32 arg0) => _func49(arg0);
  i32 as_binary_left(i32 arg0) => _func50(arg0);
  i32 as_binary_right(i32 arg0) => _func51(arg0);
  i32 as_test_operand(i32 arg0) => _func52(arg0);
  i32 as_compare_left(i32 arg0) => _func53(arg0);
  i32 as_compare_right(i32 arg0) => _func54(arg0);
  i32 as_convert_operand(i64 arg0) => _func55(arg0);
  i32 as_memory_grow_size(i32 arg0) => _func56(arg0);

  i32 _func00() {
    i32 local0 = 0;

    final frame = Frame(this);
    frame.i32_const(0);
    local0 = frame.peek();
    return frame.pop();
  }

  i64 _func01() {
    i64 local0 = 0;

    final frame = Frame(this);
    frame.i64_const(0);
    local0 = frame.peek();
    return frame.pop();
  }

  f32 _func02() {
    f32 local0 = 0;

    final frame = Frame(this);
    frame.f32_const(0.0);
    local0 = frame.peek();
    return frame.pop();
  }

  f64 _func03() {
    f64 local0 = 0;

    final frame = Frame(this);
    frame.f64_const(0.0);
    local0 = frame.peek();
    return frame.pop();
  }

  i32 _func04(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(10);
    arg0 = frame.peek();
    return frame.pop();
  }

  i64 _func05(i64 arg0) {
    final frame = Frame(this);
    frame.i64_const(11);
    arg0 = frame.peek();
    return frame.pop();
  }

  f32 _func06(f32 arg0) {
    final frame = Frame(this);
    frame.f32_const(11.100000381469727);
    arg0 = frame.peek();
    return frame.pop();
  }

  f64 _func07(f64 arg0) {
    final frame = Frame(this);
    frame.f64_const(12.2);
    arg0 = frame.peek();
    return frame.pop();
  }

  void _func08(i64 arg0, f32 arg1, f64 arg2, i32 arg3, i32 arg4) {
    f32 local0 = 0;
    i64 local1 = 0;
    i64 local2 = 0;
    f64 local3 = 0;

    final frame = Frame(this);
    frame.i64_const(0);
    arg0 = frame.peek();
    frame.i64_eqz();
    frame.drop();
    frame.f32_const(0.0);
    arg1 = frame.peek();
    frame.f32_neg();
    frame.drop();
    frame.f64_const(0.0);
    arg2 = frame.peek();
    frame.f64_neg();
    frame.drop();
    frame.i32_const(0);
    arg3 = frame.peek();
    frame.i32_eqz();
    frame.drop();
    frame.i32_const(0);
    arg4 = frame.peek();
    frame.i32_eqz();
    frame.drop();
    frame.f32_const(0.0);
    local0 = frame.peek();
    frame.f32_neg();
    frame.drop();
    frame.i64_const(0);
    local1 = frame.peek();
    frame.i64_eqz();
    frame.drop();
    frame.i64_const(0);
    local2 = frame.peek();
    frame.i64_eqz();
    frame.drop();
    frame.f64_const(0.0);
    local3 = frame.peek();
    frame.f64_neg();
    frame.drop();
  }

  i64 _func09(i64 arg0, f32 arg1, f64 arg2, i32 arg3, i32 arg4) {
    f32 local0 = 0;
    i64 local1 = 0;
    i64 local2 = 0;
    f64 local3 = 0;

    final frame = Frame(this);
    frame.f32_const(-0.30000001192092896);
    arg1 = frame.peek();
    frame.drop();
    frame.i32_const(40);
    arg3 = frame.peek();
    frame.drop();
    frame.i32_const(-7);
    arg4 = frame.peek();
    frame.drop();
    frame.f32_const(5.5);
    local0 = frame.peek();
    frame.drop();
    frame.i64_const(6);
    local1 = frame.peek();
    frame.drop();
    frame.f64_const(8.0);
    local3 = frame.peek();
    frame.drop();
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

  f64 _func10(i64 arg0, f32 arg1, f64 arg2, i32 arg3, i32 arg4) {
    f32 local0 = 0;
    i64 local1 = 0;
    i64 local2 = 0;
    f64 local3 = 0;

    final frame = Frame(this);
    frame.i64_const(1);
    arg0 = frame.peek();
    frame.f64_convert_i64_u();
    frame.f32_const(2.0);
    arg1 = frame.peek();
    frame.f64_promote_f32();
    frame.f64_const(3.3);
    arg2 = frame.peek();
    frame.i32_const(4);
    arg3 = frame.peek();
    frame.f64_convert_i32_u();
    frame.i32_const(5);
    arg4 = frame.peek();
    frame.f64_convert_i32_s();
    frame.f32_const(5.5);
    local0 = frame.peek();
    frame.f64_promote_f32();
    frame.i64_const(6);
    local1 = frame.peek();
    frame.f64_convert_i64_u();
    frame.i64_const(0);
    local2 = frame.peek();
    frame.f64_convert_i64_u();
    frame.f64_const(8.0);
    local3 = frame.peek();
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

  void _dummy() {
    final frame = Frame(this);
  }

  i32 _func12(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      arg0 = frame.peek();
      _dummy();
    }
    return frame.pop();
  }

  i32 _func13(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      _dummy();
      frame.i32_const(1);
      arg0 = frame.peek();
      _dummy();
    }
    return frame.pop();
  }

  i32 _func14(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      _dummy();
      _dummy();
      frame.i32_const(1);
      arg0 = frame.peek();
    }
    return frame.pop();
  }

  i32 _func15(i32 arg0) {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      frame.i32_const(3);
      arg0 = frame.peek();
      _dummy();
      break;
    }
    return frame.pop();
  }

  i32 _func16(i32 arg0) {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      _dummy();
      frame.i32_const(4);
      arg0 = frame.peek();
      _dummy();
      break;
    }
    return frame.pop();
  }

  i32 _func17(i32 arg0) {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      _dummy();
      _dummy();
      frame.i32_const(5);
      arg0 = frame.peek();
      break;
    }
    return frame.pop();
  }

  i32 _func18(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(9);
      arg0 = frame.peek();
      break block_label_0;
    }
    return frame.pop();
  }

  void _func19(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      arg0 = frame.peek();
      if (frame.pop() != 0) {
        break block_label_0;
      }
    }
  }

  i32 _func20(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(8);
      arg0 = frame.peek();
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.drop();
      frame.i32_const(7);
    }
    return frame.pop();
  }

  i32 _func21(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(6);
      frame.i32_const(9);
      arg0 = frame.peek();
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.drop();
      frame.i32_const(7);
    }
    return frame.pop();
  }

  void _func22(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(0);
      arg0 = frame.peek();
      var t0 = frame.pop();
      switch (t0) {
        case 0:
          break block_label_0;

        case 1:
          break block_label_0;

        default:
          break block_label_0;
      }
    }
  }

  i32 _func23(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(10);
      arg0 = frame.peek();
      frame.i32_const(1);
      var t0 = frame.pop();
      switch (t0) {
        case 0:
          break block_label_0;

        case 1:
          break block_label_0;

        default:
          break block_label_0;
      }

      frame.i32_const(7);
    }
    return frame.pop();
  }

  i32 _func24(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(6);
      frame.i32_const(11);
      arg0 = frame.peek();
      var t0 = frame.pop();
      switch (t0) {
        case 0:
          break block_label_0;

        default:
          break block_label_0;
      }

      frame.i32_const(7);
    }
    return frame.pop();
  }

  i32 _func25(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(7);
    arg0 = frame.peek();
    return frame.pop();
    return frame.pop();
  }

  i32 _func26(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(2);
    arg0 = frame.peek();
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
    } else {
      frame.i32_const(1);
    }
    return frame.pop();
  }

  i32 _func27(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(3);
      arg0 = frame.peek();
    } else {
      frame.push(arg0);
    }
    return frame.pop();
  }

  i32 _func28(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.push(arg0);
    } else {
      frame.i32_const(4);
      arg0 = frame.peek();
    }
    return frame.pop();
  }

  i32 _func29(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.i32_const(5);
    arg0 = frame.peek();
    frame.push(arg0);
    frame.push(arg1);
    frame.select();
    return frame.pop();
  }

  i32 _func30(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.i32_const(6);
    arg0 = frame.peek();
    frame.push(arg1);
    frame.select();
    return frame.pop();
  }

  i32 _func31(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(1);
    frame.i32_const(7);
    arg0 = frame.peek();
    frame.select();
    return frame.pop();
  }

  i32 _f(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(this);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 _func33(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(12);
    arg0 = frame.peek();
    frame.i32_const(2);
    frame.i32_const(3);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(_f(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 _func34(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(13);
    arg0 = frame.peek();
    frame.i32_const(3);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(_f(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 _func35(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.i32_const(14);
    arg0 = frame.peek();
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(_f(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 _func36(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    arg0 = frame.peek();
    frame.i32_const(2);
    frame.i32_const(3);
    frame.i32_const(0);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 _func37(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    arg0 = frame.peek();
    frame.i32_const(3);
    frame.i32_const(0);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 _func38(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.i32_const(3);
    arg0 = frame.peek();
    frame.i32_const(0);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 _func39(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.i32_const(3);
    frame.i32_const(0);
    arg0 = frame.peek();
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1, t2));
    }
    return frame.pop();
  }

  void _func40() {
    i32 local0 = 0;

    final frame = Frame(this);
    frame.i32_const(1);
    local0 = frame.peek();
    local0 = frame.pop();
  }

  i32 _func41(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    arg0 = frame.peek();
    arg0 = frame.peek();
    return frame.pop();
  }

  void _func42() {
    i32 local0 = 0;

    final frame = Frame(this);
    frame.i32_const(1);
    local0 = frame.peek();
    globals.g = frame.pop();
  }

  i32 _func43(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    arg0 = frame.peek();
    frame.i32_load(2, 0);
    return frame.pop();
  }

  i32 _func44(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(3);
    arg0 = frame.peek();
    frame.i32_load8_s(0, 0);
    return frame.pop();
  }

  void _func45(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(30);
    arg0 = frame.peek();
    frame.i32_const(7);
    frame.i32_store(2, 0);
  }

  void _func46(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(2);
    frame.i32_const(1);
    arg0 = frame.peek();
    frame.i32_store(2, 0);
  }

  void _func47(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    arg0 = frame.peek();
    frame.i32_const(7);
    frame.i32_store8(0, 0);
  }

  void _func48(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(2);
    frame.i32_const(1);
    arg0 = frame.peek();
    frame.i32_store16(1, 0);
  }

  f32 _func49(f32 arg0) {
    final frame = Frame(this);
    frame.f32_const(double.nan);
    arg0 = frame.peek();
    frame.f32_neg();
    return frame.pop();
  }

  i32 _func50(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(3);
    arg0 = frame.peek();
    frame.i32_const(10);
    frame.i32_add();
    return frame.pop();
  }

  i32 _func51(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(10);
    frame.i32_const(4);
    arg0 = frame.peek();
    frame.i32_sub();
    return frame.pop();
  }

  i32 _func52(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(0);
    arg0 = frame.peek();
    frame.i32_eqz();
    return frame.pop();
  }

  i32 _func53(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(43);
    arg0 = frame.peek();
    frame.i32_const(10);
    frame.i32_le_s();
    return frame.pop();
  }

  i32 _func54(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(10);
    frame.i32_const(42);
    arg0 = frame.peek();
    frame.i32_ne();
    return frame.pop();
  }

  i32 _func55(i64 arg0) {
    final frame = Frame(this);
    frame.i64_const(41);
    arg0 = frame.peek();
    frame.i32_wrap_i64();
    return frame.pop();
  }

  i32 _func56(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(40);
    arg0 = frame.peek();
    frame.memory_grow(0);
    return frame.pop();
  }

  List<Function> _initFunctionTable() {
    return [
      _func00,
      _func01,
      _func02,
      _func03,
      _func04,
      _func05,
      _func06,
      _func07,
      _func08,
      _func09,
      _func10,
      _dummy,
      _func12,
      _func13,
      _func14,
      _func15,
      _func16,
      _func17,
      _func18,
      _func19,
      _func20,
      _func21,
      _func22,
      _func23,
      _func24,
      _func25,
      _func26,
      _func27,
      _func28,
      _func29,
      _func30,
      _func31,
      _f,
      _func33,
      _func34,
      _func35,
      _func36,
      _func37,
      _func38,
      _func39,
      _func40,
      _func41,
      _func42,
      _func43,
      _func44,
      _func45,
      _func46,
      _func47,
      _func48,
      _func49,
      _func50,
      _func51,
      _func52,
      _func53,
      _func54,
      _func55,
      _func56
    ];
  }
}

typedef FunctionType0 = i32 Function(i32, i32, i32);
typedef FunctionType1 = i32 Function();
typedef FunctionType2 = i64 Function();
typedef FunctionType3 = f32 Function();
typedef FunctionType4 = f64 Function();
typedef FunctionType5 = i32 Function(i32);
typedef FunctionType6 = i64 Function(i64);
typedef FunctionType7 = f32 Function(f32);
typedef FunctionType8 = f64 Function(f64);
typedef FunctionType9 = void Function(i64, f32, f64, i32, i32);
typedef FunctionType10 = i64 Function(i64, f32, f64, i32, i32);
typedef FunctionType11 = f64 Function(i64, f32, f64, i32, i32);
typedef FunctionType12 = void Function();
typedef FunctionType13 = void Function(i32);
typedef FunctionType14 = i32 Function(i32, i32);
typedef FunctionType15 = i32 Function(i64);

class Globals {
  i32 g = 0;
}

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final LocalTee0Module module;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table0, 0, 0, 1, [32]); /* segment0 */
  }
}
