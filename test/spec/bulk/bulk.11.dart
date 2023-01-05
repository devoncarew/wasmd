// Generated from test/spec/bulk/bulk.11.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

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
    frame.elem_drop(0);
  }

  List<Function> _initFunctionTable() {
    return [_func0];
  }
}

typedef FunctionType0 = void Function();

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final Bulk11Module module;

  late final List<int> segment0;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    segment0 = [0];
  }
}
