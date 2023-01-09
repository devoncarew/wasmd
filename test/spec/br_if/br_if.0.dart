// Generated from test/spec/br_if/br_if.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class BrIf0Module implements Module {
  BrIf0Module() {
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

  void type_i32() => _func01();
  void type_i64() => _func02();
  void type_f32() => _func03();
  void type_f64() => _func04();
  i32 type_i32_value() => _func05();
  i64 type_i64_value() => _func06();
  f32 type_f32_value() => _func07();
  f64 type_f64_value() => _func08();
  i32 as_block_first(i32 arg0) => _func09(arg0);
  i32 as_block_mid(i32 arg0) => _func10(arg0);
  void as_block_last(i32 arg0) => _func11(arg0);
  i32 as_block_first_value(i32 arg0) => _func12(arg0);
  i32 as_block_mid_value(i32 arg0) => _func13(arg0);
  i32 as_block_last_value(i32 arg0) => _func14(arg0);
  i32 as_loop_first(i32 arg0) => _func15(arg0);
  i32 as_loop_mid(i32 arg0) => _func16(arg0);
  void as_loop_last(i32 arg0) => _func17(arg0);
  i32 as_br_value() => _func18();
  void as_br_if_cond() => _func19();
  i32 as_br_if_value() => _func20();
  i32 as_br_if_value_cond(i32 arg0) => _func21(arg0);
  void as_br_table_index() => _func22();
  i32 as_br_table_value() => _func23();
  i32 as_br_table_value_index() => _func24();
  i64 as_return_value() => _func25();
  i32 as_if_cond(i32 arg0) => _func26(arg0);
  void as_if_then(i32 arg0, i32 arg1) => _func27(arg0, arg1);
  void as_if_else(i32 arg0, i32 arg1) => _func28(arg0, arg1);
  i32 as_select_first(i32 arg0) => _func29(arg0);
  i32 as_select_second(i32 arg0) => _func30(arg0);
  i32 as_select_cond() => _func31();
  i32 as_call_first() => _func33();
  i32 as_call_mid() => _func34();
  i32 as_call_last() => _func35();
  i32 as_call_indirect_func() => _func37();
  i32 as_call_indirect_first() => _func38();
  i32 as_call_indirect_mid() => _func39();
  i32 as_call_indirect_last() => _func40();
  i32 as_local_set_value(i32 arg0) => _func41(arg0);
  i32 as_local_tee_value(i32 arg0) => _func42(arg0);
  i32 as_global_set_value(i32 arg0) => _func43(arg0);
  i32 as_load_address() => _func44();
  i32 as_loadN_address() => _func45();
  i32 as_store_address() => _func46();
  i32 as_store_value() => _func47();
  i32 as_storeN_address() => _func48();
  i32 as_storeN_value() => _func49();
  f64 as_unary_operand() => _func50();
  i32 as_binary_left() => _func51();
  i32 as_binary_right() => _func52();
  i32 as_test_operand() => _func53();
  i32 as_compare_left() => _func54();
  i32 as_compare_right() => _func55();
  i32 as_memory_grow_size() => _func56();
  i32 nested_block_value(i32 arg0) => _func57(arg0);
  i32 nested_br_value(i32 arg0) => _func58(arg0);
  i32 nested_br_if_value(i32 arg0) => _func59(arg0);
  i32 nested_br_if_value_cond(i32 arg0) => _func60(arg0);
  i32 nested_br_table_value(i32 arg0) => _func61(arg0);
  i32 nested_br_table_value_index(i32 arg0) => _func62(arg0);

  void _dummy() {
    final frame = Frame(this);
  }

  void _func01() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(0);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.i32_ctz();
      frame.drop();
    }
  }

  void _func02() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i64_const(0);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.i64_ctz();
      frame.drop();
    }
  }

  void _func03() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.f32_const(0.0);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.f32_neg();
      frame.drop();
    }
  }

  void _func04() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.f64_const(0.0);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.f64_neg();
      frame.drop();
    }
  }

  i32 _func05() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.i32_ctz();
    }
    return frame.pop();
  }

  i64 _func06() {
    final frame = Frame(this);
    block_label_0: // => i64
    {
      frame.i64_const(2);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.i64_ctz();
    }
    return frame.pop();
  }

  f32 _func07() {
    final frame = Frame(this);
    block_label_0: // => f32
    {
      frame.f32_const(3.0);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.f32_neg();
    }
    return frame.pop();
  }

  f64 _func08() {
    final frame = Frame(this);
    block_label_0: // => f64
    {
      frame.f64_const(4.0);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.f64_neg();
    }
    return frame.pop();
  }

  i32 _func09(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      frame.push(arg0);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.i32_const(2);
      return frame.pop();
    }
    frame.i32_const(3);
    return frame.pop();
  }

  i32 _func10(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      _dummy();
      frame.push(arg0);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.i32_const(2);
      return frame.pop();
    }
    frame.i32_const(3);
    return frame.pop();
  }

  void _func11(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      _dummy();
      _dummy();
      frame.push(arg0);
      if (frame.pop() != 0) {
        break block_label_0;
      }
    }
  }

  i32 _func12(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(10);
      frame.push(arg0);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.drop();
      frame.i32_const(11);
      return frame.pop();
    }
    return frame.pop();
  }

  i32 _func13(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      _dummy();
      frame.i32_const(20);
      frame.push(arg0);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.drop();
      frame.i32_const(21);
      return frame.pop();
    }
    return frame.pop();
  }

  i32 _func14(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      _dummy();
      _dummy();
      frame.i32_const(11);
      frame.push(arg0);
      if (frame.pop() != 0) {
        break block_label_0;
      }
    }
    return frame.pop();
  }

  i32 _func15(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      loop_label_1:
      for (;;) {
        frame.push(arg0);
        if (frame.pop() != 0) {
          break block_label_0;
        }
        frame.i32_const(2);
        return frame.pop();
        break;
      }
    }
    frame.i32_const(3);
    return frame.pop();
  }

  i32 _func16(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      loop_label_1:
      for (;;) {
        _dummy();
        frame.push(arg0);
        if (frame.pop() != 0) {
          break block_label_0;
        }
        frame.i32_const(2);
        return frame.pop();
        break;
      }
    }
    frame.i32_const(4);
    return frame.pop();
  }

  void _func17(i32 arg0) {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      _dummy();
      frame.push(arg0);
      if (frame.pop() != 0) {
        return;
      }
      break;
    }
  }

  i32 _func18() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.i32_const(2);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      break block_label_0;
    }
    return frame.pop();
  }

  void _func19() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      if (frame.pop() != 0) {
        break block_label_0;
      }
    }
  }

  i32 _func20() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.i32_const(2);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.i32_const(3);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.drop();
      frame.i32_const(4);
    }
    return frame.pop();
  }

  i32 _func21(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(2);
      frame.i32_const(1);
      frame.push(arg0);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.drop();
      frame.i32_const(4);
    }
    return frame.pop();
  }

  void _func22() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      frame.i32_const(2);
      if (frame.pop() != 0) {
        break block_label_0;
      }
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

  i32 _func23() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.i32_const(2);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.i32_const(3);
      var t0 = frame.pop();
      switch (t0) {
        case 0:
          break block_label_0;

        case 1:
          break block_label_0;

        default:
          break block_label_0;
      }

      frame.i32_const(4);
    }
    return frame.pop();
  }

  i32 _func24() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(2);
      frame.i32_const(1);
      frame.i32_const(3);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      var t0 = frame.pop();
      switch (t0) {
        case 0:
          break block_label_0;

        default:
          break block_label_0;
      }

      frame.i32_const(4);
    }
    return frame.pop();
  }

  i64 _func25() {
    final frame = Frame(this);
    block_label_0: // => i64
    {
      frame.i64_const(1);
      frame.i32_const(2);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      return frame.pop();
    }
    return frame.pop();
  }

  i32 _func26(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.push(arg0);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      if_label_1:
      if (frame.pop() != 0) {
        frame.i32_const(2);
      } else {
        frame.i32_const(3);
      }
    }
    return frame.pop();
  }

  void _func27(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    block_label_0:
    {
      frame.push(arg0);
      if_label_1:
      if (frame.pop() != 0) {
        frame.push(arg1);
        if (frame.pop() != 0) {
          break block_label_0;
        }
      } else {
        _dummy();
      }
    }
  }

  void _func28(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    block_label_0:
    {
      frame.push(arg0);
      if_label_1:
      if (frame.pop() != 0) {
        _dummy();
      } else {
        frame.push(arg1);
        if (frame.pop() != 0) {
          break block_label_0;
        }
      }
    }
  }

  i32 _func29(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(3);
      frame.i32_const(10);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.i32_const(2);
      frame.push(arg0);
      frame.select();
    }
    return frame.pop();
  }

  i32 _func30(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.i32_const(3);
      frame.i32_const(10);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.push(arg0);
      frame.select();
    }
    return frame.pop();
  }

  i32 _func31() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.i32_const(2);
      frame.i32_const(3);
      frame.i32_const(10);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.select();
    }
    return frame.pop();
  }

  i32 _f(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(this);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 _func33() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(12);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.i32_const(2);
      frame.i32_const(3);
      {
        var t2 = frame.pop();
        var t1 = frame.pop();
        var t0 = frame.pop();
        frame.push(_f(t0, t1, t2));
      }
    }
    return frame.pop();
  }

  i32 _func34() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.i32_const(13);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.i32_const(3);
      {
        var t2 = frame.pop();
        var t1 = frame.pop();
        var t0 = frame.pop();
        frame.push(_f(t0, t1, t2));
      }
    }
    return frame.pop();
  }

  i32 _func35() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.i32_const(2);
      frame.i32_const(14);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      {
        var t2 = frame.pop();
        var t1 = frame.pop();
        var t0 = frame.pop();
        frame.push(_f(t0, t1, t2));
      }
    }
    return frame.pop();
  }

  i32 _func(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(this);
    frame.push(arg0);
    return frame.pop();
  }

  i32 _func37() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(4);
      frame.i32_const(10);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.i32_const(1);
      frame.i32_const(2);
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
    }
    return frame.pop();
  }

  i32 _func38() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.i32_const(4);
      frame.i32_const(10);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.i32_const(2);
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
    }
    return frame.pop();
  }

  i32 _func39() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.i32_const(2);
      frame.i32_const(4);
      frame.i32_const(10);
      if (frame.pop() != 0) {
        break block_label_0;
      }
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
    }
    return frame.pop();
  }

  i32 _func40() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.i32_const(2);
      frame.i32_const(3);
      frame.i32_const(4);
      frame.i32_const(10);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      {
        var func = table0[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        var t2 = frame.pop();
        var t1 = frame.pop();
        var t0 = frame.pop();
        frame.push(func(t0, t1, t2));
      }
    }
    return frame.pop();
  }

  i32 _func41(i32 arg0) {
    i32 local0 = 0;

    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(17);
      frame.push(arg0);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      arg0 = frame.pop();
      frame.i32_const(-1);
    }
    return frame.pop();
  }

  i32 _func42(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.push(arg0);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      arg0 = frame.peek();
      frame.i32_const(-1);
      return frame.pop();
    }
    return frame.pop();
  }

  i32 _func43(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.push(arg0);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      globals.a = frame.pop();
      frame.i32_const(-1);
      return frame.pop();
    }
    return frame.pop();
  }

  i32 _func44() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.i32_load(2, 0);
    }
    return frame.pop();
  }

  i32 _func45() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(30);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.i32_load8_s(0, 0);
    }
    return frame.pop();
  }

  i32 _func46() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(30);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.i32_const(7);
      frame.i32_store(2, 0);
      frame.i32_const(-1);
    }
    return frame.pop();
  }

  i32 _func47() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(2);
      frame.i32_const(31);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.i32_store(2, 0);
      frame.i32_const(-1);
    }
    return frame.pop();
  }

  i32 _func48() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(32);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.i32_const(7);
      frame.i32_store8(0, 0);
      frame.i32_const(-1);
    }
    return frame.pop();
  }

  i32 _func49() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(2);
      frame.i32_const(33);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.i32_store16(1, 0);
      frame.i32_const(-1);
    }
    return frame.pop();
  }

  f64 _func50() {
    final frame = Frame(this);
    block_label_0: // => f64
    {
      frame.f64_const(1.0);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.f64_neg();
    }
    return frame.pop();
  }

  i32 _func51() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.i32_const(10);
      frame.i32_add();
    }
    return frame.pop();
  }

  i32 _func52() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(10);
      frame.i32_const(1);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.i32_sub();
    }
    return frame.pop();
  }

  i32 _func53() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(0);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.i32_eqz();
    }
    return frame.pop();
  }

  i32 _func54() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.i32_const(10);
      frame.i32_le_u();
    }
    return frame.pop();
  }

  i32 _func55() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(10);
      frame.i32_const(1);
      frame.i32_const(42);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.i32_ne();
    }
    return frame.pop();
  }

  i32 _func56() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.memory_grow(0);
    }
    return frame.pop();
  }

  i32 _func57(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    block_label_0: // => i32
    {
      frame.i32_const(2);
      frame.drop();
      frame.i32_const(4);
      block_label_1: // => i32
      {
        frame.i32_const(8);
        frame.push(arg0);
        if (frame.pop() != 0) {
          break block_label_0;
        }
        frame.drop();
        frame.i32_const(16);
      }
      frame.i32_add();
    }
    frame.i32_add();
    return frame.pop();
  }

  i32 _func58(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    block_label_0: // => i32
    {
      frame.i32_const(2);
      frame.drop();
      block_label_1: // => i32
      {
        frame.i32_const(8);
        frame.push(arg0);
        if (frame.pop() != 0) {
          break block_label_0;
        }
        frame.drop();
        frame.i32_const(4);
      }
      break block_label_0;

      frame.i32_const(16);
    }
    frame.i32_add();
    return frame.pop();
  }

  i32 _func59(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    block_label_0: // => i32
    {
      frame.i32_const(2);
      frame.drop();
      block_label_1: // => i32
      {
        frame.i32_const(8);
        frame.push(arg0);
        if (frame.pop() != 0) {
          break block_label_0;
        }
        frame.drop();
        frame.i32_const(4);
      }
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.drop();
      frame.i32_const(16);
    }
    frame.i32_add();
    return frame.pop();
  }

  i32 _func60(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    block_label_0: // => i32
    {
      frame.i32_const(2);
      frame.drop();
      frame.i32_const(4);
      block_label_1: // => i32
      {
        frame.i32_const(8);
        frame.push(arg0);
        if (frame.pop() != 0) {
          break block_label_0;
        }
        frame.drop();
        frame.i32_const(1);
      }
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.drop();
      frame.i32_const(16);
    }
    frame.i32_add();
    return frame.pop();
  }

  i32 _func61(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    block_label_0: // => i32
    {
      frame.i32_const(2);
      frame.drop();
      block_label_1: // => i32
      {
        frame.i32_const(8);
        frame.push(arg0);
        if (frame.pop() != 0) {
          break block_label_0;
        }
        frame.drop();
        frame.i32_const(4);
      }
      frame.i32_const(1);
      var t0 = frame.pop();
      switch (t0) {
        default:
          break block_label_0;
      }

      frame.i32_const(16);
    }
    frame.i32_add();
    return frame.pop();
  }

  i32 _func62(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    block_label_0: // => i32
    {
      frame.i32_const(2);
      frame.drop();
      frame.i32_const(4);
      block_label_1: // => i32
      {
        frame.i32_const(8);
        frame.push(arg0);
        if (frame.pop() != 0) {
          break block_label_0;
        }
        frame.drop();
        frame.i32_const(1);
      }
      var t0 = frame.pop();
      switch (t0) {
        default:
          break block_label_0;
      }

      frame.i32_const(16);
    }
    frame.i32_add();
    return frame.pop();
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
      _f,
      _func33,
      _func34,
      _func35,
      _func,
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
      _func61,
      _func62
    ];
  }
}

typedef FunctionType0 = i32 Function(i32, i32, i32);
typedef FunctionType1 = void Function();
typedef FunctionType2 = i32 Function();
typedef FunctionType3 = i64 Function();
typedef FunctionType4 = f32 Function();
typedef FunctionType5 = f64 Function();
typedef FunctionType6 = i32 Function(i32);
typedef FunctionType7 = void Function(i32);
typedef FunctionType8 = void Function(i32, i32);

class Globals {
  i32 a = 10;
}

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final BrIf0Module module;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table0, 0, 0, 1, [36]); /* segment0 */
  }
}
