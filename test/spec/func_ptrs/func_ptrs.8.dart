// Generated from test/spec/func_ptrs/func_ptrs.8.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

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

  i32 callt(i32 arg0) => _func5(arg0);
  i32 callu(i32 arg0) => _func6(arg0);

  i32 _t1() {
    final frame = Frame(this);
    frame.i32_const(1);
    return frame.pop();
  }

  i32 _t2() {
    final frame = Frame(this);
    frame.i32_const(2);
    return frame.pop();
  }

  i32 _t3() {
    final frame = Frame(this);
    frame.i32_const(3);
    return frame.pop();
  }

  i32 _u1() {
    final frame = Frame(this);
    frame.i32_const(4);
    return frame.pop();
  }

  i32 _u2() {
    final frame = Frame(this);
    frame.i32_const(5);
    return frame.pop();
  }

  i32 _func5(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    {
      var func = table0[frame.pop()] as FunctionType0?;
      if (func == null) throw Trap('uninitialized element');
      frame.push(func());
    }
    return frame.pop();
  }

  i32 _func6(i32 i) {
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
    return [_t1, _t2, _t3, _u1, _u2, _func5, _func6];
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
