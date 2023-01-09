// Generated from test/spec/func/func.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';

class Func0Module implements Module {
  Func0Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  void f() => _func02();
  void g() => _h();
  void type_use_1() => _func25();
  i32 type_use_2() => _func26();
  void type_use_3(i32 arg0) => _func27(arg0);
  i32 type_use_4(i32 arg0, f64 arg1, i32 arg2) => _func28(arg0, arg1, arg2);
  i32 type_use_5() => _func29();
  void type_use_6(i32 arg0) => _func30(arg0);
  i32 type_use_7(i32 arg0, f64 arg1, i32 arg2) => _func31(arg0, arg1, arg2);
  i32 local_first_i32() => _func36();
  i64 local_first_i64() => _func37();
  f32 local_first_f32() => _func38();
  f64 local_first_f64() => _func39();
  i32 local_second_i32() => _func40();
  i64 local_second_i64() => _func41();
  f32 local_second_f32() => _func42();
  f64 local_second_f64() => _func43();
  f64 local_mixed() => _func44();
  i32 param_first_i32(i32 arg0, i32 arg1) => _func45(arg0, arg1);
  i64 param_first_i64(i64 arg0, i64 arg1) => _func46(arg0, arg1);
  f32 param_first_f32(f32 arg0, f32 arg1) => _func47(arg0, arg1);
  f64 param_first_f64(f64 arg0, f64 arg1) => _func48(arg0, arg1);
  i32 param_second_i32(i32 arg0, i32 arg1) => _func49(arg0, arg1);
  i64 param_second_i64(i64 arg0, i64 arg1) => _func50(arg0, arg1);
  f32 param_second_f32(f32 arg0, f32 arg1) => _func51(arg0, arg1);
  f64 param_second_f64(f64 arg0, f64 arg1) => _func52(arg0, arg1);
  f64 param_mixed(f32 arg0, i32 arg1, i64 arg2, i32 arg3, f64 arg4, i32 arg5) =>
      _func53(arg0, arg1, arg2, arg3, arg4, arg5);
  void empty() => _func54();
  void value_void() => _func55();
  i32 value_i32() => _func56();
  i64 value_i64() => _func57();
  f32 value_f32() => _func58();
  f64 value_f64() => _func59();
  Tuple2<i32, f64> value_i32_f64() => _func60();
  Tuple3<i32, i32, i32> value_i32_i32_i32() => _func61();
  void value_block_void() => _func62();
  i32 value_block_i32() => _func63();
  Tuple2<i32, i64> value_block_i32_i64() => _func64();
  void return_empty() => _func65();
  i32 return_i32() => _func66();
  i64 return_i64() => _func67();
  f32 return_f32() => _func68();
  f64 return_f64() => _func69();
  Tuple2<i32, f64> return_i32_f64() => _func70();
  Tuple3<i32, i32, i32> return_i32_i32_i32() => _func71();
  i32 return_block_i32() => _func72();
  Tuple2<i32, i64> return_block_i32_i64() => _func73();
  void break_empty() => _func74();
  i32 break_i32() => _func75();
  i64 break_i64() => _func76();
  f32 break_f32() => _func77();
  f64 break_f64() => _func78();
  Tuple2<i32, f64> break_i32_f64() => _func79();
  Tuple3<i32, i32, i32> break_i32_i32_i32() => _func80();
  i32 break_block_i32() => _func81();
  Tuple2<i32, i64> break_block_i32_i64() => _func82();
  void break_br_if_empty(i32 arg0) => _func83(arg0);
  i32 break_br_if_num(i32 arg0) => _func84(arg0);
  Tuple2<i32, i64> break_br_if_num_num(i32 arg0) => _func85(arg0);
  void break_br_table_empty(i32 arg0) => _func86(arg0);
  i32 break_br_table_num(i32 arg0) => _func87(arg0);
  Tuple2<i32, i64> break_br_table_num_num(i32 arg0) => _func88(arg0);
  void break_br_table_nested_empty(i32 arg0) => _func89(arg0);
  i32 break_br_table_nested_num(i32 arg0) => _func90(arg0);
  Tuple2<i32, i32> break_br_table_nested_num_num(i32 arg0) => _func91(arg0);
  Tuple16<f64, f32, i32, i32, i32, i64, f32, i32, i32, f32, f64, f64, i32, f32, i32, f64> large_sig(
          i32 arg0,
          i64 arg1,
          f32 arg2,
          f32 arg3,
          i32 arg4,
          f64 arg5,
          f32 arg6,
          i32 arg7,
          i32 arg8,
          i32 arg9,
          f32 arg10,
          f64 arg11,
          f64 arg12,
          f64 arg13,
          i32 arg14,
          i32 arg15,
          f32 arg16) =>
      _func92(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14,
          arg15, arg16);
  i32 init_local_i32() => _func93();
  i64 init_local_i64() => _func94();
  f32 init_local_f32() => _func95();
  f64 init_local_f64() => _func96();

