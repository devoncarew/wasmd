// Generated from test/spec/call_indirect/call_indirect.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class CallIndirect0Module implements Module {
  CallIndirect0Module() {
    segments.init();
  }

  @override
  final Memory memory = Memory(1);

  final Globals globals = Globals();

  final Table table0 = Table(
    32,
    32,
  );

  @override
  late final List<Table> tables = [table0];

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  i32 type_i32() => _func20();
  i64 type_i64() => _func21();
  f32 type_f32() => _func22();
  f64 type_f64() => _func23();
  Tuple2<f64, i32> type_f64_i32() => _func24();
  i64 type_index() => _func25();
  i32 type_first_i32() => _func26();
  i64 type_first_i64() => _func27();
  f32 type_first_f32() => _func28();
  f64 type_first_f64() => _func29();
  i32 type_second_i32() => _func30();
  i64 type_second_i64() => _func31();
  f32 type_second_f32() => _func32();
  f64 type_second_f64() => _func33();
  Tuple2<f64, i32> type_all_f64_i32() => _func34();
  Tuple2<i32, f64> type_all_i32_f64() => _func35();
  Tuple2<i64, i32> type_all_i32_i64() => _func36();
  i64 dispatch(i32 arg0, i64 arg1) => _func37(arg0, arg1);
  i64 dispatch_structural_i64(i32 arg0) => _func38(arg0);
  i32 dispatch_structural_i32(i32 arg0) => _func39(arg0);
  f32 dispatch_structural_f32(i32 arg0) => _func40(arg0);
  f64 dispatch_structural_f64(i32 arg0) => _func41(arg0);
  i64 fac_i64(i64 arg0) => _func42(arg0);
  i64 fib_i64(i64 arg0) => _func43(arg0);
  i32 fac_i32(i32 arg0) => _func44(arg0);
  f32 fac_f32(f32 arg0) => _func45(arg0);
  f64 fac_f64(f64 arg0) => _func46(arg0);
  i32 fib_i32(i32 arg0) => _func47(arg0);
  f32 fib_f32(f32 arg0) => _func48(arg0);
  f64 fib_f64(f64 arg0) => _func49(arg0);
  i32 even(i32 arg0) => _even(arg0);
  i32 odd(i32 arg0) => _odd(arg0);
  void runaway() => _runaway();
  void mutual_runaway() => _func53();
  i32 as_select_first() => _func55();
  i32 as_select_mid() => _func56();
  i32 as_select_last() => _func57();
  i32 as_if_condition() => _func58();
  i64 as_br_if_first() => _func59();
  i32 as_br_if_last() => _func60();
  f32 as_br_table_first() => _func61();
  i32 as_br_table_last() => _func62();
  void as_store_first() => _func63();
  void as_store_last() => _func64();
  i32 as_memory_grow_value() => _func65();
  i32 as_return_value() => _func66();
  void as_drop_operand() => _func67();
  f32 as_br_value() => _func68();
  f64 as_local_set_value() => _func69();
  f64 as_local_tee_value() => _func70();
  f64 as_global_set_value() => _func71();
  i32 as_load_operand() => _func72();
  f32 as_unary_operand() => _func73();
  i32 as_binary_left() => _func74();
  i32 as_binary_right() => _func75();
  i32 as_test_operand() => _func76();
  i32 as_compare_left() => _func77();
  i32 as_compare_right() => _func78();
  i64 as_convert_operand() => _func79();

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

  Tuple2<f64, i32> _func04() {
    final frame = Frame(this);
    frame.f64_const(3940.0);
    frame.i32_const(32);
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

  Tuple2<i64, i32> _func10(i32 arg0, i64 arg1) {
    final frame = Frame(this);
    frame.push(arg1);
    frame.push(arg0);
    return Tuple2.from(frame.stack);
  }

  i64 _func11(i32 arg0, i64 arg1) {
    final frame = Frame(this);
    frame.push(arg1);
    return frame.pop();
  }

  f64 _func12(i64 arg0, f64 arg1) {
    final frame = Frame(this);
    frame.push(arg1);
    return frame.pop();
  }

  i32 _func13(f32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg1);
    return frame.pop();
  }

  f32 _func14(f64 arg0, f32 arg1) {
    final frame = Frame(this);
    frame.push(arg1);
    return frame.pop();
  }

  i32 _func15(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    return frame.pop();
  }

  i64 _func16(i64 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    return frame.pop();
  }

  f32 _func17(f32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    return frame.pop();
  }

  f64 _func18(f64 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    return frame.pop();
  }

  void _func19() {
    final frame = Frame(this);
    frame.i32_const(0);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      func();
    }
    frame.i64_const(0);
    frame.i32_const(0);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType20) throw Trap('indirect call type mismatch');
      var t0 = frame.pop();
      func(t0);
    }
    frame.i64_const(0);
    frame.f64_const(0.0);
    frame.i32_const(0);
    frame.i64_const(0);
    frame.i32_const(0);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType21) throw Trap('indirect call type mismatch');
      var t3 = frame.pop();
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      func(t0, t1, t2, t3);
    }
    frame.i32_const(0);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      func();
    }
    frame.i32_const(0);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType1) throw Trap('indirect call type mismatch');
      frame.push(func());
    }
    frame.i32_eqz();
    frame.drop();
    frame.i32_const(0);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType1) throw Trap('indirect call type mismatch');
      frame.push(func());
    }
    frame.i32_eqz();
    frame.drop();
    frame.i64_const(0);
    frame.i32_const(0);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType22) throw Trap('indirect call type mismatch');
      var t0 = frame.pop();
      frame.push(func(t0));
    }
    frame.i32_eqz();
    frame.drop();
    frame.i64_const(0);
    frame.f64_const(0.0);
    frame.i32_const(0);
    frame.i64_const(0);
    frame.i32_const(0);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType23) throw Trap('indirect call type mismatch');
      var t3 = frame.pop();
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1, t2, t3));
    }
    frame.i32_eqz();
    frame.drop();
    frame.i64_const(0);
    frame.i32_const(0);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType7) throw Trap('indirect call type mismatch');
      var t0 = frame.pop();
      frame.push(func(t0));
    }
    frame.i64_eqz();
    frame.drop();
  }

  i32 _func20() {
    final frame = Frame(this);
    frame.i32_const(0);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType1) throw Trap('indirect call type mismatch');
      frame.push(func());
    }
    return frame.pop();
  }

  i64 _func21() {
    final frame = Frame(this);
    frame.i32_const(1);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType2) throw Trap('indirect call type mismatch');
      frame.push(func());
    }
    return frame.pop();
  }

  f32 _func22() {
    final frame = Frame(this);
    frame.i32_const(2);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType3) throw Trap('indirect call type mismatch');
      frame.push(func());
    }
    return frame.pop();
  }

  f64 _func23() {
    final frame = Frame(this);
    frame.i32_const(3);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType4) throw Trap('indirect call type mismatch');
      frame.push(func());
    }
    return frame.pop();
  }

  Tuple2<f64, i32> _func24() {
    final frame = Frame(this);
    frame.i32_const(29);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType5) throw Trap('indirect call type mismatch');
      func().pushTo(frame.stack);
    }
    return Tuple2.from(frame.stack);
  }

  i64 _func25() {
    final frame = Frame(this);
    frame.i64_const(100);
    frame.i32_const(5);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType7) throw Trap('indirect call type mismatch');
      var t0 = frame.pop();
      frame.push(func(t0));
    }
    return frame.pop();
  }

  i32 _func26() {
    final frame = Frame(this);
    frame.i32_const(32);
    frame.i32_const(4);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType6) throw Trap('indirect call type mismatch');
      var t0 = frame.pop();
      frame.push(func(t0));
    }
    return frame.pop();
  }

  i64 _func27() {
    final frame = Frame(this);
    frame.i64_const(64);
    frame.i32_const(5);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType7) throw Trap('indirect call type mismatch');
      var t0 = frame.pop();
      frame.push(func(t0));
    }
    return frame.pop();
  }

  f32 _func28() {
    final frame = Frame(this);
    frame.f32_const(1.3200000524520874);
    frame.i32_const(6);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType8) throw Trap('indirect call type mismatch');
      var t0 = frame.pop();
      frame.push(func(t0));
    }
    return frame.pop();
  }

  f64 _func29() {
    final frame = Frame(this);
    frame.f64_const(1.64);
    frame.i32_const(7);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType9) throw Trap('indirect call type mismatch');
      var t0 = frame.pop();
      frame.push(func(t0));
    }
    return frame.pop();
  }

  i32 _func30() {
    final frame = Frame(this);
    frame.f32_const(32.099998474121094);
    frame.i32_const(32);
    frame.i32_const(8);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType12) throw Trap('indirect call type mismatch');
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1));
    }
    return frame.pop();
  }

  i64 _func31() {
    final frame = Frame(this);
    frame.i32_const(32);
    frame.i64_const(64);
    frame.i32_const(9);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType13) throw Trap('indirect call type mismatch');
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1));
    }
    return frame.pop();
  }

  f32 _func32() {
    final frame = Frame(this);
    frame.f64_const(64.0);
    frame.f32_const(32.0);
    frame.i32_const(10);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType14) throw Trap('indirect call type mismatch');
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1));
    }
    return frame.pop();
  }

  f64 _func33() {
    final frame = Frame(this);
    frame.i64_const(64);
    frame.f64_const(64.1);
    frame.i32_const(11);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType15) throw Trap('indirect call type mismatch');
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1));
    }
    return frame.pop();
  }

  Tuple2<f64, i32> _func34() {
    final frame = Frame(this);
    frame.i32_const(29);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType5) throw Trap('indirect call type mismatch');
      func().pushTo(frame.stack);
    }
    return Tuple2.from(frame.stack);
  }

  Tuple2<i32, f64> _func35() {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.f64_const(2.0);
    frame.i32_const(30);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType10) throw Trap('indirect call type mismatch');
      var t1 = frame.pop();
      var t0 = frame.pop();
      func(t0, t1).pushTo(frame.stack);
    }
    return Tuple2.from(frame.stack);
  }

  Tuple2<i64, i32> _func36() {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i64_const(2);
    frame.i32_const(31);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType11) throw Trap('indirect call type mismatch');
      var t1 = frame.pop();
      var t0 = frame.pop();
      func(t0, t1).pushTo(frame.stack);
    }
    return Tuple2.from(frame.stack);
  }

  i64 _func37(i32 arg0, i64 arg1) {
    final frame = Frame(this);
    frame.push(arg1);
    frame.push(arg0);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType7) throw Trap('indirect call type mismatch');
      var t0 = frame.pop();
      frame.push(func(t0));
    }
    return frame.pop();
  }

  i64 _func38(i32 arg0) {
    final frame = Frame(this);
    frame.i64_const(9);
    frame.push(arg0);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType17) throw Trap('indirect call type mismatch');
      var t0 = frame.pop();
      frame.push(func(t0));
    }
    return frame.pop();
  }

  i32 _func39(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(9);
    frame.push(arg0);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType16) throw Trap('indirect call type mismatch');
      var t0 = frame.pop();
      frame.push(func(t0));
    }
    return frame.pop();
  }

  f32 _func40(i32 arg0) {
    final frame = Frame(this);
    frame.f32_const(9.0);
    frame.push(arg0);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType18) throw Trap('indirect call type mismatch');
      var t0 = frame.pop();
      frame.push(func(t0));
    }
    return frame.pop();
  }

  f64 _func41(i32 arg0) {
    final frame = Frame(this);
    frame.f64_const(9.0);
    frame.push(arg0);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType19) throw Trap('indirect call type mismatch');
      var t0 = frame.pop();
      frame.push(func(t0));
    }
    return frame.pop();
  }

  i64 _func42(i64 arg0) {
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
      frame.i32_const(12);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType7) throw Trap('indirect call type mismatch');
        var t0 = frame.pop();
        frame.push(func(t0));
      }
      frame.i64_mul();
    }
    return frame.pop();
  }

  i64 _func43(i64 arg0) {
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
      frame.i32_const(13);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType7) throw Trap('indirect call type mismatch');
        var t0 = frame.pop();
        frame.push(func(t0));
      }
      frame.push(arg0);
      frame.i64_const(1);
      frame.i64_sub();
      frame.i32_const(13);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType7) throw Trap('indirect call type mismatch');
        var t0 = frame.pop();
        frame.push(func(t0));
      }
      frame.i64_add();
    }
    return frame.pop();
  }

  i32 _func44(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.i32_eqz();
    if_label_0: // => i32
    if (frame.pop() != 0) {
      frame.i32_const(1);
    } else {
      frame.push(arg0);
      frame.push(arg0);
      frame.i32_const(1);
      frame.i32_sub();
      frame.i32_const(23);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType6) throw Trap('indirect call type mismatch');
        var t0 = frame.pop();
        frame.push(func(t0));
      }
      frame.i32_mul();
    }
    return frame.pop();
  }

  f32 _func45(f32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.f32_const(0.0);
    frame.f32_eq();
    if_label_0: // => f32
    if (frame.pop() != 0) {
      frame.f32_const(1.0);
    } else {
      frame.push(arg0);
      frame.push(arg0);
      frame.f32_const(1.0);
      frame.f32_sub();
      frame.i32_const(24);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType8) throw Trap('indirect call type mismatch');
        var t0 = frame.pop();
        frame.push(func(t0));
      }
      frame.f32_mul();
    }
    return frame.pop();
  }

  f64 _func46(f64 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.f64_const(0.0);
    frame.f64_eq();
    if_label_0: // => f64
    if (frame.pop() != 0) {
      frame.f64_const(1.0);
    } else {
      frame.push(arg0);
      frame.push(arg0);
      frame.f64_const(1.0);
      frame.f64_sub();
      frame.i32_const(25);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType9) throw Trap('indirect call type mismatch');
        var t0 = frame.pop();
        frame.push(func(t0));
      }
      frame.f64_mul();
    }
    return frame.pop();
  }

  i32 _func47(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.i32_const(1);
    frame.i32_le_u();
    if_label_0: // => i32
    if (frame.pop() != 0) {
      frame.i32_const(1);
    } else {
      frame.push(arg0);
      frame.i32_const(2);
      frame.i32_sub();
      frame.i32_const(26);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType6) throw Trap('indirect call type mismatch');
        var t0 = frame.pop();
        frame.push(func(t0));
      }
      frame.push(arg0);
      frame.i32_const(1);
      frame.i32_sub();
      frame.i32_const(26);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType6) throw Trap('indirect call type mismatch');
        var t0 = frame.pop();
        frame.push(func(t0));
      }
      frame.i32_add();
    }
    return frame.pop();
  }

  f32 _func48(f32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.f32_const(1.0);
    frame.f32_le();
    if_label_0: // => f32
    if (frame.pop() != 0) {
      frame.f32_const(1.0);
    } else {
      frame.push(arg0);
      frame.f32_const(2.0);
      frame.f32_sub();
      frame.i32_const(27);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType8) throw Trap('indirect call type mismatch');
        var t0 = frame.pop();
        frame.push(func(t0));
      }
      frame.push(arg0);
      frame.f32_const(1.0);
      frame.f32_sub();
      frame.i32_const(27);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType8) throw Trap('indirect call type mismatch');
        var t0 = frame.pop();
        frame.push(func(t0));
      }
      frame.f32_add();
    }
    return frame.pop();
  }

  f64 _func49(f64 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.f64_const(1.0);
    frame.f64_le();
    if_label_0: // => f64
    if (frame.pop() != 0) {
      frame.f64_const(1.0);
    } else {
      frame.push(arg0);
      frame.f64_const(2.0);
      frame.f64_sub();
      frame.i32_const(28);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType9) throw Trap('indirect call type mismatch');
        var t0 = frame.pop();
        frame.push(func(t0));
      }
      frame.push(arg0);
      frame.f64_const(1.0);
      frame.f64_sub();
      frame.i32_const(28);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType9) throw Trap('indirect call type mismatch');
        var t0 = frame.pop();
        frame.push(func(t0));
      }
      frame.f64_add();
    }
    return frame.pop();
  }

  i32 _even(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.i32_eqz();
    if_label_0: // => i32
    if (frame.pop() != 0) {
      frame.i32_const(44);
    } else {
      frame.push(arg0);
      frame.i32_const(1);
      frame.i32_sub();
      frame.i32_const(15);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType6) throw Trap('indirect call type mismatch');
        var t0 = frame.pop();
        frame.push(func(t0));
      }
    }
    return frame.pop();
  }

  i32 _odd(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.i32_eqz();
    if_label_0: // => i32
    if (frame.pop() != 0) {
      frame.i32_const(99);
    } else {
      frame.push(arg0);
      frame.i32_const(1);
      frame.i32_sub();
      frame.i32_const(14);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType6) throw Trap('indirect call type mismatch');
        var t0 = frame.pop();
        frame.push(func(t0));
      }
    }
    return frame.pop();
  }

  void _runaway() {
    final frame = Frame(this);
    frame.i32_const(16);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      func();
    }
  }

  void _func53() {
    final frame = Frame(this);
    frame.i32_const(18);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      func();
    }
  }

  void _func54() {
    final frame = Frame(this);
    frame.i32_const(17);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      func();
    }
  }

  i32 _func55() {
    final frame = Frame(this);
    frame.i32_const(0);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType1) throw Trap('indirect call type mismatch');
      frame.push(func());
    }
    frame.i32_const(2);
    frame.i32_const(3);
    frame.select();
    return frame.pop();
  }

  i32 _func56() {
    final frame = Frame(this);
    frame.i32_const(2);
    frame.i32_const(0);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType1) throw Trap('indirect call type mismatch');
      frame.push(func());
    }
    frame.i32_const(3);
    frame.select();
    return frame.pop();
  }

  i32 _func57() {
    final frame = Frame(this);
    frame.i32_const(2);
    frame.i32_const(3);
    frame.i32_const(0);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType1) throw Trap('indirect call type mismatch');
      frame.push(func());
    }
    frame.select();
    return frame.pop();
  }

  i32 _func58() {
    final frame = Frame(this);
    frame.i32_const(0);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType1) throw Trap('indirect call type mismatch');
      frame.push(func());
    }
    if_label_0: // => i32
    if (frame.pop() != 0) {
      frame.i32_const(1);
    } else {
      frame.i32_const(2);
    }
    return frame.pop();
  }

  i64 _func59() {
    final frame = Frame(this);
    block_label_0: // => i64
    {
      frame.i32_const(1);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType2) throw Trap('indirect call type mismatch');
        frame.push(func());
      }
      frame.i32_const(2);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
    }
    return frame.pop();
  }

  i32 _func60() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(2);
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType1) throw Trap('indirect call type mismatch');
        frame.push(func());
      }
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
    }
    return frame.pop();
  }

  f32 _func61() {
    final frame = Frame(this);
    block_label_0: // => f32
    {
      frame.i32_const(2);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType3) throw Trap('indirect call type mismatch');
        frame.push(func());
      }
      frame.i32_const(2);
      var t0 = frame.pop();
      switch (t0) {
        case 0:
          frame.unwindTo(0, 1);
          break block_label_0;
        default:
          frame.unwindTo(0, 1);
          break block_label_0;
      }
    }
    return frame.pop();
  }

  i32 _func62() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(2);
      frame.i32_const(0);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType1) throw Trap('indirect call type mismatch');
        frame.push(func());
      }
      var t0 = frame.pop();
      switch (t0) {
        case 0:
          frame.unwindTo(0, 1);
          break block_label_0;
        default:
          frame.unwindTo(0, 1);
          break block_label_0;
      }
    }
    return frame.pop();
  }

  void _func63() {
    final frame = Frame(this);
    frame.i32_const(0);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType1) throw Trap('indirect call type mismatch');
      frame.push(func());
    }
    frame.i32_const(1);
    frame.i32_store(2, 0);
  }

  void _func64() {
    final frame = Frame(this);
    frame.i32_const(10);
    frame.i32_const(3);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType4) throw Trap('indirect call type mismatch');
      frame.push(func());
    }
    frame.f64_store(3, 0);
  }

  i32 _func65() {
    final frame = Frame(this);
    frame.i32_const(0);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType1) throw Trap('indirect call type mismatch');
      frame.push(func());
    }
    frame.memory_grow(0);
    return frame.pop();
  }

  i32 _func66() {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(4);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType6) throw Trap('indirect call type mismatch');
      var t0 = frame.pop();
      frame.push(func(t0));
    }
    return frame.pop();
    return frame.pop();
  }

  void _func67() {
    final frame = Frame(this);
    frame.i64_const(1);
    frame.i32_const(5);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType7) throw Trap('indirect call type mismatch');
      var t0 = frame.pop();
      frame.push(func(t0));
    }
    frame.drop();
  }

  f32 _func68() {
    final frame = Frame(this);
    block_label_0: // => f32
    {
      frame.f32_const(1.0);
      frame.i32_const(6);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType8) throw Trap('indirect call type mismatch');
        var t0 = frame.pop();
        frame.push(func(t0));
      }
      frame.unwindTo(0, 1);
      break block_label_0;
    }
    return frame.pop();
  }

  f64 _func69() {
    f64 local0 = 0;

    final frame = Frame(this);
    frame.f64_const(1.0);
    frame.i32_const(7);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType9) throw Trap('indirect call type mismatch');
      var t0 = frame.pop();
      frame.push(func(t0));
    }
    local0 = frame.pop();
    frame.push(local0);
    return frame.pop();
  }

  f64 _func70() {
    f64 local0 = 0;

    final frame = Frame(this);
    frame.f64_const(1.0);
    frame.i32_const(7);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType9) throw Trap('indirect call type mismatch');
      var t0 = frame.pop();
      frame.push(func(t0));
    }
    local0 = frame.peek();
    return frame.pop();
  }

  f64 _func71() {
    final frame = Frame(this);
    frame.f64_const(1.0);
    frame.i32_const(7);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType9) throw Trap('indirect call type mismatch');
      var t0 = frame.pop();
      frame.push(func(t0));
    }
    globals.a = frame.pop();
    frame.push(globals.a);
    return frame.pop();
  }

  i32 _func72() {
    final frame = Frame(this);
    frame.i32_const(0);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType1) throw Trap('indirect call type mismatch');
      frame.push(func());
    }
    frame.i32_load(2, 0);
    return frame.pop();
  }

  f32 _func73() {
    final frame = Frame(this);
    block_label_0: // => f32
    {
      frame.f32_const(0.0);
      frame.i32_const(6);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType8) throw Trap('indirect call type mismatch');
        var t0 = frame.pop();
        frame.push(func(t0));
      }
      frame.f32_sqrt();
    }
    return frame.pop();
  }

  i32 _func74() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.i32_const(4);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType6) throw Trap('indirect call type mismatch');
        var t0 = frame.pop();
        frame.push(func(t0));
      }
      frame.i32_const(10);
      frame.i32_add();
    }
    return frame.pop();
  }

  i32 _func75() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(10);
      frame.i32_const(1);
      frame.i32_const(4);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType6) throw Trap('indirect call type mismatch');
        var t0 = frame.pop();
        frame.push(func(t0));
      }
      frame.i32_sub();
    }
    return frame.pop();
  }

  i32 _func76() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.i32_const(4);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType6) throw Trap('indirect call type mismatch');
        var t0 = frame.pop();
        frame.push(func(t0));
      }
      frame.i32_eqz();
    }
    return frame.pop();
  }

  i32 _func77() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.i32_const(4);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType6) throw Trap('indirect call type mismatch');
        var t0 = frame.pop();
        frame.push(func(t0));
      }
      frame.i32_const(10);
      frame.i32_le_u();
    }
    return frame.pop();
  }

  i32 _func78() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(10);
      frame.i32_const(1);
      frame.i32_const(4);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType6) throw Trap('indirect call type mismatch');
        var t0 = frame.pop();
        frame.push(func(t0));
      }
      frame.i32_ne();
    }
    return frame.pop();
  }

  i64 _func79() {
    final frame = Frame(this);
    block_label_0: // => i64
    {
      frame.i32_const(1);
      frame.i32_const(4);
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType6) throw Trap('indirect call type mismatch');
        var t0 = frame.pop();
        frame.push(func(t0));
      }
      frame.i64_extend_i32_s();
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
      _even,
      _odd,
      _runaway,
      _func53,
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
      _func67,
      _func68,
      _func69,
      _func70,
      _func71,
      _func72,
      _func73,
      _func74,
      _func75,
      _func76,
      _func77,
      _func78,
      _func79
    ];
  }
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = i32 Function();
typedef FunctionType2 = i64 Function();
typedef FunctionType3 = f32 Function();
typedef FunctionType4 = f64 Function();
typedef FunctionType5 = Tuple2<f64, i32> Function();
typedef FunctionType6 = i32 Function(i32);
typedef FunctionType7 = i64 Function(i64);
typedef FunctionType8 = f32 Function(f32);
typedef FunctionType9 = f64 Function(f64);
typedef FunctionType10 = Tuple2<i32, f64> Function(i32, f64);
typedef FunctionType11 = Tuple2<i64, i32> Function(i32, i64);
typedef FunctionType12 = i32 Function(f32, i32);
typedef FunctionType13 = i64 Function(i32, i64);
typedef FunctionType14 = f32 Function(f64, f32);
typedef FunctionType15 = f64 Function(i64, f64);
typedef FunctionType16 = i32 Function(i32);
typedef FunctionType17 = i64 Function(i64);
typedef FunctionType18 = f32 Function(f32);
typedef FunctionType19 = f64 Function(f64);
typedef FunctionType20 = void Function(i64);
typedef FunctionType21 = void Function(i64, f64, i32, i64);
typedef FunctionType22 = i32 Function(i64);
typedef FunctionType23 = i32 Function(i64, f64, i32, i64);
typedef FunctionType24 = Tuple2<i32, f64> Function();
typedef FunctionType25 = Tuple2<i64, i32> Function();
typedef FunctionType26 = i64 Function(i32);
typedef FunctionType27 = f32 Function(i32);
typedef FunctionType28 = f64 Function(i32);

class Globals {
  f64 a = 10.0;
}

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final CallIndirect0Module module;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table0, 0, 0, 32, [
      0,
      1,
      2,
      3,
      5,
      6,
      7,
      8,
      13,
      11,
      14,
      12,
      42,
      43,
      50,
      51,
      52,
      53,
      54,
      15,
      16,
      17,
      18,
      44,
      45,
      46,
      47,
      48,
      49,
      4,
      9,
      10
    ]); /* segment0 */
  }
}
