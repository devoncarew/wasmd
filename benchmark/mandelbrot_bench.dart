import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:wasmd/runtime.dart';

import '../samples/mandelbrot.dart' as m;

void main() => MandelbrotBenchmark().report();

class MandelbrotBenchmark extends BenchmarkBase {
  MandelbrotBenchmark() : super('mandelbrot');

  late m.Module mandelbrot;

  @override
  void setup() {
    mandelbrot = m.Module(envImports: _EnvImports());
    mandelbrot.width = 240;
    mandelbrot.height = 160;
  }

  @override
  void run() {
    // mandelbrot(# of iterations, cx, cy, diameter)
    mandelbrot.mandelbrot(1000, -0.7436447860, 0.1318252536, 0.00029336);
  }
}

class _EnvImports implements m.EnvImports {
  @override
  void abort(i32 arg0, i32 arg1, i32 arg2, i32 arg3) {
    // ignore
  }
}

// i32 iterateEquation(final f64 x0, final f64 y0, final i32 maxiterations) {
//   f64 local0 = 0;
//   f64 local1 = 0;
//   i32 local2 = 0;
//   f64 local3 = 0;

//   while (
//       maxiterations > local2 && (local1 * local1) + (local3 * local3) < 4.0) {
//     local1 = local0 * local3;
//     local1 = local1 + local1 + y0;
//     local3 = local3 * local3 - local0 * local0 + x0;
//     local0 = local1;
//     local2++;
//   }

//   return local2;
// }
