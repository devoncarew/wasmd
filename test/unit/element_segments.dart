// Generated from test/unit/element_segments.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class ElementSegmentsModule extends Module {
  ElementSegmentsModule() {
    elementSegments.init();
    _init();
  }

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(6);

  @override
  late final List<Table> tables = [table0];

  @override
  late final ElementSegments elementSegments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  i32 callByIndex(i32 arg0) => _func3(arg0);
  FuncRef? table_get(i32 arg0) => _func4(arg0);
  void table_set(i32 arg0, FuncRef? arg1) => _func5(arg0, arg1);

  i32 _f1() {
    final frame = Frame(this);
    frame.i32_const(6);
    return frame.pop();
  }

  i32 _f2() {
    final frame = Frame(this);
    frame.i32_const(7);
    return frame.pop();
  }

  i32 _f3() {
    final frame = Frame(this);
    frame.i32_const(42);
    return frame.pop();
  }

  i32 _func3(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    {
      var func = table0[frame.pop()];
      if (func == null) throw Trap('uninitialized element');
      if (func is! FunctionType0) throw Trap('indirect call type mismatch');
      frame.push(func());
    }
    return frame.pop();
  }

  FuncRef? _func4(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.push(table0[frame.pop()]);
    return frame.pop();
  }

  void _func5(i32 i, FuncRef? ref) {
    final frame = Frame(this);
    frame.push(i);
    frame.push(ref);
    {
      var ref = frame.pop();
      table0[frame.pop() as int] = ref;
    }
  }

  void _init() {
    final frame = Frame(this);
    frame.i32_const(3);
    frame.i32_const(0);
    frame.i32_const(3);
    {
      i32 count = frame.pop() as i32;
      i32 sourceOffset = frame.pop() as i32;
      i32 destOffset = frame.pop() as i32;
      elementSegments.copyTo(table0, sourceOffset, destOffset, count, elementSegments.segment1);
    }
  }

  List<Function> _initFunctionTable() {
    return [_f1, _f2, _f3, _func3, _func4, _func5, _init];
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
  late final List<List<int>?> segments = [null, segment1];

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table0, 0, 0, 2, [0, 1]); /* segment0 */
    segment1 = [2, 2, 2];
  }
}
