// Generated from test/spec/bulk/bulk.8.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Bulk8Module implements Module {
  Bulk8Module() {
    segments.init();
  }

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(3);

  @override
  late final List<Table> tables = [table0];

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  i32 call(i32 arg0) {
    final frame = Frame(this);
    frame.push(arg0);
    {
      var func = table0[frame.pop()] as FunctionType0?;
      if (func == null) throw Trap('uninitialized element');
      frame.push(func());
    }
    return frame.pop();
  }

  void init(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(this);
    frame.push(arg0);
    frame.push(arg1);
    frame.push(arg2);
    {
      i32 count = frame.pop() as i32;
      i32 sourceOffset = frame.pop() as i32;
      i32 destOffset = frame.pop() as i32;
      segments.copyTo(table0, sourceOffset, destOffset, count, segments.segment0);
    }
  }

  i32 _func0() {
    final frame = Frame(this);
    frame.i32_const(0);
    return frame.pop();
  }

  i32 _func1() {
    final frame = Frame(this);
    frame.i32_const(1);
    return frame.pop();
  }

  List<Function> _initFunctionTable() {
    return [_func0, _func1, init, call];
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = void Function(i32, i32, i32);
typedef FunctionType2 = i32 Function(i32);

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final Bulk8Module module;

  late final List<int> segment0;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    segment0 = [0, 1, 0, 1];
  }
}
