// Generated from test/spec/bulk/bulk.1.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Module {
  Module() {
    tables = [table0];
    segments.init();
  }

  final Memory memory = Memory(0);

  final Table table0 = Table(3);

  late final List<Table> tables;

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  void _func0() {
    final frame = Frame(memory);
  }

  void _func1() {
    final frame = Frame(memory);
  }

  List<Function> _initFunctionTable() {
    return [_func0, _func1];
  }
}

typedef FunctionType0 = void Function();

class ElementSegments {
  ElementSegments(this.module);

  final Module module;

  late final List<FuncRef?> segment0;

  void init() {
    segment0 = [
      () {
        final frame = Frame(module.memory);
        frame.push(module._func0);
        return frame.pop();
      }(),
      () {
        final frame = Frame(module.memory);
        frame.ref_null(112);
        return frame.pop();
      }(),
      () {
        final frame = Frame(module.memory);
        frame.push(module._func1);
        return frame.pop();
      }()
    ];
  }

  void copyTo(Table table, int src, int dest, int count, List<int> indexes) {
    indexes = indexes.sublist(src, src + count);
    var functions = indexes.map((i) => module.functionTable[i]).toList();
    table.copyFrom(functions, dest, count);
  }
}
