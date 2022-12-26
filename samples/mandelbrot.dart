// Generated from samples/mandelbrot.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Module {
  Module({
    required this.envImports,
    required this.memory,
  }) {
    tables = [table0];
    segments.init();
  }

  final EnvImports envImports;

  /// min pages: 0
  final Memory memory;

  final Globals globals = Globals();

  final Table table0 = Table(
    1,
    1,
  );

  late final List<Table> tables;

  late final ElementSegments segments = ElementSegments(this);

  f64 _func0(f64 value, f64 minValue, f64 maxValue) {
    final frame = Frame(memory);
    frame.push(value);
    frame.push(minValue);
    frame.f64_max();
    frame.push(maxValue);
    frame.f64_min();
    return frame.pop();
    return frame.pop();
  }

  void update(i32 width, i32 height, i32 limit) {
    f64 translateX = 0;
    f64 translateY = 0;
    i32 local2 = 0;
    i32 local3 = 0;
    f64 scale = 0;
    f64 realOffset = 0;
    f64 invLimit = 0;
    i32 local7 = 0;
    i32 local8 = 0;
    i32 minIterations = 0;
    i32 y = 0;
    f64 imaginary = 0;
    i32 yOffset = 0;
    i32 x = 0;
    f64 real = 0;
    f64 ix = 0;
    f64 iy = 0;
    f64 ixSq = 0;
    f64 iySq = 0;
    i32 iteration = 0;
    f64 ixNew = 0;
    i32 colorIndex = 0;
    f64 distanceSq = 0;
    f64 fraction = 0;

    final frame = Frame(memory);
    frame.push(width);
    frame.f64_convert_i32_u();
    frame.f64_const(1.0);
    frame.f64_const(1.6);
    frame.f64_div();
    frame.f64_mul();
    translateX = frame.pop();
    frame.push(height);
    frame.f64_convert_i32_u();
    frame.f64_const(1.0);
    frame.f64_const(2.0);
    frame.f64_div();
    frame.f64_mul();
    translateY = frame.pop();
    frame.f64_const(10.0);
    frame.i32_const(3);
    frame.push(width);
    frame.i32_mul();
    local2 = frame.peek();
    frame.i32_const(4);
    frame.push(height);
    frame.i32_mul();
    local3 = frame.peek();
    frame.push(local2);
    frame.push(local3);
    frame.i32_lt_s();
    frame.select();
    frame.f64_convert_i32_s();
    frame.f64_div();
    scale = frame.pop();
    frame.push(translateX);
    frame.push(scale);
    frame.f64_mul();
    realOffset = frame.pop();
    frame.f64_const(1.0);
    frame.push(limit);
    frame.f64_convert_i32_u();
    frame.f64_div();
    invLimit = frame.pop();
    frame.i32_const(8);
    local7 = frame.peek();
    frame.push(limit);
    local8 = frame.peek();
    frame.push(local7);
    frame.push(local8);
    frame.i32_lt_u();
    frame.select();
    minIterations = frame.pop();
    frame.i32_const(0);
    y = frame.pop();

    loop_label_0:
    for (;;) {
      frame.push(y);
      frame.push(height);
      frame.i32_lt_u();
      if_label_1:
      if (frame.pop() != 0) {
        frame.push(y);
        frame.f64_convert_i32_u();
        frame.push(translateY);
        frame.f64_sub();
        frame.push(scale);
        frame.f64_mul();
        imaginary = frame.pop();
        frame.push(y);
        frame.push(width);
        frame.i32_mul();
        frame.i32_const(1);
        frame.i32_shl();
        yOffset = frame.pop();
        frame.i32_const(0);
        x = frame.pop();

        loop_label_2:
        for (;;) {
          frame.push(x);
          frame.push(width);
          frame.i32_lt_u();
          if_label_3:
          if (frame.pop() != 0) {
            frame.push(x);
            frame.f64_convert_i32_u();
            frame.push(scale);
            frame.f64_mul();
            frame.push(realOffset);
            frame.f64_sub();
            real = frame.pop();
            frame.f64_const(0.0);
            ix = frame.pop();
            frame.f64_const(0.0);
            iy = frame.pop();
            frame.i32_const(0);
            iteration = frame.pop();
            block_label_4:
            {
              loop_label_5:
              for (;;) {
                frame.push(ix);
                frame.push(ix);
                frame.f64_mul();
                ixSq = frame.peek();
                frame.push(iy);
                frame.push(iy);
                frame.f64_mul();
                iySq = frame.peek();
                frame.f64_add();
                frame.f64_const(4.0);
                frame.f64_le();
                if_label_6:
                if (frame.pop() != 0) {
                  frame.f64_const(2.0);
                  frame.push(ix);
                  frame.f64_mul();
                  frame.push(iy);
                  frame.f64_mul();
                  frame.push(imaginary);
                  frame.f64_add();
                  iy = frame.pop();
                  frame.push(ixSq);
                  frame.push(iySq);
                  frame.f64_sub();
                  frame.push(real);
                  frame.f64_add();
                  ix = frame.pop();
                  frame.push(iteration);
                  frame.push(limit);
                  frame.i32_ge_u();
                  if_label_7:
                  if (frame.pop() != 0) {
                    break block_label_4;
                  }
                  frame.push(iteration);
                  frame.i32_const(1);
                  frame.i32_add();
                  iteration = frame.pop();
                  continue loop_label_5;
                }
                break;
              }
            }

            loop_label_4:
            for (;;) {
              frame.push(iteration);
              frame.push(minIterations);
              frame.i32_lt_u();
              if_label_5:
              if (frame.pop() != 0) {
                frame.push(ix);
                frame.push(ix);
                frame.f64_mul();
                frame.push(iy);
                frame.push(iy);
                frame.f64_mul();
                frame.f64_sub();
                frame.push(real);
                frame.f64_add();
                ixNew = frame.pop();
                frame.f64_const(2.0);
                frame.push(ix);
                frame.f64_mul();
                frame.push(iy);
                frame.f64_mul();
                frame.push(imaginary);
                frame.f64_add();
                iy = frame.pop();
                frame.push(ixNew);
                ix = frame.pop();
                frame.push(iteration);
                frame.i32_const(1);
                frame.i32_add();
                iteration = frame.pop();
                continue loop_label_4;
              }
              break;
            }
            frame.push(globals.global0);
            frame.i32_const(1);
            frame.i32_sub();
            colorIndex = frame.pop();
            frame.push(ix);
            frame.push(ix);
            frame.f64_mul();
            frame.push(iy);
            frame.push(iy);
            frame.f64_mul();
            frame.f64_add();
            distanceSq = frame.pop();
            frame.push(distanceSq);
            frame.f64_const(1.0);
            frame.f64_gt();
            if_label_4:
            if (frame.pop() != 0) {
              frame.f64_const(0.5);
              frame.push(distanceSq);
              {
                var t0 = frame.pop();
                frame.push(envImports.Math_log(t0));
              }
              frame.f64_mul();
              {
                var t0 = frame.pop();
                frame.push(envImports.Math_log2(t0));
              }
              fraction = frame.pop();
              frame.push(globals.global0);
              frame.i32_const(1);
              frame.i32_sub();
              frame.f64_convert_i32_s();
              frame.push(iteration);
              frame.i32_const(1);
              frame.i32_add();
              frame.f64_convert_i32_u();
              frame.push(fraction);
              frame.f64_sub();
              frame.push(invLimit);
              frame.f64_mul();
              frame.f64_const(0.0);
              frame.f64_const(1.0);
              {
                var t2 = frame.pop();
                var t1 = frame.pop();
                var t0 = frame.pop();
                frame.push(_func0(t0, t1, t2));
              }
              frame.f64_mul();
              frame.i32_trunc_sat_f64_u();
              colorIndex = frame.pop();
            }
            frame.push(yOffset);
            frame.push(x);
            frame.i32_const(1);
            frame.i32_shl();
            frame.i32_add();
            frame.push(colorIndex);
            frame.i32_store16(1, 0);
            frame.push(x);
            frame.i32_const(1);
            frame.i32_add();
            x = frame.pop();
            continue loop_label_2;
          }
          break;
        }
        frame.push(y);
        frame.i32_const(1);
        frame.i32_add();
        y = frame.pop();
        continue loop_label_0;
      }
      break;
    }
  }
}

typedef FunctionType0 = f64 Function(f64);
typedef FunctionType1 = f64 Function(f64, f64, f64);
typedef FunctionType2 = void Function(i32, i32, i32);

class Globals {
  final i32 global0 = 216;
}

/// A class representing the symbols imported from the 'env' module.
abstract class EnvImports {
  /// The imported 'Math.log' symbol.
  f64 Math_log(f64 arg0);

  /// The imported 'Math.log2' symbol.
  f64 Math_log2(f64 arg0);
}

class ElementSegments {
  ElementSegments(this.module) {
    functionTable = [
      module.envImports.Math_log,
      module.envImports.Math_log2,
      module._func0,
      module.update
    ];
  }

  final Module module;

  late final List<Function> functionTable;

  void init() {
    copyTo(module.table0, 0, 1, 0, []); /* segment0 */
  }

  void copyTo(Table table, int src, int dest, int count, List<int> indexes) {
    indexes = indexes.sublist(src, src + count);
    var functions = indexes.map((i) => functionTable[i]).toList();
    table.copyFrom(functions, dest, count);
  }
}
