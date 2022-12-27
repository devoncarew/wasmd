// ignore_for_file: non_constant_identifier_names

import 'dart:math' as math;

import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:wasmd/runtime.dart';

import '../samples/mandelbrot.dart' as m;

void main() => MandelbrotBenchmark().report();

class MandelbrotBenchmark extends BenchmarkBase {
  MandelbrotBenchmark() : super('mandelbrot');

  late m.MandelbrotModule mandelbrot;

  @override
  void setup() {
    var memory = Memory(50);
    mandelbrot = m.MandelbrotModule(envImports: _EnvImports(), memory: memory);
  }

  @override
  void run() {
    // 240x160 @ 200 max iterations
    mandelbrot.update(240, 160, 200);
  }
}

class _EnvImports implements m.EnvImports {
  @override
  f64 Math_log(f64 val) => math.log(val);

  @override
  f64 Math_log2(f64 val) => math.log(val) / math.log2e;
}