  void _dummy() {
    final frame = Frame(this);
  }

  void _func01() {
    final frame = Frame(this);
  }

  void _func02() {
    final frame = Frame(this);
  }

  void _f() {
    final frame = Frame(this);
  }

  void _h() {
    final frame = Frame(this);
  }

  void _func05() {
    final frame = Frame(this);
  }

  void _func06() {
    final frame = Frame(this);
  }

  void _func07() {
    i32 local0 = 0;

    final frame = Frame(this);
  }

  void _func08() {
    i32 x = 0;

    final frame = Frame(this);
  }

  void _func09() {
    i32 local0 = 0;
    f64 local1 = 0;
    i64 local2 = 0;

    final frame = Frame(this);
  }

  void _func10() {
    i32 local0 = 0;
    f64 local1 = 0;

    final frame = Frame(this);
  }

  void _func11() {
    i32 local0 = 0;
    f32 local1 = 0;
    i64 x = 0;
    i32 local3 = 0;
    f64 local4 = 0;

    final frame = Frame(this);
  }

  void _func12() {
    final frame = Frame(this);
  }

  void _func13() {
    final frame = Frame(this);
  }

  void _func14(i32 arg0) {
    final frame = Frame(this);
  }

  void _func15(i32 x) {
    final frame = Frame(this);
  }

  void _func16(i32 arg0, f64 arg1, i64 arg2) {
    final frame = Frame(this);
  }

  void _func17(i32 arg0, f64 arg1) {
    final frame = Frame(this);
  }

  void _func18(i32 arg0, f32 arg1, i64 x, i32 arg3, f64 arg4) {
    final frame = Frame(this);
  }

  void _func19() {
    final frame = Frame(this);
  }

  void _func20() {
    final frame = Frame(this);
  }

  i32 _func21() {
    final frame = Frame(this);
    throw Trap('unreachable');
    return frame.pop();
  }

  Tuple3<i32, f64, f32> _func22() {
    final frame = Frame(this);
    throw Trap('unreachable');
    return Tuple3.from(frame.stack);
  }

  Tuple2<i32, f64> _func23() {
    final frame = Frame(this);
    throw Trap('unreachable');
    return Tuple2.from(frame.stack);
  }

  Tuple5<i32, f32, i64, i32, f64> _func24() {
    final frame = Frame(this);
    throw Trap('unreachable');
    return Tuple5.from(frame.stack);
  }

  void _func25() {
    final frame = Frame(this);
  }

  i32 _func26() {
    final frame = Frame(this);
    frame.i32_const(0);
    return frame.pop();
  }

  void _func27(i32 arg0) {
    final frame = Frame(this);
  }

  i32 _func28(i32 arg0, f64 arg1, i32 arg2) {
    final frame = Frame(this);
    frame.i32_const(0);
    return frame.pop();
  }

