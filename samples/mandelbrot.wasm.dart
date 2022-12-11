// Generated from samples/mandelbrot.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:dasm/runtime.dart';

class Module {
  Module({required this.memory}) {
    dataSegments.init(memory);
    _func6();
  }

  /// min pages: 1
  final Memory memory;
  final Globals globals = Globals();
  final DataSegments dataSegments = DataSegments();

  i32 get width => globals.global2;
  set width(i32 value) => globals.global2 = value;
  i32 get height => globals.global3;
  set height(i32 value) => globals.global3 = value;

  i32 _func0() {
    final frame = Frame(memory);
    frame.i32_const(4);
    frame.push(globals.global3);
    frame.push(globals.global2);
    frame.i32_mul();
    frame.i32_mul();
    return frame.pop();
  }

  i32 _func1(i32 arg0, i32 arg1) {
    i32 local0 = 0;
    i32 local1 = 0;
    i32 local2 = 0;
    i32 local3 = 0;
    i32 local4 = 0;

    final frame = Frame(memory);
    frame.push(arg0);
    frame.i32_const(1073741808);
    frame.i32_gt_u();
    if_label_0:
    if (frame.pop() != 0) {
      throw 'unreachable';
    }
    frame.push(globals.global0);
    frame.i32_const(16);
    frame.i32_add();
    local2 = frame.peek();
    frame.push(arg0);
    frame.i32_const(15);
    frame.i32_add();
    frame.i32_const(112);
    frame.i32_and();
    local0 = frame.peek();
    frame.i32_const(16);
    frame.push(local0);
    frame.i32_const(16);
    frame.i32_gt_u();
    frame.select();
    local4 = frame.peek();
    frame.i32_add();
    local0 = frame.peek();
    frame.memory_size(0);
    local3 = frame.peek();
    frame.i32_const(16);
    frame.i32_shl();
    local1 = frame.peek();
    frame.i32_gt_u();
    if_label_0:
    if (frame.pop() != 0) {
      frame.push(local3);
      frame.push(local0);
      frame.push(local1);
      frame.i32_sub();
      frame.i32_const(65535);
      frame.i32_add();
      frame.i32_const(2031616);
      frame.i32_and();
      frame.i32_const(16);
      frame.i32_shr_u();
      local1 = frame.peek();
      frame.push(local3);
      frame.push(local1);
      frame.i32_gt_s();
      frame.select();
      frame.memory_grow(0);
      frame.i32_const(0);
      frame.i32_lt_s();
      if_label_1:
      if (frame.pop() != 0) {
        frame.push(local1);
        frame.memory_grow(0);
        frame.i32_const(0);
        frame.i32_lt_s();
        if_label_2:
        if (frame.pop() != 0) {
          throw 'unreachable';
        }
      }
    }
    frame.push(local0);
    globals.global0 = frame.pop();
    frame.push(local2);
    frame.i32_const(16);
    frame.i32_sub();
    local0 = frame.peek();
    frame.push(local4);
    frame.i32_store(2, 0);
    frame.push(local0);
    frame.i32_const(1);
    frame.i32_store(2, 4);
    frame.push(local0);
    frame.push(arg1);
    frame.i32_store(2, 8);
    frame.push(local0);
    frame.push(arg0);
    frame.i32_store(2, 12);
    frame.push(local2);
    return frame.pop();
  }

