// ignore_for_file: non_constant_identifier_names

import 'package:benchmark_harness/benchmark_harness.dart';

import '../samples/gcd.dart' as m;

void main() => GCDBenchmark().report();

class GCDBenchmark extends BenchmarkBase {
  GCDBenchmark() : super('gcd');

  late m.GcdModule gcd;

  @override
  void setup() {
    gcd = m.GcdModule();
  }

  @override
  void run() {
    for (int i = 0; i < 100; i++) {
      gcd.gcd(18, 30);
      gcd.gcd(18, 42);
      gcd.gcd(30, 42);
    }
  }
}
