// Generated from spec/test/core/start.wast.

// ignore_for_file: non_constant_identifier_names, unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart' hide i32;
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
      spectestImports: Wrapper0(spectest),
    );

    // module start.6.dart (line 86)
    var m3 = start_6.Start6Module(
      spectestImports: Wrapper1(spectest),
    );

    // module start.7.dart (line 92)
    var m4 = start_7.Start7Module(
      spectestImports: Wrapper2(spectest),
    );
  });
}

class Wrapper0 implements start_5.SpectestImports {
  Wrapper0(this.delegate);

  final SpectestModule delegate;

  @override
  void print_i32(i32 arg0) => delegate.print_i32(arg0);
}

class Wrapper1 implements start_6.SpectestImports {
  Wrapper1(this.delegate);

  final SpectestModule delegate;

  @override
  void print_i32(i32 arg0) => delegate.print_i32(arg0);
}

class Wrapper2 implements start_7.SpectestImports {
  Wrapper2(this.delegate);

  final SpectestModule delegate;

  @override
  void print() => delegate.print();
}