  void _func2(i32 arg0) {
    i32 local0 = 0;
    i32 local1 = 0;

    final frame = Frame(memory);
    block_label_0:
    {
      frame.push(arg0);
      frame.i32_const(0);
      frame.i32_store8(0, 0);
      frame.push(arg0);
      frame.push(_func0());
      frame.i32_const(4);
      frame.i32_sub();
      frame.i32_add();
      local0 = frame.peek();
      frame.i32_const(0);
      frame.i32_store8(0, 3);
      frame.push(arg0);
      frame.i32_const(0);
      frame.i32_store8(0, 1);
      frame.push(arg0);
      frame.i32_const(0);
      frame.i32_store8(0, 2);
      frame.push(local0);
      frame.i32_const(0);
      frame.i32_store8(0, 2);
      frame.push(local0);
      frame.i32_const(0);
      frame.i32_store8(0, 1);
      frame.push(arg0);
      frame.i32_const(0);
      frame.i32_store8(0, 3);
      frame.push(local0);
      frame.i32_const(0);
      frame.i32_store8(0, 0);
      frame.push(arg0);
      frame.i32_const(0);
      frame.push(arg0);
      frame.i32_sub();
      frame.i32_const(3);
      frame.i32_and();
      local0 = frame.peek();
      frame.i32_add();
      arg0 = frame.peek();
      frame.i32_const(0);
      frame.i32_store(2, 0);
      frame.push(arg0);
      frame.push(_func0());
      frame.push(local0);
      frame.i32_sub();
      frame.i32_const(124);
      frame.i32_and();
      local1 = frame.peek();
      frame.i32_add();
      frame.i32_const(28);
      frame.i32_sub();
      local0 = frame.peek();
      frame.i32_const(0);
      frame.i32_store(2, 24);
      frame.push(local1);
      frame.i32_const(8);
      frame.i32_le_u();
      if (frame.pop() != 0) break block_label_0;
      frame.push(arg0);
      frame.i32_const(0);
      frame.i32_store(2, 4);
      frame.push(arg0);
      frame.i32_const(0);
      frame.i32_store(2, 8);
      frame.push(local0);
      frame.i32_const(0);
      frame.i32_store(2, 16);
      frame.push(local0);
      frame.i32_const(0);
      frame.i32_store(2, 20);
      frame.push(local1);
      frame.i32_const(24);
      frame.i32_le_u();
      if (frame.pop() != 0) break block_label_0;
      frame.push(arg0);
      frame.i32_const(0);
      frame.i32_store(2, 12);
      frame.push(arg0);
      frame.i32_const(0);
      frame.i32_store(2, 16);
      frame.push(arg0);
      frame.i32_const(0);
      frame.i32_store(2, 20);
      frame.push(arg0);
      frame.i32_const(0);
      frame.i32_store(2, 24);
      frame.push(local0);
      frame.i32_const(0);
      frame.i32_store(2, 0);
      frame.push(local0);
      frame.i32_const(0);
      frame.i32_store(2, 4);
      frame.push(local0);
      frame.i32_const(0);
      frame.i32_store(2, 8);
      frame.push(local0);
      frame.i32_const(0);
      frame.i32_store(2, 12);
      frame.push(arg0);
      frame.push(arg0);
      frame.i32_const(4);
      frame.i32_and();
      frame.i32_const(24);
      frame.i32_add();
      local0 = frame.peek();
      frame.i32_add();
      arg0 = frame.pop();
      frame.push(local1);
      frame.push(local0);
      frame.i32_sub();
      local0 = frame.pop();

      loop_label_1:
      for (;;) {
        frame.push(local0);
        frame.i32_const(32);
        frame.i32_ge_u();
        if_label_2:
        if (frame.pop() != 0) {
          frame.push(arg0);
          frame.i64_const(0);
          frame.i64_store(3, 0);
          frame.push(arg0);
          frame.i64_const(0);
          frame.i64_store(3, 8);
          frame.push(arg0);
          frame.i64_const(0);
          frame.i64_store(3, 16);
          frame.push(arg0);
          frame.i64_const(0);
          frame.i64_store(3, 24);
          frame.push(local0);
          frame.i32_const(32);
          frame.i32_sub();
          local0 = frame.pop();
          frame.push(arg0);
          frame.i32_const(32);
          frame.i32_add();
          arg0 = frame.pop();
          continue loop_label_1;
        }
        break;
      }
    }
  }

