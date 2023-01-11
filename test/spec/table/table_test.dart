// Generated from spec/test/core/table.wast.

// ignore_for_file: non_constant_identifier_names, unused_import
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

import '../../src/infra.dart';
import 'table.0.dart' as table_0;
import 'table.1.dart' as table_1;
import 'table.2.dart' as table_2;
import 'table.3.dart' as table_3;
import 'table.4.dart' as table_4;
import 'table.5.dart' as table_5;
import 'table.6.dart' as table_6;
import 'table.7.dart' as table_7;
import 'table.8.dart' as table_8;

void main() {
  group('table', () {
    // module table.0.dart (line 3)
    var m0 = table_0.Table0Module();

    // module table.1.dart (line 4)
    var m1 = table_1.Table1Module();

    // module table.2.dart (line 5)
    var m2 = table_2.Table2Module();

    // module table.3.dart (line 6)
    var m3 = table_3.Table3Module();

    // module table.4.dart (line 7)
    var m4 = table_4.Table4Module();

    // module table.5.dart (line 8)
    var m5 = table_5.Table5Module();

    // module table.6.dart (line 9)
    var m6 = table_6.Table6Module();

    // module table.7.dart (line 11)
    var m7 = table_7.Table7Module();

    // module table.8.dart (line 12)
    var m8 = table_8.Table8Module(
      spectestImports: Wrapper0(spectest),
    );
  });
}

class Wrapper0 implements table_8.SpectestImports {
  Wrapper0(this.delegate);

  final SpectestModule delegate;

  @override
  Table get table => delegate.table0;
}
