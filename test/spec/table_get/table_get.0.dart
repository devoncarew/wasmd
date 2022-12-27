// Generated from test/spec/table_get/table_get.0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class TableGet0Module implements Module {
  TableGet0Module() {
    segments.init();
  }

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(2);

  final Table table1 = Table(3);

  @override
  late final List<Table> tables = [
    table0,
    table1,
  ];

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  void dummy() {
    final frame = Frame(this);
  }

  void init(ExternRef? r) {
    final frame = Frame(this);
    frame.i32_const(1);
    frame.push(r);
    {
      var ref = frame.pop();
      table0[frame.pop() as int] = ref;
    }
    frame.i32_const(2);
    frame.i32_const(1);
    frame.push(table1[frame.pop()]);
    {
      var ref = frame.pop();
      table1[frame.pop() as int] = ref;
    }
  }

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

  List<Function> _initFunctionTable() {
    return [dummy, init, get_externref, get_funcref, is_null_funcref];
  }
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = void Function(ExternRef?);
typedef FunctionType2 = ExternRef? Function(i32);
typedef FunctionType3 = FuncRef? Function(i32);
typedef FunctionType4 = i32 Function(i32);

class ElementSegments {
  ElementSegments(this.module);

  final TableGet0Module module;

  void init() {
    copyTo(module.table1, 0, 1, 1, [0]); /* segment0 */
  }

  void copyTo(Table table, int src, int dest, int count, List<int> indexes) {
    indexes = indexes.sublist(src, src + count);
    var functions = indexes.map((i) => module.functionTable[i]).toList();
    table.copyFrom(functions, dest, count);
  }
}
