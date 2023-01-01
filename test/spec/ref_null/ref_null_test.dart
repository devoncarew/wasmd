// Generated from spec/test/core/ref_null.wast.

// ignore_for_file: non_constant_identifier_names, unused_local_variable

import '../../src/infra.dart';
import 'ref_null.0.dart' as ref_null_0;

void main() {
  group('ref_null', () {
    // module ref_null.0.dart (line 1)
    var m0 = ref_null_0.RefNull0Module();

    returns('externref_0', () => m0.externref(), null);
    returns('funcref_0', () => m0.funcref(), null);
  });
}
