// Generated from test/spec/block/block.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Block0Module extends Module {
  Block0Module() {
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

  void empty() => _func01();
  i32 singular() => _func02();
  i32 multi() => _func03();
  i32 nested() => _func04();
  i32 deep() => _func05();
  i32 as_select_first() => _func06();
  i32 as_select_mid() => _func07();
  i32 as_select_last() => _func08();
  i32 as_loop_first() => _func09();
  i32 as_loop_mid() => _func10();
  i32 as_loop_last() => _func11();
  void as_if_condition() => _func12();
  i32 as_if_then() => _func13();
  i32 as_if_else() => _func14();
  i32 as_br_if_first() => _func15();
  i32 as_br_if_last() => _func16();
  i32 as_br_table_first() => _func17();
  i32 as_br_table_last() => _func18();
  i32 as_call_indirect_first() => _func20();
  i32 as_call_indirect_mid() => _func21();
  i32 as_call_indirect_last() => _func22();
  void as_store_first() => _func23();
  void as_store_last() => _func24();
  i32 as_memory_grow_value() => _func25();
  i32 as_call_value() => _func27();
  i32 as_return_value() => _func28();
  void as_drop_operand() => _func29();
  i32 as_br_value() => _func30();
  i32 as_local_set_value() => _func31();
  i32 as_local_tee_value() => _func32();
  i32 as_global_set_value() => _func33();
  i32 as_load_operand() => _func34();
  i32 as_unary_operand() => _func35();
  i32 as_binary_operand() => _func36();
  i32 as_test_operand() => _func37();
  i32 as_compare_operand() => _func38();
  i32 as_binary_operands() => _func39();
  i32 as_compare_operands() => _func40();
  i32 as_mixed_operands() => _func41();
  i32 break_bare() => _func42();
  i32 break_value() => _func43();
  Tuple3<i32, i32, i64> break_multi_value() => _func44();
  i32 break_repeated() => _func45();
  i32 break_inner() => _func46();
  i32 param() => _func47();
  i32 params() => _func48();
  i32 params_id() => _func49();
  i32 param_break() => _func50();
  i32 params_break() => _func51();
  i32 params_id_break() => _func52();
  i32 effects() => _func53();
  void type_use() => _func54();

  void _dummy() {
    final frame = Frame(this);
  }

  void _func01() {
    final frame = Frame(this);
    block_label_0:
    {}
    block_label_0:
    {}
  }

  i32 _func02() {
    final frame = Frame(this);
    block_label_0:
    {
      /* nop */
    }
    block_label_0: // => i32
    {
      frame.i32_const(7);
    }
    return frame.pop();
  }

  i32 _func03() {
    final frame = Frame(this);
    block_label_0:
    {
      _dummy();
      _dummy();
      _dummy();
      _dummy();
    }
    block_label_0: // => i32
    {
      _dummy();
      _dummy();
      _dummy();
      frame.i32_const(7);
      _dummy();
    }
    frame.drop();
    block_label_0: //  => i32, i64, i32
    {
      _dummy();
      _dummy();
      _dummy();
      frame.i32_const(8);
      _dummy();
      _dummy();
      _dummy();
      _dummy();
      frame.i64_const(7);
      _dummy();
      _dummy();
      _dummy();
      _dummy();
      frame.i32_const(9);
      _dummy();
    }
    frame.drop();
    frame.drop();
    return frame.pop();
  }

  i32 _func04() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      block_label_1:
      {
        _dummy();
        block_label_2:
        {}
        /* nop */
      }
      block_label_1: // => i32
      {
        _dummy();
        frame.i32_const(9);
      }
    }
    return frame.pop();
  }

  i32 _func05() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      block_label_1: // => i32
      {
        block_label_2: // => i32
        {
          block_label_3: // => i32
          {
            block_label_4: // => i32
            {
              block_label_5: // => i32
              {
                block_label_6: // => i32
                {
                  block_label_7: // => i32
                  {
                    block_label_8: // => i32
                    {
                      block_label_9: // => i32
                      {
                        block_label_10: // => i32
                        {
                          block_label_11: // => i32
                          {
                            block_label_12: // => i32
                            {
                              block_label_13: // => i32
                              {
                                block_label_14: // => i32
                                {
                                  block_label_15: // => i32
                                  {
                                    block_label_16: // => i32
                                    {
                                      block_label_17: // => i32
                                      {
                                        block_label_18: // => i32
                                        {
                                          block_label_19: // => i32
                                          {
                                            block_label_20: // => i32
                                            {
                                              block_label_21: // => i32
                                              {
                                                block_label_22: // => i32
                                                {
                                                  block_label_23: // => i32
                                                  {
                                                    block_label_24: // => i32
                                                    {
                                                      block_label_25: // => i32
                                                      {
                                                        block_label_26: // => i32
                                                        {
                                                          block_label_27: // => i32
                                                          {
                                                            block_label_28: // => i32
                                                            {
                                                              block_label_29: // => i32
                                                              {
                                                                block_label_30: // => i32
                                                                {
                                                                  block_label_31: // => i32
                                                                  {
                                                                    block_label_32: // => i32
                                                                    {
                                                                      block_label_33: // => i32
                                                                      {
                                                                        block_label_34: // => i32
                                                                        {
                                                                          block_label_35: // => i32
                                                                          {
                                                                            block_label_36: // => i32
                                                                            {
                                                                              block_label_37: // => i32
                                                                              {
                                                                                _dummy();
                                                                                frame.i32_const(150);
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    return frame.pop();
  }

  i32 _func06() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
    }
    frame.i32_const(2);
    frame.i32_const(3);
    frame.select();
    return frame.pop();
  }

  i32 _func07() {
    final frame = Frame(this);
    frame.i32_const(2);
    block_label_0: // => i32
    {
      frame.i32_const(1);
    }
    frame.i32_const(3);
    frame.select();
    return frame.pop();
  }

  i32 _func08() {
    final frame = Frame(this);
    frame.i32_const(2);
    frame.i32_const(3);
    block_label_0: // => i32
    {
      frame.i32_const(1);
    }
    frame.select();
    return frame.pop();
  }

  i32 _func09() {
    final frame = Frame(this);

    loop_label_0: // => i32
    for (;;) {
      block_label_1: // => i32
      {
        frame.i32_const(1);
      }
      _dummy();
      _dummy();
      break;
    }
    return frame.pop();
  }

  i32 _func10() {
    final frame = Frame(this);

    loop_label_0: // => i32
    for (;;) {
      _dummy();
      block_label_1: // => i32
      {
        frame.i32_const(1);
      }
      _dummy();
      break;
    }
    return frame.pop();
  }

  i32 _func11() {
    final frame = Frame(this);

    loop_label_0: // => i32
    for (;;) {
      _dummy();
      _dummy();
      block_label_1: // => i32
      {
        frame.i32_const(1);
      }
      break;
    }
    return frame.pop();
  }

  void _func12() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
    }
    if_label_0:
    if (frame.pop() != 0) {
      _dummy();
    }
  }

  i32 _func13() {
    final frame = Frame(this);
    frame.i32_const(1);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      block_label_1: // => i32
      {
        frame.i32_const(1);
      }
    } else {
      frame.i32_const(2);
    }
    return frame.pop();
  }

  i32 _func14() {
    final frame = Frame(this);
    frame.i32_const(1);
    if_label_0: // => i32
    if (frame.pop() != 0) {
      frame.i32_const(2);
    } else {
      block_label_1: // => i32
      {
        frame.i32_const(1);
      }
    }
    return frame.pop();
  }

  i32 _func15() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      block_label_1: // => i32
      {
        frame.i32_const(1);
      }
      frame.i32_const(2);
      if (frame.pop() != 0) break block_label_0;
    }
    return frame.pop();
  }

  i32 _func16() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(2);
      block_label_1: // => i32
      {
        frame.i32_const(1);
      }
      if (frame.pop() != 0) break block_label_0;
    }
    return frame.pop();
  }

  i32 _func17() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      block_label_1: // => i32
      {
        frame.i32_const(1);
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

  i32 _func18() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(2);
      block_label_1: // => i32
      {
        frame.i32_const(1);
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

  i32 _func20() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      block_label_1: // => i32
      {
        frame.i32_const(1);
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

  i32 _func21() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(2);
      block_label_1: // => i32
      {
        frame.i32_const(1);
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

  i32 _func22() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
      frame.i32_const(2);
      block_label_1: // => i32
      {
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

  void _func23() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
    }
    frame.i32_const(1);
    frame.i32_store(2, 0);
  }

  void _func24() {
    final frame = Frame(this);
    frame.i32_const(10);
    block_label_0: // => i32
    {
      frame.i32_const(1);
    }
    frame.i32_store(2, 0);
  }

  i32 _func25() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
    }
    frame.memory_grow(0);
    return frame.pop();
  }

  i32 _f(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    return frame.pop();
  }

  i32 _func27() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
    }
    {
      var t0 = frame.pop();
      frame.push(_f(t0));
    }
    return frame.pop();
  }

  i32 _func28() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
    }
    return frame.pop();
    return frame.pop();
  }

  void _func29() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
    }
    frame.drop();
  }

  i32 _func30() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      block_label_1: // => i32
      {
        frame.i32_const(1);
      }
      break block_label_0;
    }
    return frame.pop();
  }

  i32 _func31() {
    i32 local0 = 0;

    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
    }
    local0 = frame.pop();
    frame.push(local0);
    return frame.pop();
  }

  i32 _func32() {
    i32 local0 = 0;

    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
    }
    local0 = frame.peek();
    return frame.pop();
  }

  i32 _func33() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
    }
    globals.a = frame.pop();
    frame.push(globals.a);
    return frame.pop();
  }

  i32 _func34() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(1);
    }
    frame.i32_load(2, 0);
    return frame.pop();
  }

  i32 _func35() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      _dummy();
      frame.i32_const(13);
    }
    frame.i32_ctz();
    return frame.pop();
  }

  i32 _func36() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      _dummy();
      frame.i32_const(3);
    }
    block_label_0: // => i32
    {
      _dummy();
      frame.i32_const(4);
    }
    frame.i32_mul();
    return frame.pop();
  }

  i32 _func37() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      _dummy();
      frame.i32_const(13);
    }
    frame.i32_eqz();
    return frame.pop();
  }

  i32 _func38() {
    final frame = Frame(this);
    block_label_0: // => f32
    {
      _dummy();
      frame.f32_const(3.0);
    }
    block_label_0: // => f32
    {
      _dummy();
      frame.f32_const(3.0);
    }
    frame.f32_gt();
    return frame.pop();
  }

  i32 _func39() {
    final frame = Frame(this);
    block_label_0: //  => i32, i32
    {
      _dummy();
      frame.i32_const(3);
      _dummy();
      frame.i32_const(4);
    }
    frame.i32_mul();
    return frame.pop();
  }

  i32 _func40() {
    final frame = Frame(this);
    block_label_0: //  => f32, f32
    {
      _dummy();
      frame.f32_const(3.0);
      _dummy();
      frame.f32_const(3.0);
    }
    frame.f32_gt();
    return frame.pop();
  }

  i32 _func41() {
    final frame = Frame(this);
    block_label_0: //  => i32, i32
    {
      _dummy();
      frame.i32_const(3);
      _dummy();
      frame.i32_const(4);
    }
    frame.i32_const(5);
    frame.i32_add();
    frame.i32_mul();
    return frame.pop();
  }

  i32 _func42() {
    final frame = Frame(this);
    block_label_0:
    {
      break block_label_0;
      throw Trap('unreachable');
    }
    block_label_0:
    {
      frame.i32_const(1);
      if (frame.pop() != 0) break block_label_0;
      throw Trap('unreachable');
    }
    block_label_0:
    {
      frame.i32_const(0);
      var t0 = frame.pop();
      switch (t0) {
        default:
          break block_label_0;
      }

      throw Trap('unreachable');
    }
    block_label_0:
    {
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

      throw Trap('unreachable');
    }
    frame.i32_const(19);
    return frame.pop();
  }

  i32 _func43() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(18);
      break block_label_0;
      frame.i32_const(19);
    }
    return frame.pop();
  }

  Tuple3<i32, i32, i64> _func44() {
    final frame = Frame(this);
    block_label_0: //  => i32, i32, i64
    {
      frame.i32_const(18);
      frame.i32_const(-18);
      frame.i64_const(18);
      break block_label_0;
      frame.i32_const(19);
      frame.i32_const(-19);
      frame.i64_const(19);
    }
    return Tuple3.from(frame.stack);
  }

  i32 _func45() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(18);
      break block_label_0;
      frame.i32_const(19);
      frame.unwindTo(0, 1);
      break block_label_0;
      frame.i32_const(20);
      frame.i32_const(0);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.drop();
      frame.i32_const(20);
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.drop();
      frame.i32_const(21);
      frame.unwindTo(0, 1);
      break block_label_0;
      frame.i32_const(22);
      frame.i32_const(4);
      var t0 = frame.pop();
      switch (t0) {
        default:
          frame.unwindTo(0, 1);
          break block_label_0;
      }

      frame.i32_const(23);
      frame.i32_const(1);
      var t1 = frame.pop();
      switch (t1) {
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

      frame.i32_const(21);
    }
    return frame.pop();
  }

  i32 _func46() {
    i32 local0 = 0;

    final frame = Frame(this);
    frame.i32_const(0);
    local0 = frame.pop();
    frame.push(local0);
    block_label_0: // => i32
    {
      block_label_1: // => i32
      {
        frame.i32_const(1);
        break block_label_0;
      }
    }
    frame.i32_add();
    local0 = frame.pop();
    frame.push(local0);
    block_label_0: // => i32
    {
      block_label_1:
      {
        break block_label_1;
      }
      frame.i32_const(2);
    }
    frame.i32_add();
    local0 = frame.pop();
    frame.push(local0);
    block_label_0: // => i32
    {
      frame.i32_const(4);
      break block_label_0;
      frame.i32_ctz();
    }
    frame.i32_add();
    local0 = frame.pop();
    frame.push(local0);
    block_label_0: // => i32
    {
      block_label_1: // => i32
      {
        frame.i32_const(8);
        break block_label_0;
      }
      frame.i32_ctz();
    }
    frame.i32_add();
    local0 = frame.pop();
    frame.push(local0);
    return frame.pop();
  }

  i32 _func47() {
    final frame = Frame(this);
    frame.i32_const(1);
    block_label_0: // i32 => i32
    {
      frame.i32_const(2);
      frame.i32_add();
    }
    return frame.pop();
  }

  i32 _func48() {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    block_label_0: // i32, i32 => i32
    {
      frame.i32_add();
    }
    return frame.pop();
  }

  i32 _func49() {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    block_label_0: // i32, i32 => i32, i32
    {}
    frame.i32_add();
    return frame.pop();
  }

  i32 _func50() {
    final frame = Frame(this);
    frame.i32_const(1);
    block_label_0: // i32 => i32
    {
      frame.i32_const(2);
      frame.i32_add();
      break block_label_0;
    }
    return frame.pop();
  }

  i32 _func51() {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    block_label_0: // i32, i32 => i32
    {
      frame.i32_add();
      break block_label_0;
    }
    return frame.pop();
  }

  i32 _func52() {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    block_label_0: // i32, i32 => i32, i32
    {
      break block_label_0;
    }
    frame.i32_add();
    return frame.pop();
  }

  i32 _func53() {
    i32 local0 = 0;

    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      local0 = frame.pop();
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
      break block_label_0;
      frame.push(local0);
      frame.i32_const(100);
      frame.i32_mul();
      local0 = frame.pop();
    }
    frame.push(local0);
    frame.i32_const(-14);
    frame.i32_eq();
    return frame.pop();
  }

  void _func54() {
    final frame = Frame(this);
    block_label_0:
    {}
    block_label_0: // => i32
    {
      frame.i32_const(0);
    }
    block_label_0: // i32 =>
    {
      frame.drop();
    }
    frame.i32_const(0);
    frame.f64_const(0.0);
    frame.i32_const(0);
    block_label_0: // i32, f64, i32 => i32, f64, i32
    {}
    frame.drop();
    frame.drop();
    frame.drop();
    block_label_0: // => i32
    {
      frame.i32_const(0);
    }
    block_label_0: // i32 =>
    {
      frame.drop();
    }
    frame.i32_const(0);
    frame.f64_const(0.0);
    frame.i32_const(0);
    block_label_0: // i32, f64, i32 => i32, f64, i32
    {}
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
      _func16,
      _func17,
      _func18,
      _func,
      _func20,
      _func21,
      _func22,
      _func23,
      _func24,
      _func25,
      _f,
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
      _func54
    ];
  }
}

typedef FunctionType0 = i32 Function(i32, i32);
typedef FunctionType1 = void Function();
typedef FunctionType2 = i32 Function();
typedef FunctionType3 = void Function(i32);
typedef FunctionType4 = Tuple3<i32, f64, i32> Function(i32, f64, i32);
typedef FunctionType5 = Tuple3<i32, i64, i32> Function();
typedef FunctionType6 = i32 Function(i32);
typedef FunctionType7 = Tuple2<i32, i32> Function();
typedef FunctionType8 = Tuple2<f32, f32> Function();
typedef FunctionType9 = Tuple3<i32, i32, i64> Function();
typedef FunctionType10 = Tuple2<i32, i32> Function(i32, i32);

class Globals {
  i32 a = 10;
}

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final Block0Module module;

  @override
  late final List<List<int>?> segments = [null];

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table0, 0, 0, 1, [19]); /* segment0 */
  }
}
