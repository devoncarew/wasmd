// ignore_for_file: non_constant_identifier_names

import 'dart:io';
import 'dart:math' as math;
import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

import 'man2.dart';

void main(List<String> args) {
  final numColors = 216;

  var width = 300;
  var height = 300 * 9 ~/ 16;

  width = stdout.hasTerminal ? stdout.terminalColumns : 80;
  height = stdout.hasTerminal ? stdout.terminalLines - 2 : 40;
  print('Calculating for ${width}x$height:');
  print('');

  var memory = Memory(width * height * 2 ~/ Memory.pageSize + 1);
  var mandelbrot = Module(envImports: _EnvImports(), memory: memory);

  var stopwatch = Stopwatch()..start();
  mandelbrot.update(width, height, numColors);
  stopwatch.stop();

  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      int color = memory.data.getUint16((x + y * width) * 2, Endian.little);

      int n = color + 16;
      var char = color == numColors - 1 ? ' ' : '•';
      stdout.write('\u001b[38;5;${n}m$char');

      // int grey = (r + g + b) ~/ 3;
      // stdout.write(grey == 0 ? '  ' : grey.toRadixString(16).padLeft(2, '0'));
    }
    stdout.writeln();
  }

  print('\u001b[0m${width}x$height ran in ${stopwatch.elapsedMilliseconds}ms');
}

class _EnvImports implements EnvImports {
  @override
  f64 Math_log(f64 val) => math.log(val);

  @override
  f64 Math_log2(f64 val) => math.log(val) / math.log2e;
}
