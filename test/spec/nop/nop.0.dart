// Generated from test/spec/nop/nop.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Nop0Module implements Module {
  Nop0Module() {
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

  i32 as_func_first() => _func02();
  i32 as_func_mid() => _func03();
  i32 as_func_last() => _func04();
  i32 as_func_everywhere() => _func05();
  void as_drop_first(i32 arg0) => _func06(arg0);
  void as_drop_last(i32 arg0) => _func07(arg0);
  void as_drop_everywhere(i32 arg0) => _func08(arg0);
  i32 as_select_first(i32 arg0) => _func09(arg0);
  i32 as_select_mid1(i32 arg0) => _func10(arg0);
  i32 as_select_mid2(i32 arg0) => _func11(arg0);
  i32 as_select_last(i32 arg0) => _func12(arg0);
  i32 as_select_everywhere(i32 arg0) => _func13(arg0);
  i32 as_block_first() => _func14();
  i32 as_block_mid() => _func15();
  i32 as_block_last() => _func16();
  i32 as_block_everywhere() => _func17();
  i32 as_loop_first() => _func18();
  i32 as_loop_mid() => _func19();
  i32 as_loop_last() => _func20();
  i32 as_loop_everywhere() => _func21();
  void as_if_condition(i32 arg0) => _func22(arg0);
  void as_if_then(i32 arg0) => _func23(arg0);
  void as_if_else(i32 arg0) => _func24(arg0);
  i32 as_br_first(i32 arg0) => _func25(arg0);
  i32 as_br_last(i32 arg0) => _func26(arg0);
  i32 as_br_everywhere(i32 arg0) => _func27(arg0);
  i32 as_br_if_first(i32 arg0) => _func28(arg0);
  i32 as_br_if_mid(i32 arg0) => _func29(arg0);
  i32 as_br_if_last(i32 arg0) => _func30(arg0);
  i32 as_br_if_everywhere(i32 arg0) => _func31(arg0);
  i32 as_br_table_first(i32 arg0) => _func32(arg0);
  i32 as_br_table_mid(i32 arg0) => _func33(arg0);
  i32 as_br_table_last(i32 arg0) => _func34(arg0);
  i32 as_br_table_everywhere(i32 arg0) => _func35(arg0);
  i32 as_return_first(i32 arg0) => _func36(arg0);
  i32 as_return_last(i32 arg0) => _func37(arg0);
  i32 as_return_everywhere(i32 arg0) => _func38(arg0);
  i32 as_call_first(i32 arg0, i32 arg1, i32 arg2) => _func39(arg0, arg1, arg2);
  i32 as_call_mid1(i32 arg0, i32 arg1, i32 arg2) => _func40(arg0, arg1, arg2);
  i32 as_call_mid2(i32 arg0, i32 arg1, i32 arg2) => _func41(arg0, arg1, arg2);
  i32 as_call_last(i32 arg0, i32 arg1, i32 arg2) => _func42(arg0, arg1, arg2);
  i32 as_call_everywhere(i32 arg0, i32 arg1, i32 arg2) => _func43(arg0, arg1, arg2);
  i32 as_unary_first(i32 arg0) => _func44(arg0);
  i32 as_unary_last(i32 arg0) => _func45(arg0);
  i32 as_unary_everywhere(i32 arg0) => _func46(arg0);
  i32 as_binary_first(i32 arg0) => _func47(arg0);
  i32 as_binary_mid(i32 arg0) => _func48(arg0);
  i32 as_binary_last(i32 arg0) => _func49(arg0);
  i32 as_binary_everywhere(i32 arg0) => _func50(arg0);
  i32 as_test_first(i32 arg0) => _func51(arg0);
  i32 as_test_last(i32 arg0) => _func52(arg0);
  i32 as_test_everywhere(i32 arg0) => _func53(arg0);
  i32 as_compare_first(i32 arg0) => _func54(arg0);
  i32 as_compare_mid(i32 arg0) => _func55(arg0);
  i32 as_compare_last(i32 arg0) => _func56(arg0);
  i32 as_compare_everywhere(i32 arg0) => _func57(arg0);
  i32 as_memory_grow_first(i32 arg0) => _func58(arg0);
  i32 as_memory_grow_last(i32 arg0) => _func59(arg0);
  i32 as_memory_grow_everywhere(i32 arg0) => _func60(arg0);
  i32 as_call_indirect_first() => _func62();
  i32 as_call_indirect_mid1() => _func63();
  i32 as_call_indirect_mid2() => _func64();
  i32 as_call_indirect_last() => _func65();
  i32 as_call_indirect_everywhere() => _func66();
  i32 as_local_set_first(i32 arg0) => _func67(arg0);
  i32 as_local_set_last(i32 arg0) => _func68(arg0);
  i32 as_local_set_everywhere(i32 arg0) => _func69(arg0);
  i32 as_local_tee_first(i32 arg0) => _func70(arg0);
  i32 as_local_tee_last(i32 arg0) => _func71(arg0);
  i32 as_local_tee_everywhere(i32 arg0) => _func72(arg0);
  i32 as_global_set_first() => _func73();
  i32 as_global_set_last() => _func74();
  i32 as_global_set_everywhere() => _func75();
  i32 as_load_first(i32 arg0) => _func76(arg0);
  i32 as_load_last(i32 arg0) => _func77(arg0);
  i32 as_load_everywhere(i32 arg0) => _func78(arg0);
  void as_store_first(i32 arg0, i32 arg1) => _func79(arg0, arg1);
  void as_store_mid(i32 arg0, i32 arg1) => _func80(arg0, arg1);
  void as_store_last(i32 arg0, i32 arg1) => _func81(arg0, arg1);
  void as_store_everywhere(i32 arg0, i32 arg1) => _func82(arg0, arg1);

  void _dummy() {
    final frame = Frame(this);
  }

  i32 _func01(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.push(arg2);
    frame.i32_sub();
    frame.i32_add();
    return frame.pop();
  }

  i32 _func02() {
    final frame = Frame(this);
    /* nop */
    frame.i32_const(1);
    return frame.pop();
  }

  i32 _func03() {
    final frame = Frame(this);
    _dummy();
    /* nop */
    frame.i32_const(2);
    return frame.pop();
  }

  i32 _func04() {
    final frame = Frame(this);
    _dummy();
    frame.i32_const(3);
    /* nop */
    return frame.pop();
  }

  i32 _func05() {
    final frame = Frame(this);
    /* nop */
    /* nop */
    _dummy();
    /* nop */
    frame.i32_const(4);
    /* nop */
    /* nop */
    return frame.pop();
  }

  void _func06(i32 arg0) {
    final frame = Frame(this);
    /* nop */
    frame.push(arg0);
    frame.drop();
  }

  void _func07(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    /* nop */
    frame.drop();
  }

  void _func08(i32 arg0) {
    final frame = Frame(this);
    /* nop */
    /* nop */
    frame.push(arg0);
    /* nop */
    /* nop */
    frame.drop();
  }

  i32 _func09(i32 arg0) {
    final frame = Frame(this);
    /* nop */
    frame.push(arg0);
    frame.push(arg0);
    frame.push(arg0);
    frame.select();
    return frame.pop();
  }

  i32 _func10(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    /* nop */
    frame.push(arg0);
    frame.push(arg0);
    frame.select();
    return frame.pop();
  }

  i32 _func11(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg0);
    /* nop */
    frame.push(arg0);
    frame.select();
    return frame.pop();
  }

  i32 _func12(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg0);
    frame.push(arg0);
    /* nop */
    frame.select();
    return frame.pop();
  }

  i32 _func13(i32 arg0) {
    final frame = Frame(this);
    /* nop */
    frame.push(arg0);
    /* nop */
    /* nop */
    frame.push(arg0);
    /* nop */
    /* nop */
    frame.push(arg0);
    /* nop */
    /* nop */
    frame.select();
    return frame.pop();
  }

  i32 _func14() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      /* nop */
      frame.i32_const(2);
    }
    return frame.pop();
  }

  i32 _func15() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      _dummy();
      /* nop */
      frame.i32_const(2);
    }
    return frame.pop();
  }

  i32 _func16() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      /* nop */
      _dummy();
      frame.i32_const(3);
      /* nop */
    }
    return frame.pop();
  }

  i32 _func17() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      /* nop */
      /* nop */
      _dummy();
      /* nop */
      frame.i32_const(4);
      /* nop */
      /* nop */
    }
    return frame.pop();
  }

  i32 _func18() {
    final frame = Frame(this);

    loop_label_0: // => i32
    for (;;) {
      /* nop */
      frame.i32_const(2);
      break;
    }
    return frame.pop();
  }

  i32 _func19() {
    final frame = Frame(this);

    loop_label_0: // => i32
    for (;;) {
      _dummy();
      /* nop */
      frame.i32_const(2);
      break;
    }
    return frame.pop();
  }

  i32 _func20() {
    final frame = Frame(this);

    loop_label_0: // => i32
    for (;;) {
      _dummy();
      frame.i32_const(3);
      /* nop */
      break;
    }
    return frame.pop();
  }

  i32 _func21() {
    final frame = Frame(this);

    loop_label_0: // => i32
    for (;;) {
      /* nop */
      /* nop */
      _dummy();
      /* nop */
      frame.i32_const(4);
      /* nop */
      /* nop */
      break;
    }
    return frame.pop();
  }

  void _func22(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    /* nop */
    if_label_0:
    if (frame.pop() != 0) {
      _dummy();
    }
  }

  void _func23(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0:
    if (frame.pop() != 0) {
      /* nop */
    } else {
      _dummy();
    }
  }

  void _func24(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0:
    if (frame.pop() != 0) {
      _dummy();
    } else {
      /* nop */
    }
  }

  i32 _func25(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      /* nop */
      frame.push(arg0);
      break block_label_0;
    }
    return frame.pop();
  }

  i32 _func26(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.push(arg0);
      /* nop */
      break block_label_0;
    }
    return frame.pop();
  }

  i32 _func27(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      /* nop */
      /* nop */
      frame.push(arg0);
      /* nop */
      /* nop */
      break block_label_0;
    }
    return frame.pop();
  }

  i32 _func28(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      /* nop */
      frame.push(arg0);
      frame.push(arg0);
      if (frame.pop() != 0) break block_label_0;
    }
    return frame.pop();
  }

  i32 _func29(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.push(arg0);
      /* nop */
      frame.push(arg0);
      if (frame.pop() != 0) break block_label_0;
    }
    return frame.pop();
  }

  i32 _func30(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.push(arg0);
      frame.push(arg0);
      /* nop */
      if (frame.pop() != 0) break block_label_0;
    }
    return frame.pop();
  }

  i32 _func31(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      /* nop */
      /* nop */
      frame.push(arg0);
      /* nop */
      /* nop */
      frame.push(arg0);
      /* nop */
      /* nop */
      if (frame.pop() != 0) break block_label_0;
    }
    return frame.pop();
  }

  i32 _func32(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      /* nop */
      frame.push(arg0);
      frame.push(arg0);
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

  i32 _func33(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.push(arg0);
      /* nop */
      frame.push(arg0);
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

  i32 _func34(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.push(arg0);
      frame.push(arg0);
      /* nop */
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

  i32 _func35(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      /* nop */
      /* nop */
      frame.push(arg0);
      /* nop */
      /* nop */
      frame.push(arg0);
      /* nop */
      /* nop */
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

  i32 _func36(i32 arg0) {
    final frame = Frame(this);
    /* nop */
    frame.push(arg0);
    return frame.pop();
    return frame.pop();
  }

  i32 _func37(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    /* nop */
    return frame.pop();
    return frame.pop();
  }

  i32 _func38(i32 arg0) {
    final frame = Frame(this);
    /* nop */
    /* nop */
    frame.push(arg0);
    /* nop */
    /* nop */
    return frame.pop();
    return frame.pop();
  }

  i32 _func39(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(this);
    /* nop */
    frame.push(arg0);
    frame.push(arg1);
    frame.push(arg2);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(_func01(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 _func40(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(this);
    frame.push(arg0);
    /* nop */
    frame.push(arg1);
    frame.push(arg2);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(_func01(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 _func41(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    /* nop */
    frame.push(arg2);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(_func01(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 _func42(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.push(arg2);
    /* nop */
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(_func01(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 _func43(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(this);
    /* nop */
    /* nop */
    frame.push(arg0);
    /* nop */
    /* nop */
    frame.push(arg1);
    /* nop */
    /* nop */
    frame.push(arg2);
    /* nop */
    /* nop */
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(_func01(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 _func44(i32 arg0) {
    final frame = Frame(this);
    /* nop */
    frame.push(arg0);
    frame.i32_ctz();
    return frame.pop();
  }

  i32 _func45(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    /* nop */
    frame.i32_ctz();
    return frame.pop();
  }

  i32 _func46(i32 arg0) {
    final frame = Frame(this);
    /* nop */
    /* nop */
    frame.push(arg0);
    /* nop */
    /* nop */
    frame.i32_ctz();
    return frame.pop();
  }

  i32 _func47(i32 arg0) {
    final frame = Frame(this);
    /* nop */
    frame.push(arg0);
    frame.push(arg0);
    frame.i32_add();
    return frame.pop();
  }

  i32 _func48(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    /* nop */
    frame.push(arg0);
    frame.i32_add();
    return frame.pop();
  }

  i32 _func49(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg0);
    /* nop */
    frame.i32_add();
    return frame.pop();
  }

  i32 _func50(i32 arg0) {
    final frame = Frame(this);
    /* nop */
    frame.push(arg0);
    /* nop */
    /* nop */
    frame.push(arg0);
    /* nop */
    /* nop */
    frame.i32_add();
    return frame.pop();
  }

  i32 _func51(i32 arg0) {
    final frame = Frame(this);
    /* nop */
    frame.push(arg0);
    frame.i32_eqz();
    return frame.pop();
  }

  i32 _func52(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    /* nop */
    frame.i32_eqz();
    return frame.pop();
  }

  i32 _func53(i32 arg0) {
    final frame = Frame(this);
    /* nop */
    /* nop */
    frame.push(arg0);
    /* nop */
    /* nop */
    frame.i32_eqz();
    return frame.pop();
  }

  i32 _func54(i32 arg0) {
    final frame = Frame(this);
    /* nop */
    frame.push(arg0);
    frame.push(arg0);
    frame.i32_ne();
    return frame.pop();
  }

  i32 _func55(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    /* nop */
    frame.push(arg0);
    frame.i32_ne();
    return frame.pop();
  }

  i32 _func56(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg0);
    /* nop */
    frame.i32_lt_u();
    return frame.pop();
  }

  i32 _func57(i32 arg0) {
    final frame = Frame(this);
    /* nop */
    frame.push(arg0);
    /* nop */
    /* nop */
    frame.push(arg0);
    /* nop */
    /* nop */
    frame.i32_le_s();
    return frame.pop();
  }

  i32 _func58(i32 arg0) {
    final frame = Frame(this);
    /* nop */
    frame.push(arg0);
    frame.memory_grow(0);
    return frame.pop();
  }

  i32 _func59(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    /* nop */
    frame.memory_grow(0);
    return frame.pop();
  }

  i32 _func60(i32 arg0) {
    final frame = Frame(this);
    /* nop */
    /* nop */
    frame.push(arg0);
    /* nop */
    /* nop */
    frame.memory_grow(0);
    return frame.pop();
  }

  i32 _func(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    return frame.pop();
  }

  i32 _func62() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      /* nop */
      frame.i32_const(1);
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

  i32 _func63() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      /* nop */
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

  i32 _func64() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.i32_const(2);
      /* nop */
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

  i32 _func65() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.i32_const(2);
      frame.i32_const(0);
      /* nop */
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

  i32 _func66() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      /* nop */
      /* nop */
      frame.i32_const(1);
      /* nop */
      /* nop */
      frame.i32_const(2);
      /* nop */
      /* nop */
      frame.i32_const(0);
      /* nop */
      /* nop */
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

  i32 _func67(i32 arg0) {
    final frame = Frame(this);
    /* nop */
    frame.i32_const(2);
    arg0 = frame.pop();
    frame.push(arg0);
    return frame.pop();
  }

  i32 _func68(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(2);
    /* nop */
    arg0 = frame.pop();
    frame.push(arg0);
    return frame.pop();
  }

  i32 _func69(i32 arg0) {
    final frame = Frame(this);
    /* nop */
    /* nop */
    frame.i32_const(2);
    /* nop */
    /* nop */
    arg0 = frame.pop();
    frame.push(arg0);
    return frame.pop();
  }

  i32 _func70(i32 arg0) {
    final frame = Frame(this);
    /* nop */
    frame.i32_const(2);
    arg0 = frame.peek();
    return frame.pop();
  }

  i32 _func71(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(2);
    /* nop */
    arg0 = frame.peek();
    return frame.pop();
  }

  i32 _func72(i32 arg0) {
    final frame = Frame(this);
    /* nop */
    /* nop */
    frame.i32_const(2);
    /* nop */
    /* nop */
    arg0 = frame.peek();
    return frame.pop();
  }

  i32 _func73() {
    final frame = Frame(this);
    /* nop */
    frame.i32_const(2);
    globals.a = frame.pop();
    frame.push(globals.a);
    return frame.pop();
  }

  i32 _func74() {
    final frame = Frame(this);
    frame.i32_const(2);
    /* nop */
    globals.a = frame.pop();
    frame.push(globals.a);
    return frame.pop();
  }

  i32 _func75() {
    final frame = Frame(this);
    /* nop */
    /* nop */
    frame.i32_const(2);
    /* nop */
    /* nop */
    globals.a = frame.pop();
    frame.push(globals.a);
    return frame.pop();
  }

  i32 _func76(i32 arg0) {
    final frame = Frame(this);
    /* nop */
    frame.push(arg0);
    frame.i32_load(2, 0);
    return frame.pop();
  }

  i32 _func77(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    /* nop */
    frame.i32_load(2, 0);
    return frame.pop();
  }

  i32 _func78(i32 arg0) {
    final frame = Frame(this);
    /* nop */
    /* nop */
    frame.push(arg0);
    /* nop */
    /* nop */
    frame.i32_load(2, 0);
    return frame.pop();
  }

  void _func79(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    /* nop */
    frame.push(arg0);
    frame.push(arg1);
    frame.i32_store(2, 0);
  }

  void _func80(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    /* nop */
    frame.push(arg1);
    frame.i32_store(2, 0);
  }

  void _func81(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    /* nop */
    frame.i32_store(2, 0);
  }

  void _func82(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    /* nop */
    /* nop */
    frame.push(arg0);
    /* nop */
    /* nop */
    frame.push(arg1);
    /* nop */
    /* nop */
    frame.i32_store(2, 0);
  }

  List<Function> _initFunctionTable() {
    return [
      _dummy,
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
      _func50,
      _func51,
      _func52,
      _func53,
      _func54,
      _func55,
      _func56,
      _func57,
      _func58,
      _func59,
      _func60,
      _func,
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
      _func79,
      _func80,
      _func81,
      _func82
    ];
  }
}

typedef FunctionType0 = i32 Function(i32, i32);
typedef FunctionType1 = void Function();
typedef FunctionType2 = i32 Function(i32, i32, i32);
typedef FunctionType3 = i32 Function();
typedef FunctionType4 = void Function(i32);
typedef FunctionType5 = i32 Function(i32);
typedef FunctionType6 = void Function(i32, i32);

class Globals {
  i32 a = 0;
}

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final Nop0Module module;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table0, 0, 0, 1, [61]); /* segment0 */
  }
}
