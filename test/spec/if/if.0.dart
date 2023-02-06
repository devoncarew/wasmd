// Generated from test/spec/if/if.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class If0Module extends Module {
  If0Module() {
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

  void empty(i32 arg0) => _func01(arg0);
  i32 singular(i32 arg0) => _func02(arg0);
  Tuple2<i32, i32> multi(i32 arg0) => _func03(arg0);
  i32 nested(i32 arg0, i32 arg1) => _func04(arg0, arg1);
  i32 as_select_first(i32 arg0) => _func05(arg0);
  i32 as_select_mid(i32 arg0) => _func06(arg0);
  i32 as_select_last(i32 arg0) => _func07(arg0);
  i32 as_loop_first(i32 arg0) => _func08(arg0);
  i32 as_loop_mid(i32 arg0) => _func09(arg0);
  i32 as_loop_last(i32 arg0) => _func10(arg0);
  i32 as_if_condition(i32 arg0) => _func11(arg0);
  i32 as_br_if_first(i32 arg0) => _func12(arg0);
  i32 as_br_if_last(i32 arg0) => _func13(arg0);
  i32 as_br_table_first(i32 arg0) => _func14(arg0);
  i32 as_br_table_last(i32 arg0) => _func15(arg0);
  i32 as_call_indirect_first(i32 arg0) => _func17(arg0);
  i32 as_call_indirect_mid(i32 arg0) => _func18(arg0);
  i32 as_call_indirect_last(i32 arg0) => _func19(arg0);
  void as_store_first(i32 arg0) => _func20(arg0);
  void as_store_last(i32 arg0) => _func21(arg0);
  i32 as_memory_grow_value(i32 arg0) => _func22(arg0);
  i32 as_call_value(i32 arg0) => _func24(arg0);
  i32 as_return_value(i32 arg0) => _func25(arg0);
  void as_drop_operand(i32 arg0) => _func26(arg0);
  i32 as_br_value(i32 arg0) => _func27(arg0);
  i32 as_local_set_value(i32 arg0) => _func28(arg0);
  i32 as_local_tee_value(i32 arg0) => _func29(arg0);
  i32 as_global_set_value(i32 arg0) => _func30(arg0);
  i32 as_load_operand(i32 arg0) => _func31(arg0);
  i32 as_unary_operand(i32 arg0) => _func32(arg0);
  i32 as_binary_operand(i32 arg0, i32 arg1) => _func33(arg0, arg1);
  i32 as_test_operand(i32 arg0) => _func34(arg0);
  i32 as_compare_operand(i32 arg0, i32 arg1) => _func35(arg0, arg1);
  i32 as_binary_operands(i32 arg0) => _func36(arg0);
  i32 as_compare_operands(i32 arg0) => _func37(arg0);
  i32 as_mixed_operands(i32 arg0) => _func38(arg0);
  i32 break_bare() => _func39();
  i32 break_value(i32 arg0) => _func40(arg0);
  Tuple3<i32, i32, i64> break_multi_value(i32 arg0) => _func41(arg0);
  i32 param(i32 arg0) => _func42(arg0);
  i32 params(i32 arg0) => _func43(arg0);
  i32 params_id(i32 arg0) => _func44(arg0);
  i32 param_break(i32 arg0) => _func45(arg0);
  i32 params_break(i32 arg0) => _func46(arg0);
  i32 params_id_break(i32 arg0) => _func47(arg0);
  i32 effects(i32 arg0) => _func48(arg0);
  Tuple2<i64, i32> add64_u_with_carry(i64 arg0, i64 arg1, i32 arg2) => _add64_u_with_carry(arg0, arg1, arg2);
  i64 add64_u_saturated(i64 arg0, i64 arg1) => _add64_u_saturated(arg0, arg1);
  void type_use() => _func51();

  void _dummy() {
    final frame = Frame(this);
  }

  void _func01(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0:
    if (frame.pop() != 0) {}
    frame.push(arg0);
    if_label_0:
    if (frame.pop() != 0) {}
    frame.push(arg0);
    if_label_0:
    if (frame.pop() != 0) {}
    frame.push(arg0);
    if_label_0:
    if (frame.pop() != 0) {}
  }

  i32 _func02(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0:
    if (frame.pop() != 0) {
      /* nop */
    }
    frame.push(arg0);
    if_label_0:
    if (frame.pop() != 0) {
      /* nop */
    } else {
      /* nop */
    }
    frame.push(arg0);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      frame.i32_const(7);
    } else {
      frame.i32_const(8);
    }
    return frame.pop();
  }

  Tuple2<i32, i32> _func03(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0:
    if (frame.pop() != 0) {
      _dummy();
      _dummy();
      _dummy();
    }
    frame.push(arg0);
    if_label_0:
    if (frame.pop() != 0) {
    } else {
      _dummy();
      _dummy();
      _dummy();
    }
    frame.push(arg0);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      _dummy();
      _dummy();
      frame.i32_const(8);
      _dummy();
    } else {
      _dummy();
      _dummy();
      frame.i32_const(9);
      _dummy();
    }
    frame.push(arg0);
    if_label_0: //  => i32, i64, i32
    if (frame.pop() != 0) {
      _dummy();
      _dummy();
      frame.i32_const(1);
      _dummy();
      _dummy();
      _dummy();
      frame.i64_const(2);
      _dummy();
      _dummy();
      _dummy();
      frame.i32_const(3);
      _dummy();
    } else {
      _dummy();
      _dummy();
      frame.i32_const(-1);
      _dummy();
      _dummy();
      _dummy();
      frame.i64_const(-2);
      _dummy();
      _dummy();
      _dummy();
      frame.i32_const(-3);
      _dummy();
    }
    frame.drop();
    frame.drop();
    return Tuple2.from(frame.stack);
  }

  i32 _func04(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      frame.push(arg1);
      if_label_1:
      if (frame.pop() != 0) {
        _dummy();
        block_label_2:
        {}
        /* nop */
      }
      frame.push(arg1);
      if_label_1:
      if (frame.pop() != 0) {
      } else {
        _dummy();
        block_label_2:
        {}
        /* nop */
      }
      frame.push(arg1);
      if_label_1: // => i32
      if (frame.pop() != 0) {
        _dummy();
        frame.i32_const(9);
      } else {
        _dummy();
        frame.i32_const(10);
      }
    } else {
      frame.push(arg1);
      if_label_1:
      if (frame.pop() != 0) {
        _dummy();
        block_label_2:
        {}
        /* nop */
      }
      frame.push(arg1);
      if_label_1:
      if (frame.pop() != 0) {
      } else {
        _dummy();
        block_label_2:
        {}
        /* nop */
      }
      frame.push(arg1);
      if_label_1: // => i32
      if (frame.pop() != 0) {
        _dummy();
        frame.i32_const(10);
      } else {
        _dummy();
        frame.i32_const(11);
      }
    }
    return frame.pop();
  }

  i32 _func05(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      _dummy();
      frame.i32_const(1);
    } else {
      _dummy();
      frame.i32_const(0);
    }
    frame.i32_const(2);
    frame.i32_const(3);
    frame.select();
    return frame.pop();
  }

  i32 _func06(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(2);
    frame.push(arg0);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      _dummy();
      frame.i32_const(1);
    } else {
      _dummy();
      frame.i32_const(0);
    }
    frame.i32_const(3);
    frame.select();
    return frame.pop();
  }

  i32 _func07(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(2);
    frame.i32_const(3);
    frame.push(arg0);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      _dummy();
      frame.i32_const(1);
    } else {
      _dummy();
      frame.i32_const(0);
    }
    frame.select();
    return frame.pop();
  }

  i32 _func08(i32 arg0) {
    final frame = Frame(this);

    loop_label_0: // => i32
    for (;;) {
      frame.push(arg0);
      if_label_1: // => i32
      if (frame.pop() != 0) {
        _dummy();
        frame.i32_const(1);
      } else {
        _dummy();
        frame.i32_const(0);
      }
      _dummy();
      _dummy();
      break;
    }
    return frame.pop();
  }

  i32 _func09(i32 arg0) {
    final frame = Frame(this);

    loop_label_0: // => i32
    for (;;) {
      _dummy();
      frame.push(arg0);
      if_label_1: // => i32
      if (frame.pop() != 0) {
        _dummy();
        frame.i32_const(1);
      } else {
        _dummy();
        frame.i32_const(0);
      }
      _dummy();
      break;
    }
    return frame.pop();
  }

  i32 _func10(i32 arg0) {
    final frame = Frame(this);

    loop_label_0: // => i32
    for (;;) {
      _dummy();
      _dummy();
      frame.push(arg0);
      if_label_1: // => i32
      if (frame.pop() != 0) {
        _dummy();
        frame.i32_const(1);
      } else {
        _dummy();
        frame.i32_const(0);
      }
      break;
    }
    return frame.pop();
  }

  i32 _func11(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      frame.i32_const(1);
    } else {
      frame.i32_const(0);
    }
    if_label_0: // => i32
    if (frame.pop() != 0) {
      _dummy();
      frame.i32_const(2);
    } else {
      _dummy();
      frame.i32_const(3);
    }
    return frame.pop();
  }

  i32 _func12(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.push(arg0);
      if_label_1: // => i32
      if (frame.pop() != 0) {
        _dummy();
        frame.i32_const(1);
      } else {
        _dummy();
        frame.i32_const(0);
      }
      frame.i32_const(2);
      if (frame.pop() != 0) break block_label_0;
      frame.i32_const(3);
      return frame.pop();
    }
    return frame.pop();
  }

  i32 _func13(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(2);
      frame.push(arg0);
      if_label_1: // => i32
      if (frame.pop() != 0) {
        _dummy();
        frame.i32_const(1);
      } else {
        _dummy();
        frame.i32_const(0);
      }
      if (frame.pop() != 0) break block_label_0;
      frame.i32_const(3);
      return frame.pop();
    }
    return frame.pop();
  }

  i32 _func14(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.push(arg0);
      if_label_1: // => i32
      if (frame.pop() != 0) {
        _dummy();
        frame.i32_const(1);
      } else {
        _dummy();
        frame.i32_const(0);
      }
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

  i32 _func15(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(2);
      frame.push(arg0);
      if_label_1: // => i32
      if (frame.pop() != 0) {
        _dummy();
        frame.i32_const(1);
      } else {
        _dummy();
        frame.i32_const(0);
      }
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

  i32 _func17(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.push(arg0);
      if_label_1: // => i32
      if (frame.pop() != 0) {
        _dummy();
        frame.i32_const(1);
      } else {
        _dummy();
        frame.i32_const(0);
      }
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

  i32 _func18(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(2);
      frame.push(arg0);
      if_label_1: // => i32
      if (frame.pop() != 0) {
        _dummy();
        frame.i32_const(1);
      } else {
        _dummy();
        frame.i32_const(0);
      }
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

  i32 _func19(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(2);
      frame.i32_const(0);
      frame.push(arg0);
      if_label_1: // => i32
      if (frame.pop() != 0) {
        _dummy();
        frame.i32_const(1);
      } else {
        _dummy();
        frame.i32_const(0);
      }
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

  void _func20(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      _dummy();
      frame.i32_const(1);
    } else {
      _dummy();
      frame.i32_const(0);
    }
    frame.i32_const(2);
    frame.i32_store(2, 0);
  }

  void _func21(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(2);
    frame.push(arg0);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      _dummy();
      frame.i32_const(1);
    } else {
      _dummy();
      frame.i32_const(0);
    }
    frame.i32_store(2, 0);
  }

  i32 _func22(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      frame.i32_const(1);
    } else {
      frame.i32_const(0);
    }
    frame.memory_grow(0);
    return frame.pop();
  }

  i32 _f(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    return frame.pop();
  }

  i32 _func24(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      frame.i32_const(1);
    } else {
      frame.i32_const(0);
    }
    {
      var t0 = frame.pop();
      frame.push(_f(t0));
    }
    return frame.pop();
  }

  i32 _func25(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      frame.i32_const(1);
    } else {
      frame.i32_const(0);
    }
    return frame.pop();
    return frame.pop();
  }

  void _func26(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      frame.i32_const(1);
    } else {
      frame.i32_const(0);
    }
    frame.drop();
  }

  i32 _func27(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.push(arg0);
      if_label_1: // => i32
      if (frame.pop() != 0) {
        frame.i32_const(1);
      } else {
        frame.i32_const(0);
      }
      break block_label_0;
    }
    return frame.pop();
  }

  i32 _func28(i32 arg0) {
    i32 local0 = 0;

    final frame = Frame(this);
    frame.push(arg0);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      frame.i32_const(1);
    } else {
      frame.i32_const(0);
    }
    arg0 = frame.pop();
    frame.push(arg0);
    return frame.pop();
  }

  i32 _func29(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      frame.i32_const(1);
    } else {
      frame.i32_const(0);
    }
    arg0 = frame.peek();
    return frame.pop();
  }

  i32 _func30(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      frame.i32_const(1);
    } else {
      frame.i32_const(0);
    }
    globals.a = frame.pop();
    frame.push(globals.a);
    return frame.pop();
  }

  i32 _func31(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      frame.i32_const(11);
    } else {
      frame.i32_const(10);
    }
    frame.i32_load(2, 0);
    return frame.pop();
  }

  i32 _func32(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      _dummy();
      frame.i32_const(13);
    } else {
      _dummy();
      frame.i32_const(-13);
    }
    frame.i32_ctz();
    return frame.pop();
  }

  i32 _func33(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      _dummy();
      frame.i32_const(3);
    } else {
      _dummy();
      frame.i32_const(-3);
    }
    frame.push(arg1);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      _dummy();
      frame.i32_const(4);
    } else {
      _dummy();
      frame.i32_const(-5);
    }
    frame.i32_mul();
    return frame.pop();
  }

  i32 _func34(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      _dummy();
      frame.i32_const(13);
    } else {
      _dummy();
      frame.i32_const(0);
    }
    frame.i32_eqz();
    return frame.pop();
  }

  i32 _func35(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0: // => f32
    if (frame.pop() != 0) {
      _dummy();
      frame.f32_const(3.0);
    } else {
      _dummy();
      frame.f32_const(-3.0);
    }
    frame.push(arg1);
    if_label_0: // => f32
    if (frame.pop() != 0) {
      _dummy();
      frame.f32_const(4.0);
    } else {
      _dummy();
      frame.f32_const(-4.0);
    }
    frame.f32_gt();
    return frame.pop();
  }

  i32 _func36(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0: //  => i32, i32
    if (frame.pop() != 0) {
      _dummy();
      frame.i32_const(3);
      _dummy();
      frame.i32_const(4);
    } else {
      _dummy();
      frame.i32_const(3);
      _dummy();
      frame.i32_const(-4);
    }
    frame.i32_mul();
    return frame.pop();
  }

  i32 _func37(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0: //  => f32, f32
    if (frame.pop() != 0) {
      _dummy();
      frame.f32_const(3.0);
      _dummy();
      frame.f32_const(3.0);
    } else {
      _dummy();
      frame.f32_const(-2.0);
      _dummy();
      frame.f32_const(-3.0);
    }
    frame.f32_gt();
    return frame.pop();
  }

  i32 _func38(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0: //  => i32, i32
    if (frame.pop() != 0) {
      _dummy();
      frame.i32_const(3);
      _dummy();
      frame.i32_const(4);
    } else {
      _dummy();
      frame.i32_const(-3);
      _dummy();
      frame.i32_const(-4);
    }
    frame.i32_const(5);
    frame.i32_add();
    frame.i32_mul();
    return frame.pop();
  }

  i32 _func39() {
    final frame = Frame(this);
    frame.i32_const(1);
    if_label_0:
    if (frame.pop() != 0) {
      break if_label_0;
      throw Trap('unreachable');
    }
    frame.i32_const(1);
    if_label_0:
    if (frame.pop() != 0) {
      break if_label_0;
      throw Trap('unreachable');
    } else {
      throw Trap('unreachable');
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      throw Trap('unreachable');
    } else {
      break if_label_0;
      throw Trap('unreachable');
    }
    frame.i32_const(1);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(1);
      if (frame.pop() != 0) break if_label_0;
      throw Trap('unreachable');
    }
    frame.i32_const(1);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(1);
      if (frame.pop() != 0) break if_label_0;
      throw Trap('unreachable');
    } else {
      throw Trap('unreachable');
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      throw Trap('unreachable');
    } else {
      frame.i32_const(1);
      if (frame.pop() != 0) break if_label_0;
      throw Trap('unreachable');
    }
    frame.i32_const(1);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      var t0 = frame.pop();
      switch (t0) {
        default:
          break if_label_0;
      }

      throw Trap('unreachable');
    }
    frame.i32_const(1);
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(0);
      var t0 = frame.pop();
      switch (t0) {
        default:
          break if_label_0;
      }

      throw Trap('unreachable');
    } else {
      throw Trap('unreachable');
    }
    frame.i32_const(0);
    if_label_0:
    if (frame.pop() != 0) {
      throw Trap('unreachable');
    } else {
      frame.i32_const(0);
      var t0 = frame.pop();
      switch (t0) {
        default:
          break if_label_0;
      }

      throw Trap('unreachable');
    }
    frame.i32_const(19);
    return frame.pop();
  }

  i32 _func40(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      frame.i32_const(18);
      break if_label_0;
      frame.i32_const(19);
    } else {
      frame.i32_const(21);
      break if_label_0;
      frame.i32_const(20);
    }
    return frame.pop();
  }

  Tuple3<i32, i32, i64> _func41(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    if_label_0: //  => i32, i32, i64
    if (frame.pop() != 0) {
      frame.i32_const(18);
      frame.i32_const(-18);
      frame.i64_const(18);
      break if_label_0;
      frame.i32_const(19);
      frame.i32_const(-19);
      frame.i64_const(19);
    } else {
      frame.i32_const(-18);
      frame.i32_const(18);
      frame.i64_const(-18);
      break if_label_0;
      frame.i32_const(-19);
      frame.i32_const(19);
      frame.i64_const(-19);
    }
    return Tuple3.from(frame.stack);
  }

  i32 _func42(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.push(arg0);
    if_label_0: // i32 => i32
    if (frame.pop() != 0) {
      frame.i32_const(2);
      frame.i32_add();
    } else {
      frame.i32_const(-2);
      frame.i32_add();
    }
    return frame.pop();
  }

  i32 _func43(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.push(arg0);
    if_label_0: // i32, i32 => i32
    if (frame.pop() != 0) {
      frame.i32_add();
    } else {
      frame.i32_sub();
    }
    return frame.pop();
  }

  i32 _func44(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.push(arg0);
    if_label_0: // i32, i32 => i32, i32
    if (frame.pop() != 0) {}
    frame.i32_add();
    return frame.pop();
  }

  i32 _func45(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.push(arg0);
    if_label_0: // i32 => i32
    if (frame.pop() != 0) {
      frame.i32_const(2);
      frame.i32_add();
      break if_label_0;
    } else {
      frame.i32_const(-2);
      frame.i32_add();
      break if_label_0;
    }
    return frame.pop();
  }

  i32 _func46(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.push(arg0);
    if_label_0: // i32, i32 => i32
    if (frame.pop() != 0) {
      frame.i32_add();
      break if_label_0;
    } else {
      frame.i32_sub();
      break if_label_0;
    }
    return frame.pop();
  }

  i32 _func47(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.push(arg0);
    if_label_0: // i32, i32 => i32, i32
    if (frame.pop() != 0) {
      break if_label_0;
    }
    frame.i32_add();
    return frame.pop();
  }

  i32 _func48(i32 arg0) {
    i32 local0 = 0;

    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      local0 = frame.pop();
      frame.push(arg0);
    }
    if_label_0:
    if (frame.pop() != 0) {
      frame.push(local0);
      frame.i32_const(3);
      frame.i32_mul();
      local0 = frame.pop();
      frame.push(local0);
      frame.i32_const(5);
      frame.i32_sub();
      local0 = frame.pop();
      frame.push(local0);
      frame.i32_const(7);
      frame.i32_mul();
      local0 = frame.pop();
      break if_label_0;
      frame.push(local0);
      frame.i32_const(100);
      frame.i32_mul();
      local0 = frame.pop();
    } else {
      frame.push(local0);
      frame.i32_const(5);
      frame.i32_mul();
      local0 = frame.pop();
      frame.push(local0);
      frame.i32_const(7);
      frame.i32_sub();
      local0 = frame.pop();
      frame.push(local0);
      frame.i32_const(3);
      frame.i32_mul();
      local0 = frame.pop();
      break if_label_0;
      frame.push(local0);
      frame.i32_const(1000);
      frame.i32_mul();
      local0 = frame.pop();
    }
    frame.push(local0);
    return frame.pop();
  }

  Tuple2<i64, i32> _add64_u_with_carry(i64 i, i64 j, i32 c) {
    i64 k = 0;

    final frame = Frame(this);
    frame.push(i);
    frame.push(j);
    frame.i64_add();
    frame.push(c);
    frame.i64_extend_i32_u();
    frame.i64_add();
    k = frame.pop();
    frame.push(k);
    frame.push(k);
    frame.push(i);
    frame.i64_lt_u();
    return Tuple2.from(frame.stack);
    return Tuple2.from(frame.stack);
  }

  i64 _add64_u_saturated(i64 arg0, i64 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.i32_const(0);
    {
      var t2 = frame.pop();
      var t1 = frame.pop();
      var t0 = frame.pop();
      _add64_u_with_carry(t0, t1, t2).pushTo(frame.stack);
    }
    if_label_0: // i64 => i64
    if (frame.pop() != 0) {
      frame.drop();
      frame.i64_const(-1);
    }
    return frame.pop();
  }

  void _func51() {
    final frame = Frame(this);
    frame.i32_const(1);
    if_label_0:
    if (frame.pop() != 0) {}
    frame.i32_const(1);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      frame.i32_const(0);
    } else {
      frame.i32_const(2);
    }
    frame.i32_const(1);
    if_label_0: // i32 =>
    if (frame.pop() != 0) {
      frame.drop();
    } else {
      frame.drop();
    }
    frame.i32_const(0);
    frame.f64_const(0.0);
    frame.i32_const(0);
    frame.i32_const(1);
    if_label_0: // i32, f64, i32 => i32, f64, i32
    if (frame.pop() != 0) {}
    frame.drop();
    frame.drop();
    frame.drop();
    frame.i32_const(1);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      frame.i32_const(0);
    } else {
      frame.i32_const(2);
    }
    frame.i32_const(1);
    if_label_0: // i32 =>
    if (frame.pop() != 0) {
      frame.drop();
    } else {
      frame.drop();
    }
    frame.i32_const(0);
    frame.f64_const(0.0);
    frame.i32_const(0);
    frame.i32_const(1);
    if_label_0: // i32, f64, i32 => i32, f64, i32
    if (frame.pop() != 0) {}
    frame.drop();
    frame.drop();
    frame.drop();
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
      _func,
      _func17,
      _func18,
      _func19,
      _func20,
      _func21,
      _func22,
      _f,
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
      _add64_u_with_carry,
      _add64_u_saturated,
      _func51
    ];
  }
}

typedef FunctionType0 = i32 Function(i32, i32);
typedef FunctionType1 = void Function();
typedef FunctionType2 = i32 Function();
typedef FunctionType3 = void Function(i32);
typedef FunctionType4 = Tuple3<i32, f64, i32> Function(i32, f64, i32);
typedef FunctionType5 = i32 Function(i32);
typedef FunctionType6 = Tuple2<i32, i32> Function(i32);
typedef FunctionType7 = Tuple3<i32, i64, i32> Function();
typedef FunctionType8 = Tuple2<i32, i32> Function();
typedef FunctionType9 = Tuple2<f32, f32> Function();
typedef FunctionType10 = Tuple3<i32, i32, i64> Function(i32);
typedef FunctionType11 = Tuple3<i32, i32, i64> Function();
typedef FunctionType12 = Tuple2<i32, i32> Function(i32, i32);
typedef FunctionType13 = Tuple2<i64, i32> Function(i64, i64, i32);
typedef FunctionType14 = i64 Function(i64, i64);
typedef FunctionType15 = i64 Function(i64);

class Globals {
  i32 a = 10;
}

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final If0Module module;

  @override
  late final List<List<int>?> segments = [null];

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table0, 0, 0, 1, [16]); /* segment0 */
  }
}
