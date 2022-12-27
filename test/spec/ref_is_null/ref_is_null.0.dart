// Generated from test/spec/ref_is_null/ref_is_null.0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

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

  i32 funcref(FuncRef? x) {
    final frame = Frame(this);
    frame.push(x);
    frame.ref_is_null();
    return frame.pop();
  }

  i32 externref(ExternRef? x) {
    final frame = Frame(this);
    frame.push(x);
    frame.ref_is_null();
    return frame.pop();
  }

  void dummy() {
    final frame = Frame(this);
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

  List<Function> _initFunctionTable() {
    return [
      funcref,
      externref,
      dummy,
      init,
      deinit,
      funcref_elem,
      externref_elem
    ];
  }
}

typedef FunctionType0 = i32 Function(FuncRef?);
typedef FunctionType1 = i32 Function(ExternRef?);
typedef FunctionType2 = void Function();
typedef FunctionType3 = void Function(ExternRef?);
typedef FunctionType4 = i32 Function(i32);

class ElementSegments {
  ElementSegments(this.module);

  final RefIsNull0Module module;

  void init() {
    copyTo(module.table0, 0, 1, 1, [2]); /* segment0 */
  }

  void copyTo(Table table, int src, int dest, int count, List<int> indexes) {
    try {
      indexes = indexes.sublist(src, src + count);
    } on RangeError {
      throw Trap('out of bounds table access');
    }
    var functions = indexes.map((i) => module.functionTable[i]).toList();
    table.copyFrom(functions, dest, count);
  }
}
