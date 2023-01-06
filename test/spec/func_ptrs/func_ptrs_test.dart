// Generated from spec/test/core/func_ptrs.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'func_ptrs.0.dart' as func_ptrs_0;
import 'func_ptrs.8.dart' as func_ptrs_8;
import 'func_ptrs.9.dart' as func_ptrs_9;

const String _ue = 'undefined element';

void main() {
  group('func_ptrs', () {
    // module func_ptrs.0.dart (line 1)
    var m0 = func_ptrs_0.FuncPtrs0Module(
      spectestImports: Wrapper0(spectest),
    );

    returns('one_0', () => m0.one(), 0xD);
    returns('two_0', () => m0.two(0xD), 0xE);
    returns('three_0', () => m0.three(0xD), 0xB);
    invoke('four_0', () => m0.four(0x53));

    // module func_ptrs.8.dart (line 51)
    var m1 = func_ptrs_8.FuncPtrs8Module();

    returns('callt_0', () => m1.callt(0), 0x1);
    returns('callt_1', () => m1.callt(0x1), 0x2);
    returns('callt_2', () => m1.callt(0x2), 0x3);
    returns('callt_3', () => m1.callt(0x3), 0x4);
    returns('callt_4', () => m1.callt(0x4), 0x5);
    returns('callt_5', () => m1.callt(0x5), 0x1);
    returns('callt_6', () => m1.callt(0x6), 0x3);
    traps('callt_7', () => m1.callt(0x7), _ue);
    traps('callt_8', () => m1.callt(0x64), _ue);
    traps('callt_9', () => m1.callt($i32('FFFFFFFF')), _ue);
    returns('callu_0', () => m1.callu(0), 0x1);
    returns('callu_1', () => m1.callu(0x1), 0x2);
    returns('callu_2', () => m1.callu(0x2), 0x3);
    returns('callu_3', () => m1.callu(0x3), 0x4);
    returns('callu_4', () => m1.callu(0x4), 0x5);
    returns('callu_5', () => m1.callu(0x5), 0x1);
    returns('callu_6', () => m1.callu(0x6), 0x3);
    traps('callu_7', () => m1.callu(0x7), _ue);
    traps('callu_8', () => m1.callu(0x64), _ue);
    traps('callu_9', () => m1.callu($i32('FFFFFFFF')), _ue);

    // module func_ptrs.9.dart (line 93)
    var m2 = func_ptrs_9.FuncPtrs9Module();

    returns('callt_10', () => m2.callt(0), 0x1);
    returns('callt_11', () => m2.callt(0x1), 0x2);
  });
}

class Wrapper0 implements func_ptrs_0.SpectestImports {
  Wrapper0(this.delegate);

  final SpectestModule delegate;

  @override
  void print_i32(i32 arg0) => delegate.print_i32(arg0);
}
