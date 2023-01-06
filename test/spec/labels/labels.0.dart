// Generated from test/spec/labels/labels.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Labels0Module implements Module {
  Labels0Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 $if() {
    i32 i = 0;

    final frame = Frame(this);
    frame.i32_const(0);
    i = frame.pop();
    block_label_0:
    {
      frame.i32_const(1);
      if_label_1:
      if (frame.pop() != 0) {
        frame.unwindTo(1, 0);
        break if_label_1;

        frame.i32_const(666);
        i = frame.pop();
      }
      frame.push(i);
      frame.i32_const(1);
      frame.i32_add();
      i = frame.pop();
      frame.i32_const(1);
      if_label_1:
      if (frame.pop() != 0) {
        frame.unwindTo(2, 0);
        break if_label_1;

        frame.i32_const(666);
        i = frame.pop();
      } else {
        frame.i32_const(888);
        i = frame.pop();
      }
      frame.push(i);
      frame.i32_const(1);
      frame.i32_add();
      i = frame.pop();
      frame.i32_const(1);
      if_label_1:
      if (frame.pop() != 0) {
        frame.unwindTo(3, 0);
        break if_label_1;

        frame.i32_const(666);
        i = frame.pop();
      } else {
        frame.i32_const(888);
        i = frame.pop();
      }
      frame.push(i);
      frame.i32_const(1);
      frame.i32_add();
      i = frame.pop();
      frame.i32_const(0);
      if_label_1:
      if (frame.pop() != 0) {
        frame.i32_const(888);
        i = frame.pop();
      } else {
        frame.unwindTo(4, 0);
        break if_label_1;

        frame.i32_const(666);
        i = frame.pop();
      }
      frame.push(i);
      frame.i32_const(1);
      frame.i32_add();
      i = frame.pop();
      frame.i32_const(0);
      if_label_1:
      if (frame.pop() != 0) {
        frame.i32_const(888);
        i = frame.pop();
      } else {
        frame.unwindTo(5, 0);
        break if_label_1;

        frame.i32_const(666);
        i = frame.pop();
      }
      frame.push(i);
      frame.i32_const(1);
      frame.i32_add();
      i = frame.pop();
    }
    frame.push(i);
    return frame.pop();
  }

  i32 $return(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      block_label_1:
      {
        block_label_2:
        {
          frame.push(arg0);
          var t0 = frame.pop();
          switch (t0) {
            case 0:
              frame.unwindTo(0, 0);
              break block_label_2;

            default:
              frame.unwindTo(0, 0);
              break block_label_1;
          }

          frame.unwindTo(0, 0);
          break block_label_0;
        }
        frame.i32_const(0);
        return frame.pop();
      }
    }
    frame.i32_const(2);
    return frame.pop();
  }

  i32 $switch(i32 arg0) {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(10);
      block_label_1:
      {
        block_label_2:
        {
          block_label_3:
          {
            block_label_4:
            {
              block_label_5:
              {
                block_label_6:
                {
                  frame.push(arg0);
                  var t0 = frame.pop();
                  switch (t0) {
                    case 0:
                      frame.unwindTo(1, 0);
                      break block_label_2;

                    case 1:
                      frame.unwindTo(1, 0);
                      break block_label_6;

                    case 2:
                      frame.unwindTo(1, 0);
                      break block_label_5;

                    case 3:
                      frame.unwindTo(1, 0);
                      break block_label_4;

                    default:
                      frame.unwindTo(1, 0);
                      break block_label_3;
                  }
                }
              }
              frame.i32_const(2);
              frame.unwindTo(1, 1);
              break block_label_1;
            }
            frame.i32_const(3);
            frame.unwindTo(0, 1);
            break block_label_0;
          }
        }
        frame.i32_const(5);
      }
      frame.i32_mul();
    }
    return frame.pop();
  }

  i32 block() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      frame.unwindTo(0, 1);
      break block_label_0;

      frame.i32_const(0);
    }
    return frame.pop();
  }

  i32 br() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      if_label_1:
      if (frame.pop() != 0) {
        block_label_2:
        {
          frame.i32_const(1);
          frame.unwindTo(0, 1);
          break block_label_2;
        }
        frame.unwindTo(0, 1);
        break block_label_0;
      } else {
        block_label_2:
        {
          block_label_3:
          {
            frame.i32_const(1);
            frame.unwindTo(0, 1);
            break block_label_3;
          }
          frame.drop();
        }
      }
      frame.i32_const(1);
    }
    return frame.pop();
  }

  i32 br_if0() {
    i32 i = 0;

    final frame = Frame(this);
    frame.i32_const(0);
    i = frame.pop();
    block_label_0:
    {
      block_label_1:
      {
        frame.i32_const(0);
        if (frame.pop() != 0) {
          frame.unwindTo(0, 0);
          break block_label_1;
        }
        frame.push(i);
        frame.i32_const(1);
        frame.i32_or();
        i = frame.pop();
        frame.i32_const(1);
        if (frame.pop() != 0) {
          frame.unwindTo(0, 0);
          break block_label_1;
        }
        frame.push(i);
        frame.i32_const(2);
        frame.i32_or();
        i = frame.pop();
      }
      block_label_1:
      {
        frame.push(i);
        frame.i32_const(4);
        frame.i32_or();
        i = frame.pop();
        frame.push(i);
      }
      frame.i32_const(0);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.drop();
      frame.push(i);
      frame.i32_const(8);
      frame.i32_or();
      i = frame.pop();
      block_label_1:
      {
        frame.push(i);
        frame.i32_const(16);
        frame.i32_or();
        i = frame.pop();
        frame.push(i);
      }
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.drop();
      frame.push(i);
      frame.i32_const(32);
      frame.i32_or();
      i = frame.pop();
      frame.push(i);
    }
    return frame.pop();
  }

  i32 br_if1() {
    final frame = Frame(this);
    block_label_0:
    {
      block_label_1:
      {
        frame.i32_const(1);
        frame.unwindTo(0, 1);
        break block_label_1;
      }
      frame.i32_const(1);
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.drop();
      frame.i32_const(0);
    }
    return frame.pop();
  }

  i32 br_if2() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      if_label_1:
      if (frame.pop() != 0) {
        block_label_2:
        {
          frame.i32_const(1);
          frame.unwindTo(0, 1);
          break block_label_2;
        }
        frame.i32_const(1);
        if (frame.pop() != 0) {
          frame.unwindTo(0, 1);
          break block_label_0;
        }
        frame.drop();
      }
      frame.i32_const(0);
    }
    return frame.pop();
  }

  i32 br_if3() {
    i32 i1 = 0;

    final frame = Frame(this);
    block_label_0:
    {
      block_label_1:
      {
        frame.i32_const(1);
        i1 = frame.pop();
        frame.push(i1);
      }
      block_label_1:
      {
        frame.i32_const(2);
        i1 = frame.pop();
        frame.push(i1);
      }
      if (frame.pop() != 0) {
        frame.unwindTo(0, 1);
        break block_label_0;
      }
      frame.drop();
      frame.i32_const(0);
    }
    frame.i32_const(0);
    frame.i32_add();
    frame.drop();
    frame.push(i1);
    return frame.pop();
  }

  i32 if2() {
    i32 i = 0;

    final frame = Frame(this);
    frame.i32_const(0);
    i = frame.pop();
    block_label_0:
    {
      frame.i32_const(1);
      if_label_1:
      if (frame.pop() != 0) {
        frame.unwindTo(1, 0);
        break if_label_1;

        frame.i32_const(666);
        i = frame.pop();
      }
      frame.push(i);
      frame.i32_const(1);
      frame.i32_add();
      i = frame.pop();
      frame.i32_const(1);
      if_label_1:
      if (frame.pop() != 0) {
        frame.unwindTo(2, 0);
        break if_label_1;

        frame.i32_const(666);
        i = frame.pop();
      } else {
        frame.i32_const(888);
        i = frame.pop();
      }
      frame.push(i);
      frame.i32_const(1);
      frame.i32_add();
      i = frame.pop();
      frame.i32_const(1);
      if_label_1:
      if (frame.pop() != 0) {
        frame.unwindTo(3, 0);
        break if_label_1;

        frame.i32_const(666);
        i = frame.pop();
      } else {
        frame.i32_const(888);
        i = frame.pop();
      }
      frame.push(i);
      frame.i32_const(1);
      frame.i32_add();
      i = frame.pop();
      frame.i32_const(0);
      if_label_1:
      if (frame.pop() != 0) {
        frame.i32_const(888);
        i = frame.pop();
      } else {
        frame.unwindTo(4, 0);
        break if_label_1;

        frame.i32_const(666);
        i = frame.pop();
      }
      frame.push(i);
      frame.i32_const(1);
      frame.i32_add();
      i = frame.pop();
      frame.i32_const(0);
      if_label_1:
      if (frame.pop() != 0) {
        frame.i32_const(888);
        i = frame.pop();
      } else {
        frame.unwindTo(5, 0);
        break if_label_1;

        frame.i32_const(666);
        i = frame.pop();
      }
      frame.push(i);
      frame.i32_const(1);
      frame.i32_add();
      i = frame.pop();
    }
    frame.push(i);
    return frame.pop();
  }

  i32 loop1() {
    i32 i = 0;

    final frame = Frame(this);
    frame.i32_const(0);
    i = frame.pop();
    block_label_0:
    {
      loop_label_1:
      for (;;) {
        frame.push(i);
        frame.i32_const(1);
        frame.i32_add();
        i = frame.pop();
        frame.push(i);
        frame.i32_const(5);
        frame.i32_eq();
        if_label_2:
        if (frame.pop() != 0) {
          frame.push(i);
          frame.unwindTo(0, 1);
          break block_label_0;
        }
        continue loop_label_1;

        break;
      }
    }
    return frame.pop();
  }

  i32 loop2() {
    i32 i = 0;

    final frame = Frame(this);
    frame.i32_const(0);
    i = frame.pop();
    block_label_0:
    {
      loop_label_1:
      for (;;) {
        frame.push(i);
        frame.i32_const(1);
        frame.i32_add();
        i = frame.pop();
        frame.push(i);
        frame.i32_const(5);
        frame.i32_eq();
        if_label_2:
        if (frame.pop() != 0) {
          continue loop_label_1;
        }
        frame.push(i);
        frame.i32_const(8);
        frame.i32_eq();
        if_label_2:
        if (frame.pop() != 0) {
          frame.push(i);
          frame.unwindTo(0, 1);
          break block_label_0;
        }
        frame.push(i);
        frame.i32_const(1);
        frame.i32_add();
        i = frame.pop();
        continue loop_label_1;

        break;
      }
    }
    return frame.pop();
  }

  i32 loop3() {
    i32 i = 0;

    final frame = Frame(this);
    frame.i32_const(0);
    i = frame.pop();
    block_label_0:
    {
      loop_label_1:
      for (;;) {
        frame.push(i);
        frame.i32_const(1);
        frame.i32_add();
        i = frame.pop();
        frame.push(i);
        frame.i32_const(5);
        frame.i32_eq();
        if_label_2:
        if (frame.pop() != 0) {
          frame.push(i);
          frame.unwindTo(0, 1);
          break block_label_0;
        }
        frame.push(i);
        break;
      }
    }
    return frame.pop();
  }

  i32 loop4(i32 max) {
    i32 i = 0;

    final frame = Frame(this);
    frame.i32_const(1);
    i = frame.pop();
    block_label_0:
    {
      loop_label_1:
      for (;;) {
        frame.push(i);
        frame.push(i);
        frame.i32_add();
        i = frame.pop();
        frame.push(i);
        frame.push(max);
        frame.i32_gt_u();
        if_label_2:
        if (frame.pop() != 0) {
          frame.push(i);
          frame.unwindTo(0, 1);
          break block_label_0;
        }
        continue loop_label_1;

        break;
      }
    }
    return frame.pop();
  }

  i32 loop5() {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      frame.i32_const(1);
      break;
    }
    frame.i32_const(1);
    frame.i32_add();
    return frame.pop();
  }

  i32 loop6() {
    final frame = Frame(this);

    loop_label_0:
    for (;;) {
      frame.i32_const(0);
      if (frame.pop() != 0) {
        continue loop_label_0;
      }
      frame.i32_const(3);
      break;
    }
    return frame.pop();
  }

  i32 redefinition() {
    final frame = Frame(this);
    block_label_0:
    {
      block_label_1:
      {
        frame.i32_const(2);
      }
      block_label_1:
      {
        frame.i32_const(3);
        frame.unwindTo(0, 1);
        break block_label_1;
      }
      frame.i32_add();
    }
    return frame.pop();
  }

  i32 shadowing() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(1);
      frame.unwindTo(0, 1);
      break block_label_0;

      frame.i32_const(2);
      frame.i32_xor();
    }
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = i32 Function(i32);
