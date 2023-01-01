// Generated from spec/test/core/ref_is_null.wast.

// ignore_for_file: non_constant_identifier_names, unused_local_variable

import '../../src/infra.dart';
import 'ref_is_null.0.dart' as ref_is_null_0;

void main() {
  group('ref_is_null', () {
    // module ref_is_null.0.dart (line 1)
    var m0 = ref_is_null_0.RefIsNull0Module();

    returns('funcref_0', () => m0.funcref(null), 0x1);
    returns('externref_0', () => m0.externref(null), 0x1);
    returns('externref_1', () => m0.externref(externref('1')), 0);
    invoke('init_0', () => m0.init(externref('0')));
    returns('funcref_elem_0', () => m0.funcref_elem(0), 0x1);
    returns('externref_elem_0', () => m0.externref_elem(0), 0x1);
    returns('funcref_elem_1', () => m0.funcref_elem(0x1), 0);
    returns('externref_elem_1', () => m0.externref_elem(0x1), 0);
    invoke('deinit_0', () => m0.deinit());
    returns('funcref_elem_2', () => m0.funcref_elem(0), 0x1);
    returns('externref_elem_2', () => m0.externref_elem(0), 0x1);
    returns('funcref_elem_3', () => m0.funcref_elem(0x1), 0x1);
    returns('externref_elem_3', () => m0.externref_elem(0x1), 0x1);
  });
}
