// Generated from spec/test/core/start.wast.

// ignore_for_file: non_constant_identifier_names, unused_local_variable

import '../../src/infra.dart';
import 'start.3.dart' as start_3;
import 'start.4.dart' as start_4;
import 'start.5.dart' as start_5;
import 'start.6.dart' as start_6;
import 'start.7.dart' as start_7;

void main() {
  group('start', () {
    // module start.3.dart (line 21)
    var m0 = start_3.Start3Module();
    returns('get_0', () => m0.get(), 0x44);
    invoke('inc_0', () => m0.inc());
    returns('get_1', () => m0.get(), 0x45);
    invoke('inc_1', () => m0.inc());
    returns('get_2', () => m0.get(), 0x46);

    // module start.4.dart (line 51)
    var m1 = start_4.Start4Module();
    returns('get_3', () => m1.get(), 0x44);
    invoke('inc_2', () => m1.inc());
    returns('get_4', () => m1.get(), 0x45);
    invoke('inc_3', () => m1.inc());
    returns('get_5', () => m1.get(), 0x46);

    // module start.5.dart (line 80)
    var m2 = start_5.Start5Module(
      spectestImports: start_5.SpectestImportsImpl(),
    );

    // module start.6.dart (line 86)
    var m3 = start_6.Start6Module(
      spectestImports: start_6.SpectestImportsImpl(),
    );

    // module start.7.dart (line 92)
    var m4 = start_7.Start7Module(
      spectestImports: start_7.SpectestImportsImpl(),
    );
  });
}