  i32 _func29() {
    final frame = Frame(this);
    frame.i32_const(0);
    return frame.pop();
  }

  void _func30(i32 arg0) {
    final frame = Frame(this);
  }

  i32 _func31(i32 arg0, f64 arg1, i32 arg2) {
    final frame = Frame(this);
    frame.i32_const(0);
    return frame.pop();
  }

  void _func32() {
    final frame = Frame(this);
  }

  void _func33() {
    final frame = Frame(this);
  }

  Tuple3<i32, i64, i32> _complex(i32 arg0, f32 arg1, i64 x, i32 arg3) {
    f32 local0 = 0;
    i32 y = 0;
    i64 local2 = 0;
    i32 local3 = 0;
    f64 local4 = 0;
    i32 local5 = 0;

    final frame = Frame(this);
    throw Trap('unreachable');
    throw Trap('unreachable');
    return Tuple3.from(frame.stack);
  }

  void _func35() {
    f32 local0 = 0;
    i32 y = 0;
    i64 local2 = 0;
    i32 local3 = 0;
    f64 local4 = 0;
    i32 local5 = 0;

    final frame = Frame(this);
    throw Trap('unreachable');
    throw Trap('unreachable');
  }

  i32 _func36() {
    i32 local0 = 0;
    i32 local1 = 0;

    final frame = Frame(this);
    frame.push(local0);
    return frame.pop();
  }

  i64 _func37() {
    i64 local0 = 0;
    i64 local1 = 0;

    final frame = Frame(this);
    frame.push(local0);
    return frame.pop();
  }

  f32 _func38() {
    f32 local0 = 0;
    f32 local1 = 0;

    final frame = Frame(this);
    frame.push(local0);
    return frame.pop();
  }

  f64 _func39() {
    f64 local0 = 0;
    f64 local1 = 0;

    final frame = Frame(this);
    frame.push(local0);
    return frame.pop();
  }

  i32 _func40() {
    i32 local0 = 0;
    i32 local1 = 0;

    final frame = Frame(this);
    frame.push(local1);
    return frame.pop();
  }

  i64 _func41() {
    i64 local0 = 0;
    i64 local1 = 0;

    final frame = Frame(this);
    frame.push(local1);
    return frame.pop();
  }

  f32 _func42() {
    f32 local0 = 0;
    f32 local1 = 0;

    final frame = Frame(this);
    frame.push(local1);
    return frame.pop();
  }

  f64 _func43() {
    f64 local0 = 0;
    f64 local1 = 0;

    final frame = Frame(this);
    frame.push(local1);
    return frame.pop();
  }

  f64 _func44() {
    f32 local0 = 0;
    i32 x = 0;
    i64 local2 = 0;
    i32 local3 = 0;
    f64 local4 = 0;
    i32 local5 = 0;

    final frame = Frame(this);
    frame.push(local0);
    frame.f32_neg();
    frame.drop();
    frame.push(x);
    frame.i32_eqz();
    frame.drop();
    frame.push(local2);
    frame.i64_eqz();
    frame.drop();
    frame.push(local3);
    frame.i32_eqz();
    frame.drop();
    frame.push(local4);
    frame.f64_neg();
    frame.drop();
    frame.push(local5);
    frame.i32_eqz();
    frame.drop();
    frame.push(local4);
    return frame.pop();
  }

  i32 _func45(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    return frame.pop();
  }

  i64 _func46(i64 arg0, i64 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    return frame.pop();
  }

  f32 _func47(f32 arg0, f32 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    return frame.pop();
  }

  f64 _func48(f64 arg0, f64 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    return frame.pop();
  }

