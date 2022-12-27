// Generated from test/spec/bulk/bulk.11.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Bulk11Module implements Module {
  Bulk11Module() {
    segments.init();
  }

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  void _func0() {
    final frame = Frame(this);
    /* elem.drop segment 0 */
  }

  List<Function> _initFunctionTable() {
    return [_func0];
  }
}

typedef FunctionType0 = void Function();

class ElementSegments {
  ElementSegments(this.module);

  final Bulk11Module module;

  late final List<int> segment0;

  void init() {
    segment0 = [0];
  }

  void copyTo(Table table, int src, int dest, int count, List<int> indexes) {
    indexes = indexes.sublist(src, src + count);
    var functions = indexes.map((i) => module.functionTable[i]).toList();
    table.copyFrom(functions, dest, count);
  }
}
