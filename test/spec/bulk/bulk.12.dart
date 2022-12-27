// Generated from test/spec/bulk/bulk.12.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Module {
  Module() {
    tables = [table0];
    segments.init();
  }

  final Memory memory = Memory(0);

  final Table table0 = Table(10);

  late final List<Table> tables;

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  i32 zero() {
    final frame = Frame(memory);
    frame.i32_const(0);
    return frame.pop();
  }

  i32 one() {
    final frame = Frame(memory);
    frame.i32_const(1);
    return frame.pop();
  }

  i32 two() {
    final frame = Frame(memory);
    frame.i32_const(2);
    return frame.pop();
  }

  void copy(i32 arg0, i32 arg1, i32 arg2) {
    final frame = Frame(memory);
    frame.push(arg0);
    frame.push(arg1);
    frame.push(arg2);
    {
      i32 count = frame.pop() as i32;
      i32 sourceOffset = frame.pop() as i32;
      i32 destOffset = frame.pop() as i32;
      table0.copyTo(table0, sourceOffset, destOffset, count);
    }
  }

  i32 call(i32 arg0) {
    final frame = Frame(memory);
    frame.push(arg0);
    {
      var func = table0[frame.pop()]! as FunctionType0;
      frame.push(func());
    }
    return frame.pop();
  }

  List<Function> _initFunctionTable() {
    return [zero, one, two, copy, call];
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = void Function(i32, i32, i32);
typedef FunctionType2 = i32 Function(i32);

class ElementSegments {
  ElementSegments(this.module);

  final Module module;

  void init() {
    copyTo(module.table0, 0, 0, 3, [0, 1, 2]); /* segment0 */
  }

  void copyTo(Table table, int src, int dest, int count, List<int> indexes) {
    indexes = indexes.sublist(src, src + count);
    var functions = indexes.map((i) => module.functionTable[i]).toList();
    table.copyFrom(functions, dest, count);
  }
}
