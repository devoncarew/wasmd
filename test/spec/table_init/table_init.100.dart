// Generated from test/spec/table_init/table_init.100.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class TableInit100Module extends Module {
  TableInit100Module() {
    elementSegments.init();
  }

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(
    16,
    16,
  );

  @override
  late final List<Table> tables = [table0];

  @override
  late final ElementSegments elementSegments = ElementSegments(this);

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
  void run(i32 arg0, i32 arg1) => _func17(arg0, arg1);

  i32 _f0() {
    final frame = Frame(this);
    frame.i32_const(0);
    return frame.pop();
  }

  i32 _f1() {
    final frame = Frame(this);
    frame.i32_const(1);
    return frame.pop();
  }

  i32 _f2() {
    final frame = Frame(this);
    frame.i32_const(2);
    return frame.pop();
  }

  i32 _f3() {
    final frame = Frame(this);
    frame.i32_const(3);
    return frame.pop();
  }

  i32 _f4() {
    final frame = Frame(this);
    frame.i32_const(4);
    return frame.pop();
  }

  i32 _f5() {
    final frame = Frame(this);
    frame.i32_const(5);
    return frame.pop();
  }

  i32 _f6() {
    final frame = Frame(this);
    frame.i32_const(6);
    return frame.pop();
  }

  i32 _f7() {
    final frame = Frame(this);
    frame.i32_const(7);
    return frame.pop();
  }

  i32 _f8() {
    final frame = Frame(this);
    frame.i32_const(8);
    return frame.pop();
  }

  i32 _f9() {
    final frame = Frame(this);
    frame.i32_const(9);
    return frame.pop();
  }

  i32 _f10() {
    final frame = Frame(this);
    frame.i32_const(10);
    return frame.pop();
  }

  i32 _f11() {
    final frame = Frame(this);
    frame.i32_const(11);
    return frame.pop();
  }

  i32 _f12() {
    final frame = Frame(this);
    frame.i32_const(12);
    return frame.pop();
  }

  i32 _f13() {
    final frame = Frame(this);
    frame.i32_const(13);
    return frame.pop();
  }

  i32 _f14() {
    final frame = Frame(this);
    frame.i32_const(14);
    return frame.pop();
  }

  i32 _f15() {
    final frame = Frame(this);
    frame.i32_const(15);
    return frame.pop();
  }

  i32 _func16(i32 n) {
    final frame = Frame(this);
    frame.push(n);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      frame.push(func());
    }
    return frame.pop();
  }

  void _func17(i32 offs, i32 len) {
    final frame = Frame(this);
    frame.push(offs);
    frame.i32_const(8);
    frame.push(len);
    {
      i32 count = frame.pop() as i32;
      i32 sourceOffset = frame.pop() as i32;
      i32 destOffset = frame.pop() as i32;
      elementSegments.copyTo(table0, sourceOffset, destOffset, count, elementSegments.segment0);
    }
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
typedef FunctionType2 = void Function(i32, i32);

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final TableInit100Module module;

  late final List<int> segment0;

  @override
  late final List<List<int>?> segments = [segment0];

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    segment0 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
  }
}
