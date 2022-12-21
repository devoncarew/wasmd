// Generated from test/wasm/stack.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'package:test/test.dart';
import 'package:wasmd/runtime.dart';

import 'src/infra.dart';

void main() {
  group('stack', () {
    final Module m = Module();
    final Globals g = m.globals;

    returns('test_fac_expr_0', m.test_fac_expr_0, 0x619fb0907bc00000);
    returns('test_fac_stack_0', m.test_fac_stack_0, 0x619fb0907bc00000);
    returns('test_fac_mixed_0', m.test_fac_mixed_0, 0x619fb0907bc00000);
    returns('test_not_quite_a_tree_0', m.test_not_quite_a_tree_0, 3);
    returns('test_not_quite_a_tree_1', m.test_not_quite_a_tree_1, 9);
  });
}

class Module {
  Module();

  final Memory memory = Memory(0);

  final Globals globals = Globals();

  i64 fac_expr(i64 n) {
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

  i64 fac_stack(i64 n) {
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

  i64 fac_stack_raw(i64 n) {
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

  i64 fac_mixed(i64 n) {
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

  i64 fac_mixed_raw(i64 n) {
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

  i32 add_one_to_global() {
    i32 local0 = 0;

    final frame = Frame(memory);
    frame.i32_const(1);
    frame.push(globals.temp);
    frame.i32_add();
    globals.temp = frame.pop();
    frame.push(globals.temp);
    return frame.pop();
  }

  void add_one_to_global_and_drop() {
    final frame = Frame(memory);
    frame.push(add_one_to_global());
    frame.drop();
  }

  i32 not_quite_a_tree() {
    final frame = Frame(memory);
    frame.push(add_one_to_global());
    frame.push(add_one_to_global());
    add_one_to_global_and_drop();
    frame.i32_add();
    return frame.pop();
  }

  i64 test_fac_expr_0() {
    final frame = Frame(memory);
    frame.i64_const(25);
    {
      var t0 = frame.pop();
      frame.push(fac_expr(t0));
    }
    return frame.pop();
  }

  i64 test_fac_stack_0() {
    final frame = Frame(memory);
    frame.i64_const(25);
    {
      var t0 = frame.pop();
      frame.push(fac_stack(t0));
    }
    return frame.pop();
  }

  i64 test_fac_mixed_0() {
    final frame = Frame(memory);
    frame.i64_const(25);
    {
      var t0 = frame.pop();
      frame.push(fac_mixed(t0));
    }
    return frame.pop();
  }

  i32 test_not_quite_a_tree_0() {
    final frame = Frame(memory);
    frame.push(not_quite_a_tree());
    return frame.pop();
  }

  i32 test_not_quite_a_tree_1() {
    final frame = Frame(memory);
    frame.push(not_quite_a_tree());
    return frame.pop();
  }
}

typedef FunctionType0 = i64 Function(i64);
typedef FunctionType1 = i32 Function();
typedef FunctionType2 = void Function();
typedef FunctionType3 = i64 Function();

class Globals {
  i32 temp = 0;
}
