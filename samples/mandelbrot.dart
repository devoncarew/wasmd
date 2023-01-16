// Generated from samples/mandelbrot.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

/// A class representing the symbols imported from the 'env' module.
abstract class EnvImports {
  f64 Math_log(f64 arg0);
  f64 Math_log2(f64 arg0);
}

class MandelbrotModule extends Module {
  MandelbrotModule({
    required this.envImports,
    required this.memory,
  }) {
    elementSegments.init();
    vm = VM(this);
  }

  final EnvImports envImports;

  late final VM vm;

  /// min pages: 0
  @override
  final Memory memory;

  final Globals globals = Globals();

  final Table table0 = Table(
    1,
    1,
  );

  @override
  late final List<Table> tables = [table0];

  @override
  late final ElementSegments elementSegments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  void update(i32 arg0, i32 arg1, i32 arg2) => _func1(arg0, arg1, arg2);

  f64 _func0(f64 value, f64 minValue, f64 maxValue) {
    var t0 = vm.f64_max(value, minValue);
    var t1 = vm.f64_min(t0, maxValue);
    return t1;
  }

  void _func1(i32 width, i32 height, i32 limit) {
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

    var t0 = vm.f64_convert_i32_u(width);
    var t1 = vm.f64_div(1.0, 1.6);
    var t2 = vm.f64_mul(t0, t1);
    translateX = t2;
    var t3 = vm.f64_convert_i32_u(height);
    var t4 = vm.f64_div(1.0, 2.0);
    var t5 = vm.f64_mul(t3, t4);
    translateY = t5;
    var t6 = vm.i32_mul(3, width);
    local2 = t6;
    var t7 = vm.i32_mul(4, height);
    local3 = t7;
    var t8 = vm.i32_lt_s(local2, local3);
    var t9 = vm.select(t6, t7, t8);
    var t10 = vm.f64_convert_i32_s(t9);
    var t11 = vm.f64_div(10.0, t10);
    scale = t11;
    var t12 = vm.f64_mul(translateX, scale);
    realOffset = t12;
    var t13 = vm.f64_convert_i32_u(limit);
    var t14 = vm.f64_div(1.0, t13);
    invLimit = t14;
    local7 = 8;
    local8 = limit;
    var t15 = vm.i32_lt_u(local7, local8);
    var t16 = vm.select(8, limit, t15);
    minIterations = t16;
    y = 0;

    loop_label_0:
    for (;;) {
      var t17 = vm.i32_lt_u(y, height);
      if_label_1:
      if (t17 != 0) {
        var t18 = vm.f64_convert_i32_u(y);
        var t19 = vm.f64_sub(t18, translateY);
        var t20 = vm.f64_mul(t19, scale);
        imaginary = t20;
        var t21 = vm.i32_mul(y, width);
        var t22 = vm.i32_shl(t21, 1);
        yOffset = t22;
        x = 0;

        loop_label_2:
        for (;;) {
          var t23 = vm.i32_lt_u(x, width);
          if_label_3:
          if (t23 != 0) {
            var t24 = vm.f64_convert_i32_u(x);
            var t25 = vm.f64_mul(t24, scale);
            var t26 = vm.f64_sub(t25, realOffset);
            real = t26;
            ix = 0.0;
            iy = 0.0;
            iteration = 0;
            block_label_4:
            {
              loop_label_5:
              for (;;) {
                var t27 = vm.f64_mul(ix, ix);
                ixSq = t27;
                var t28 = vm.f64_mul(iy, iy);
                iySq = t28;
                var t29 = vm.f64_add(t27, t28);
                var t30 = vm.f64_le(t29, 4.0);
                if_label_6:
                if (t30 != 0) {
                  var t31 = vm.f64_mul(2.0, ix);
                  var t32 = vm.f64_mul(t31, iy);
                  var t33 = vm.f64_add(t32, imaginary);
                  iy = t33;
                  var t34 = vm.f64_sub(ixSq, iySq);
                  var t35 = vm.f64_add(t34, real);
                  ix = t35;
                  var t36 = vm.i32_ge_u(iteration, limit);
                  if_label_7:
                  if (t36 != 0) {
                    break block_label_4;
                  }
                  var t37 = vm.i32_add(iteration, 1);
                  iteration = t37;
                  continue loop_label_5;
                }
                break;
              }
            }

            loop_label_4:
            for (;;) {
              var t38 = vm.i32_lt_u(iteration, minIterations);
              if_label_5:
              if (t38 != 0) {
                var t39 = vm.f64_mul(ix, ix);
                var t40 = vm.f64_mul(iy, iy);
                var t41 = vm.f64_sub(t39, t40);
                var t42 = vm.f64_add(t41, real);
                ixNew = t42;
                var t43 = vm.f64_mul(2.0, ix);
                var t44 = vm.f64_mul(t43, iy);
                var t45 = vm.f64_add(t44, imaginary);
                iy = t45;
                ix = ixNew;
                var t46 = vm.i32_add(iteration, 1);
                iteration = t46;
                continue loop_label_4;
              }
              break;
            }
            var t47 = vm.i32_sub(globals.global0, 1);
            colorIndex = t47;
            var t48 = vm.f64_mul(ix, ix);
            var t49 = vm.f64_mul(iy, iy);
            var t50 = vm.f64_add(t48, t49);
            distanceSq = t50;
            var t51 = vm.f64_gt(distanceSq, 1.0);
            if_label_4:
            if (t51 != 0) {
              var t52 = envImports.Math_log(distanceSq);
              var t53 = vm.f64_mul(0.5, t52);
              var t54 = envImports.Math_log2(t53);
              fraction = t54;
              var t55 = vm.i32_sub(globals.global0, 1);
              var t56 = vm.f64_convert_i32_s(t55);
              var t57 = vm.i32_add(iteration, 1);
              var t58 = vm.f64_convert_i32_u(t57);
              var t59 = vm.f64_sub(t58, fraction);
              var t60 = vm.f64_mul(t59, invLimit);
              var t61 = _func0(t60, 0.0, 1.0);
              var t62 = vm.f64_mul(t56, t61);
              var t63 = vm.i32_trunc_sat_f64_u(t62);
              colorIndex = t63;
            }
            var t64 = vm.i32_shl(x, 1);
            var t65 = vm.i32_add(yOffset, t64);
            vm.i32_store16(1, 0, t65, colorIndex);
            var t66 = vm.i32_add(x, 1);
            x = t66;
            continue loop_label_2;
          }
          break;
        }
        var t67 = vm.i32_add(y, 1);
        y = t67;
        continue loop_label_0;
      }
      break;
    }
  }

  List<Function> _initFunctionTable() {
    return [envImports.Math_log, envImports.Math_log2, _func0, _func1];
  }
}

typedef FunctionType0 = f64 Function(f64);
typedef FunctionType1 = f64 Function(f64, f64, f64);
typedef FunctionType2 = void Function(i32, i32, i32);

class Globals {
  final i32 global0 = 216;
}

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final MandelbrotModule module;

  @override
  late final List<List<int>?> segments = [null];

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table0, 0, 1, 0, []); /* segment0 */
  }
}
