// Generated from test/spec/switch/switch.0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Switch0Module implements Module {
  Switch0Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 stmt(i32 i) {
    i32 j = 0;

    final frame = Frame(this);
    frame.i32_const(100);
    j = frame.pop();
    block_label_0:
    {
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
                  block_label_7:
                  {
                    block_label_8:
                    {
                      block_label_9:
                      {
                        frame.push(i);
                        var t0 = frame.pop();
                        switch (t0) {
                          case 0:
                            break block_label_9;
                          case 1:
                            break block_label_8;
                          case 2:
                            break block_label_7;
                          case 3:
                            break block_label_6;
                          case 4:
                            break block_label_5;
                          case 5:
                            break block_label_4;
                          case 6:
                            break block_label_3;
                          case 7:
                            break block_label_1;
                          default:
                            break block_label_2;
                        }
                      }
                      frame.push(i);
                      return frame.pop();
                    }
                    /* nop */
                  }
                }
                frame.i32_const(0);
                frame.push(i);
                frame.i32_sub();
                j = frame.pop();
                break block_label_0;
              }
              break block_label_0;
            }
            frame.i32_const(101);
            j = frame.pop();
            break block_label_0;
          }
          frame.i32_const(101);
          j = frame.pop();
        }
        frame.i32_const(102);
        j = frame.pop();
      }
    }
    frame.push(j);
    return frame.pop();
    return frame.pop();
  }

  i64 expr(i64 i) {
    i64 j = 0;

    final frame = Frame(this);
    frame.i64_const(100);
    j = frame.pop();
    block_label_0:
    {
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
                  block_label_7:
                  {
                    block_label_8:
                    {
                      block_label_9:
                      {
                        frame.push(i);
                        frame.i32_wrap_i64();
                        var t0 = frame.pop();
                        switch (t0) {
                          case 0:
                            break block_label_9;
                          case 1:
                            break block_label_8;
                          case 2:
                            break block_label_7;
                          case 3:
                            break block_label_6;
                          case 4:
                            break block_label_3;
                          case 5:
                            break block_label_4;
                          case 6:
                            break block_label_5;
                          case 7:
                            break block_label_1;
                          default:
                            break block_label_2;
                        }
                      }
                      frame.push(i);
                      return frame.pop();
                    }
                    /* nop */
                  }
                }
                frame.i64_const(0);
                frame.push(i);
                frame.i64_sub();
                break block_label_0;
              }
              frame.i64_const(101);
              j = frame.pop();
            }
          }
        }
        frame.push(j);
        break block_label_0;
      }
      frame.i64_const(-5);
    }
    return frame.pop();
    return frame.pop();
  }

  i32 arg(i32 i) {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(10);
      block_label_1:
      {
        frame.i32_const(100);
        block_label_2:
        {
          frame.i32_const(1000);
          block_label_3:
          {
            frame.i32_const(2);
            frame.push(i);
            frame.i32_mul();
            frame.i32_const(3);
            frame.push(i);
            frame.i32_and();
            var t0 = frame.pop();
            switch (t0) {
              case 0:
                break block_label_2;
              case 1:
                break block_label_1;
              case 2:
                break block_label_0;
              default:
                break block_label_3;
            }
          }
          frame.i32_add();
        }
        frame.i32_add();
      }
      frame.i32_add();
    }
    return frame.pop();
    return frame.pop();
  }

  i32 corner() {
    final frame = Frame(this);
    block_label_0:
    {
      frame.i32_const(0);
      var t0 = frame.pop();
      switch (t0) {
        default:
          break block_label_0;
      }
    }
    frame.i32_const(1);
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(i32);
typedef FunctionType1 = i64 Function(i64);
typedef FunctionType2 = i32 Function();
