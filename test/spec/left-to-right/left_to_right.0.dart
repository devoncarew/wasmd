// Generated from test/spec/left-to-right/left_to_right.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class LeftToRight0Module implements Module {
  LeftToRight0Module() {
    segments.init();
  }

  @override
  final Memory memory = Memory(1);

  final Table table0 = Table(
    8,
    8,
  );

  @override
  late final List<Table> tables = [table0];

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  i32 br_if() {
    final frame = Frame(this);
    block_label_0:
    {
      _func008();
      frame.push(_func011());
      frame.push(_func012());
      frame.i32_const(0);
      frame.i32_and();
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.drop();
      frame.push(_func010());
    }
    return frame.pop();
  }

  i32 br_table() {
    final frame = Frame(this);
    block_label_0:
    {
      _func008();
      block_label_1:
      {
        frame.push(_func011());
        frame.push(_func012());
        var t0 = frame.pop();
        switch (t0) {
          case 0:
            frame.unwindTo(0, 1);
            break block_label_0;

          default:
            frame.unwindTo(0, 1);
            break block_label_1;
        }
      }
      frame.drop();
      frame.push(_func010());
    }
    return frame.pop();
  }

  i32 f32_add() {
    final frame = Frame(this);
    _func008();
    frame.push(_func021());
    frame.push(_func022());
    frame.f32_add();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 f32_call() {
    final frame = Frame(this);
    _func008();
    frame.push(_func021());
    frame.push(_func022());
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func033(t0, t1);
    }
    frame.push(_func010());
    return frame.pop();
  }

  i32 f32_call_indirect() {
    final frame = Frame(this);
    _func008();
    frame.push(_func021());
    frame.push(_func022());
    frame.push(_func024());
    {
      var func = table0[frame.pop()] as FunctionType2?;
      if (func == null) throw Trap('uninitialized element');
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1));
    }
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 f32_copysign() {
    final frame = Frame(this);
    _func008();
    frame.push(_func021());
    frame.push(_func022());
    frame.f32_copysign();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 f32_div() {
    final frame = Frame(this);
    _func008();
    frame.push(_func021());
    frame.push(_func022());
    frame.f32_div();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 f32_eq() {
    final frame = Frame(this);
    _func008();
    frame.push(_func021());
    frame.push(_func022());
    frame.f32_eq();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 f32_ge() {
    final frame = Frame(this);
    _func008();
    frame.push(_func021());
    frame.push(_func022());
    frame.f32_ge();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 f32_gt() {
    final frame = Frame(this);
    _func008();
    frame.push(_func021());
    frame.push(_func022());
    frame.f32_gt();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 f32_le() {
    final frame = Frame(this);
    _func008();
    frame.push(_func021());
    frame.push(_func022());
    frame.f32_le();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 f32_lt() {
    final frame = Frame(this);
    _func008();
    frame.push(_func021());
    frame.push(_func022());
    frame.f32_lt();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 f32_max() {
    final frame = Frame(this);
    _func008();
    frame.push(_func021());
    frame.push(_func022());
    frame.f32_max();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 f32_min() {
    final frame = Frame(this);
    _func008();
    frame.push(_func021());
    frame.push(_func022());
    frame.f32_min();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 f32_mul() {
    final frame = Frame(this);
    _func008();
    frame.push(_func021());
    frame.push(_func022());
    frame.f32_mul();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 f32_ne() {
    final frame = Frame(this);
    _func008();
    frame.push(_func021());
    frame.push(_func022());
    frame.f32_ne();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 f32_select() {
    final frame = Frame(this);
    _func008();
    frame.push(_func021());
    frame.push(_func022());
    frame.push(_func025());
    frame.select();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 f32_store() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func022());
    frame.f32_store(2, 0);
    frame.push(_func010());
    return frame.pop();
  }

  i32 f32_sub() {
    final frame = Frame(this);
    _func008();
    frame.push(_func021());
    frame.push(_func022());
    frame.f32_sub();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 f64_add() {
    final frame = Frame(this);
    _func008();
    frame.push(_func026());
    frame.push(_func027());
    frame.f64_add();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 f64_call() {
    final frame = Frame(this);
    _func008();
    frame.push(_func026());
    frame.push(_func027());
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func034(t0, t1);
    }
    frame.push(_func010());
    return frame.pop();
  }

  i32 f64_call_indirect() {
    final frame = Frame(this);
    _func008();
    frame.push(_func026());
    frame.push(_func027());
    frame.push(_func029());
    {
      var func = table0[frame.pop()] as FunctionType3?;
      if (func == null) throw Trap('uninitialized element');
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1));
    }
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 f64_copysign() {
    final frame = Frame(this);
    _func008();
    frame.push(_func026());
    frame.push(_func027());
    frame.f64_copysign();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 f64_div() {
    final frame = Frame(this);
    _func008();
    frame.push(_func026());
    frame.push(_func027());
    frame.f64_div();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 f64_eq() {
    final frame = Frame(this);
    _func008();
    frame.push(_func026());
    frame.push(_func027());
    frame.f64_eq();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 f64_ge() {
    final frame = Frame(this);
    _func008();
    frame.push(_func026());
    frame.push(_func027());
    frame.f64_ge();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 f64_gt() {
    final frame = Frame(this);
    _func008();
    frame.push(_func026());
    frame.push(_func027());
    frame.f64_gt();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 f64_le() {
    final frame = Frame(this);
    _func008();
    frame.push(_func026());
    frame.push(_func027());
    frame.f64_le();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 f64_lt() {
    final frame = Frame(this);
    _func008();
    frame.push(_func026());
    frame.push(_func027());
    frame.f64_lt();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 f64_max() {
    final frame = Frame(this);
    _func008();
    frame.push(_func026());
    frame.push(_func027());
    frame.f64_max();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 f64_min() {
    final frame = Frame(this);
    _func008();
    frame.push(_func026());
    frame.push(_func027());
    frame.f64_min();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 f64_mul() {
    final frame = Frame(this);
    _func008();
    frame.push(_func026());
    frame.push(_func027());
    frame.f64_mul();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 f64_ne() {
    final frame = Frame(this);
    _func008();
    frame.push(_func026());
    frame.push(_func027());
    frame.f64_ne();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 f64_select() {
    final frame = Frame(this);
    _func008();
    frame.push(_func026());
    frame.push(_func027());
    frame.push(_func030());
    frame.select();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 f64_store() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func027());
    frame.f64_store(3, 0);
    frame.push(_func010());
    return frame.pop();
  }

  i32 f64_sub() {
    final frame = Frame(this);
    _func008();
    frame.push(_func026());
    frame.push(_func027());
    frame.f64_sub();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i32_add() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func012());
    frame.i32_add();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i32_and() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func012());
    frame.i32_and();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i32_call() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func012());
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func031(t0, t1);
    }
    frame.push(_func010());
    return frame.pop();
  }

  i32 i32_call_indirect() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func012());
    frame.push(_func014());
    {
      var func = table0[frame.pop()] as FunctionType0?;
      if (func == null) throw Trap('uninitialized element');
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1));
    }
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i32_div_s() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func012());
    frame.i32_div_s();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i32_div_u() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func012());
    frame.i32_div_u();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i32_eq() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func012());
    frame.i32_eq();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i32_ge_s() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func012());
    frame.i32_ge_s();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i32_ge_u() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func012());
    frame.i32_ge_u();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i32_gt_s() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func012());
    frame.i32_gt_s();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i32_gt_u() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func012());
    frame.i32_gt_u();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i32_le_s() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func012());
    frame.i32_le_s();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i32_le_u() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func012());
    frame.i32_le_u();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i32_lt_s() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func012());
    frame.i32_lt_s();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i32_lt_u() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func012());
    frame.i32_lt_u();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i32_mul() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func012());
    frame.i32_mul();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i32_ne() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func012());
    frame.i32_ne();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i32_or() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func012());
    frame.i32_or();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i32_rem_s() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func012());
    frame.i32_rem_s();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i32_rem_u() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func012());
    frame.i32_rem_u();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i32_select() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func012());
    frame.push(_func015());
    frame.select();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i32_shl() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func012());
    frame.i32_shl();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i32_shr_s() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func012());
    frame.i32_shr_s();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i32_shr_u() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func012());
    frame.i32_shr_u();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i32_store() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func012());
    frame.i32_store(2, 0);
    frame.push(_func010());
    return frame.pop();
  }

  i32 i32_store16() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func012());
    frame.i32_store16(1, 0);
    frame.push(_func010());
    return frame.pop();
  }

  i32 i32_store8() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func012());
    frame.i32_store8(0, 0);
    frame.push(_func010());
    return frame.pop();
  }

  i32 i32_sub() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func012());
    frame.i32_sub();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i32_xor() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func012());
    frame.i32_xor();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_add() {
    final frame = Frame(this);
    _func008();
    frame.push(_func016());
    frame.push(_func017());
    frame.i64_add();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_and() {
    final frame = Frame(this);
    _func008();
    frame.push(_func016());
    frame.push(_func017());
    frame.i64_and();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_call() {
    final frame = Frame(this);
    _func008();
    frame.push(_func016());
    frame.push(_func017());
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      _func032(t0, t1);
    }
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_call_indirect() {
    final frame = Frame(this);
    _func008();
    frame.push(_func016());
    frame.push(_func017());
    frame.push(_func019());
    {
      var func = table0[frame.pop()] as FunctionType1?;
      if (func == null) throw Trap('uninitialized element');
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1));
    }
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_div_s() {
    final frame = Frame(this);
    _func008();
    frame.push(_func016());
    frame.push(_func017());
    frame.i64_div_s();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_div_u() {
    final frame = Frame(this);
    _func008();
    frame.push(_func016());
    frame.push(_func017());
    frame.i64_div_u();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_eq() {
    final frame = Frame(this);
    _func008();
    frame.push(_func016());
    frame.push(_func017());
    frame.i64_eq();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_ge_s() {
    final frame = Frame(this);
    _func008();
    frame.push(_func016());
    frame.push(_func017());
    frame.i64_ge_s();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_ge_u() {
    final frame = Frame(this);
    _func008();
    frame.push(_func016());
    frame.push(_func017());
    frame.i64_ge_u();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_gt_s() {
    final frame = Frame(this);
    _func008();
    frame.push(_func016());
    frame.push(_func017());
    frame.i64_gt_s();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_gt_u() {
    final frame = Frame(this);
    _func008();
    frame.push(_func016());
    frame.push(_func017());
    frame.i64_gt_u();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_le_s() {
    final frame = Frame(this);
    _func008();
    frame.push(_func016());
    frame.push(_func017());
    frame.i64_le_s();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_le_u() {
    final frame = Frame(this);
    _func008();
    frame.push(_func016());
    frame.push(_func017());
    frame.i64_le_u();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_lt_s() {
    final frame = Frame(this);
    _func008();
    frame.push(_func016());
    frame.push(_func017());
    frame.i64_lt_s();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_lt_u() {
    final frame = Frame(this);
    _func008();
    frame.push(_func016());
    frame.push(_func017());
    frame.i64_lt_u();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_mul() {
    final frame = Frame(this);
    _func008();
    frame.push(_func016());
    frame.push(_func017());
    frame.i64_mul();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_ne() {
    final frame = Frame(this);
    _func008();
    frame.push(_func016());
    frame.push(_func017());
    frame.i64_ne();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_or() {
    final frame = Frame(this);
    _func008();
    frame.push(_func016());
    frame.push(_func017());
    frame.i64_or();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_rem_s() {
    final frame = Frame(this);
    _func008();
    frame.push(_func016());
    frame.push(_func017());
    frame.i64_rem_s();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_rem_u() {
    final frame = Frame(this);
    _func008();
    frame.push(_func016());
    frame.push(_func017());
    frame.i64_rem_u();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_select() {
    final frame = Frame(this);
    _func008();
    frame.push(_func016());
    frame.push(_func017());
    frame.push(_func020());
    frame.select();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_shl() {
    final frame = Frame(this);
    _func008();
    frame.push(_func016());
    frame.push(_func017());
    frame.i64_shl();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_shr_s() {
    final frame = Frame(this);
    _func008();
    frame.push(_func016());
    frame.push(_func017());
    frame.i64_shr_s();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_shr_u() {
    final frame = Frame(this);
    _func008();
    frame.push(_func016());
    frame.push(_func017());
    frame.i64_shr_u();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_store() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func017());
    frame.i64_store(3, 0);
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_store16() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func017());
    frame.i64_store16(1, 0);
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_store32() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func017());
    frame.i64_store32(2, 0);
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_store8() {
    final frame = Frame(this);
    _func008();
    frame.push(_func011());
    frame.push(_func017());
    frame.i64_store8(0, 0);
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_sub() {
    final frame = Frame(this);
    _func008();
    frame.push(_func016());
    frame.push(_func017());
    frame.i64_sub();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 i64_xor() {
    final frame = Frame(this);
    _func008();
    frame.push(_func016());
    frame.push(_func017());
    frame.i64_xor();
    frame.drop();
    frame.push(_func010());
    return frame.pop();
  }

  i32 _func000(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 _func001(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.i32_const(-2);
    return frame.pop();
  }

  i32 _func002(i64 arg0, i64 arg1) {
    final frame = Frame(this);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 _func003(i64 arg0, i64 arg1) {
    final frame = Frame(this);
    frame.i32_const(-2);
    return frame.pop();
  }

  i32 _func004(f32 arg0, f32 arg1) {
    final frame = Frame(this);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 _func005(f32 arg0, f32 arg1) {
    final frame = Frame(this);
    frame.i32_const(-2);
    return frame.pop();
  }

  i32 _func006(f64 arg0, f64 arg1) {
    final frame = Frame(this);
    frame.i32_const(-1);
    return frame.pop();
  }

  i32 _func007(f64 arg0, f64 arg1) {
    final frame = Frame(this);
    frame.i32_const(-2);
    return frame.pop();
  }

  void _func008() {
    final frame = Frame(this);
    frame.i32_const(8);
    frame.i32_const(0);
    frame.i32_store(2, 0);
  }

  void _func009() {
    final frame = Frame(this);
    frame.i32_const(11);
    frame.i32_const(10);
    frame.i32_load8_u(0, 0);
    frame.i32_store8(0, 0);
    frame.i32_const(10);
    frame.i32_const(9);
    frame.i32_load8_u(0, 0);
    frame.i32_store8(0, 0);
    frame.i32_const(9);
    frame.i32_const(8);
    frame.i32_load8_u(0, 0);
    frame.i32_store8(0, 0);
    frame.i32_const(8);
    frame.i32_const(-3);
    frame.i32_store8(0, 0);
  }

  i32 _func010() {
    final frame = Frame(this);
    frame.i32_const(8);
    frame.i32_load(2, 0);
    return frame.pop();
  }

  i32 _func011() {
    final frame = Frame(this);
    _func009();
    frame.i32_const(8);
    frame.i32_const(1);
    frame.i32_store8(0, 0);
    frame.i32_const(0);
    return frame.pop();
  }

  i32 _func012() {
    final frame = Frame(this);
    _func009();
    frame.i32_const(8);
    frame.i32_const(2);
    frame.i32_store8(0, 0);
    frame.i32_const(1);
    return frame.pop();
  }

  i32 _func013() {
    final frame = Frame(this);
    _func009();
    frame.i32_const(8);
    frame.i32_const(3);
    frame.i32_store8(0, 0);
    frame.i32_const(1);
    return frame.pop();
  }

  i32 _func014() {
    final frame = Frame(this);
    _func009();
    frame.i32_const(8);
    frame.i32_const(4);
    frame.i32_store8(0, 0);
    frame.i32_const(0);
    return frame.pop();
  }

  i32 _func015() {
    final frame = Frame(this);
    _func009();
    frame.i32_const(8);
    frame.i32_const(5);
    frame.i32_store8(0, 0);
    frame.i32_const(0);
    return frame.pop();
  }

  i64 _func016() {
    final frame = Frame(this);
    _func009();
    frame.i32_const(8);
    frame.i32_const(1);
    frame.i32_store8(0, 0);
    frame.i64_const(0);
    return frame.pop();
  }

  i64 _func017() {
    final frame = Frame(this);
    _func009();
    frame.i32_const(8);
    frame.i32_const(2);
    frame.i32_store8(0, 0);
    frame.i64_const(1);
    return frame.pop();
  }

  i64 _func018() {
    final frame = Frame(this);
    _func009();
    frame.i32_const(8);
    frame.i32_const(3);
    frame.i32_store8(0, 0);
    frame.i64_const(1);
    return frame.pop();
  }

  i32 _func019() {
    final frame = Frame(this);
    _func009();
    frame.i32_const(8);
    frame.i32_const(4);
    frame.i32_store8(0, 0);
    frame.i32_const(2);
    return frame.pop();
  }

  i32 _func020() {
    final frame = Frame(this);
    _func009();
    frame.i32_const(8);
    frame.i32_const(5);
    frame.i32_store8(0, 0);
    frame.i32_const(0);
    return frame.pop();
  }

  f32 _func021() {
    final frame = Frame(this);
    _func009();
    frame.i32_const(8);
    frame.i32_const(1);
    frame.i32_store8(0, 0);
    frame.f32_const(0.0);
    return frame.pop();
  }

  f32 _func022() {
    final frame = Frame(this);
    _func009();
    frame.i32_const(8);
    frame.i32_const(2);
    frame.i32_store8(0, 0);
    frame.f32_const(1.0);
    return frame.pop();
  }

  f32 _func023() {
    final frame = Frame(this);
    _func009();
    frame.i32_const(8);
    frame.i32_const(3);
    frame.i32_store8(0, 0);
    frame.f32_const(1.0);
    return frame.pop();
  }

  i32 _func024() {
    final frame = Frame(this);
    _func009();
    frame.i32_const(8);
    frame.i32_const(4);
    frame.i32_store8(0, 0);
    frame.i32_const(4);
    return frame.pop();
  }

  i32 _func025() {
    final frame = Frame(this);
    _func009();
    frame.i32_const(8);
    frame.i32_const(5);
    frame.i32_store8(0, 0);
    frame.i32_const(0);
    return frame.pop();
  }

  f64 _func026() {
    final frame = Frame(this);
    _func009();
    frame.i32_const(8);
    frame.i32_const(1);
    frame.i32_store8(0, 0);
    frame.f64_const(0.0);
    return frame.pop();
  }

  f64 _func027() {
    final frame = Frame(this);
    _func009();
    frame.i32_const(8);
    frame.i32_const(2);
    frame.i32_store8(0, 0);
    frame.f64_const(1.0);
    return frame.pop();
  }

  f64 _func028() {
    final frame = Frame(this);
    _func009();
    frame.i32_const(8);
    frame.i32_const(3);
    frame.i32_store8(0, 0);
    frame.f64_const(1.0);
    return frame.pop();
  }

  i32 _func029() {
    final frame = Frame(this);
    _func009();
    frame.i32_const(8);
    frame.i32_const(4);
    frame.i32_store8(0, 0);
    frame.i32_const(6);
    return frame.pop();
  }

  i32 _func030() {
    final frame = Frame(this);
    _func009();
    frame.i32_const(8);
    frame.i32_const(5);
    frame.i32_store8(0, 0);
    frame.i32_const(0);
    return frame.pop();
  }

  void _func031(i32 arg0, i32 arg1) {
    final frame = Frame(this);
  }

  void _func032(i64 arg0, i64 arg1) {
    final frame = Frame(this);
  }

  void _func033(f32 arg0, f32 arg1) {
    final frame = Frame(this);
  }

  void _func034(f64 arg0, f64 arg1) {
    final frame = Frame(this);
  }

  List<Function> _initFunctionTable() {
    return [
      _func000,
      _func001,
      _func002,
      _func003,
      _func004,
      _func005,
      _func006,
      _func007,
      _func008,
      _func009,
      _func010,
      _func011,
      _func012,
      _func013,
      _func014,
      _func015,
      _func016,
      _func017,
      _func018,
      _func019,
      _func020,
      _func021,
      _func022,
      _func023,
      _func024,
      _func025,
      _func026,
      _func027,
      _func028,
      _func029,
      _func030,
      _func031,
      _func032,
      _func033,
      _func034,
      i32_add,
      i32_sub,
      i32_mul,
      i32_div_s,
      i32_div_u,
      i32_rem_s,
      i32_rem_u,
      i32_and,
      i32_or,
      i32_xor,
      i32_shl,
      i32_shr_u,
      i32_shr_s,
      i32_eq,
      i32_ne,
      i32_lt_s,
      i32_le_s,
      i32_lt_u,
      i32_le_u,
      i32_gt_s,
      i32_ge_s,
      i32_gt_u,
      i32_ge_u,
      i32_store,
      i32_store8,
      i32_store16,
      i32_call,
      i32_call_indirect,
      i32_select,
      i64_add,
      i64_sub,
      i64_mul,
      i64_div_s,
      i64_div_u,
      i64_rem_s,
      i64_rem_u,
      i64_and,
      i64_or,
      i64_xor,
      i64_shl,
      i64_shr_u,
      i64_shr_s,
      i64_eq,
      i64_ne,
      i64_lt_s,
      i64_le_s,
      i64_lt_u,
      i64_le_u,
      i64_gt_s,
      i64_ge_s,
      i64_gt_u,
      i64_ge_u,
      i64_store,
      i64_store8,
      i64_store16,
      i64_store32,
      i64_call,
      i64_call_indirect,
      i64_select,
      f32_add,
      f32_sub,
      f32_mul,
      f32_div,
      f32_copysign,
      f32_eq,
      f32_ne,
      f32_lt,
      f32_le,
      f32_gt,
      f32_ge,
      f32_min,
      f32_max,
      f32_store,
      f32_call,
      f32_call_indirect,
      f32_select,
      f64_add,
      f64_sub,
      f64_mul,
      f64_div,
      f64_copysign,
      f64_eq,
      f64_ne,
      f64_lt,
      f64_le,
      f64_gt,
      f64_ge,
      f64_min,
      f64_max,
      f64_store,
      f64_call,
      f64_call_indirect,
      f64_select,
      br_if,
      br_table
    ];
  }
}

typedef FunctionType0 = i32 Function(i32, i32);
typedef FunctionType1 = i32 Function(i64, i64);
typedef FunctionType2 = i32 Function(f32, f32);
typedef FunctionType3 = i32 Function(f64, f64);
typedef FunctionType4 = void Function();
typedef FunctionType5 = i32 Function();
typedef FunctionType6 = i64 Function();
typedef FunctionType7 = f32 Function();
typedef FunctionType8 = f64 Function();
typedef FunctionType9 = void Function(i32, i32);
typedef FunctionType10 = void Function(i64, i64);
typedef FunctionType11 = void Function(f32, f32);
typedef FunctionType12 = void Function(f64, f64);

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final LeftToRight0Module module;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table0, 0, 0, 8, [0, 1, 2, 3, 4, 5, 6, 7]); /* segment0 */
  }
}
