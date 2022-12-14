// Generated from test/spec/align/align.106.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Align106Module implements Module {
  Align106Module();

  @override
  final Memory memory = Memory(1);

  @override
  late final List<Table> tables = [];

  f32 f32_align_switch(i32 arg0) => _func0(arg0);
  f64 f64_align_switch(i32 arg0) => _func1(arg0);
  i32 i32_align_switch(i32 arg0, i32 arg1) => _func2(arg0, arg1);
  i64 i64_align_switch(i32 arg0, i32 arg1) => _func3(arg0, arg1);

  f32 _func0(i32 arg0) {
    f32 local0 = 0;
    f32 local1 = 0;

    final frame = Frame(this);
    frame.f32_const(10.0);
    local0 = frame.pop();
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
              frame.push(arg0);
              var t0 = frame.pop();
              switch (t0) {
                case 0:
                  break block_label_4;
                case 1:
                  break block_label_3;
                case 2:
                  break block_label_2;
                case 3:
                  break block_label_1;
                default:
                  break block_label_0;
              }
            }
            frame.i32_const(0);
            frame.push(local0);
            frame.f32_store(2, 0);
            frame.i32_const(0);
            frame.f32_load(2, 0);
            local1 = frame.pop();
            break block_label_0;
          }
          frame.i32_const(0);
          frame.push(local0);
          frame.f32_store(0, 0);
          frame.i32_const(0);
          frame.f32_load(0, 0);
          local1 = frame.pop();
          break block_label_0;
        }
        frame.i32_const(0);
        frame.push(local0);
        frame.f32_store(1, 0);
        frame.i32_const(0);
        frame.f32_load(1, 0);
        local1 = frame.pop();
        break block_label_0;
      }
      frame.i32_const(0);
      frame.push(local0);
      frame.f32_store(2, 0);
      frame.i32_const(0);
      frame.f32_load(2, 0);
      local1 = frame.pop();
    }
    frame.push(local1);
    return frame.pop();
  }

  f64 _func1(i32 arg0) {
    f64 local0 = 0;
    f64 local1 = 0;

    final frame = Frame(this);
    frame.f64_const(10.0);
    local0 = frame.pop();
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
                frame.push(arg0);
                var t0 = frame.pop();
                switch (t0) {
                  case 0:
                    break block_label_5;
                  case 1:
                    break block_label_4;
                  case 2:
                    break block_label_3;
                  case 3:
                    break block_label_2;
                  case 4:
                    break block_label_1;
                  default:
                    break block_label_0;
                }
              }
              frame.i32_const(0);
              frame.push(local0);
              frame.f64_store(3, 0);
              frame.i32_const(0);
              frame.f64_load(3, 0);
              local1 = frame.pop();
              break block_label_0;
            }
            frame.i32_const(0);
            frame.push(local0);
            frame.f64_store(0, 0);
            frame.i32_const(0);
            frame.f64_load(0, 0);
            local1 = frame.pop();
            break block_label_0;
          }
          frame.i32_const(0);
          frame.push(local0);
          frame.f64_store(1, 0);
          frame.i32_const(0);
          frame.f64_load(1, 0);
          local1 = frame.pop();
          break block_label_0;
        }
        frame.i32_const(0);
        frame.push(local0);
        frame.f64_store(2, 0);
        frame.i32_const(0);
        frame.f64_load(2, 0);
        local1 = frame.pop();
        break block_label_0;
      }
      frame.i32_const(0);
      frame.push(local0);
      frame.f64_store(3, 0);
      frame.i32_const(0);
      frame.f64_load(3, 0);
      local1 = frame.pop();
    }
    frame.push(local1);
    return frame.pop();
  }

  i32 _func2(i32 arg0, i32 arg1) {
    i32 local0 = 0;
    i32 local1 = 0;

    final frame = Frame(this);
    frame.i32_const(10);
    local0 = frame.pop();
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
                frame.push(arg0);
                var t0 = frame.pop();
                switch (t0) {
                  case 0:
                    break block_label_5;
                  case 1:
                    break block_label_4;
                  case 2:
                    break block_label_3;
                  case 3:
                    break block_label_2;
                  case 4:
                    break block_label_1;
                  default:
                    break block_label_0;
                }
              }
              frame.push(arg1);
              frame.i32_const(0);
              frame.i32_eq();
              if_label_5:
              if (frame.pop() != 0) {
                frame.i32_const(0);
                frame.push(local0);
                frame.i32_store8(0, 0);
                frame.i32_const(0);
                frame.i32_load8_s(0, 0);
                local1 = frame.pop();
              }
              frame.push(arg1);
              frame.i32_const(1);
              frame.i32_eq();
              if_label_5:
              if (frame.pop() != 0) {
                frame.i32_const(0);
                frame.push(local0);
                frame.i32_store8(0, 0);
                frame.i32_const(0);
                frame.i32_load8_s(0, 0);
                local1 = frame.pop();
              }
              break block_label_0;
            }
            frame.push(arg1);
            frame.i32_const(0);
            frame.i32_eq();
            if_label_4:
            if (frame.pop() != 0) {
              frame.i32_const(0);
              frame.push(local0);
              frame.i32_store8(0, 0);
              frame.i32_const(0);
              frame.i32_load8_u(0, 0);
              local1 = frame.pop();
            }
            frame.push(arg1);
            frame.i32_const(1);
            frame.i32_eq();
            if_label_4:
            if (frame.pop() != 0) {
              frame.i32_const(0);
              frame.push(local0);
              frame.i32_store8(0, 0);
              frame.i32_const(0);
              frame.i32_load8_u(0, 0);
              local1 = frame.pop();
            }
            break block_label_0;
          }
          frame.push(arg1);
          frame.i32_const(0);
          frame.i32_eq();
          if_label_3:
          if (frame.pop() != 0) {
            frame.i32_const(0);
            frame.push(local0);
            frame.i32_store16(1, 0);
            frame.i32_const(0);
            frame.i32_load16_s(1, 0);
            local1 = frame.pop();
          }
          frame.push(arg1);
          frame.i32_const(1);
          frame.i32_eq();
          if_label_3:
          if (frame.pop() != 0) {
            frame.i32_const(0);
            frame.push(local0);
            frame.i32_store16(0, 0);
            frame.i32_const(0);
            frame.i32_load16_s(0, 0);
            local1 = frame.pop();
          }
          frame.push(arg1);
          frame.i32_const(2);
          frame.i32_eq();
          if_label_3:
          if (frame.pop() != 0) {
            frame.i32_const(0);
            frame.push(local0);
            frame.i32_store16(1, 0);
            frame.i32_const(0);
            frame.i32_load16_s(1, 0);
            local1 = frame.pop();
          }
          break block_label_0;
        }
        frame.push(arg1);
        frame.i32_const(0);
        frame.i32_eq();
        if_label_2:
        if (frame.pop() != 0) {
          frame.i32_const(0);
          frame.push(local0);
          frame.i32_store16(1, 0);
          frame.i32_const(0);
          frame.i32_load16_u(1, 0);
          local1 = frame.pop();
        }
        frame.push(arg1);
        frame.i32_const(1);
        frame.i32_eq();
        if_label_2:
        if (frame.pop() != 0) {
          frame.i32_const(0);
          frame.push(local0);
          frame.i32_store16(0, 0);
          frame.i32_const(0);
          frame.i32_load16_u(0, 0);
          local1 = frame.pop();
        }
        frame.push(arg1);
        frame.i32_const(2);
        frame.i32_eq();
        if_label_2:
        if (frame.pop() != 0) {
          frame.i32_const(0);
          frame.push(local0);
          frame.i32_store16(1, 0);
          frame.i32_const(0);
          frame.i32_load16_u(1, 0);
          local1 = frame.pop();
        }
        break block_label_0;
      }
      frame.push(arg1);
      frame.i32_const(0);
      frame.i32_eq();
      if_label_1:
      if (frame.pop() != 0) {
        frame.i32_const(0);
        frame.push(local0);
        frame.i32_store(2, 0);
        frame.i32_const(0);
        frame.i32_load(2, 0);
        local1 = frame.pop();
      }
      frame.push(arg1);
      frame.i32_const(1);
      frame.i32_eq();
      if_label_1:
      if (frame.pop() != 0) {
        frame.i32_const(0);
        frame.push(local0);
        frame.i32_store(0, 0);
        frame.i32_const(0);
        frame.i32_load(0, 0);
        local1 = frame.pop();
      }
      frame.push(arg1);
      frame.i32_const(2);
      frame.i32_eq();
      if_label_1:
      if (frame.pop() != 0) {
        frame.i32_const(0);
        frame.push(local0);
        frame.i32_store(1, 0);
        frame.i32_const(0);
        frame.i32_load(1, 0);
        local1 = frame.pop();
      }
      frame.push(arg1);
      frame.i32_const(4);
      frame.i32_eq();
      if_label_1:
      if (frame.pop() != 0) {
        frame.i32_const(0);
        frame.push(local0);
        frame.i32_store(2, 0);
        frame.i32_const(0);
        frame.i32_load(2, 0);
        local1 = frame.pop();
      }
    }
    frame.push(local1);
    return frame.pop();
  }

  i64 _func3(i32 arg0, i32 arg1) {
    i64 local0 = 0;
    i64 local1 = 0;

    final frame = Frame(this);
    frame.i64_const(10);
    local0 = frame.pop();
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
                    frame.push(arg0);
                    var t0 = frame.pop();
                    switch (t0) {
                      case 0:
                        break block_label_7;
                      case 1:
                        break block_label_6;
                      case 2:
                        break block_label_5;
                      case 3:
                        break block_label_4;
                      case 4:
                        break block_label_3;
                      case 5:
                        break block_label_2;
                      case 6:
                        break block_label_1;
                      default:
                        break block_label_0;
                    }
                  }
                  frame.push(arg1);
                  frame.i32_const(0);
                  frame.i32_eq();
                  if_label_7:
                  if (frame.pop() != 0) {
                    frame.i32_const(0);
                    frame.push(local0);
                    frame.i64_store8(0, 0);
                    frame.i32_const(0);
                    frame.i64_load8_s(0, 0);
                    local1 = frame.pop();
                  }
                  frame.push(arg1);
                  frame.i32_const(1);
                  frame.i32_eq();
                  if_label_7:
                  if (frame.pop() != 0) {
                    frame.i32_const(0);
                    frame.push(local0);
                    frame.i64_store8(0, 0);
                    frame.i32_const(0);
                    frame.i64_load8_s(0, 0);
                    local1 = frame.pop();
                  }
                  break block_label_0;
                }
                frame.push(arg1);
                frame.i32_const(0);
                frame.i32_eq();
                if_label_6:
                if (frame.pop() != 0) {
                  frame.i32_const(0);
                  frame.push(local0);
                  frame.i64_store8(0, 0);
                  frame.i32_const(0);
                  frame.i64_load8_u(0, 0);
                  local1 = frame.pop();
                }
                frame.push(arg1);
                frame.i32_const(1);
                frame.i32_eq();
                if_label_6:
                if (frame.pop() != 0) {
                  frame.i32_const(0);
                  frame.push(local0);
                  frame.i64_store8(0, 0);
                  frame.i32_const(0);
                  frame.i64_load8_u(0, 0);
                  local1 = frame.pop();
                }
                break block_label_0;
              }
              frame.push(arg1);
              frame.i32_const(0);
              frame.i32_eq();
              if_label_5:
              if (frame.pop() != 0) {
                frame.i32_const(0);
                frame.push(local0);
                frame.i64_store16(1, 0);
                frame.i32_const(0);
                frame.i64_load16_s(1, 0);
                local1 = frame.pop();
              }
              frame.push(arg1);
              frame.i32_const(1);
              frame.i32_eq();
              if_label_5:
              if (frame.pop() != 0) {
                frame.i32_const(0);
                frame.push(local0);
                frame.i64_store16(0, 0);
                frame.i32_const(0);
                frame.i64_load16_s(0, 0);
                local1 = frame.pop();
              }
              frame.push(arg1);
              frame.i32_const(2);
              frame.i32_eq();
              if_label_5:
              if (frame.pop() != 0) {
                frame.i32_const(0);
                frame.push(local0);
                frame.i64_store16(1, 0);
                frame.i32_const(0);
                frame.i64_load16_s(1, 0);
                local1 = frame.pop();
              }
              break block_label_0;
            }
            frame.push(arg1);
            frame.i32_const(0);
            frame.i32_eq();
            if_label_4:
            if (frame.pop() != 0) {
              frame.i32_const(0);
              frame.push(local0);
              frame.i64_store16(1, 0);
              frame.i32_const(0);
              frame.i64_load16_u(1, 0);
              local1 = frame.pop();
            }
            frame.push(arg1);
            frame.i32_const(1);
            frame.i32_eq();
            if_label_4:
            if (frame.pop() != 0) {
              frame.i32_const(0);
              frame.push(local0);
              frame.i64_store16(0, 0);
              frame.i32_const(0);
              frame.i64_load16_u(0, 0);
              local1 = frame.pop();
            }
            frame.push(arg1);
            frame.i32_const(2);
            frame.i32_eq();
            if_label_4:
            if (frame.pop() != 0) {
              frame.i32_const(0);
              frame.push(local0);
              frame.i64_store16(1, 0);
              frame.i32_const(0);
              frame.i64_load16_u(1, 0);
              local1 = frame.pop();
            }
            break block_label_0;
          }
          frame.push(arg1);
          frame.i32_const(0);
          frame.i32_eq();
          if_label_3:
          if (frame.pop() != 0) {
            frame.i32_const(0);
            frame.push(local0);
            frame.i64_store32(2, 0);
            frame.i32_const(0);
            frame.i64_load32_s(2, 0);
            local1 = frame.pop();
          }
          frame.push(arg1);
          frame.i32_const(1);
          frame.i32_eq();
          if_label_3:
          if (frame.pop() != 0) {
            frame.i32_const(0);
            frame.push(local0);
            frame.i64_store32(0, 0);
            frame.i32_const(0);
            frame.i64_load32_s(0, 0);
            local1 = frame.pop();
          }
          frame.push(arg1);
          frame.i32_const(2);
          frame.i32_eq();
          if_label_3:
          if (frame.pop() != 0) {
            frame.i32_const(0);
            frame.push(local0);
            frame.i64_store32(1, 0);
            frame.i32_const(0);
            frame.i64_load32_s(1, 0);
            local1 = frame.pop();
          }
          frame.push(arg1);
          frame.i32_const(4);
          frame.i32_eq();
          if_label_3:
          if (frame.pop() != 0) {
            frame.i32_const(0);
            frame.push(local0);
            frame.i64_store32(2, 0);
            frame.i32_const(0);
            frame.i64_load32_s(2, 0);
            local1 = frame.pop();
          }
          break block_label_0;
        }
        frame.push(arg1);
        frame.i32_const(0);
        frame.i32_eq();
        if_label_2:
        if (frame.pop() != 0) {
          frame.i32_const(0);
          frame.push(local0);
          frame.i64_store32(2, 0);
          frame.i32_const(0);
          frame.i64_load32_u(2, 0);
          local1 = frame.pop();
        }
        frame.push(arg1);
        frame.i32_const(1);
        frame.i32_eq();
        if_label_2:
        if (frame.pop() != 0) {
          frame.i32_const(0);
          frame.push(local0);
          frame.i64_store32(0, 0);
          frame.i32_const(0);
          frame.i64_load32_u(0, 0);
          local1 = frame.pop();
        }
        frame.push(arg1);
        frame.i32_const(2);
        frame.i32_eq();
        if_label_2:
        if (frame.pop() != 0) {
          frame.i32_const(0);
          frame.push(local0);
          frame.i64_store32(1, 0);
          frame.i32_const(0);
          frame.i64_load32_u(1, 0);
          local1 = frame.pop();
        }
        frame.push(arg1);
        frame.i32_const(4);
        frame.i32_eq();
        if_label_2:
        if (frame.pop() != 0) {
          frame.i32_const(0);
          frame.push(local0);
          frame.i64_store32(2, 0);
          frame.i32_const(0);
          frame.i64_load32_u(2, 0);
          local1 = frame.pop();
        }
        break block_label_0;
      }
      frame.push(arg1);
      frame.i32_const(0);
      frame.i32_eq();
      if_label_1:
      if (frame.pop() != 0) {
        frame.i32_const(0);
        frame.push(local0);
        frame.i64_store(3, 0);
        frame.i32_const(0);
        frame.i64_load(3, 0);
        local1 = frame.pop();
      }
      frame.push(arg1);
      frame.i32_const(1);
      frame.i32_eq();
      if_label_1:
      if (frame.pop() != 0) {
        frame.i32_const(0);
        frame.push(local0);
        frame.i64_store(0, 0);
        frame.i32_const(0);
        frame.i64_load(0, 0);
        local1 = frame.pop();
      }
      frame.push(arg1);
      frame.i32_const(2);
      frame.i32_eq();
      if_label_1:
      if (frame.pop() != 0) {
        frame.i32_const(0);
        frame.push(local0);
        frame.i64_store(1, 0);
        frame.i32_const(0);
        frame.i64_load(1, 0);
        local1 = frame.pop();
      }
      frame.push(arg1);
      frame.i32_const(4);
      frame.i32_eq();
      if_label_1:
      if (frame.pop() != 0) {
        frame.i32_const(0);
        frame.push(local0);
        frame.i64_store(2, 0);
        frame.i32_const(0);
        frame.i64_load(2, 0);
        local1 = frame.pop();
      }
      frame.push(arg1);
      frame.i32_const(8);
      frame.i32_eq();
      if_label_1:
      if (frame.pop() != 0) {
        frame.i32_const(0);
        frame.push(local0);
        frame.i64_store(3, 0);
        frame.i32_const(0);
        frame.i64_load(3, 0);
        local1 = frame.pop();
      }
    }
    frame.push(local1);
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(i32);
typedef FunctionType1 = f64 Function(i32);
typedef FunctionType2 = i32 Function(i32, i32);
typedef FunctionType3 = i64 Function(i32, i32);
