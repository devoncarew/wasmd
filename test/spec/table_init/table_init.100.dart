// Generated from test/spec/table_init/table_init.100.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class TableInit100Module implements Module {
  TableInit100Module() {
    segments.init();
  }

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(
    16,
    16,
  );

  @override
  late final List<Table> tables = [table0];

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  i32 f0() {
    final frame = Frame(this);
    frame.i32_const(0);
    return frame.pop();
  }

  i32 f1() {
    final frame = Frame(this);
    frame.i32_const(1);
    return frame.pop();
  }

  i32 f10() {
    final frame = Frame(this);
    frame.i32_const(10);
    return frame.pop();
  }

  i32 f11() {
    final frame = Frame(this);
    frame.i32_const(11);
    return frame.pop();
  }

  i32 f12() {
    final frame = Frame(this);
    frame.i32_const(12);
    return frame.pop();
  }

  i32 f13() {
    final frame = Frame(this);
    frame.i32_const(13);
    return frame.pop();
  }

  i32 f14() {
    final frame = Frame(this);
    frame.i32_const(14);
    return frame.pop();
  }

  i32 f15() {
    final frame = Frame(this);
    frame.i32_const(15);
    return frame.pop();
  }

  i32 f2() {
    final frame = Frame(this);
    frame.i32_const(2);
    return frame.pop();
  }

  i32 f3() {
    final frame = Frame(this);
    frame.i32_const(3);
    return frame.pop();
  }

  i32 f4() {
    final frame = Frame(this);
    frame.i32_const(4);
    return frame.pop();
  }

  i32 f5() {
    final frame = Frame(this);
    frame.i32_const(5);
    return frame.pop();
  }

  i32 f6() {
    final frame = Frame(this);
    frame.i32_const(6);
    return frame.pop();
  }

  i32 f7() {
    final frame = Frame(this);
    frame.i32_const(7);
    return frame.pop();
  }

  i32 f8() {
    final frame = Frame(this);
    frame.i32_const(8);
    return frame.pop();
  }

  i32 f9() {
    final frame = Frame(this);
    frame.i32_const(9);
    return frame.pop();
  }

  void run(i32 offs, i32 len) {
    final frame = Frame(this);
    frame.push(offs);
    frame.i32_const(8);
    frame.push(len);
    {
      i32 count = frame.pop() as i32;
      i32 sourceOffset = frame.pop() as i32;
      i32 destOffset = frame.pop() as i32;
      segments.copyTo(table0, sourceOffset, destOffset, count, segments.segment0);
    }
  }

  i32 test(i32 n) {
    final frame = Frame(this);
    frame.push(n);
    {
      var func = table0[frame.pop()] as FunctionType0?;
      if (func == null) throw Trap('uninitialized element');
      frame.push(func());
    }
    return frame.pop();
  }

  List<Function> _initFunctionTable() {
    return [f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, test, run];
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
  List<Function> get functionTable => module.functionTable;

  void init() {
    segment0 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
  }
}
