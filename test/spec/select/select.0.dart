// Generated from test/spec/select/select.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Select0Module implements Module {
  Select0Module() {
    segments.init();
  }

  @override
  final Memory memory = Memory(1);

  final Globals globals = Globals();

  final Table table0 = Table(
    1,
    1,
  );

  final Table table1 = Table(
    1,
    1,
  );

  @override
  late final List<Table> tables = [
    table0,
    table1,
  ];

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  i32 select_i32(i32 arg0, i32 arg1, i32 arg2) => _func01(arg0, arg1, arg2);
  i64 select_i64(i64 arg0, i64 arg1, i32 arg2) => _func02(arg0, arg1, arg2);
  f32 select_f32(f32 arg0, f32 arg1, i32 arg2) => _func03(arg0, arg1, arg2);
  f64 select_f64(f64 arg0, f64 arg1, i32 arg2) => _func04(arg0, arg1, arg2);
  i32 select_i32_t(i32 arg0, i32 arg1, i32 arg2) => _func05(arg0, arg1, arg2);
  i64 select_i64_t(i64 arg0, i64 arg1, i32 arg2) => _func06(arg0, arg1, arg2);
  f32 select_f32_t(f32 arg0, f32 arg1, i32 arg2) => _func07(arg0, arg1, arg2);
  f64 select_f64_t(f64 arg0, f64 arg1, i32 arg2) => _func08(arg0, arg1, arg2);
  FuncRef? select_funcref(FuncRef? arg0, FuncRef? arg1, i32 arg2) => _func09(arg0, arg1, arg2);
  ExternRef? select_externref(ExternRef? arg0, ExternRef? arg1, i32 arg2) => _func10(arg0, arg1, arg2);
  i32 as_select_first(i32 arg0) => _func11(arg0);
  i32 as_select_mid(i32 arg0) => _func12(arg0);
  i32 as_select_last(i32 arg0) => _func13(arg0);
  i32 as_loop_first(i32 arg0) => _func14(arg0);
  i32 as_loop_mid(i32 arg0) => _func15(arg0);
  i32 as_loop_last(i32 arg0) => _func16(arg0);
  void as_if_condition(i32 arg0) => _func17(arg0);
  i32 as_if_then(i32 arg0) => _func18(arg0);
  i32 as_if_else(i32 arg0) => _func19(arg0);
  i32 as_br_if_first(i32 arg0) => _func20(arg0);
  i32 as_br_if_last(i32 arg0) => _func21(arg0);
  i32 as_br_table_first(i32 arg0) => _func22(arg0);
  i32 as_br_table_last(i32 arg0) => _func23(arg0);
  i32 as_call_indirect_first(i32 arg0) => _func25(arg0);
  i32 as_call_indirect_mid(i32 arg0) => _func26(arg0);
  i32 as_call_indirect_last(i32 arg0) => _func27(arg0);
  void as_store_first(i32 arg0) => _func28(arg0);
  void as_store_last(i32 arg0) => _func29(arg0);
  i32 as_memory_grow_value(i32 arg0) => _func30(arg0);
  i32 as_call_value(i32 arg0) => _func32(arg0);
  i32 as_return_value(i32 arg0) => _func33(arg0);
  void as_drop_operand(i32 arg0) => _func34(arg0);
  i32 as_br_value(i32 arg0) => _func35(arg0);
  i32 as_local_set_value(i32 arg0) => _func36(arg0);
  i32 as_local_tee_value(i32 arg0) => _func37(arg0);
  i32 as_global_set_value(i32 arg0) => _func38(arg0);
  i32 as_load_operand(i32 arg0) => _func39(arg0);
  i32 as_unary_operand(i32 arg0) => _func40(arg0);
  i32 as_binary_operand(i32 arg0) => _func41(arg0);
  i32 as_test_operand(i32 arg0) => _func42(arg0);
  i32 as_compare_left(i32 arg0) => _func43(arg0);
  i32 as_compare_right(i32 arg0) => _func44(arg0);
  i32 as_convert_operand(i32 arg0) => _func45(arg0);

  void _dummy() {
    final frame = Frame(this);
  }

  i32 _func01(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.push(arg2);
    frame.select();
    return frame.pop();
  }

  i64 _func02(i64 arg0, i64 arg1, i32 arg2) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.push(arg2);
    frame.select();
    return frame.pop();
  }

  f32 _func03(f32 arg0, f32 arg1, i32 arg2) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.push(arg2);
    frame.select();
    return frame.pop();
  }

  f64 _func04(f64 arg0, f64 arg1, i32 arg2) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.push(arg2);
    frame.select();
    return frame.pop();
  }

  i32 _func05(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.push(arg2);
    frame.select_t(0x7f);
    return frame.pop();
  }

  i64 _func06(i64 arg0, i64 arg1, i32 arg2) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.push(arg2);
    frame.select_t(0x7e);
    return frame.pop();
  }

  f32 _func07(f32 arg0, f32 arg1, i32 arg2) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.push(arg2);
    frame.select_t(0x7d);
    return frame.pop();
  }

  f64 _func08(f64 arg0, f64 arg1, i32 arg2) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.push(arg2);
    frame.select_t(0x7c);
    return frame.pop();
  }

  FuncRef? _func09(FuncRef? arg0, FuncRef? arg1, i32 arg2) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.push(arg2);
    frame.select_t(0x70);
    return frame.pop();
  }

  ExternRef? _func10(ExternRef? arg0, ExternRef? arg1, i32 arg2) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.push(arg2);
    frame.select_t(0x6f);
    return frame.pop();
  }

  i32 _func11(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(1);
    frame.push(arg0);
    frame.select();
    frame.i32_const(2);
    frame.i32_const(3);
    frame.select();
    return frame.pop();
  }

  i32 _func12(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(2);
    frame.i32_const(0);
    frame.i32_const(1);
    frame.push(arg0);
    frame.select();
    frame.i32_const(3);
    frame.select();
    return frame.pop();
  }

  i32 _func13(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(2);
    frame.i32_const(3);
    frame.i32_const(0);
    frame.i32_const(1);
    frame.push(arg0);
    frame.select();
    frame.select();
    return frame.pop();
  }

  i32 _func14(i32 arg0) {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      frame.i32_const(2);
      frame.i32_const(3);
      frame.push(arg0);
      frame.select();
      _dummy();
      _dummy();
      break;
    }
    return frame.pop();
  }

  i32 _func15(i32 arg0) {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      _dummy();
      frame.i32_const(2);
      frame.i32_const(3);
      frame.push(arg0);
      frame.select();
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
      _dummy();
      frame.i32_const(2);
      frame.i32_const(3);
      frame.push(arg0);
      frame.select();
      break;
    }
    return frame.pop();
  }

  void _func17(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(2);
    frame.i32_const(3);
    frame.push(arg0);
    frame.select();
    if_label_0:
    if (frame.pop() != 0) {
      _dummy();
    }
  }

  i32 _func18(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(2);
      frame.i32_const(3);
      frame.push(arg0);
      frame.select();
    } else {
      frame.i32_const(4);
    }
    return frame.pop();
  }

  i32 _func19(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(2);
    } else {
      frame.i32_const(2);
      frame.i32_const(3);
      frame.push(arg0);
      frame.select();
    }
    return frame.pop();
  }

  i32 _func20(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(2);
      frame.i32_const(3);
      frame.push(arg0);
      frame.select();
      frame.i32_const(4);
      if (frame.pop() != 0) break block_label_0;
    }
    return frame.pop();
  }

  i32 _func21(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(2);
      frame.i32_const(2);
      frame.i32_const(3);
      frame.push(arg0);
      frame.select();
      if (frame.pop() != 0) break block_label_0;
    }
    return frame.pop();
  }

  i32 _func22(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(2);
      frame.i32_const(3);
      frame.push(arg0);
      frame.select();
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

  i32 _func23(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(2);
      frame.i32_const(2);
      frame.i32_const(3);
      frame.push(arg0);
      frame.select();
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

  i32 _func25(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(2);
      frame.i32_const(3);
      frame.push(arg0);
      frame.select();
      frame.i32_const(1);
      frame.i32_const(0);
      {
        var func = table1[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        var t1 = frame.pop();
        var t0 = frame.pop();
        frame.push(func(t0, t1));
      }
    }
    return frame.pop();
  }

  i32 _func26(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.i32_const(2);
      frame.i32_const(3);
      frame.push(arg0);
      frame.select();
      frame.i32_const(0);
      {
        var func = table1[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        var t1 = frame.pop();
        var t0 = frame.pop();
        frame.push(func(t0, t1));
      }
    }
    return frame.pop();
  }

  i32 _func27(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.i32_const(4);
      frame.i32_const(2);
      frame.i32_const(3);
      frame.push(arg0);
      frame.select();
      {
        var func = table1[frame.pop()];
        if (func == null) throw Trap('uninitialized element');
        if (func is! FunctionType0) throw Trap('indirect call type mismatch');
        var t1 = frame.pop();
        var t0 = frame.pop();
        frame.push(func(t0, t1));
      }
    }
    return frame.pop();
  }

  void _func28(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(4);
    frame.push(arg0);
    frame.select();
    frame.i32_const(1);
    frame.i32_store(2, 0);
  }

  void _func29(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(8);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.push(arg0);
    frame.select();
    frame.i32_store(2, 0);
  }

  i32 _func30(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.push(arg0);
    frame.select();
    frame.memory_grow(0);
    return frame.pop();
  }

  i32 _f(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    return frame.pop();
  }

  i32 _func32(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.push(arg0);
    frame.select();
    {
      var t0 = frame.pop();
      frame.push(_f(t0));
    }
    return frame.pop();
  }

  i32 _func33(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.push(arg0);
    frame.select();
    return frame.pop();
    return frame.pop();
  }

  void _func34(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.push(arg0);
    frame.select();
    frame.drop();
  }

  i32 _func35(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.i32_const(2);
      frame.push(arg0);
      frame.select();
      break block_label_0;
    }
    return frame.pop();
  }

  i32 _func36(i32 arg0) {
    i32 local0 = 0;

    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.push(arg0);
    frame.select();
    arg0 = frame.pop();
    frame.push(arg0);
    return frame.pop();
  }

  i32 _func37(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.push(arg0);
    frame.select();
    arg0 = frame.peek();
    return frame.pop();
  }

  i32 _func38(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.push(arg0);
    frame.select();
    globals.a = frame.pop();
    frame.push(globals.a);
    return frame.pop();
  }

  i32 _func39(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(4);
    frame.push(arg0);
    frame.select();
    frame.i32_load(2, 0);
    return frame.pop();
  }

  i32 _func40(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(1);
    frame.push(arg0);
    frame.select();
    frame.i32_eqz();
    return frame.pop();
  }

  i32 _func41(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.push(arg0);
    frame.select();
    frame.i32_const(1);
    frame.i32_const(2);
    frame.push(arg0);
    frame.select();
    frame.i32_mul();
    return frame.pop();
  }

  i32 _func42(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(0);
      frame.i32_const(1);
      frame.push(arg0);
      frame.select();
      frame.i32_eqz();
    }
    return frame.pop();
  }

  i32 _func43(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.i32_const(2);
      frame.push(arg0);
      frame.select();
      frame.i32_const(1);
      frame.i32_le_s();
    }
    return frame.pop();
  }

  i32 _func44(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.i32_const(0);
      frame.i32_const(1);
      frame.push(arg0);
      frame.select();
      frame.i32_ne();
    }
    return frame.pop();
  }

  i32 _func45(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i64_const(1);
      frame.i64_const(0);
      frame.push(arg0);
      frame.select();
      frame.i32_wrap_i64();
    }
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
      _func,
      _func25,
      _func26,
      _func27,
      _func28,
      _func29,
      _func30,
      _f,
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
      _func45
    ];
  }
}

typedef FunctionType0 = i32 Function(i32, i32);
typedef FunctionType1 = void Function();
typedef FunctionType2 = i32 Function(i32, i32, i32);
typedef FunctionType3 = i64 Function(i64, i64, i32);
typedef FunctionType4 = f32 Function(f32, f32, i32);
typedef FunctionType5 = f64 Function(f64, f64, i32);
typedef FunctionType6 = FuncRef? Function(FuncRef?, FuncRef?, i32);
typedef FunctionType7 = ExternRef? Function(ExternRef?, ExternRef?, i32);
typedef FunctionType8 = i32 Function(i32);
typedef FunctionType9 = void Function(i32);

class Globals {
  i32 a = 10;
}

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final Select0Module module;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table0, 0, 0, 1, [0]); /* segment0 */
    copyTo(module.table1, 0, 0, 1, [24]); /* segment1 */
  }
}
