// Generated from test/spec/call/call.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Call0Module extends Module {
  Call0Module() {
    elementSegments.init();
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

  @override
  late final ElementSegments elementSegments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  i32 type_i32() => _func17();
  i64 type_i64() => _func18();
  f32 type_f32() => _func19();
  f64 type_f64() => _func20();
  Tuple2<i32, i64> type_i32_i64() => _func21();
  i32 type_first_i32() => _func22();
  i64 type_first_i64() => _func23();
  f32 type_first_f32() => _func24();
  f64 type_first_f64() => _func25();
  i32 type_second_i32() => _func26();
  i64 type_second_i64() => _func27();
  f32 type_second_f32() => _func28();
  f64 type_second_f64() => _func29();
  Tuple2<i32, f64> type_all_i32_f64() => _func30();
  Tuple2<i32, i32> type_all_i32_i32() => _func31();
  Tuple2<f64, f32> type_all_f32_f64() => _func32();
  Tuple2<i32, f64> type_all_f64_i32() => _func33();
  i32 as_binary_all_operands() => _func34();
  i32 as_mixed_operands() => _func35();
  Tuple2<i32, i32> as_call_all_operands() => _func36();
  i64 fac(i64 arg0) => _fac(arg0);
  i64 fac_acc(i64 arg0, i64 arg1) => _func38(arg0, arg1);
  i64 fib(i64 arg0) => _fib(arg0);
  i32 even(i64 arg0) => _even(arg0);
  i32 odd(i64 arg0) => _odd(arg0);
  void runaway() => _runaway();
  void mutual_runaway() => _func43();
  i32 as_select_first() => _func45();
  i32 as_select_mid() => _func46();
  i32 as_select_last() => _func47();
  i32 as_if_condition() => _func48();
  i32 as_br_if_first() => _func49();
  i32 as_br_if_last() => _func50();
  i32 as_br_table_first() => _func51();
  i32 as_br_table_last() => _func52();
  i32 as_call_indirect_first() => _func54();
  i32 as_call_indirect_mid() => _func55();
  i32 as_call_indirect_last() => _func56();
  void as_store_first() => _func57();
  void as_store_last() => _func58();
  i32 as_memory_grow_value() => _func59();
  i32 as_return_value() => _func60();
  void as_drop_operand() => _func61();
  i32 as_br_value() => _func62();
  i32 as_local_set_value() => _func63();
  i32 as_local_tee_value() => _func64();
  i32 as_global_set_value() => _func65();
  i32 as_load_operand() => _func66();
  f32 as_unary_operand() => _func69();
  i32 as_binary_left() => _func70();
  i32 as_binary_right() => _func71();
  i32 as_test_operand() => _func72();
  i32 as_compare_left() => _func73();
  i32 as_compare_right() => _func74();
  i64 as_convert_operand() => _func75();
  i32 return_from_long_argument_list(i32 arg0) => _func77(arg0);

  i32 _func00() {
    final frame = Frame(this);
    frame.i32_const(306);
    return frame.pop();
  }

  i64 _func01() {
    final frame = Frame(this);
    frame.i64_const(356);
    return frame.pop();
  }

  f32 _func02() {
    final frame = Frame(this);
    frame.f32_const(3890.0);
    return frame.pop();
  }

  f64 _func03() {
    final frame = Frame(this);
    frame.f64_const(3940.0);
    return frame.pop();
  }

  Tuple2<i32, i64> _func04() {
    final frame = Frame(this);
    frame.i32_const(306);
    frame.i64_const(356);
    return Tuple2.from(frame.stack);
  }

  i32 _func05(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    return frame.pop();
  }

  i64 _func06(i64 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    return frame.pop();
  }

  f32 _func07(f32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    return frame.pop();
  }

  f64 _func08(f64 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    return frame.pop();
  }

  Tuple2<i32, f64> _func09(i32 arg0, f64 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    return Tuple2.from(frame.stack);
  }

  Tuple2<i32, i32> _func10(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg1);
    frame.push(arg0);
    return Tuple2.from(frame.stack);
  }

  Tuple2<f64, f32> _func11(f32 arg0, f64 arg1) {
    final frame = Frame(this);
    frame.push(arg1);
    frame.push(arg0);
    return Tuple2.from(frame.stack);
  }

  Tuple2<i32, f64> _func12(f64 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg1);
    frame.push(arg0);
    return Tuple2.from(frame.stack);
  }

  i32 _func13(f32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg1);
    return frame.pop();
  }

  i64 _func14(i32 arg0, i64 arg1) {
    final frame = Frame(this);
    frame.push(arg1);
    return frame.pop();
  }

  f32 _func15(f64 arg0, f32 arg1) {
    final frame = Frame(this);
    frame.push(arg1);
    return frame.pop();
  }

  f64 _func16(i64 arg0, f64 arg1) {
    final frame = Frame(this);
    frame.push(arg1);
    return frame.pop();
  }

  i32 _func17() {
    final frame = Frame(this);
    frame.push(_func00());
    return frame.pop();
  }

  i64 _func18() {
    final frame = Frame(this);
    frame.push(_func01());
    return frame.pop();
  }

  f32 _func19() {
    final frame = Frame(this);
    frame.push(_func02());
    return frame.pop();
  }

  f64 _func20() {
    final frame = Frame(this);
    frame.push(_func03());
    return frame.pop();
  }

  Tuple2<i32, i64> _func21() {
    final frame = Frame(this);
    _func04().pushTo(frame.stack);
    return Tuple2.from(frame.stack);
  }

  i32 _func22() {
    final frame = Frame(this);
    frame.i32_const(32);
    {
      var t0 = frame.pop();
      frame.push(_func05(t0));
    }
    return frame.pop();
  }

  i64 _func23() {
    final frame = Frame(this);
    frame.i64_const(64);
    {
      var t0 = frame.pop();
      frame.push(_func06(t0));
    }
    return frame.pop();
  }

  f32 _func24() {
    final frame = Frame(this);
    frame.f32_const(1.3200000524520874);
    {
      var t0 = frame.pop();
      frame.push(_func07(t0));
    }
    return frame.pop();
  }

  f64 _func25() {
    final frame = Frame(this);
    frame.f64_const(1.64);
    {
      var t0 = frame.pop();
      frame.push(_func08(t0));
    }
    return frame.pop();
  }

  i32 _func26() {
    final frame = Frame(this);
    frame.f32_const(32.099998474121094);
    frame.i32_const(32);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(_func13(t0, t1));
    }
    return frame.pop();
  }

  i64 _func27() {
    final frame = Frame(this);
    frame.i32_const(32);
    frame.i64_const(64);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(_func14(t0, t1));
    }
    return frame.pop();
  }

  f32 _func28() {
    final frame = Frame(this);
    frame.f64_const(64.0);
    frame.f32_const(32.0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(_func15(t0, t1));
    }
    return frame.pop();
  }

  f64 _func29() {
    final frame = Frame(this);
    frame.i64_const(64);
    frame.f64_const(64.1);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(_func16(t0, t1));
    }
    return frame.pop();
  }

  Tuple2<i32, f64> _func30() {
    final frame = Frame(this);
    frame.i32_const(32);
    frame.f64_const(1.64);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func09(t0, t1).pushTo(frame.stack);
    }
    return Tuple2.from(frame.stack);
  }

  Tuple2<i32, i32> _func31() {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func10(t0, t1).pushTo(frame.stack);
    }
    return Tuple2.from(frame.stack);
  }

  Tuple2<f64, f32> _func32() {
    final frame = Frame(this);
    frame.f32_const(1.0);
    frame.f64_const(2.0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func11(t0, t1).pushTo(frame.stack);
    }
    return Tuple2.from(frame.stack);
  }

  Tuple2<i32, f64> _func33() {
    final frame = Frame(this);
    frame.f64_const(1.0);
    frame.i32_const(2);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func12(t0, t1).pushTo(frame.stack);
    }
    return Tuple2.from(frame.stack);
  }

  i32 _func34() {
    final frame = Frame(this);
    frame.i32_const(3);
    frame.i32_const(4);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func10(t0, t1).pushTo(frame.stack);
    }
    frame.i32_add();
    return frame.pop();
  }

  i32 _func35() {
    final frame = Frame(this);
    frame.i32_const(3);
    frame.i32_const(4);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func10(t0, t1).pushTo(frame.stack);
    }
    frame.i32_const(5);
    frame.i32_add();
    frame.i32_mul();
    return frame.pop();
  }

  Tuple2<i32, i32> _func36() {
    final frame = Frame(this);
    frame.i32_const(3);
    frame.i32_const(4);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func10(t0, t1).pushTo(frame.stack);
    }
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func10(t0, t1).pushTo(frame.stack);
    }
    return Tuple2.from(frame.stack);
  }

  i64 _fac(i64 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.i64_eqz();
    if_label_0: // => i64
    if (frame.pop() != 0) {
      frame.i64_const(1);
    } else {
      frame.push(arg0);
      frame.push(arg0);
      frame.i64_const(1);
      frame.i64_sub();
      {
        var t0 = frame.pop();
        frame.push(_fac(t0));
      }
      frame.i64_mul();
    }
    return frame.pop();
  }

  i64 _func38(i64 arg0, i64 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.i64_eqz();
    if_label_0: // => i64
    if (frame.pop() != 0) {
      frame.push(arg1);
    } else {
      frame.push(arg0);
      frame.i64_const(1);
      frame.i64_sub();
      frame.push(arg0);
      frame.push(arg1);
      frame.i64_mul();
      {
        var t1 = frame.pop();
        var t0 = frame.pop();
        frame.push(_func38(t0, t1));
      }
    }
    return frame.pop();
  }

  i64 _fib(i64 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.i64_const(1);
    frame.i64_le_u();
    if_label_0: // => i64
    if (frame.pop() != 0) {
      frame.i64_const(1);
    } else {
      frame.push(arg0);
      frame.i64_const(2);
      frame.i64_sub();
      {
        var t0 = frame.pop();
        frame.push(_fib(t0));
      }
      frame.push(arg0);
      frame.i64_const(1);
      frame.i64_sub();
      {
        var t0 = frame.pop();
        frame.push(_fib(t0));
      }
      frame.i64_add();
    }
    return frame.pop();
  }

  i32 _even(i64 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.i64_eqz();
    if_label_0: // => i32
    if (frame.pop() != 0) {
      frame.i32_const(44);
    } else {
      frame.push(arg0);
      frame.i64_const(1);
      frame.i64_sub();
      {
        var t0 = frame.pop();
        frame.push(_odd(t0));
      }
    }
    return frame.pop();
  }

  i32 _odd(i64 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.i64_eqz();
    if_label_0: // => i32
    if (frame.pop() != 0) {
      frame.i32_const(99);
    } else {
      frame.push(arg0);
      frame.i64_const(1);
      frame.i64_sub();
      {
        var t0 = frame.pop();
        frame.push(_even(t0));
      }
    }
    return frame.pop();
  }

  void _runaway() {
    final frame = Frame(this);
    _runaway();
  }

  void _func43() {
    final frame = Frame(this);
    _func44();
  }

  void _func44() {
    final frame = Frame(this);
    _func43();
  }

  i32 _func45() {
    final frame = Frame(this);
    frame.push(_func00());
    frame.i32_const(2);
    frame.i32_const(3);
    frame.select();
    return frame.pop();
  }

  i32 _func46() {
    final frame = Frame(this);
    frame.i32_const(2);
    frame.push(_func00());
    frame.i32_const(3);
    frame.select();
    return frame.pop();
  }

  i32 _func47() {
    final frame = Frame(this);
    frame.i32_const(2);
    frame.i32_const(3);
    frame.push(_func00());
    frame.select();
    return frame.pop();
  }

  i32 _func48() {
    final frame = Frame(this);
    frame.push(_func00());
    if_label_0: // => i32
    if (frame.pop() != 0) {
      frame.i32_const(1);
    } else {
      frame.i32_const(2);
    }
    return frame.pop();
  }

  i32 _func49() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.push(_func00());
      frame.i32_const(2);
      if (frame.pop() != 0) break block_label_0;
    }
    return frame.pop();
  }

  i32 _func50() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(2);
      frame.push(_func00());
      if (frame.pop() != 0) break block_label_0;
    }
    return frame.pop();
  }

  i32 _func51() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.push(_func00());
      frame.i32_const(2);
      var t0 = frame.pop();
      switch (t0) {
        case 0:
          break block_label_0;
        default:
          break block_label_0;
      }
    }
    return frame.pop();
  }

  i32 _func52() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(2);
      frame.push(_func00());
      var t0 = frame.pop();
      switch (t0) {
        case 0:
          break block_label_0;
        default:
          break block_label_0;
      }
    }
    return frame.pop();
  }

  i32 _func(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    return frame.pop();
  }

  i32 _func54() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.push(_func00());
      frame.i32_const(2);
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        var t1 = frame.pop();
        var t0 = frame.pop();
        frame.push(func(t0, t1));
      }
    }
    return frame.pop();
  }

  i32 _func55() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(2);
      frame.push(_func00());
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        var t1 = frame.pop();
        var t0 = frame.pop();
        frame.push(func(t0, t1));
      }
    }
    return frame.pop();
  }

  i32 _func56() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.i32_const(2);
      frame.push(_func00());
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        var t1 = frame.pop();
        var t0 = frame.pop();
        frame.push(func(t0, t1));
      }
    }
    return frame.pop();
  }

  void _func57() {
    final frame = Frame(this);
    frame.push(_func00());
    frame.i32_const(1);
    frame.i32_store(2, 0);
  }

  void _func58() {
    final frame = Frame(this);
    frame.i32_const(10);
    frame.push(_func00());
    frame.i32_store(2, 0);
  }

  i32 _func59() {
    final frame = Frame(this);
    frame.push(_func00());
    frame.memory_grow(0);
    return frame.pop();
  }

  i32 _func60() {
    final frame = Frame(this);
    frame.push(_func00());
    return frame.pop();
    return frame.pop();
  }

  void _func61() {
    final frame = Frame(this);
    frame.push(_func00());
    frame.drop();
  }

  i32 _func62() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.push(_func00());
      break block_label_0;
    }
    return frame.pop();
  }

  i32 _func63() {
    i32 local0 = 0;

    final frame = Frame(this);
    frame.push(_func00());
    local0 = frame.pop();
    frame.push(local0);
    return frame.pop();
  }

  i32 _func64() {
    i32 local0 = 0;

    final frame = Frame(this);
    frame.push(_func00());
    local0 = frame.peek();
    return frame.pop();
  }

  i32 _func65() {
    final frame = Frame(this);
    frame.push(_func00());
    globals.a = frame.pop();
    frame.push(globals.a);
    return frame.pop();
  }

  i32 _func66() {
    final frame = Frame(this);
    frame.push(_func00());
    frame.i32_load(2, 0);
    return frame.pop();
  }

  i32 _dummy(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    return frame.pop();
  }

  f32 _du(f32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    return frame.pop();
  }

  f32 _func69() {
    final frame = Frame(this);
    block_label_0: // => f32
    {
      frame.f32_const(0.0);
      {
        var t0 = frame.pop();
        frame.push(_du(t0));
      }
      frame.f32_sqrt();
    }
    return frame.pop();
  }

  i32 _func70() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      {
        var t0 = frame.pop();
        frame.push(_dummy(t0));
      }
      frame.i32_const(10);
      frame.i32_add();
    }
    return frame.pop();
  }

  i32 _func71() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(10);
      frame.i32_const(1);
      {
        var t0 = frame.pop();
        frame.push(_dummy(t0));
      }
      frame.i32_sub();
    }
    return frame.pop();
  }

  i32 _func72() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      {
        var t0 = frame.pop();
        frame.push(_dummy(t0));
      }
      frame.i32_eqz();
    }
    return frame.pop();
  }

  i32 _func73() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      {
        var t0 = frame.pop();
        frame.push(_dummy(t0));
      }
      frame.i32_const(10);
      frame.i32_le_u();
    }
    return frame.pop();
  }

  i32 _func74() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(10);
      frame.i32_const(1);
      {
        var t0 = frame.pop();
        frame.push(_dummy(t0));
      }
      frame.i32_ne();
    }
    return frame.pop();
  }

  i64 _func75() {
    final frame = Frame(this);
    block_label_0: // => i64
    {
      frame.i32_const(1);
      {
        var t0 = frame.pop();
        frame.push(_dummy(t0));
      }
      frame.i64_extend_i32_s();
    }
    return frame.pop();
  }

  i32 _func76(
      f32 arg0,
      i32 arg1,
      i32 arg2,
      f64 arg3,
      f32 arg4,
      f32 arg5,
      f32 arg6,
      f64 arg7,
      f32 arg8,
      i32 arg9,
      i32 arg10,
      f32 arg11,
      f64 arg12,
      i64 arg13,
      i64 arg14,
      i32 arg15,
      i64 arg16,
      i64 arg17,
      f32 arg18,
      i64 arg19,
      i64 arg20,
      i64 arg21,
      i32 arg22,
      f32 arg23,
      f32 arg24,
      f32 arg25,
      f64 arg26,
      f32 arg27,
      i32 arg28,
      i64 arg29,
      f32 arg30,
      f64 arg31,
      f64 arg32,
      f32 arg33,
      i32 arg34,
      f32 arg35,
      f32 arg36,
      f64 arg37,
      i64 arg38,
      f64 arg39,
      i32 arg40,
      i64 arg41,
      f32 arg42,
      f64 arg43,
      i32 arg44,
      i32 arg45,
      i32 arg46,
      i64 arg47,
      f64 arg48,
      i32 arg49,
      i64 arg50,
      i64 arg51,
      f64 arg52,
      f64 arg53,
      f64 arg54,
      f64 arg55,
      f64 arg56,
      f64 arg57,
      i32 arg58,
      f32 arg59,
      f64 arg60,
      f64 arg61,
      i32 arg62,
      i64 arg63,
      f32 arg64,
      f32 arg65,
      f32 arg66,
      i32 arg67,
      f64 arg68,
      f64 arg69,
      f64 arg70,
      f64 arg71,
      f64 arg72,
      f32 arg73,
      i64 arg74,
      i64 arg75,
      i32 arg76,
      i32 arg77,
      i32 arg78,
      f32 arg79,
      f64 arg80,
      i32 arg81,
      i64 arg82,
      f32 arg83,
      f32 arg84,
      f32 arg85,
      i32 arg86,
      i32 arg87,
      f32 arg88,
      f64 arg89,
      i64 arg90,
      f32 arg91,
      f64 arg92,
      f32 arg93,
      f32 arg94,
      f32 arg95,
      i32 arg96,
      f32 arg97,
      i64 arg98,
      i32 arg99) {
    final frame = Frame(this);
    frame.push(arg99);
    return frame.pop();
  }

  i32 _func77(i32 arg0) {
    final frame = Frame(this);
    frame.f32_const(0.0);
    frame.i32_const(0);
    frame.i32_const(0);
    frame.f64_const(0.0);
    frame.f32_const(0.0);
    frame.f32_const(0.0);
    frame.f32_const(0.0);
    frame.f64_const(0.0);
    frame.f32_const(0.0);
    frame.i32_const(0);
    frame.i32_const(0);
    frame.f32_const(0.0);
    frame.f64_const(0.0);
    frame.i64_const(0);
    frame.i64_const(0);
    frame.i32_const(0);
    frame.i64_const(0);
    frame.i64_const(0);
    frame.f32_const(0.0);
    frame.i64_const(0);
    frame.i64_const(0);
    frame.i64_const(0);
    frame.i32_const(0);
    frame.f32_const(0.0);
    frame.f32_const(0.0);
    frame.f32_const(0.0);
    frame.f64_const(0.0);
    frame.f32_const(0.0);
    frame.i32_const(0);
    frame.i64_const(0);
    frame.f32_const(0.0);
    frame.f64_const(0.0);
    frame.f64_const(0.0);
    frame.f32_const(0.0);
    frame.i32_const(0);
    frame.f32_const(0.0);
    frame.f32_const(0.0);
    frame.f64_const(0.0);
    frame.i64_const(0);
    frame.f64_const(0.0);
    frame.i32_const(0);
    frame.i64_const(0);
    frame.f32_const(0.0);
    frame.f64_const(0.0);
    frame.i32_const(0);
    frame.i32_const(0);
    frame.i32_const(0);
    frame.i64_const(0);
    frame.f64_const(0.0);
    frame.i32_const(0);
    frame.i64_const(0);
    frame.i64_const(0);
    frame.f64_const(0.0);
    frame.f64_const(0.0);
    frame.f64_const(0.0);
    frame.f64_const(0.0);
    frame.f64_const(0.0);
    frame.f64_const(0.0);
    frame.i32_const(0);
    frame.f32_const(0.0);
    frame.f64_const(0.0);
    frame.f64_const(0.0);
    frame.i32_const(0);
    frame.i64_const(0);
    frame.f32_const(0.0);
    frame.f32_const(0.0);
    frame.f32_const(0.0);
    frame.i32_const(0);
    frame.f64_const(0.0);
    frame.f64_const(0.0);
    frame.f64_const(0.0);
    frame.f64_const(0.0);
    frame.f64_const(0.0);
    frame.f32_const(0.0);
    frame.i64_const(0);
    frame.i64_const(0);
    frame.i32_const(0);
    frame.i32_const(0);
    frame.i32_const(0);
    frame.f32_const(0.0);
    frame.f64_const(0.0);
    frame.i32_const(0);
    frame.i64_const(0);
    frame.f32_const(0.0);
    frame.f32_const(0.0);
    frame.f32_const(0.0);
    frame.i32_const(0);
    frame.i32_const(0);
    frame.f32_const(0.0);
    frame.f64_const(0.0);
    frame.i64_const(0);
    frame.f32_const(0.0);
    frame.f64_const(0.0);
    frame.f32_const(0.0);
    frame.f32_const(0.0);
    frame.f32_const(0.0);
    frame.i32_const(0);
    frame.f32_const(0.0);
    frame.i64_const(0);
    frame.push(arg0);
    {
      var t99 = frame.pop();
      var t98 = frame.pop();
      var t97 = frame.pop();
      var t96 = frame.pop();
      var t95 = frame.pop();
      var t94 = frame.pop();
      var t93 = frame.pop();
      var t92 = frame.pop();
      var t91 = frame.pop();
      var t90 = frame.pop();
      var t89 = frame.pop();
      var t88 = frame.pop();
      var t87 = frame.pop();
      var t86 = frame.pop();
      var t85 = frame.pop();
      var t84 = frame.pop();
      var t83 = frame.pop();
      var t82 = frame.pop();
      var t81 = frame.pop();
      var t80 = frame.pop();
      var t79 = frame.pop();
      var t78 = frame.pop();
      var t77 = frame.pop();
      var t76 = frame.pop();
      var t75 = frame.pop();
      var t74 = frame.pop();
      var t73 = frame.pop();
      var t72 = frame.pop();
      var t71 = frame.pop();
      var t70 = frame.pop();
      var t69 = frame.pop();
      var t68 = frame.pop();
      var t67 = frame.pop();
      var t66 = frame.pop();
      var t65 = frame.pop();
      var t64 = frame.pop();
      var t63 = frame.pop();
      var t62 = frame.pop();
      var t61 = frame.pop();
      var t60 = frame.pop();
      var t59 = frame.pop();
      var t58 = frame.pop();
      var t57 = frame.pop();
      var t56 = frame.pop();
      var t55 = frame.pop();
      var t54 = frame.pop();
      var t53 = frame.pop();
      var t52 = frame.pop();
      var t51 = frame.pop();
      var t50 = frame.pop();
      var t49 = frame.pop();
      var t48 = frame.pop();
      var t47 = frame.pop();
      var t46 = frame.pop();
      var t45 = frame.pop();
      var t44 = frame.pop();
      var t43 = frame.pop();
      var t42 = frame.pop();
      var t41 = frame.pop();
      var t40 = frame.pop();
      var t39 = frame.pop();
      var t38 = frame.pop();
      var t37 = frame.pop();
      var t36 = frame.pop();
      var t35 = frame.pop();
      var t34 = frame.pop();
      var t33 = frame.pop();
      var t32 = frame.pop();
      var t31 = frame.pop();
      var t30 = frame.pop();
      var t29 = frame.pop();
      var t28 = frame.pop();
      var t27 = frame.pop();
      var t26 = frame.pop();
      var t25 = frame.pop();
      var t24 = frame.pop();
      var t23 = frame.pop();
      var t22 = frame.pop();
      var t21 = frame.pop();
      var t20 = frame.pop();
      var t19 = frame.pop();
      var t18 = frame.pop();
      var t17 = frame.pop();
      var t16 = frame.pop();
      var t15 = frame.pop();
      var t14 = frame.pop();
      var t13 = frame.pop();
      var t12 = frame.pop();
      var t11 = frame.pop();
      var t10 = frame.pop();
      var t9 = frame.pop();
      var t8 = frame.pop();
      var t7 = frame.pop();
      var t6 = frame.pop();
      var t5 = frame.pop();
      var t4 = frame.pop();
      var t3 = frame.pop();
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(_func76(
          t0,
          t1,
          t2,
          t3,
          t4,
          t5,
          t6,
          t7,
          t8,
          t9,
          t10,
          t11,
          t12,
          t13,
          t14,
          t15,
          t16,
          t17,
          t18,
          t19,
          t20,
          t21,
          t22,
          t23,
          t24,
          t25,
          t26,
          t27,
          t28,
          t29,
          t30,
          t31,
          t32,
          t33,
          t34,
          t35,
          t36,
          t37,
          t38,
          t39,
          t40,
          t41,
          t42,
          t43,
          t44,
          t45,
          t46,
          t47,
          t48,
          t49,
          t50,
          t51,
          t52,
          t53,
          t54,
          t55,
          t56,
          t57,
          t58,
          t59,
          t60,
          t61,
          t62,
          t63,
          t64,
          t65,
          t66,
          t67,
          t68,
          t69,
          t70,
          t71,
          t72,
          t73,
          t74,
          t75,
          t76,
          t77,
          t78,
          t79,
          t80,
          t81,
          t82,
          t83,
          t84,
          t85,
          t86,
          t87,
          t88,
          t89,
          t90,
          t91,
          t92,
          t93,
          t94,
          t95,
          t96,
          t97,
          t98,
          t99));
    }
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
      _func11,
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
      _func32,
      _func33,
      _func34,
      _func35,
      _func36,
      _fac,
      _func38,
      _fib,
      _even,
      _odd,
      _runaway,
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
      _func,
      _func54,
      _func55,
      _func56,
      _func57,
      _func58,
      _func59,
      _func60,
      _func61,
      _func62,
      _func63,
      _func64,
      _func65,
      _func66,
      _dummy,
      _du,
      _func69,
      _func70,
      _func71,
      _func72,
      _func73,
      _func74,
      _func75,
      _func76,
      _func77
    ];
  }
}

