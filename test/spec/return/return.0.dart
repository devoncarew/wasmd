// Generated from test/spec/return/return.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Return0Module implements Module {
  Return0Module() {
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
  void nullary() => _func09();
  f64 unary() => _func10();
  i32 as_func_first() => _func11();
  i32 as_func_mid() => _func12();
  void as_func_last() => _func13();
  i32 as_func_value() => _func14();
  void as_block_first() => _func15();
  void as_block_mid() => _func16();
  void as_block_last() => _func17();
  i32 as_block_value() => _func18();
  i32 as_loop_first() => _func19();
  i32 as_loop_mid() => _func20();
  i32 as_loop_last() => _func21();
  i32 as_br_value() => _func22();
  void as_br_if_cond() => _func23();
  i32 as_br_if_value() => _func24();
  i32 as_br_if_value_cond() => _func25();
  i64 as_br_table_index() => _func26();
  i32 as_br_table_value() => _func27();
  i32 as_br_table_value_index() => _func28();
  i64 as_return_value() => _func29();
  i32 as_if_cond() => _func30();
  i32 as_if_then(i32 arg0, i32 arg1) => _func31(arg0, arg1);
  i32 as_if_else(i32 arg0, i32 arg1) => _func32(arg0, arg1);
  i32 as_select_first(i32 arg0, i32 arg1) => _func33(arg0, arg1);
  i32 as_select_second(i32 arg0, i32 arg1) => _func34(arg0, arg1);
  i32 as_select_cond() => _func35();
  i32 as_call_first() => _func37();
  i32 as_call_mid() => _func38();
  i32 as_call_last() => _func39();
  i32 as_call_indirect_func() => _func40();
  i32 as_call_indirect_first() => _func41();
  i32 as_call_indirect_mid() => _func42();
  i32 as_call_indirect_last() => _func43();
  i32 as_local_set_value() => _func44();
  i32 as_local_tee_value() => _func45();
  i32 as_global_set_value() => _func46();
  f32 as_load_address() => _func47();
  i64 as_loadN_address() => _func48();
  i32 as_store_address() => _func49();
  i32 as_store_value() => _func50();
  i32 as_storeN_address() => _func51();
  i32 as_storeN_value() => _func52();
  f32 as_unary_operand() => _func53();
  i32 as_binary_left() => _func54();
  i64 as_binary_right() => _func55();
  i32 as_test_operand() => _func56();
  i32 as_compare_left() => _func57();
  i32 as_compare_right() => _func58();
  i32 as_convert_operand() => _func59();
  i32 as_memory_grow_size() => _func60();

  void _dummy() {
    final frame = Frame(this);
  }

  void _func01() {
    final frame = Frame(this);
    return;
    frame.i32_ctz();
    frame.drop();
  }

  void _func02() {
    final frame = Frame(this);
    return;
    frame.i64_ctz();
    frame.drop();
  }

  void _func03() {
    final frame = Frame(this);
    return;
    frame.f32_neg();
    frame.drop();
  }

  void _func04() {
    final frame = Frame(this);
    return;
    frame.f64_neg();
    frame.drop();
  }

  i32 _func05() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      return frame.pop();
      frame.i32_ctz();
    }
    return frame.pop();
  }

  i64 _func06() {
    final frame = Frame(this);
    block_label_0: // => i64
    {
      frame.i64_const(2);
      return frame.pop();
      frame.i64_ctz();
    }
    return frame.pop();
  }

  f32 _func07() {
    final frame = Frame(this);
    block_label_0: // => f32
    {
      frame.f32_const(3.0);
      return frame.pop();
      frame.f32_neg();
    }
    return frame.pop();
  }

  f64 _func08() {
    final frame = Frame(this);
    block_label_0: // => f64
    {
      frame.f64_const(4.0);
      return frame.pop();
      frame.f64_neg();
    }
    return frame.pop();
  }

  void _func09() {
    final frame = Frame(this);
    return;
  }

  f64 _func10() {
    final frame = Frame(this);
    frame.f64_const(3.0);
    return frame.pop();
    return frame.pop();
  }

  i32 _func11() {
    final frame = Frame(this);
    frame.i32_const(1);
    return frame.pop();
    frame.i32_const(2);
    return frame.pop();
  }

  i32 _func12() {
    final frame = Frame(this);
    _dummy();
    frame.i32_const(2);
    return frame.pop();
    frame.i32_const(3);
    return frame.pop();
  }

  void _func13() {
    final frame = Frame(this);
    /* nop */
    _dummy();
    return;
  }

  i32 _func14() {
    final frame = Frame(this);
    /* nop */
    _dummy();
    frame.i32_const(3);
    return frame.pop();
    return frame.pop();
  }

  void _func15() {
    final frame = Frame(this);
    block_label_0:
    {
      return;
      _dummy();
    }
  }

  void _func16() {
    final frame = Frame(this);
    block_label_0:
    {
      _dummy();
      return;
      _dummy();
    }
  }

  void _func17() {
    final frame = Frame(this);
    block_label_0:
    {
      /* nop */
      _dummy();
      return;
    }
  }

  i32 _func18() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      /* nop */
      _dummy();
      frame.i32_const(2);
      return frame.pop();
    }
    return frame.pop();
  }

  i32 _func19() {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      frame.i32_const(3);
      return frame.pop();
      frame.i32_const(2);
      break;
    }
    return frame.pop();
  }

  i32 _func20() {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      _dummy();
      frame.i32_const(4);
      return frame.pop();
      frame.i32_const(2);
      break;
    }
    return frame.pop();
  }

  i32 _func21() {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      /* nop */
      _dummy();
      frame.i32_const(5);
      return frame.pop();
      break;
    }
    return frame.pop();
  }

  i32 _func22() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(9);
      return frame.pop();
      break block_label_0;
    }
    return frame.pop();
  }

  void _func23() {
    final frame = Frame(this);
    block_label_0:
    {
      return;
      if (frame.pop() != 0) {
        break block_label_0;
      }
    }
  }

  i32 _func24() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(8);
      return frame.pop();
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.drop();
      frame.i32_const(7);
    }
    return frame.pop();
  }

  i32 _func25() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(6);
      frame.i32_const(9);
      return frame.pop();
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.drop();
      frame.i32_const(7);
    }
    return frame.pop();
  }

  i64 _func26() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i64_const(9);
      return frame.pop();
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
    frame.i64_const(-1);
    return frame.pop();
  }

  i32 _func27() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(10);
      return frame.pop();
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

  i32 _func28() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(6);
      frame.i32_const(11);
      return frame.pop();
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

  i64 _func29() {
    final frame = Frame(this);
    frame.i64_const(7);
    return frame.pop();
    return frame.pop();
    return frame.pop();
  }

  i32 _func30() {
    final frame = Frame(this);
    frame.i32_const(2);
    return frame.pop();
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
    } else {
      frame.i32_const(1);
    }
    return frame.pop();
  }

  i32 _func31(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(3);
      return frame.pop();
    } else {
      frame.push(arg1);
    }
    return frame.pop();
  }

  i32 _func32(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.push(arg1);
    } else {
      frame.i32_const(4);
      return frame.pop();
    }
    return frame.pop();
  }

  i32 _func33(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.i32_const(5);
    return frame.pop();
    frame.push(arg0);
    frame.push(arg1);
    frame.select();
    return frame.pop();
  }

  i32 _func34(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.i32_const(6);
    return frame.pop();
    frame.push(arg1);
    frame.select();
    return frame.pop();
  }

  i32 _func35() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(1);
    frame.i32_const(7);
    return frame.pop();
    frame.select();
    return frame.pop();
  }

  i32 _f(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(this);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 _func37() {
    final frame = Frame(this);
    frame.i32_const(12);
    return frame.pop();
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

  i32 _func38() {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(13);
    return frame.pop();
    frame.i32_const(3);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(_f(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 _func39() {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.i32_const(14);
    return frame.pop();
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(_f(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 _func40() {
    final frame = Frame(this);
    frame.i32_const(20);
    return frame.pop();
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
      frame.push(func(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 _func41() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(21);
    return frame.pop();
    frame.i32_const(2);
    frame.i32_const(3);
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

  i32 _func42() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(1);
    frame.i32_const(22);
    return frame.pop();
    frame.i32_const(3);
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

  i32 _func43() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.i32_const(23);
    return frame.pop();
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

  i32 _func44() {
    f32 local0 = 0;

    final frame = Frame(this);
    frame.i32_const(17);
    return frame.pop();
    local0 = frame.pop();
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 _func45() {
    i32 local0 = 0;

    final frame = Frame(this);
    frame.i32_const(1);
    return frame.pop();
    local0 = frame.peek();
    return frame.pop();
  }

  i32 _func46() {
    final frame = Frame(this);
    frame.i32_const(1);
    return frame.pop();
    globals.a = frame.pop();
    return frame.pop();
  }

  f32 _func47() {
    final frame = Frame(this);
    frame.f32_const(1.7000000476837158);
    return frame.pop();
    frame.f32_load(2, 0);
    return frame.pop();
  }

  i64 _func48() {
    final frame = Frame(this);
    frame.i64_const(30);
    return frame.pop();
    frame.i64_load8_s(0, 0);
    return frame.pop();
  }

  i32 _func49() {
    final frame = Frame(this);
    frame.i32_const(30);
    return frame.pop();
    frame.f64_const(7.0);
    frame.f64_store(3, 0);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 _func50() {
    final frame = Frame(this);
    frame.i32_const(2);
    frame.i32_const(31);
    return frame.pop();
    frame.i64_store(3, 0);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 _func51() {
    final frame = Frame(this);
    frame.i32_const(32);
    return frame.pop();
    frame.i32_const(7);
    frame.i32_store8(0, 0);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 _func52() {
    final frame = Frame(this);
    frame.i32_const(2);
    frame.i32_const(33);
    return frame.pop();
    frame.i64_store16(1, 0);
    frame.i32_const(-1);
    return frame.pop();
  }

  f32 _func53() {
    final frame = Frame(this);
    frame.f32_const(3.4000000953674316);
    return frame.pop();
    frame.f32_neg();
    return frame.pop();
  }

  i32 _func54() {
    final frame = Frame(this);
    frame.i32_const(3);
    return frame.pop();
    frame.i32_const(10);
    frame.i32_add();
    return frame.pop();
  }

  i64 _func55() {
    final frame = Frame(this);
    frame.i64_const(10);
    frame.i64_const(45);
    return frame.pop();
    frame.i64_sub();
    return frame.pop();
  }

  i32 _func56() {
    final frame = Frame(this);
    frame.i32_const(44);
    return frame.pop();
    frame.i32_eqz();
    return frame.pop();
  }

  i32 _func57() {
    final frame = Frame(this);
    frame.i32_const(43);
    return frame.pop();
    frame.f64_const(10.0);
    frame.f64_le();
    return frame.pop();
  }

  i32 _func58() {
    final frame = Frame(this);
    frame.f32_const(10.0);
    frame.i32_const(42);
    return frame.pop();
    frame.f32_ne();
    return frame.pop();
  }

  i32 _func59() {
    final frame = Frame(this);
    frame.i32_const(41);
    return frame.pop();
    frame.i32_wrap_i64();
    return frame.pop();
  }

  i32 _func60() {
    final frame = Frame(this);
    frame.i32_const(40);
    return frame.pop();
    frame.memory_grow(0);
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
      _func32,
      _func33,
      _func34,
      _func35,
      _f,
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
      _func60
    ];
  }
}

typedef FunctionType0 = i32 Function(i32, i32, i32);
typedef FunctionType1 = void Function();
typedef FunctionType2 = i32 Function();
typedef FunctionType3 = i64 Function();
typedef FunctionType4 = f32 Function();
typedef FunctionType5 = f64 Function();
typedef FunctionType6 = i32 Function(i32, i32);

class Globals {
  i32 a = 0;
}

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final Return0Module module;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table0, 0, 0, 1, [36]); /* segment0 */
  }
}
