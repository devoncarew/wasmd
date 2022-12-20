// Generated from samples/man2.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Module {
  Module({
    required this.envImports,
    required this.memory,
  });

  final EnvImports envImports;

  /// min pages: 0
  final Memory memory;

  void update(
    i32 arg0,
    i32 arg1,
    i32 arg2,
  ) {
    f64 local0 = 0;
    f64 local1 = 0;
    f64 local2 = 0;
    f64 local3 = 0;
    f64 local4 = 0;
    f64 local5 = 0;
    f64 local6 = 0;
    f64 local7 = 0;
    i32 local8 = 0;
    i32 local9 = 0;
    i32 local10 = 0;
    f64 local11 = 0;
    i32 local12 = 0;
    i32 local13 = 0;
    f64 local14 = 0;

    final frame = Frame(memory);
    frame.push(arg1);
    frame.f64_convert_i32_u();
    frame.f64_const(0.5);
    frame.f64_mul();
    local4 = frame.pop();
    frame.push(arg0);
    frame.f64_convert_i32_u();
    frame.f64_const(0.625);
    frame.f64_mul();
    frame.f64_const(10.0);
    frame.push(arg0);
    frame.i32_const(1);
    frame.i32_shl();
    local9 = frame.peek();
    frame.push(arg1);
    frame.i32_const(2);
    frame.i32_shl();
    local10 = frame.peek();
    frame.push(local9);
    frame.push(local10);
    frame.i32_lt_s();
    frame.select();
    frame.f64_convert_i32_s();
    frame.f64_div();
    local7 = frame.peek();
    frame.f64_mul();
    local3 = frame.pop();
    frame.f64_const(1.0);
    frame.push(arg2);
    frame.f64_convert_i32_u();
    frame.f64_div();
    local2 = frame.pop();
    frame.i32_const(8);
    frame.push(arg2);
    frame.push(arg2);
    frame.i32_const(8);
    frame.i32_gt_u();
    frame.select();
    local12 = frame.pop();

    loop_label_0:
    for (;;) {
      frame.push(arg1);
      frame.push(local8);
      frame.i32_gt_u();
      if_label_1:
      if (frame.pop() != 0) {
        frame.push(local8);
        frame.f64_convert_i32_u();
        frame.push(local4);
        frame.f64_sub();
        frame.push(local7);
        frame.f64_mul();
        local6 = frame.pop();
        frame.push(arg0);
        frame.push(local8);
        frame.i32_mul();
        frame.i32_const(1);
        frame.i32_shl();
        local13 = frame.pop();
        frame.i32_const(0);
        local9 = frame.pop();

        loop_label_2:
        for (;;) {
          frame.push(arg0);
          frame.push(local9);
          frame.i32_gt_u();
          if_label_3:
          if (frame.pop() != 0) {
            frame.push(local9);
            frame.f64_convert_i32_u();
            frame.push(local7);
            frame.f64_mul();
            frame.push(local3);
            frame.f64_sub();
            local5 = frame.pop();
            frame.f64_const(0.0);
            local0 = frame.pop();
            frame.f64_const(0.0);
            local11 = frame.pop();
            frame.i32_const(0);
            local10 = frame.pop();

            loop_label_4:
            for (;;) {
              frame.push(local0);
              frame.push(local0);
              frame.f64_mul();
              local1 = frame.peek();
              frame.push(local11);
              frame.push(local11);
              frame.f64_mul();
              local14 = frame.peek();
              frame.f64_add();
              frame.f64_const(4.0);
              frame.f64_le();
              if_label_5:
              if (frame.pop() != 0) {
                block_label_6:
                {
                  frame.push(local0);
                  frame.push(local0);
                  frame.f64_add();
                  frame.push(local11);
                  frame.f64_mul();
                  frame.push(local6);
                  frame.f64_add();
                  local11 = frame.pop();
                  frame.push(local1);
                  frame.push(local14);
                  frame.f64_sub();
                  frame.push(local5);
                  frame.f64_add();
                  local0 = frame.pop();
                  frame.push(arg2);
                  frame.push(local10);
                  frame.i32_le_u();
                  if (frame.pop() != 0) break block_label_6;
                  frame.push(local10);
                  frame.i32_const(1);
                  frame.i32_add();
                  local10 = frame.pop();
                  continue loop_label_4;
                }
              }
              break;
            }

            loop_label_4:
            for (;;) {
              frame.push(local10);
              frame.push(local12);
              frame.i32_lt_u();
              if_label_5:
              if (frame.pop() != 0) {
                frame.push(local0);
                frame.push(local0);
                frame.f64_mul();
                frame.push(local11);
                frame.push(local11);
                frame.f64_mul();
                frame.f64_sub();
                frame.push(local5);
                frame.f64_add();
                local1 = frame.pop();
                frame.push(local0);
                frame.push(local0);
                frame.f64_add();
                frame.push(local11);
                frame.f64_mul();
                frame.push(local6);
                frame.f64_add();
                local11 = frame.pop();
                frame.push(local1);
                local0 = frame.pop();
                frame.push(local10);
                frame.i32_const(1);
                frame.i32_add();
                local10 = frame.pop();
                continue loop_label_4;
              }
              break;
            }
            frame.push(local13);
            frame.push(local9);
            frame.i32_const(1);
            frame.i32_shl();
            frame.i32_add();
            frame.push(local0);
            frame.push(local0);
            frame.f64_mul();
            frame.push(local11);
            frame.push(local11);
            frame.f64_mul();
            frame.f64_add();
            local0 = frame.peek();
            frame.f64_const(1.0);
            frame.f64_gt();
            if_label_4:
            if (frame.pop() != 0) {
              frame.push(local10);
              frame.i32_const(1);
              frame.i32_add();
              frame.f64_convert_i32_u();
              frame.push(local0);
              {
                var t0 = frame.pop();
                frame.push(envImports.Math_log(t0));
              }
              frame.f64_const(0.5);
              frame.f64_mul();
              {
                var t0 = frame.pop();
                frame.push(envImports.Math_log2(t0));
              }
              frame.f64_sub();
              frame.push(local2);
              frame.f64_mul();
              frame.f64_const(0.0);
              frame.f64_max();
              frame.f64_const(1.0);
              frame.f64_min();
              frame.f64_const(215.0);
              frame.f64_mul();
              frame.i32_trunc_sat_f64_u();
            } else {
              frame.i32_const(215);
            }
            frame.i32_store16(
              1,
              0,
            );
            frame.push(local9);
            frame.i32_const(1);
            frame.i32_add();
            local9 = frame.pop();
            continue loop_label_2;
          }
          break;
        }
        frame.push(local8);
        frame.i32_const(1);
        frame.i32_add();
        local8 = frame.pop();
        continue loop_label_0;
      }
      break;
    }
  }
}

typedef FunctionType0 = f64 Function(f64);
typedef FunctionType1 = void Function(i32, i32, i32);

/// A class representing the symbols imported from the 'env' module.
abstract class EnvImports {
  /// The imported 'Math.log' symbol.
  f64 Math_log(f64 arg0);

  /// The imported 'Math.log2' symbol.
  f64 Math_log2(f64 arg0);
}