  i32 _func49(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg1);
    return frame.pop();
  }

  i64 _func50(i64 arg0, i64 arg1) {
    final frame = Frame(this);
    frame.push(arg1);
    return frame.pop();
  }

  f32 _func51(f32 arg0, f32 arg1) {
    final frame = Frame(this);
    frame.push(arg1);
    return frame.pop();
  }

  f64 _func52(f64 arg0, f64 arg1) {
    final frame = Frame(this);
    frame.push(arg1);
    return frame.pop();
  }

  f64 _func53(f32 arg0, i32 arg1, i64 x, i32 arg3, f64 arg4, i32 arg5) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.f32_neg();
    frame.drop();
    frame.push(arg1);
    frame.i32_eqz();
    frame.drop();
    frame.push(x);
    frame.i64_eqz();
    frame.drop();
    frame.push(arg3);
    frame.i32_eqz();
    frame.drop();
    frame.push(arg4);
    frame.f64_neg();
    frame.drop();
    frame.push(arg5);
    frame.i32_eqz();
    frame.drop();
    frame.push(arg4);
    return frame.pop();
  }

  void _func54() {
    final frame = Frame(this);
  }

  void _func55() {
    final frame = Frame(this);
    _dummy();
  }

  i32 _func56() {
    final frame = Frame(this);
    frame.i32_const(77);
    return frame.pop();
  }

  i64 _func57() {
    final frame = Frame(this);
    frame.i64_const(0x1e61);
    return frame.pop();
  }

  f32 _func58() {
    final frame = Frame(this);
    frame.f32_const(77.69999694824219);
    return frame.pop();
  }

  f64 _func59() {
    final frame = Frame(this);
    frame.f64_const(77.77);
    return frame.pop();
  }

  Tuple2<i32, f64> _func60() {
    final frame = Frame(this);
    frame.i32_const(77);
    frame.f64_const(7.0);
    return Tuple2.from(frame.stack);
  }

  Tuple3<i32, i32, i32> _func61() {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.i32_const(3);
    return Tuple3.from(frame.stack);
  }

  void _func62() {
    final frame = Frame(this);
    block_label_0:
    {
      _dummy();
      _dummy();
    }
  }

  i32 _func63() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      _dummy();
      frame.i32_const(77);
    }
    return frame.pop();
  }

  Tuple2<i32, i64> _func64() {
    final frame = Frame(this);
    block_label_0: //  => i32, i64
    {
      _dummy();
      frame.i32_const(1);
      frame.i64_const(2);
    }
    return Tuple2.from(frame.stack);
  }

  void _func65() {
    final frame = Frame(this);
    return;
  }

  i32 _func66() {
    final frame = Frame(this);
    frame.i32_const(78);
    return frame.pop();
    return frame.pop();
  }

  i64 _func67() {
    final frame = Frame(this);
    frame.i64_const(0x1ec6);
    return frame.pop();
    return frame.pop();
  }

  f32 _func68() {
    final frame = Frame(this);
    frame.f32_const(78.69999694824219);
    return frame.pop();
    return frame.pop();
  }

  f64 _func69() {
    final frame = Frame(this);
    frame.f64_const(78.78);
    return frame.pop();
    return frame.pop();
  }

  Tuple2<i32, f64> _func70() {
    final frame = Frame(this);
    frame.i32_const(78);
    frame.f64_const(78.78);
    return Tuple2.from(frame.stack);
    return Tuple2.from(frame.stack);
  }

  Tuple3<i32, i32, i32> _func71() {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.i32_const(3);
    return Tuple3.from(frame.stack);
    return Tuple3.from(frame.stack);
  }

  i32 _func72() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      _dummy();
      frame.i32_const(77);
    }
    return frame.pop();
    return frame.pop();
  }

  Tuple2<i32, i64> _func73() {
    final frame = Frame(this);
    block_label_0: //  => i32, i64
    {
      _dummy();
      frame.i32_const(1);
      frame.i64_const(2);
    }
    return Tuple2.from(frame.stack);
    return Tuple2.from(frame.stack);
  }

  void _func74() {
    final frame = Frame(this);
    return;
  }

  i32 _func75() {
    final frame = Frame(this);
    frame.i32_const(79);
    return frame.pop();
    return frame.pop();
  }

  i64 _func76() {
    final frame = Frame(this);
    frame.i64_const(0x1f2b);
    return frame.pop();
    return frame.pop();
  }

  f32 _func77() {
    final frame = Frame(this);
    frame.f32_const(79.9000015258789);
    return frame.pop();
    return frame.pop();
  }

  f64 _func78() {
    final frame = Frame(this);
    frame.f64_const(79.79);
    return frame.pop();
    return frame.pop();
  }

  Tuple2<i32, f64> _func79() {
    final frame = Frame(this);
    frame.i32_const(79);
    frame.f64_const(79.79);
    return Tuple2.from(frame.stack);
    return Tuple2.from(frame.stack);
  }

  Tuple3<i32, i32, i32> _func80() {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.i32_const(2);
    frame.i32_const(3);
    return Tuple3.from(frame.stack);
    return Tuple3.from(frame.stack);
  }

  i32 _func81() {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      _dummy();
      frame.i32_const(77);
    }
    return frame.pop();
    return frame.pop();
  }

  Tuple2<i32, i64> _func82() {
    final frame = Frame(this);
    block_label_0: //  => i32, i64
    {
      _dummy();
      frame.i32_const(1);
      frame.i64_const(2);
    }
    return Tuple2.from(frame.stack);
    return Tuple2.from(frame.stack);
  }

  void _func83(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    if (frame.pop() != 0) {
      return;
    }
  }

  i32 _func84(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(50);
    frame.push(arg0);
    if (frame.pop() != 0) {
      return frame.pop();
    }
    frame.drop();
    frame.i32_const(51);
    return frame.pop();
  }

  Tuple2<i32, i64> _func85(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(50);
    frame.i64_const(51);
    frame.push(arg0);
    return Tuple2.from(frame.stack);
    frame.drop();
    frame.drop();
    frame.i32_const(51);
    frame.i64_const(52);
    return Tuple2.from(frame.stack);
  }

  void _func86(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    var t0 = frame.pop();
    switch (t0) {
      case 0:
        return;
      case 1:
        return;
      default:
        return;
    }
  }

  i32 _func87(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(50);
    frame.push(arg0);
    var t0 = frame.pop();
    switch (t0) {
      case 0:
        return frame.pop();
      default:
        return frame.pop();
    }

    frame.i32_const(51);
    return frame.pop();
  }

  Tuple2<i32, i64> _func88(i32 arg0) {
    final frame = Frame(this);
    frame.i32_const(50);
    frame.i64_const(51);
    frame.push(arg0);
    var t0 = frame.pop();
    switch (t0) {
      case 0:
        return Tuple2.from(frame.stack);
      default:
        return Tuple2.from(frame.stack);
    }

    frame.i32_const(51);
    frame.i64_const(52);
    return Tuple2.from(frame.stack);
  }

  void _func89(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      frame.push(arg0);
      var t0 = frame.pop();
      switch (t0) {
        case 0:
          break block_label_0;
        case 1:
          return;
        default:
          break block_label_0;
      }
    }
  }

  i32 _func90(i32 arg0) {
    final frame = Frame(this);
    block_label_0: // => i32
    {
      frame.i32_const(50);
      frame.push(arg0);
      var t0 = frame.pop();
      switch (t0) {
        case 0:
          break block_label_0;
        case 1:
          return frame.pop();
        default:
          break block_label_0;
      }

      frame.i32_const(51);
    }
    frame.i32_const(2);
    frame.i32_add();
    return frame.pop();
  }

  Tuple2<i32, i32> _func91(i32 arg0) {
    final frame = Frame(this);
    block_label_0: //  => i32, i32
    {
      frame.i32_const(50);
      frame.i32_const(51);
      frame.push(arg0);
      var t0 = frame.pop();
      switch (t0) {
        case 0:
          break block_label_0;
        case 1:
          return Tuple2.from(frame.stack);
        default:
          break block_label_0;
      }

      frame.i32_const(51);
      frame.i32_const(-3);
    }
    frame.i32_add();
    frame.i32_const(52);
    return Tuple2.from(frame.stack);
  }

  Tuple16<f64, f32, i32, i32, i32, i64, f32, i32, i32, f32, f64, f64, i32, f32, i32, f64> _func92(
      i32 arg0,
      i64 arg1,
      f32 arg2,
      f32 arg3,
      i32 arg4,
      f64 arg5,
      f32 arg6,
      i32 arg7,
      i32 arg8,
      i32 arg9,
      f32 arg10,
      f64 arg11,
      f64 arg12,
      f64 arg13,
      i32 arg14,
      i32 arg15,
      f32 arg16) {
    final frame = Frame(this);
    frame.push(arg5);
    frame.push(arg2);
    frame.push(arg0);
    frame.push(arg8);
    frame.push(arg7);
    frame.push(arg1);
    frame.push(arg3);
    frame.push(arg9);
    frame.push(arg4);
    frame.push(arg6);
    frame.push(arg13);
    frame.push(arg11);
    frame.push(arg15);
    frame.push(arg16);
    frame.push(arg14);
    frame.push(arg12);
    return Tuple16.from(frame.stack);
  }

  i32 _func93() {
    i32 local0 = 0;

    final frame = Frame(this);
    frame.push(local0);
    return frame.pop();
  }

  i64 _func94() {
    i64 local0 = 0;

    final frame = Frame(this);
    frame.push(local0);
    return frame.pop();
  }

  f32 _func95() {
    f32 local0 = 0;

    final frame = Frame(this);
    frame.push(local0);
    return frame.pop();
  }

  f64 _func96() {
    f64 local0 = 0;

    final frame = Frame(this);
    frame.push(local0);
    return frame.pop();
  }
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = void Function();
typedef FunctionType2 = i32 Function();
typedef FunctionType3 = void Function(i32);
typedef FunctionType4 = i32 Function(i32, f64, i32);
typedef FunctionType5 = void Function();
typedef FunctionType6 = void Function(i32, f64, i64);
typedef FunctionType7 = void Function(i32, f64);
typedef FunctionType8 = void Function(i32, f32, i64, i32, f64);
typedef FunctionType9 = Tuple3<i32, f64, f32> Function();
typedef FunctionType10 = Tuple2<i32, f64> Function();
typedef FunctionType11 = Tuple5<i32, f32, i64, i32, f64> Function();
typedef FunctionType12 = Tuple3<i32, i64, i32> Function(i32, f32, i64, i32);
typedef FunctionType13 = i64 Function();
typedef FunctionType14 = f32 Function();
typedef FunctionType15 = f64 Function();
typedef FunctionType16 = i32 Function(i32, i32);
typedef FunctionType17 = i64 Function(i64, i64);
typedef FunctionType18 = f32 Function(f32, f32);
typedef FunctionType19 = f64 Function(f64, f64);
typedef FunctionType20 = f64 Function(f32, i32, i64, i32, f64, i32);
typedef FunctionType21 = Tuple3<i32, i32, i32> Function();
typedef FunctionType22 = Tuple2<i32, i64> Function();
typedef FunctionType23 = i32 Function(i32);
typedef FunctionType24 = Tuple2<i32, i64> Function(i32);
typedef FunctionType25 = Tuple2<i32, i32> Function(i32);
typedef FunctionType26 = Tuple2<i32, i32> Function();
typedef FunctionType27
    = Tuple16<f64, f32, i32, i32, i32, i64, f32, i32, i32, f32, f64, f64, i32, f32, i32, f64> Function(
        i32, i64, f32, f32, i32, f64, f32, i32, i32, i32, f32, f64, f64, f64, i32, i32, f32);
