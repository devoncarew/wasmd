// Generated from test/spec/table_copy/table_copy.45.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class TableCopy45Module implements Module {
  TableCopy45Module() {
    segments.init();
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(
    32,
    64,
  );

  @override
  late final List<Table> tables = [table0];

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  i32 f0() => _f0();
  i32 f1() => _f1();
  i32 f2() => _f2();
  i32 f3() => _f3();
  i32 f4() => _f4();
  i32 f5() => _f5();
  i32 f6() => _f6();
  i32 f7() => _f7();
  i32 f8() => _f8();
  i32 f9() => _f9();
  i32 f10() => _f10();
  i32 f11() => _f11();
  i32 f12() => _f12();
  i32 f13() => _f13();
  i32 f14() => _f14();
  i32 f15() => _f15();
  i32 test(i32 arg0) => _func16(arg0);
  void run(i32 arg0, i32 arg1, i32 arg2) => _func17(arg0, arg1, arg2);

  i32 _f0() {
    return 0;
  }

  i32 _f1() {
    return 1;
  }

  i32 _f2() {
    return 2;
  }

  i32 _f3() {
    return 3;
  }

  i32 _f4() {
    return 4;
  }

  i32 _f5() {
    return 5;
  }

  i32 _f6() {
    return 6;
  }

  i32 _f7() {
    return 7;
  }

  i32 _f8() {
    return 8;
  }

  i32 _f9() {
    return 9;
  }

  i32 _f10() {
    return 10;
  }

  i32 _f11() {
    return 11;
  }

  i32 _f12() {
    return 12;
  }

  i32 _f13() {
    return 13;
  }

  i32 _f14() {
    return 14;
  }

  i32 _f15() {
    return 15;
  }

  i32 _func16(i32 n) {
    var func0 = assertCallable<FunctionType0>(table0[n]);
    var t0 = func0();
    return t0;
  }

  void _func17(i32 targetOffs, i32 srcOffs, i32 len) {
    vm.table_copy(0, 0, targetOffs, srcOffs, len);
  }

  List<Function> _initFunctionTable() {
    return [
      _f0,
      _f1,
      _f2,
      _f3,
      _f4,
      _f5,
      _f6,
      _f7,
      _f8,
      _f9,
      _f10,
      _f11,
      _f12,
      _f13,
      _f14,
      _f15,
      _func16,
      _func17
    ];
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = i32 Function(i32);
typedef FunctionType2 = void Function(i32, i32, i32);

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final TableCopy45Module module;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table0, 0, 11, 8, [0, 1, 2, 3, 4, 5, 6, 7]); /* segment0 */
  }
}
