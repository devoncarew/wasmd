// Generated from test/spec/call_indirect/call_indirect.1.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class CallIndirect1Module implements Module {
  CallIndirect1Module() {
    segments.init();
  }

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(
    2,
    2,
  );

  final Table table1 = Table(
    3,
    3,
  );

  final Table table2 = Table(4);

  @override
  late final List<Table> tables = [
    table0,
    table1,
    table2,
  ];

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  i32 call_1(i32 arg0, i32 arg1, i32 arg2) => _func6(arg0, arg1, arg2);
  i32 call_2(i32 arg0, i32 arg1, i32 arg2) => _func7(arg0, arg1, arg2);
  i32 call_3(i32 arg0, i32 arg1, i32 arg2) => _func8(arg0, arg1, arg2);

  i32 _f(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.i32_add();
    return frame.pop();
  }

  i32 _g(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.i32_sub();
    return frame.pop();
  }

  i32 _h(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.i32_mul();
    return frame.pop();
  }

  i32 _i(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.i32_div_u();
    return frame.pop();
  }

  i32 _j(i32 arg0, i32 arg1) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.i32_rem_u();
    return frame.pop();
  }

  void _z() {
    final frame = Frame(this);
  }

  i32 _func6(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.push(arg2);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1));
    }
    return frame.pop();
  }

  i32 _func7(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.push(arg2);
    {
      var func = table1[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1));
    }
    return frame.pop();
  }

  i32 _func8(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.push(arg2);
    {
      var func = table2[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      var t1 = frame.pop();
      var t0 = frame.pop();
      frame.push(func(t0, t1));
    }
    return frame.pop();
  }

  List<Function> _initFunctionTable() {
    return [_f, _g, _h, _i, _j, _z, _func6, _func7, _func8];
  }
}

typedef FunctionType0 = i32 Function(i32, i32);
typedef FunctionType1 = void Function();
typedef FunctionType2 = i32 Function(i32, i32, i32);

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final CallIndirect1Module module;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table0, 0, 0, 2, [0, 1]); /* segment0 */
    copyTo(module.table1, 0, 0, 3, [2, 3, 4]); /* segment1 */
    copyTo(module.table2, 0, 0, 2, [1, 2]); /* segment2 */
    copyTo(module.table2, 0, 3, 1, [5]); /* segment3 */
  }
}
