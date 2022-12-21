// Generated from test/wasm/fac.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'package:test/test.dart';
import 'package:wasmd/runtime.dart';

import 'src/infra.dart';

void main() {
  group('fac', () {
    final Module m = Module();

    returns('test_fac_rec_0', m.test_fac_rec_0, 0x619fb0907bc00000);
    returns('test_fac_iter_0', m.test_fac_iter_0, 0x619fb0907bc00000);
    returns('test_fac_rec_named_0', m.test_fac_rec_named_0, 0x619fb0907bc00000);
    returns(
        'test_fac_iter_named_0', m.test_fac_iter_named_0, 0x619fb0907bc00000);
    returns('test_fac_opt_0', m.test_fac_opt_0, 0x619fb0907bc00000);
    returns('test_fac_ssa_0', m.test_fac_ssa_0, 0x619fb0907bc00000);
  });
}

class Module {
  Module();

  final Memory memory = Memory(0);

  i64 fac_rec(i64 arg0) {
    final frame = Frame(memory);
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
        frame.push(fac_rec(t0));
      }
      frame.i64_mul();
    }
    return frame.pop();
  }

  i64 fac_rec_named(i64 n) {
    final frame = Frame(memory);
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
        frame.push(fac_rec_named(t0));
      }
      frame.i64_mul();
    }
    return frame.pop();
  }

  i64 fac_iter(i64 arg0) {
    i64 local0 = 0;
    i64 local1 = 0;

    final frame = Frame(memory);
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

  i64 fac_iter_named(i64 n) {
    i64 i = 0;
    i64 res = 0;

    final frame = Frame(memory);
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

  i64 fac_opt(i64 arg0) {
    i64 local0 = 0;

    final frame = Frame(memory);
    frame.i64_const(1);
    local0 = frame.pop();
    block_label_0:
    {
      frame.push(arg0);
      frame.i64_const(2);
      frame.i64_lt_s();
      if (frame.pop() != 0) break block_label_0;

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
        if (frame.pop() != 0) continue loop_label_1;
        break;
      }
    }
    frame.push(local0);
    return frame.pop();
  }

  i64 pick0(i64 arg0) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg0);
    return frame.pop();
  }

  i64 pick1(i64 arg0, i64 arg1) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.push(arg0);
    return frame.pop();
  }

  i64 fac_ssa(i64 arg0) {
    final frame = Frame(memory);
    frame.i64_const(1);
    frame.push(arg0);

    loop_label_0:
    for (;;) {
      {
        var t1 = frame.pop();
        var t0 = frame.pop();
        frame.push(pick1(t0, t1));
      }
      {
        var t1 = frame.pop();
        var t0 = frame.pop();
        frame.push(pick1(t0, t1));
      }
      frame.i64_mul();
      {
        var t1 = frame.pop();
        var t0 = frame.pop();
        frame.push(pick1(t0, t1));
      }
      frame.i64_const(1);
      frame.i64_sub();
      {
        var t0 = frame.pop();
        frame.push(pick0(t0));
      }
      frame.i64_const(0);
      frame.i64_gt_u();
      if (frame.pop() != 0) continue loop_label_0;
      frame.drop();
      return frame.pop();
      break;
    }
    return frame.pop();
  }

  i64 test_fac_rec_0() {
    final frame = Frame(memory);
    frame.i64_const(25);
    {
      var t0 = frame.pop();
      frame.push(fac_rec(t0));
    }
    return frame.pop();
  }

  i64 test_fac_iter_0() {
    final frame = Frame(memory);
    frame.i64_const(25);
    {
      var t0 = frame.pop();
      frame.push(fac_iter(t0));
    }
    return frame.pop();
  }

  i64 test_fac_rec_named_0() {
    final frame = Frame(memory);
    frame.i64_const(25);
    {
      var t0 = frame.pop();
      frame.push(fac_rec_named(t0));
    }
    return frame.pop();
  }

  i64 test_fac_iter_named_0() {
    final frame = Frame(memory);
    frame.i64_const(25);
    {
      var t0 = frame.pop();
      frame.push(fac_iter_named(t0));
    }
    return frame.pop();
  }

  i64 test_fac_opt_0() {
    final frame = Frame(memory);
    frame.i64_const(25);
    {
      var t0 = frame.pop();
      frame.push(fac_opt(t0));
    }
    return frame.pop();
  }

  i64 test_fac_ssa_0() {
    final frame = Frame(memory);
    frame.i64_const(25);
    {
      var t0 = frame.pop();
      frame.push(fac_ssa(t0));
    }
    return frame.pop();
  }
}

typedef FunctionType0 = i64 Function(i64);
typedef FunctionType1 = i64 Function(i64);
typedef FunctionType2 = i64 Function(i64, i64);
typedef FunctionType3 = i64 Function(i64, i64);
typedef FunctionType4 = i64 Function();
