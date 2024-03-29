// Generated from test/spec/table_init/table_init.4.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

/// A class representing the symbols imported from the 'a' module.
abstract class AImports {
  i32 ef0();
  i32 ef1();
  i32 ef2();
  i32 ef3();
  i32 ef4();
}

class TableInit4Module extends Module {
  TableInit4Module({required this.aImports}) {
    elementSegments.init();
  }

  final AImports aImports;

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(
    30,
    30,
  );

  final Table table1 = Table(
    30,
    30,
  );

  @override
  late final List<Table> tables = [
    table0,
    table1,
  ];

  @override
  late final ElementSegments elementSegments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  void test() => _func5();
  i32 check(i32 arg0) => _func6(arg0);

  i32 _func0() {
    final frame = Frame(this);
    frame.i32_const(5);
    return frame.pop();
  }

  i32 _func1() {
    final frame = Frame(this);
    frame.i32_const(6);
    return frame.pop();
  }

  i32 _func2() {
    final frame = Frame(this);
    frame.i32_const(7);
    return frame.pop();
  }

  i32 _func3() {
    final frame = Frame(this);
    frame.i32_const(8);
    return frame.pop();
  }

  i32 _func4() {
    final frame = Frame(this);
    frame.i32_const(9);
    return frame.pop();
  }

  void _func5() {
    final frame = Frame(this);
    frame.i32_const(7);
    frame.i32_const(0);
    frame.i32_const(4);
    {
      i32 count = frame.pop() as i32;
      i32 sourceOffset = frame.pop() as i32;
      i32 destOffset = frame.pop() as i32;
      elementSegments.copyTo(table1, sourceOffset, destOffset, count, elementSegments.segment1);
    }
  }

  i32 _func6(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    {
      var func = table1[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      frame.push(func());
    }
    return frame.pop();
  }

  List<Function> _initFunctionTable() {
    return [
      aImports.ef0,
      aImports.ef1,
      aImports.ef2,
      aImports.ef3,
      aImports.ef4,
      _func0,
      _func1,
      _func2,
      _func3,
      _func4,
      _func5,
      _func6
    ];
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = void Function();
typedef FunctionType2 = i32 Function(i32);

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final TableInit4Module module;

  late final List<int> segment1;

  late final List<int> segment3;

  @override
  late final List<List<int>?> segments = [null, segment1, null, segment3];

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table1, 0, 2, 4, [3, 1, 4, 1]); /* segment0 */
    segment1 = [2, 7, 1, 8];
    copyTo(module.table1, 0, 12, 5, [7, 5, 2, 3, 6]); /* segment2 */
    segment3 = [5, 9, 2, 7, 6];
  }
}
