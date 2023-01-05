// Generated from test/spec/table_set/table_set.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class TableSet0Module implements Module {
  TableSet0Module() {
    segments.init();
  }

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(1);

  final Table table1 = Table(2);

  @override
  late final List<Table> tables = [
    table0,
    table1,
  ];

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  ExternRef? get_externref(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.push(table0[frame.pop()]);
    return frame.pop();
  }

  FuncRef? get_funcref(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.push(table1[frame.pop()]);
    return frame.pop();
  }

  i32 is_null_funcref(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    {
      var t0 = frame.pop();
      frame.push(get_funcref(t0));
    }
    frame.ref_is_null();
    return frame.pop();
  }

  void set_externref(i32 i, ExternRef? r) {
    final frame = Frame(this);
    frame.push(i);
    frame.push(r);
    {
      var ref = frame.pop();
      table0[frame.pop() as int] = ref;
    }
  }

  void set_funcref(i32 i, FuncRef? r) {
    final frame = Frame(this);
    frame.push(i);
    frame.push(r);
    {
      var ref = frame.pop();
      table1[frame.pop() as int] = ref;
    }
  }

  void set_funcref_from(i32 i, i32 j) {
    final frame = Frame(this);
    frame.push(i);
    frame.push(j);
    frame.push(table1[frame.pop()]);
    {
      var ref = frame.pop();
      table1[frame.pop() as int] = ref;
    }
  }

  void _func0() {
    final frame = Frame(this);
  }

  List<Function> _initFunctionTable() {
    return [
      _func0,
      get_externref,
      get_funcref,
      set_externref,
      set_funcref,
      set_funcref_from,
      is_null_funcref
    ];
  }
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = ExternRef? Function(i32);
typedef FunctionType2 = FuncRef? Function(i32);
typedef FunctionType3 = void Function(i32, ExternRef?);
typedef FunctionType4 = void Function(i32, FuncRef?);
typedef FunctionType5 = void Function(i32, i32);
typedef FunctionType6 = i32 Function(i32);

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final TableSet0Module module;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table1, 0, 1, 1, [0]); /* segment0 */
  }
}
