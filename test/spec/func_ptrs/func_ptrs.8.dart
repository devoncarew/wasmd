// Generated from test/spec/func_ptrs/func_ptrs.8.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class FuncPtrs8Module implements Module {
  FuncPtrs8Module() {
    segments.init();
  }

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(
    7,
    7,
  );

  @override
  late final List<Table> tables = [table0];

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  i32 t1() {
    final frame = Frame(this);
    frame.i32_const(1);
    return frame.pop();
  }

  i32 t2() {
    final frame = Frame(this);
    frame.i32_const(2);
    return frame.pop();
  }

  i32 t3() {
    final frame = Frame(this);
    frame.i32_const(3);
    return frame.pop();
  }

  i32 u1() {
    final frame = Frame(this);
    frame.i32_const(4);
    return frame.pop();
  }

  i32 u2() {
    final frame = Frame(this);
    frame.i32_const(5);
    return frame.pop();
  }

  i32 callt(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    {
      var func = table0[frame.pop()] as FunctionType0?;
      if (func == null) throw Trap('uninitialized element');
      frame.push(func());
    }
    return frame.pop();
  }

  i32 callu(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    {
      var func = table0[frame.pop()] as FunctionType1?;
      if (func == null) throw Trap('uninitialized element');
      frame.push(func());
    }
    return frame.pop();
  }

  List<Function> _initFunctionTable() {
    return [t1, t2, t3, u1, u2, callt, callu];
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = i32 Function();
typedef FunctionType2 = i32 Function(i32);

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final FuncPtrs8Module module;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table0, 0, 0, 7, [0, 1, 2, 3, 4, 0, 2]); /* segment0 */
  }
}
