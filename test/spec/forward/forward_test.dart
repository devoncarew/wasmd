// Generated from spec/test/core/forward.wast.

// ignore_for_file: non_constant_identifier_names, unused_local_variable

import '../../src/infra.dart';
import 'forward.0.dart' as forward_0;

void main() {
  group('forward', () {
    // module forward.0.dart (line 1)
    var m0 = forward_0.Forward0Module();

    returns('even_0', () => m0.even(0xD), 0);
    returns('even_1', () => m0.even(0x14), 0x1);
    returns('odd_0', () => m0.odd(0xD), 0x1);
    returns('odd_1', () => m0.odd(0x14), 0);
  });
}
