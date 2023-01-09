// Generated from test/spec/fac/fac.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Fac0Module implements Module {
  Fac0Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i64 fac_rec(i64 arg0) => _func0(arg0);
  i64 fac_rec_named(i64 arg0) => _func1(arg0);
  i64 fac_iter(i64 arg0) => _func2(arg0);
  i64 fac_iter_named(i64 arg0) => _func3(arg0);
  i64 fac_opt(i64 arg0) => _func4(arg0);
  i64 fac_ssa(i64 arg0) => _func7(arg0);

  i64 _func0(i64 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.i64_const(0);
    frame.i64_eq();
    if_label_0:
    if (frame.pop() != 0) {
      frame.i64_const(1);
    } else {
      frame.push(arg0);
      frame.push(arg0);
      frame.i64_const(1);
      frame.i64_sub();
      {
        var t0 = frame.pop();
        frame.push(_func0(t0));
      }
      frame.i64_mul();
    }
    return frame.pop();
  }

  i64 _func1(i64 n) {
    final frame = Frame(this);
    frame.push(n);
    frame.i64_const(0);
    frame.i64_eq();
    if_label_0:
    if (frame.pop() != 0) {
      frame.i64_const(1);
    } else {
      frame.push(n);
      frame.push(n);
      frame.i64_const(1);
      frame.i64_sub();
      {
        var t0 = frame.pop();
        frame.push(_func1(t0));
      }
      frame.i64_mul();
    }
    return frame.pop();
  }

  i64 _func2(i64 arg0) {
    i64 local0 = 0;
    i64 local1 = 0;

    final frame = Frame(this);
    frame.push(arg0);
    local0 = frame.pop();
    frame.i64_const(1);
    local1 = frame.pop();
    block_label_0:
    {
      loop_label_1:
      for (;;) {
        frame.push(local0);
        frame.i64_const(0);
        frame.i64_eq();
        if_label_2:
        if (frame.pop() != 0) {
          break block_label_0;
        } else {
          frame.push(local0);
          frame.push(local1);
          frame.i64_mul();
          local1 = frame.pop();
          frame.push(local0);
          frame.i64_const(1);
          frame.i64_sub();
          local0 = frame.pop();
        }
        continue loop_label_1;

        break;
      }
    }
    frame.push(local1);
    return frame.pop();
  }

  i64 _func3(i64 n) {
    i64 i = 0;
    i64 res = 0;

    final frame = Frame(this);
    frame.push(n);
    i = frame.pop();
    frame.i64_const(1);
    res = frame.pop();
    block_label_0:
    {
      loop_label_1:
      for (;;) {
        frame.push(i);
        frame.i64_const(0);
        frame.i64_eq();
        if_label_2:
        if (frame.pop() != 0) {
          break block_label_0;
        } else {
          frame.push(i);
          frame.push(res);
          frame.i64_mul();
          res = frame.pop();
          frame.push(i);
          frame.i64_const(1);
          frame.i64_sub();
          i = frame.pop();
        }
        continue loop_label_1;

        break;
      }
    }
    frame.push(res);
    return frame.pop();
  }

  i64 _func4(i64 arg0) {
    i64 local0 = 0;

    final frame = Frame(this);
    frame.i64_const(1);
    local0 = frame.pop();
    block_label_0:
    {
      frame.push(arg0);
      frame.i64_const(2);
      frame.i64_lt_s();
      if (frame.pop() != 0) {
        break block_label_0;
      }

      loop_label_1:
      for (;;) {
        frame.push(local0);
        frame.push(arg0);
        frame.i64_mul();
        local0 = frame.pop();
        frame.push(arg0);
        frame.i64_const(-1);
        frame.i64_add();
        arg0 = frame.pop();
        frame.push(arg0);
        frame.i64_const(1);
        frame.i64_gt_s();
        if (frame.pop() != 0) {
          continue loop_label_1;
        }
        break;
      }
    }
    frame.push(local0);
    return frame.pop();
  }

  Tuple2<i64, i64> _pick0(i64 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg0);
    return Tuple2.from(frame.stack);
  }

  Tuple3<i64, i64, i64> _pick1(i64 arg0, i64 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.push(arg0);
    return Tuple3.from(frame.stack);
  }

  i64 _func7(i64 arg0) {
    final frame = Frame(this);
    frame.i64_const(1);
    frame.push(arg0);

    loop_label_0:
    for (;;) {
      {
        var t1 = frame.pop();
        var t0 = frame.pop();
        _pick1(t0, t1).pushTo(frame.stack);
      }
      {
        var t1 = frame.pop();
        var t0 = frame.pop();
        _pick1(t0, t1).pushTo(frame.stack);
      }
      frame.i64_mul();
      {
        var t1 = frame.pop();
        var t0 = frame.pop();
        _pick1(t0, t1).pushTo(frame.stack);
      }
      frame.i64_const(1);
      frame.i64_sub();
      {
        var t0 = frame.pop();
        _pick0(t0).pushTo(frame.stack);
      }
      frame.i64_const(0);
      frame.i64_gt_u();
      if (frame.pop() != 0) {
        continue loop_label_0;
      }
      frame.drop();
      return frame.pop();
      break;
    }
    return frame.pop();
  }
}

typedef FunctionType0 = i64 Function(i64);
typedef FunctionType1 = Tuple2<i64, i64> Function(i64);
typedef FunctionType2 = Tuple3<i64, i64, i64> Function(i64, i64);
typedef FunctionType3 = i64 Function(i64, i64);
