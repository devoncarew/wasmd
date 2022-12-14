// Generated from test/spec/table_get/table_get.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

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

  void init(ExternRef? arg0) => _func1(arg0);
  ExternRef? get_externref(i32 arg0) => _func2(arg0);
  FuncRef? get_funcref(i32 arg0) => _f3(arg0);
  i32 is_null_funcref(i32 arg0) => _func4(arg0);

  void _dummy() {
    final frame = Frame(this);
  }

  void _func1(ExternRef? r) {
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

  ExternRef? _func2(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.push(table0[frame.pop()]);
    return frame.pop();
  }

  FuncRef? _f3(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.push(table1[frame.pop()]);
    return frame.pop();
  }

  i32 _func4(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    {
      var t0 = frame.pop();
      frame.push(_f3(t0));
    }
    frame.ref_is_null();
    return frame.pop();
  }

  List<Function> _initFunctionTable() {
    return [_dummy, _func1, _func2, _f3, _func4];
  }
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = void Function(ExternRef?);
typedef FunctionType2 = ExternRef? Function(i32);
typedef FunctionType3 = FuncRef? Function(i32);
typedef FunctionType4 = i32 Function(i32);

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final TableGet0Module module;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table1, 0, 1, 1, [0]); /* segment0 */
  }
}