typedef FunctionType0 = i32 Function(i32, i32);
typedef FunctionType1 = i32 Function();
typedef FunctionType2 = i64 Function();
typedef FunctionType3 = f32 Function();
typedef FunctionType4 = f64 Function();
typedef FunctionType5 = Tuple2<i32, i64> Function();
typedef FunctionType6 = i32 Function(i32);
typedef FunctionType7 = i64 Function(i64);
typedef FunctionType8 = f32 Function(f32);
typedef FunctionType9 = f64 Function(f64);
typedef FunctionType10 = Tuple2<i32, f64> Function(i32, f64);
typedef FunctionType11 = Tuple2<i32, i32> Function(i32, i32);
typedef FunctionType12 = Tuple2<f64, f32> Function(f32, f64);
typedef FunctionType13 = Tuple2<i32, f64> Function(f64, i32);
typedef FunctionType14 = i32 Function(f32, i32);
typedef FunctionType15 = i64 Function(i32, i64);
typedef FunctionType16 = f32 Function(f64, f32);
typedef FunctionType17 = f64 Function(i64, f64);
typedef FunctionType18 = Tuple2<i32, f64> Function();
typedef FunctionType19 = Tuple2<i32, i32> Function();
typedef FunctionType20 = Tuple2<f64, f32> Function();
typedef FunctionType21 = i64 Function(i64, i64);
typedef FunctionType22 = i32 Function(i64);
typedef FunctionType23 = void Function();
typedef FunctionType24 = i32 Function(
    f32,
    i32,
    i32,
    f64,
    f32,
    f32,
    f32,
    f64,
    f32,
    i32,
    i32,
    f32,
    f64,
    i64,
    i64,
    i32,
    i64,
    i64,
    f32,
    i64,
    i64,
    i64,
    i32,
    f32,
    f32,
    f32,
    f64,
    f32,
    i32,
    i64,
    f32,
    f64,
    f64,
    f32,
    i32,
    f32,
    f32,
    f64,
    i64,
    f64,
    i32,
    i64,
    f32,
    f64,
    i32,
    i32,
    i32,
    i64,
    f64,
    i32,
    i64,
    i64,
    f64,
    f64,
    f64,
    f64,
    f64,
    f64,
    i32,
    f32,
    f64,
    f64,
    i32,
    i64,
    f32,
    f32,
    f32,
    i32,
    f64,
    f64,
    f64,
    f64,
    f64,
    f32,
    i64,
    i64,
    i32,
    i32,
    i32,
    f32,
    f64,
    i32,
    i64,
    f32,
    f32,
    f32,
    i32,
    i32,
    f32,
    f64,
    i64,
    f32,
    f64,
    f32,
    f32,
    f32,
    i32,
    f32,
    i64,
    i32);

class Globals {
  i32 a = 10;
}

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final Call0Module module;

  @override
  late final List<List<int>?> segments = [null];

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table0, 0, 0, 1, [53]); /* segment0 */
  }
}
