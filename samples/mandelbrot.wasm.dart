// Generated from samples/mandelbrot.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'package:dasm/runtime.dart';

class Module {
  Module({required this.envImports});

  final EnvImports envImports;
  final Memory memory = Memory(10);

  void computeLine(i32 arg0, i32 arg1, i32 arg2, i32 arg3) {
    f64 local0 = 0;
    f64 local1 = 0;
    f64 local2 = 0;
    f64 local3 = 0;
    f64 local4 = 0;
    f64 local5 = 0;
    f64 local6 = 0;
    f64 local7 = 0;
    f64 local8 = 0;
    i32 local9 = 0;
    i32 local10 = 0;

    final frame = Frame(memory);
    frame.push(arg0);
    frame.f64_convert_i32_u();
    frame.push(arg2);
    frame.f64_convert_i32_u();
    frame.f64_const(0.5);
    frame.f64_mul();
    frame.f64_sub();
    frame.f64_const(10.0);
    frame.push(arg1);
    frame.i32_const(3);
    frame.i32_mul();
    local10 = frame.peek();
    frame.push(arg2);
    frame.i32_const(2);
    frame.i32_shl();
    arg2 = frame.peek();
    frame.push(arg2);
    frame.push(local10);
    frame.i32_gt_s();
    frame.select();
    frame.f64_convert_i32_s();
    frame.f64_div();
    local6 = frame.peek();
    frame.f64_mul();
    local5 = frame.pop();
    frame.push(arg1);
    frame.f64_convert_i32_u();
    frame.f64_const(0.625);
    frame.f64_mul();
    frame.push(local6);
    frame.f64_mul();
    local3 = frame.pop();
    frame.push(arg0);
    frame.push(arg1);
    frame.i32_mul();
    frame.i32_const(1);
    frame.i32_shl();
    arg2 = frame.pop();
    frame.f64_const(1.0);
    frame.push(arg3);
    frame.f64_convert_i32_u();
    frame.f64_div();
    local2 = frame.pop();
    frame.i32_const(8);
    frame.push(arg3);
    frame.push(arg3);
    frame.i32_const(8);
    frame.i32_gt_u();
    frame.select();
    local10 = frame.pop();

    loop_label_0:
    for (;;) {
      frame.push(arg1);
      frame.push(local9);
      frame.i32_gt_u();
      if_label_1:
      if (frame.pop() != 0) {
        frame.push(local9);
        frame.f64_convert_i32_u();
        frame.push(local6);
        frame.f64_mul();
        frame.push(local3);
        frame.f64_sub();
        local4 = frame.pop();
        frame.f64_const(0.0);
        local0 = frame.pop();
        frame.f64_const(0.0);
        local7 = frame.pop();
        frame.i32_const(0);
        arg0 = frame.pop();

        loop_label_2:
        for (;;) {
          frame.push(local0);
          frame.push(local0);
          frame.f64_mul();
          local1 = frame.peek();
          frame.push(local7);
          frame.push(local7);
          frame.f64_mul();
          local8 = frame.peek();
          frame.f64_add();
          frame.f64_const(4.0);
          frame.f64_le();
          if_label_3:
          if (frame.pop() != 0) {
            block_label_4:
            {
              frame.push(local0);
              frame.push(local0);
              frame.f64_add();
              frame.push(local7);
              frame.f64_mul();
              frame.push(local5);
              frame.f64_add();
              local7 = frame.pop();
              frame.push(local1);
              frame.push(local8);
              frame.f64_sub();
              frame.push(local4);
              frame.f64_add();
              local0 = frame.pop();
              frame.push(arg0);
              frame.push(arg3);
              frame.i32_ge_u();
              if (frame.pop() != 0) break block_label_4;
              frame.push(arg0);
              frame.i32_const(1);
              frame.i32_add();
              arg0 = frame.pop();
              continue loop_label_2;
            }
          }
          break;
        }

        loop_label_2:
        for (;;) {
          frame.push(arg0);
          frame.push(local10);
          frame.i32_lt_u();
          if_label_3:
          if (frame.pop() != 0) {
            frame.push(local0);
            frame.push(local0);
            frame.f64_mul();
            frame.push(local7);
            frame.push(local7);
            frame.f64_mul();
            frame.f64_sub();
            frame.push(local4);
            frame.f64_add();
            local1 = frame.pop();
            frame.push(local0);
            frame.push(local0);
            frame.f64_add();
            frame.push(local7);
            frame.f64_mul();
            frame.push(local5);
            frame.f64_add();
            local7 = frame.pop();
            frame.push(local1);
            local0 = frame.pop();
            frame.push(arg0);
            frame.i32_const(1);
            frame.i32_add();
            arg0 = frame.pop();
            continue loop_label_2;
          }
          break;
        }
        frame.push(arg2);
        frame.push(local9);
        frame.i32_const(1);
        frame.i32_shl();
        frame.i32_add();
        frame.push(local0);
        frame.push(local0);
        frame.f64_mul();
        frame.push(local7);
        frame.push(local7);
        frame.f64_mul();
        frame.f64_add();
        local0 = frame.peek();
        frame.f64_const(1.0);
        frame.f64_gt();
        if_label_2:
        if (frame.pop() != 0) {
          frame.push(arg0);
          frame.i32_const(1);
          frame.i32_add();
          frame.f64_convert_i32_u();
          frame.push(local0);
          frame.push(envImports.Math_log(frame.pop()));
          frame.f64_const(0.5);
          frame.f64_mul();
          frame.push(envImports.Math_log2(frame.pop()));
          frame.f64_sub();
          frame.push(local2);
          frame.f64_mul();
          frame.f64_const(0.0);
          frame.f64_max();
          frame.f64_const(1.0);
          frame.f64_min();
          frame.f64_const(2047.0);
          frame.f64_mul();
          throw 'unreachable (0xFC)';
        }
      }
      break;
    }
  }
}

/// A class representing the symbols imported from the 'env' module.
abstract class EnvImports {
  /// The imported 'Math.log' symbol.
  f64 Math_log(f64 arg0);

  /// The imported 'Math.log2' symbol.
  f64 Math_log2(f64 arg0);
}
