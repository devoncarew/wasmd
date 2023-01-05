// Generated from test/unit/element_segments.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class ElementSegmentsModule implements Module {
  ElementSegmentsModule() {
    segments.init();
    _func6();
  }

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(6);

  @override
  late final List<Table> tables = [table0];

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  i32 callByIndex(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    {
      var func = table0[frame.pop()] as FunctionType0?;
      if (func == null) throw Trap('uninitialized element');
      frame.push(func());
    }
    return frame.pop();
  }

  FuncRef? table_get(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.push(table0[frame.pop()]);
    return frame.pop();
  }

  void table_set(i32 i, FuncRef? ref) {
    final frame = Frame(this);
    frame.push(i);
    frame.push(ref);
    {
      var ref = frame.pop();
      table0[frame.pop() as int] = ref;
    }
  }

  i32 _func0() {
    final frame = Frame(this);
    frame.i32_const(6);
    return frame.pop();
  }

  i32 _func1() {
    final frame = Frame(this);
    frame.i32_const(7);
    return frame.pop();
  }

  i32 _func2() {
    final frame = Frame(this);
    frame.i32_const(42);
    return frame.pop();
  }

  void _func6() {
    final frame = Frame(this);
    frame.i32_const(3);
    frame.i32_const(0);
    frame.i32_const(3);
    {
      i32 count = frame.pop() as i32;
      i32 sourceOffset = frame.pop() as i32;
      i32 destOffset = frame.pop() as i32;
      segments.copyTo(table0, sourceOffset, destOffset, count, segments.segment1);
    }
  }

  List<Function> _initFunctionTable() {
    return [_func0, _func1, _func2, callByIndex, table_get, table_set, _func6];
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = i32 Function(i32);
typedef FunctionType2 = FuncRef? Function(i32);
typedef FunctionType3 = void Function(i32, FuncRef?);
typedef FunctionType4 = void Function();

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final ElementSegmentsModule module;

  late final List<int> segment1;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table0, 0, 0, 2, [0, 1]); /* segment0 */
    segment1 = [2, 2, 2];
  }
}
