// Generated from test/spec/ref_is_null/ref_is_null.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class RefIsNull0Module implements Module {
  RefIsNull0Module() {
    segments.init();
  }

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(2);

  final Table table1 = Table(2);

  @override
  late final List<Table> tables = [
    table0,
    table1,
  ];

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  void deinit() {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.ref_null(112);
    {
      var ref = frame.pop();
      table0[frame.pop() as int] = ref;
    }
    frame.i32_const(1);
    frame.ref_null(111);
    {
      var ref = frame.pop();
      table1[frame.pop() as int] = ref;
    }
  }

  i32 externref(ExternRef? x) {
    final frame = Frame(this);
    frame.push(x);
    frame.ref_is_null();
    return frame.pop();
  }

  i32 externref_elem(i32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(table1[frame.pop()]);
    {
      var t0 = frame.pop();
      frame.push(externref(t0));
    }
    return frame.pop();
  }

  i32 funcref(FuncRef? x) {
    final frame = Frame(this);
    frame.push(x);
    frame.ref_is_null();
    return frame.pop();
  }

  i32 funcref_elem(i32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(table0[frame.pop()]);
    {
      var t0 = frame.pop();
      frame.push(funcref(t0));
    }
    return frame.pop();
  }

  void init(ExternRef? r) {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.push(r);
    {
      var ref = frame.pop();
      table1[frame.pop() as int] = ref;
    }
  }

  void _func2() {
    final frame = Frame(this);
  }

  List<Function> _initFunctionTable() {
    return [funcref, externref, _func2, init, deinit, funcref_elem, externref_elem];
  }
}

typedef FunctionType0 = i32 Function(FuncRef?);
typedef FunctionType1 = i32 Function(ExternRef?);
typedef FunctionType2 = void Function();
typedef FunctionType3 = void Function(ExternRef?);
typedef FunctionType4 = i32 Function(i32);

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final RefIsNull0Module module;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table0, 0, 1, 1, [2]); /* segment0 */
  }
}
