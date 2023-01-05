// Generated from test/spec/func_ptrs/func_ptrs.9.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FuncPtrs9Module implements Module {
  FuncPtrs9Module() {
    segments.init();
  }

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(
    2,
    2,
  );

  @override
  late final List<Table> tables = [table0];

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

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

  i32 _func0() {
    final frame = Frame(this);
    frame.i32_const(1);
    return frame.pop();
  }

  i32 _func1() {
    final frame = Frame(this);
    frame.i32_const(2);
    return frame.pop();
  }

  List<Function> _initFunctionTable() {
    return [_func0, _func1, callt];
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = i32 Function(i32);

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final FuncPtrs9Module module;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table0, 0, 0, 2, [0, 1]); /* segment0 */
  }
}
