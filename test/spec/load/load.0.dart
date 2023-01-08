// Generated from test/spec/load/load.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Load0Module implements Module {
  Load0Module() {
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

  i32 as_br_value() => _func00();
  void as_br_if_cond() => _func01();
  i32 as_br_if_value() => _func02();
  i32 as_br_if_value_cond() => _func03();
  void as_br_table_index() => _func04();
  i32 as_br_table_value() => _func05();
  i32 as_br_table_value_index() => _func06();
  i32 as_return_value() => _func07();
  i32 as_if_cond() => _func08();
  i32 as_if_then() => _func09();
  i32 as_if_else() => _func10();
  i32 as_select_first(i32 arg0, i32 arg1) => _func11(arg0, arg1);
  i32 as_select_second(i32 arg0, i32 arg1) => _func12(arg0, arg1);
  i32 as_select_cond() => _func13();
  i32 as_call_first() => _func15();
  i32 as_call_mid() => _func16();
  i32 as_call_last() => _func17();
  i32 as_call_indirect_first() => _func18();
  i32 as_call_indirect_mid() => _func19();
  i32 as_call_indirect_last() => _func20();
  i32 as_call_indirect_index() => _func21();
  void as_local_set_value() => _func22();
  i32 as_local_tee_value() => _func23();
  void as_global_set_value() => _func24();
  i32 as_load_address() => _func25();
  i32 as_loadN_address() => _func26();
  void as_store_address() => _func27();
  void as_store_value() => _func28();
  void as_storeN_address() => _func29();
  void as_storeN_value() => _func30();
  i32 as_unary_operand() => _func31();
  i32 as_binary_left() => _func32();
  i32 as_binary_right() => _func33();
  i32 as_test_operand() => _func34();
  i32 as_compare_left() => _func35();
  i32 as_compare_right() => _func36();
  i32 as_memory_grow_size() => _func37();

  i32 _func00() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(0);
      frame.i32_load(2, 0);
      break block_label_0;
    }
    return frame.pop();
  }

  void _func01() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(0);
      frame.i32_load(2, 0);
      if (frame.pop() != 0) {
        break block_label_0;
      }
    }
  }

  i32 _func02() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(0);
      frame.i32_load(2, 0);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.drop();
      frame.i32_const(7);
    }
    return frame.pop();
  }

  i32 _func03() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(6);
      frame.i32_const(0);
      frame.i32_load(2, 0);
      if (frame.pop() != 0) {
        break block_label_0;
      }
      frame.drop();
      frame.i32_const(7);
    }
    return frame.pop();
  }

  void _func04() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(0);
      frame.i32_load(2, 0);
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

  i32 _func05() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(0);
      frame.i32_load(2, 0);
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

  i32 _func06() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(6);
      frame.i32_const(0);
      frame.i32_load(2, 0);
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

  i32 _func07() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    return frame.pop();
    return frame.pop();
  }

  i32 _func08() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
    } else {
      frame.i32_const(1);
    }
    return frame.pop();
  }

  i32 _func09() {
    final frame = Frame(this);
    frame.i32_const(1);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      frame.i32_load(2, 0);
    } else {
      frame.i32_const(0);
    }
    return frame.pop();
  }

  i32 _func10() {
    final frame = Frame(this);
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
    } else {
      frame.i32_const(0);
      frame.i32_load(2, 0);
    }
    return frame.pop();
  }

  i32 _func11(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    frame.push(arg0);
    frame.push(arg1);
    frame.select();
    return frame.pop();
  }

  i32 _func12(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    frame.push(arg1);
    frame.select();
    return frame.pop();
  }

  i32 _func13() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(1);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    frame.select();
    return frame.pop();
  }

  i32 _f(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(this);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 _func15() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_load(2, 0);
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

  i32 _func16() {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    frame.i32_const(3);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(_f(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 _func17() {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(_f(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 _func18() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    frame.i32_const(2);
    frame.i32_const(3);
    frame.i32_const(0);
    {
      var func = table0[frame.pop()] as FunctionType0?;
      if (func == null) throw Trap('uninitialized element');
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 _func19() {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    frame.i32_const(3);
    frame.i32_const(0);
    {
      var func = table0[frame.pop()] as FunctionType0?;
      if (func == null) throw Trap('uninitialized element');
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 _func20() {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    frame.i32_const(0);
    {
      var func = table0[frame.pop()] as FunctionType0?;
      if (func == null) throw Trap('uninitialized element');
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1, t2));
    }
    return frame.pop();
  }

  i32 _func21() {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.i32_const(3);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    {
      var func = table0[frame.pop()] as FunctionType0?;
      if (func == null) throw Trap('uninitialized element');
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1, t2));
    }
    return frame.pop();
  }

  void _func22() {
    i32 local0 = 0;

    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    local0 = frame.pop();
  }

  i32 _func23() {
    i32 local0 = 0;

    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    local0 = frame.peek();
    return frame.pop();
  }

  void _func24() {
    i32 local0 = 0;

    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    globals.g = frame.pop();
  }

  i32 _func25() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    frame.i32_load(2, 0);
    return frame.pop();
  }

  i32 _func26() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    frame.i32_load8_s(0, 0);
    return frame.pop();
  }

  void _func27() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    frame.i32_const(7);
    frame.i32_store(2, 0);
  }

  void _func28() {
    final frame = Frame(this);
    frame.i32_const(2);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    frame.i32_store(2, 0);
  }

  void _func29() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_load8_s(0, 0);
    frame.i32_const(7);
    frame.i32_store8(0, 0);
  }

  void _func30() {
    final frame = Frame(this);
    frame.i32_const(2);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    frame.i32_store16(1, 0);
  }

  i32 _func31() {
    final frame = Frame(this);
    frame.i32_const(100);
    frame.i32_load(2, 0);
    frame.i32_clz();
    return frame.pop();
  }

  i32 _func32() {
    final frame = Frame(this);
    frame.i32_const(100);
    frame.i32_load(2, 0);
    frame.i32_const(10);
    frame.i32_add();
    return frame.pop();
  }

  i32 _func33() {
    final frame = Frame(this);
    frame.i32_const(10);
    frame.i32_const(100);
    frame.i32_load(2, 0);
    frame.i32_sub();
    return frame.pop();
  }

  i32 _func34() {
    final frame = Frame(this);
    frame.i32_const(100);
    frame.i32_load(2, 0);
    frame.i32_eqz();
    return frame.pop();
  }

  i32 _func35() {
    final frame = Frame(this);
    frame.i32_const(100);
    frame.i32_load(2, 0);
    frame.i32_const(10);
    frame.i32_le_s();
    return frame.pop();
  }

  i32 _func36() {
    final frame = Frame(this);
    frame.i32_const(10);
    frame.i32_const(100);
    frame.i32_load(2, 0);
    frame.i32_ne();
    return frame.pop();
  }

  i32 _func37() {
    final frame = Frame(this);
    frame.i32_const(100);
    frame.i32_load(2, 0);
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
      _func11,
      _func12,
      _func13,
      _f,
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
      _func37
    ];
  }
}

typedef FunctionType0 = i32 Function(i32, i32, i32);
typedef FunctionType1 = i32 Function();
typedef FunctionType2 = void Function();
typedef FunctionType3 = i32 Function(i32, i32);

class Globals {
  i32 g = 0;
}

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final Load0Module module;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table0, 0, 0, 1, [14]); /* segment0 */
  }
}