  void mandelbrot(i32 arg0, f64 arg1, f64 arg2, f64 arg3) {
    i32 local0 = 0;
    i32 local1 = 0;
    f64 local2 = 0;
    i32 local3 = 0;
    i32 local4 = 0;
    f64 local5 = 0;
    f64 local6 = 0;
    f64 local7 = 0;
    i32 local8 = 0;
    i32 local9 = 0;
    f64 local10 = 0;
    f64 local11 = 0;
    f64 local12 = 0;

    final frame = Frame(memory);
    frame.push(arg3);
    frame.push(globals.global3);
    frame.f64_convert_i32_s();
    frame.f64_mul();
    frame.push(globals.global2);
    frame.f64_convert_i32_s();
    frame.f64_div();
    local10 = frame.pop();

    loop_label_0:
    for (;;) {
      frame.push(local4);
      frame.push(globals.global3);
      frame.i32_lt_s();
      if_label_1:
      if (frame.pop() != 0) {
        frame.i32_const(0);
        local3 = frame.pop();

        loop_label_2:
        for (;;) {
          frame.push(local3);
          frame.push(globals.global2);
          frame.i32_lt_s();
          if_label_3:
          if (frame.pop() != 0) {
            frame.push(arg1);
            frame.push(arg3);
            frame.push(local3);
            frame.f64_convert_i32_s();
            frame.f64_const(0.0008333333333333334);
            frame.f64_mul();
            frame.f64_const(1.0);
            frame.f64_sub();
            frame.f64_mul();
            frame.f64_add();
            local11 = frame.pop();
            frame.push(arg2);
            frame.push(local10);
            frame.push(local4);
            frame.f64_convert_i32_s();
            frame.f64_const(0.00125);
            frame.f64_mul();
            frame.f64_const(1.0);
            frame.f64_sub();
            frame.f64_mul();
            frame.f64_add();
            local12 = frame.pop();
            frame.f64_const(0.0);
            local2 = frame.pop();
            frame.i32_const(0);
            local1 = frame.pop();
            frame.f64_const(0.0);
            local5 = frame.pop();
            frame.f64_const(0.0);
            local6 = frame.pop();
            frame.f64_const(0.0);
            local7 = frame.pop();

            loop_label_4:
            for (;;) {
              frame.push(local1);
              frame.push(arg0);
              frame.i32_lt_u();
              if_label_5:
              if (frame.pop() != 0) {
                frame.push(local7);
                frame.push(local7);
                frame.f64_mul();
                frame.push(local2);
                frame.push(local2);
                frame.f64_mul();
                frame.f64_add();
                frame.f64_const(4.0);
                frame.f64_le();
              } else {
                frame.i32_const(0);
              }
              if_label_5:
              if (frame.pop() != 0) {
                frame.push(local5);
                frame.push(local6);
                frame.f64_mul();
                local2 = frame.pop();
                frame.push(local5);
                frame.push(local5);
                frame.f64_mul();
                frame.push(local6);
                frame.push(local6);
                frame.f64_mul();
                frame.f64_sub();
                frame.push(local11);
                frame.f64_add();
                local7 = frame.peek();
                local5 = frame.pop();
                frame.push(local2);
                frame.push(local2);
                frame.f64_add();
                frame.push(local12);
                frame.f64_add();
                local2 = frame.peek();
                local6 = frame.pop();
                frame.push(local1);
                frame.i32_const(1);
                frame.i32_add();
                local1 = frame.pop();
                continue loop_label_4;
              }
              break;
            }
            frame.push(local3);
            frame.push(local4);
            frame.push(globals.global2);
            frame.i32_mul();
            frame.i32_add();
            frame.i32_const(2);
            frame.i32_shl();
            local8 = frame.peek();
            frame.push(globals.global1);
            frame.i32_load(2, 4);
            frame.i32_add();
            frame.push(arg0);
            frame.push(local1);
            frame.i32_eq();
            local9 = frame.peek();
            if_label_4:
            if (frame.pop() != 0) {
              frame.i32_const(0);
            } else {
              block_label_5:
              {
                frame.push(local1);
                frame.i32_const(2);
                frame.i32_shl();
                frame.i32_const(1023);
                frame.i32_and();
                local0 = frame.peek();
                frame.i32_const(256);
                frame.i32_lt_u();
                if (frame.pop() != 0) break block_label_5;
                frame.push(local0);
                frame.i32_const(512);
                frame.i32_lt_u();
                if_label_6:
                if (frame.pop() != 0) {
                  frame.i32_const(510);
                  frame.push(local0);
                  frame.i32_sub();
                  local0 = frame.pop();
                  break block_label_5;
                }
                frame.i32_const(0);
                local0 = frame.pop();
              }
              frame.push(local0);
              frame.i32_const(255);
              frame.i32_and();
            }
            frame.i32_store8(0, 0);
            frame.push(globals.global1);
            frame.i32_load(2, 4);
            frame.push(local8);
            frame.i32_const(1);
            frame.i32_add();
            frame.i32_add();
            frame.push(local9);
            if_label_4:
            if (frame.pop() != 0) {
              frame.i32_const(0);
            } else {
              block_label_5:
              {
                frame.push(local1);
                frame.i32_const(2);
                frame.i32_shl();
                frame.i32_const(128);
                frame.i32_add();
                frame.i32_const(1023);
                frame.i32_and();
                local0 = frame.peek();
                frame.i32_const(256);
                frame.i32_lt_u();
                if (frame.pop() != 0) break block_label_5;
                frame.push(local0);
                frame.i32_const(512);
                frame.i32_lt_u();
                if_label_6:
                if (frame.pop() != 0) {
                  frame.i32_const(510);
                  frame.push(local0);
                  frame.i32_sub();
                  local0 = frame.pop();
                  break block_label_5;
                }
                frame.i32_const(0);
                local0 = frame.pop();
              }
              frame.push(local0);
              frame.i32_const(255);
              frame.i32_and();
            }
            frame.i32_store8(0, 0);
            frame.push(globals.global1);
            frame.i32_load(2, 4);
            frame.push(local8);
            frame.i32_const(2);
            frame.i32_add();
            frame.i32_add();
            frame.push(local9);
            if_label_4:
            if (frame.pop() != 0) {
              frame.i32_const(0);
            } else {
              block_label_5:
              {
                frame.push(local1);
                frame.i32_const(2);
                frame.i32_shl();
                frame.i32_const(356);
                frame.i32_add();
                frame.i32_const(1023);
                frame.i32_and();
                local0 = frame.peek();
                frame.i32_const(256);
                frame.i32_lt_u();
                if (frame.pop() != 0) break block_label_5;
                frame.push(local0);
                frame.i32_const(512);
                frame.i32_lt_u();
                if_label_6:
                if (frame.pop() != 0) {
                  frame.i32_const(510);
                  frame.push(local0);
                  frame.i32_sub();
                  local0 = frame.pop();
                  break block_label_5;
                }
                frame.i32_const(0);
                local0 = frame.pop();
              }
              frame.push(local0);
              frame.i32_const(255);
              frame.i32_and();
            }
            frame.i32_store8(0, 0);
            frame.push(globals.global1);
            frame.i32_load(2, 4);
            frame.push(local8);
            frame.i32_const(3);
            frame.i32_add();
            frame.i32_add();
            frame.i32_const(255);
            frame.i32_store8(0, 0);
            frame.push(local3);
            frame.i32_const(1);
            frame.i32_add();
            local3 = frame.pop();
            continue loop_label_2;
          }
          break;
        }
        frame.push(local4);
        frame.i32_const(1);
        frame.i32_add();
        local4 = frame.pop();
        continue loop_label_0;
      }
      break;
    }
  }

