// ignore_for_file: non_constant_identifier_names

import 'dart:io';
import 'dart:typed_data';

import 'package:dasm/runtime.dart';

import 'mandelbrot.wasm.dart';

void main(List<String> args) {
  // var memBytes = 1200 * 800 * 4;
  // final memory = Memory(memBytes ~/ Memory.pageSize + 1);

  var mandelbrot = Module(envImports: _EnvImports());

  mandelbrot.width = stdout.hasTerminal ? stdout.terminalColumns : 80;
  mandelbrot.height = stdout.hasTerminal ? stdout.terminalLines - 2 : 40;
  print('Calculating for ${mandelbrot.width}x${mandelbrot.height}:');
  print('');

  // iterations, cx, cy, diameter
  // mandelbrot.mandelbrot(1000, 1.5, 0.75, 4.0);
  mandelbrot.mandelbrot(1000, -0.7436447860, 0.1318252536, 0.00029336);
  // mandelbrot.mandelbrot(1000, -0.7436447860, 0.1318252536, 0.00059336);

  final range = 256.0 / 6;
  final offset = mandelbrot.getDataBuffer();
  final memory = mandelbrot.memory;

  for (int y = 0; y < mandelbrot.height; y++) {
    for (int x = 0; x < mandelbrot.width; x++) {
      int color = memory.data.getUint32(
        (x + y * mandelbrot.width) * 4 + offset,
        Endian.little,
      );

      int r = (color >> 16) & 0xff;
      int g = (color >> 8) & 0xff;
      int b = color & 0xff;

      int n = 16 + (r ~/ range) * 36 + (g ~/ range) * 6 + (b ~/ range);
      var char = n == 16 ? ' ' : '•';
      stdout.write('\u001b[38;5;${n}m$char');

      // int grey = (r + g + b) ~/ 3;
      // stdout.write(grey == 0 ? '  ' : grey.toRadixString(16).padLeft(2, '0'));
    }
    stdout.writeln();
  }

  stdout.writeln();
}

class _EnvImports implements EnvImports {
  @override
  void abort(i32 arg0, i32 arg1, i32 arg2, i32 arg3) {
    // TODO:
  }
}
