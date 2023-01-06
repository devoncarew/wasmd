// Generated from spec/test/core/unreached-valid.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'unreached_valid.0.dart' as unreached_valid_0;
import 'unreached_valid.1.dart' as unreached_valid_1;

const String _u = 'unreachable';

void main() {
  group('unreached_valid', () {
    // module unreached_valid.0.dart (line 1)
    var m0 = unreached_valid_0.UnreachedValid0Module();

    traps('select_trap_left_0', () => m0.select_trap_left(0x1), _u);
    traps('select_trap_left_1', () => m0.select_trap_left(0), _u);
    traps('select_trap_right_0', () => m0.select_trap_right(0x1), _u);
    traps('select_trap_right_1', () => m0.select_trap_right(0), _u);

    // module unreached_valid.1.dart (line 49)
    var m1 = unreached_valid_1.UnreachedValid1Module();

    traps('meet_bottom_0', () => m1.meet_bottom(), _u);
  });
}