  i32 getData() {
    final frame = Frame(memory);
    frame.push(globals.global1);
    return frame.pop();
  }

  i32 getDataBuffer() {
    final frame = Frame(memory);
    frame.push(globals.global1);
    frame.i32_load(2, 0);
    return frame.pop();
  }

  void _func6() {
    i32 local0 = 0;
    i32 local1 = 0;

    final frame = Frame(memory);
    frame.i32_const(1136);
    globals.global0 = frame.pop();
    frame.i32_const(12);
    frame.i32_const(3);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(_func1(t0, t1));
    }
    local0 = frame.peek();
    frame.i32_eqz();
    if_label_0:
    if (frame.pop() != 0) {
      frame.i32_const(12);
      frame.i32_const(2);
      {
        var t1 = frame.pop();
        var t0 = frame.pop();
        frame.push(_func1(t0, t1));
      }
      local0 = frame.pop();
    }
    frame.push(local0);
    frame.i32_const(0);
    frame.i32_store(2, 0);
    frame.push(local0);
    frame.i32_const(0);
    frame.i32_store(2, 4);
    frame.push(local0);
    frame.i32_const(0);
    frame.i32_store(2, 8);
    frame.push(_func0());
    frame.i32_const(0);
    {
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(_func1(t0, t1));
    }
    local1 = frame.peek();
    _func2(frame.pop());
    frame.push(local0);
    frame.i32_load(2, 0);
    frame.drop();
    frame.push(local0);
    frame.push(local1);
    frame.i32_store(2, 0);
    frame.push(local0);
    frame.push(local1);
    frame.i32_store(2, 4);
    frame.push(local0);
    frame.push(_func0());
    frame.i32_store(2, 8);
    frame.push(local0);
    globals.global1 = frame.pop();
  }
}

