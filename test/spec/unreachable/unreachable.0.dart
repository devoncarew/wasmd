// Generated from test/spec/unreachable/unreachable.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Unreachable0Module extends Module {
  Unreachable0Module() {
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

  i32 type_i32() => _func02();
  i32 type_i64() => _func03();
  f64 type_f32() => _func04();
  f64 type_f64() => _func05();
  i32 as_func_first() => _func06();
  i32 as_func_mid() => _func07();
  void as_func_last() => _func08();
  i32 as_func_value() => _func09();
  i32 as_block_first() => _func10();
  i32 as_block_mid() => _func11();
  void as_block_last() => _func12();
  i32 as_block_value() => _func13();
  i32 as_block_broke() => _func14();
  i32 as_loop_first() => _func15();
  i32 as_loop_mid() => _func16();
  void as_loop_last() => _func17();
  i32 as_loop_broke() => _func18();
  i32 as_br_value() => _func19();
  void as_br_if_cond() => _func20();
  i32 as_br_if_value() => _func21();
  i32 as_br_if_value_cond() => _func22();
  void as_br_table_index() => _func23();
  i32 as_br_table_value() => _func24();
  i32 as_br_table_value_2() => _func25();
  i32 as_br_table_value_index() => _func26();
  i32 as_br_table_value_and_index() => _func27();
  i64 as_return_value() => _func28();
  i32 as_if_cond() => _func29();
  i32 as_if_then(i32 arg0, i32 arg1) => _func30(arg0, arg1);
  i32 as_if_else(i32 arg0, i32 arg1) => _func31(arg0, arg1);
  i32 as_if_then_no_else(i32 arg0, i32 arg1) => _func32(arg0, arg1);
  i32 as_select_first(i32 arg0, i32 arg1) => _func33(arg0, arg1);
  i32 as_select_second(i32 arg0, i32 arg1) => _func34(arg0, arg1);
  i32 as_select_cond() => _func35();
  void as_call_first() => _func36();
  void as_call_mid() => _func37();
  void as_call_last() => _func38();
  void as_call_indirect_func() => _func39();
  void as_call_indirect_first() => _func40();
  void as_call_indirect_mid() => _func41();
  void as_call_indirect_last() => _func42();
  void as_local_set_value() => _func43();
  f32 as_local_tee_value() => _func44();
  f32 as_global_set_value() => _func45();
  f32 as_load_address() => _func46();
  i64 as_loadN_address() => _func47();
  void as_store_address() => _func48();
  void as_store_value() => _func49();
  void as_storeN_address() => _func50();
  void as_storeN_value() => _func51();
  f32 as_unary_operand() => _func52();
  i32 as_binary_left() => _func53();
  i64 as_binary_right() => _func54();
  i32 as_test_operand() => _func55();
  i32 as_compare_left() => _func56();
  i32 as_compare_right() => _func57();
  i32 as_convert_operand() => _func58();
  i32 as_memory_grow_size() => _func59();

  void _dummy() {
    final frame = Frame(this);
  }

  void _dummy3(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(this);
  }

  i32 _func02() {
    final frame = Frame(this);
    throw Trap('unreachable');
    return frame.pop();
  }

  i32 _func03() {
    final frame = Frame(this);
    throw Trap('unreachable');
    return frame.pop();
  }

  f64 _func04() {
    final frame = Frame(this);
    throw Trap('unreachable');
    return frame.pop();
  }

  f64 _func05() {
    final frame = Frame(this);
    throw Trap('unreachable');
    return frame.pop();
  }

  i32 _func06() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 _func07() {
    final frame = Frame(this);
    _dummy();
    throw Trap('unreachable');
    frame.i32_const(-1);
    return frame.pop();
  }

  void _func08() {
    final frame = Frame(this);
    _dummy();
    throw Trap('unreachable');
  }

  i32 _func09() {
    final frame = Frame(this);
    _dummy();
    throw Trap('unreachable');
    return frame.pop();
  }

  i32 _func10() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      throw Trap('unreachable');
      frame.i32_const(2);
    }
    return frame.pop();
  }

  i32 _func11() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      _dummy();
      throw Trap('unreachable');
      frame.i32_const(2);
    }
    return frame.pop();
  }

  void _func12() {
    final frame = Frame(this);
    block_label_0:
    {
      /* nop */
      _dummy();
      throw Trap('unreachable');
    }
  }

  i32 _func13() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      /* nop */
      _dummy();
      throw Trap('unreachable');
    }
    return frame.pop();
  }

  i32 _func14() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      _dummy();
      frame.i32_const(1);
      break block_label_0;
      throw Trap('unreachable');
    }
    return frame.pop();
  }

  i32 _func15() {
    final frame = Frame(this);

    loop_label_0: // => i32
    for (;;) {
      throw Trap('unreachable');
      frame.i32_const(2);
      break;
    }
    return frame.pop();
  }

  i32 _func16() {
    final frame = Frame(this);

    loop_label_0: // => i32
    for (;;) {
      _dummy();
      throw Trap('unreachable');
      frame.i32_const(2);
      break;
    }
    return frame.pop();
  }

  void _func17() {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      /* nop */
      _dummy();
      throw Trap('unreachable');
      break;
    }
  }

  i32 _func18() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      loop_label_1: // => i32
      for (;;) {
        _dummy();
        frame.i32_const(1);
        break block_label_0;
        throw Trap('unreachable');
        break;
      }
    }
    return frame.pop();
  }

  i32 _func19() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      throw Trap('unreachable');
      frame.unwindTo(0, 1);
      break block_label_0;
    }
    return frame.pop();
  }

  void _func20() {
    final frame = Frame(this);
    block_label_0:
    {
      throw Trap('unreachable');
      if (frame.pop() != 0) {
        frame.unwindTo(0, 0);
        break block_label_0;
      }
    }
  }

  i32 _func21() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      throw Trap('unreachable');
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.drop();
      frame.i32_const(7);
    }
    return frame.pop();
  }

  i32 _func22() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(6);
      throw Trap('unreachable');
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.drop();
      frame.i32_const(7);
    }
    return frame.pop();
  }

  void _func23() {
    final frame = Frame(this);
    block_label_0:
    {
      throw Trap('unreachable');
      var t0 = frame.pop();
      switch (t0) {
        case 0:
          frame.unwindTo(0, 0);
          break block_label_0;
        case 1:
          frame.unwindTo(0, 0);
          break block_label_0;
        default:
          frame.unwindTo(0, 0);
          break block_label_0;
      }
    }
  }

  i32 _func24() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      throw Trap('unreachable');
      frame.i32_const(1);
      var t0 = frame.pop();
      switch (t0) {
        case 0:
          frame.unwindTo(0, 1);
          break block_label_0;
        case 1:
          frame.unwindTo(0, 1);
          break block_label_0;
        default:
          frame.unwindTo(0, 1);
          break block_label_0;
      }

      frame.i32_const(7);
    }
    return frame.pop();
  }

  i32 _func25() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      block_label_1: // => i32
      {
        throw Trap('unreachable');
        frame.i32_const(1);
        var t0 = frame.pop();
        switch (t0) {
          case 0:
            frame.unwindTo(0, 1);
            break block_label_1;
          default:
            frame.unwindTo(0, 1);
            break block_label_0;
        }
      }
    }
    return frame.pop();
  }

  i32 _func26() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(6);
      throw Trap('unreachable');
      var t0 = frame.pop();
      switch (t0) {
        case 0:
          frame.unwindTo(0, 1);
          break block_label_0;
        default:
          frame.unwindTo(0, 1);
          break block_label_0;
      }

      frame.i32_const(7);
    }
    return frame.pop();
  }

  i32 _func27() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      throw Trap('unreachable');
      var t0 = frame.pop();
      switch (t0) {
        case 0:
          frame.unwindTo(0, 1);
          break block_label_0;
        default:
          frame.unwindTo(0, 1);
          break block_label_0;
      }

      frame.i32_const(8);
    }
    return frame.pop();
  }

  i64 _func28() {
    final frame = Frame(this);
    throw Trap('unreachable');
    return frame.pop();
    return frame.pop();
  }

  i32 _func29() {
    final frame = Frame(this);
    throw Trap('unreachable');
    if_label_0: // => i32
    if (frame.pop() != 0) {
      frame.i32_const(0);
    } else {
      frame.i32_const(1);
    }
    return frame.pop();
  }

  i32 _func30(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      throw Trap('unreachable');
    } else {
      frame.push(arg1);
    }
    return frame.pop();
  }

  i32 _func31(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      frame.push(arg1);
    } else {
      throw Trap('unreachable');
    }
    return frame.pop();
  }

  i32 _func32(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0:
    if (frame.pop() != 0) {
      throw Trap('unreachable');
    }
    frame.push(arg1);
    return frame.pop();
  }

  i32 _func33(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.push(arg0);
    frame.push(arg1);
    frame.select();
    return frame.pop();
  }

  i32 _func34(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    throw Trap('unreachable');
    frame.push(arg1);
    frame.select();
    return frame.pop();
  }

  i32 _func35() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(1);
    throw Trap('unreachable');
    frame.select();
    return frame.pop();
  }

  void _func36() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.i32_const(2);
    frame.i32_const(3);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      _dummy3(t0, t1, t2);
    }
  }

  void _func37() {
    final frame = Frame(this);
    frame.i32_const(1);
    throw Trap('unreachable');
    frame.i32_const(3);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      _dummy3(t0, t1, t2);
    }
  }

  void _func38() {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    throw Trap('unreachable');
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      _dummy3(t0, t1, t2);
    }
  }

  void _func39() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.i32_const(1);
    frame.i32_const(2);
    frame.i32_const(3);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      func(t0, t1, t2);
    }
  }

  void _func40() {
    final frame = Frame(this);
    frame.i32_const(0);
    throw Trap('unreachable');
    frame.i32_const(2);
    frame.i32_const(3);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      func(t0, t1, t2);
    }
  }

  void _func41() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(1);
    throw Trap('unreachable');
    frame.i32_const(3);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      func(t0, t1, t2);
    }
  }

  void _func42() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(1);
    frame.i32_const(2);
    throw Trap('unreachable');
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      func(t0, t1, t2);
    }
  }

  void _func43() {
    f32 local0 = 0;

    final frame = Frame(this);
    throw Trap('unreachable');
    local0 = frame.pop();
  }

  f32 _func44() {
    f32 local0 = 0;

    final frame = Frame(this);
    throw Trap('unreachable');
    local0 = frame.peek();
    return frame.pop();
  }

  f32 _func45() {
    final frame = Frame(this);
    throw Trap('unreachable');
    globals.a = frame.pop();
    return frame.pop();
  }

  f32 _func46() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.f32_load(2, 0);
    return frame.pop();
  }

  i64 _func47() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.i64_load8_s(0, 0);
    return frame.pop();
  }

  void _func48() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.f64_const(7.0);
    frame.f64_store(3, 0);
  }

  void _func49() {
    final frame = Frame(this);
    frame.i32_const(2);
    throw Trap('unreachable');
    frame.i64_store(3, 0);
  }

  void _func50() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.i32_const(7);
    frame.i32_store8(0, 0);
  }

  void _func51() {
    final frame = Frame(this);
    frame.i32_const(2);
    throw Trap('unreachable');
    frame.i64_store16(1, 0);
  }

  f32 _func52() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.f32_neg();
    return frame.pop();
  }

  i32 _func53() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.i32_const(10);
    frame.i32_add();
    return frame.pop();
  }

  i64 _func54() {
    final frame = Frame(this);
    frame.i64_const(10);
    throw Trap('unreachable');
    frame.i64_sub();
    return frame.pop();
  }

  i32 _func55() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.i32_eqz();
    return frame.pop();
  }

  i32 _func56() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.f64_const(10.0);
    frame.f64_le();
    return frame.pop();
  }

  i32 _func57() {
    final frame = Frame(this);
    frame.f32_const(10.0);
    throw Trap('unreachable');
    frame.f32_ne();
    return frame.pop();
  }

  i32 _func58() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.i32_wrap_i64();
    return frame.pop();
  }

  i32 _func59() {
    final frame = Frame(this);
    throw Trap('unreachable');
    frame.memory_grow(0);
    return frame.pop();
  }

  List<Function> _initFunctionTable() {
    return [
      _dummy,
      _dummy3,
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
      _func59
    ];
  }
}

typedef FunctionType0 = void Function(i32, i32, i32);
typedef FunctionType1 = void Function();
typedef FunctionType2 = i32 Function();
typedef FunctionType3 = f64 Function();
typedef FunctionType4 = i64 Function();
typedef FunctionType5 = i32 Function(i32, i32);
typedef FunctionType6 = f32 Function();

class Globals {
  f32 a = 0.0;
}

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final Unreachable0Module module;

  @override
  late final List<List<int>?> segments = [null];

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table0, 0, 0, 1, [1]); /* segment0 */
  }
}
