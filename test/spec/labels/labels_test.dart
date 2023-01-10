// Generated from spec/test/core/labels.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'labels.0.dart' as labels_0;

void main() {
  group('labels', () {
    // module labels.0.dart (line 1)
    var m0 = labels_0.Labels0Module();

    returns('block_0', () => m0.block(), 0x1);
    returns('loop1_0', () => m0.loop1(), 0x5);
    returns('loop2_0', () => m0.loop2(), 0x8);
    returns('loop3_0', () => m0.loop3(), 0x1);
    returns('loop4_0', () => m0.loop4(0x8), 0x10);
    returns('loop5_0', () => m0.loop5(), 0x2);
    returns('loop6_0', () => m0.loop6(), 0x3);
    returns(r'$if_0', () => m0.$if(), 0x5);
    returns('if2_0', () => m0.if2(), 0x5);
    returns(r'$switch_0', () => m0.$switch(0), 0x32);
    returns(r'$switch_1', () => m0.$switch(0x1), 0x14);
    returns(r'$switch_2', () => m0.$switch(0x2), 0x14);
    returns(r'$switch_3', () => m0.$switch(0x3), 0x3);
    returns(r'$switch_4', () => m0.$switch(0x4), 0x32);
    returns(r'$switch_5', () => m0.$switch(0x5), 0x32);
    returns(r'$return_0', () => m0.$return(0), 0);
    returns(r'$return_1', () => m0.$return(0x1), 0x2);
    returns(r'$return_2', () => m0.$return(0x2), 0x2);
    returns('br_if0_0', () => m0.br_if0(), 0x1D);
    returns('br_if1_0', () => m0.br_if1(), 0x1);
    returns('br_if2_0', () => m0.br_if2(), 0x1);
    returns('br_if3_0', () => m0.br_if3(), 0x2);
    returns('br_0', () => m0.br(), 0x1);
    returns('shadowing_0', () => m0.shadowing(), 0x1);
    returns('redefinition_0', () => m0.redefinition(), 0x5);
  });
}