class Globals {
  i32 global0 = _initGlobal0();
  i32 global1 = _initGlobal1();
  i32 global2 = _initGlobal2();
  i32 global3 = _initGlobal3();

  static final Memory memory = Memory(0);

  static i32 _initGlobal0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    return frame.pop();
  }

  static i32 _initGlobal1() {
    final frame = Frame(memory);
    frame.i32_const(0);
    return frame.pop();
  }

  static i32 _initGlobal2() {
    final frame = Frame(memory);
    frame.i32_const(1200);
    return frame.pop();
  }

  static i32 _initGlobal3() {
    final frame = Frame(memory);
    frame.i32_const(800);
    return frame.pop();
  }
}

class DataSegments {
  Uint8List data0 = decodeDataLiteral(_hex0);
  Uint8List data1 = decodeDataLiteral(_hex1);

  static const String _hex0 =
      '\x1C\x00\x00\x00\x01\x00\x00\x00\x01\x00\x00\x00\x1C\x00\x00\x00\x49\x00'
      '\x6E\x00\x76\x00\x61\x00\x6C\x00\x69\x00\x64\x00\x20\x00\x6C\x00\x65\x00'
      '\x6E\x00\x67\x00\x74\x00\x68';
  static const String _hex1 =
      '\x26\x00\x00\x00\x01\x00\x00\x00\x01\x00\x00\x00\x26\x00\x00\x00\x7E\x00'
      '\x6C\x00\x69\x00\x62\x00\x2F\x00\x61\x00\x72\x00\x72\x00\x61\x00\x79\x00'
      '\x62\x00\x75\x00\x66\x00\x66\x00\x65\x00\x72\x00\x2E\x00\x74\x00\x73';

  void init(Memory memory) {
    memory.copyTo(data0, _dataOffset0(memory));
    memory.copyTo(data1, _dataOffset1(memory));
  }

  static u32 _dataOffset0(Memory memory) {
    final frame = Frame(memory);
    frame.i32_const(1024);
    return frame.pop();
  }

  static u32 _dataOffset1(Memory memory) {
    final frame = Frame(memory);
    frame.i32_const(1072);
    return frame.pop();
  }
}
