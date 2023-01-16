// Generated from test/spec/binary-leb128/binary_leb128.5.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class BinaryLeb1285Module extends Module {
  BinaryLeb1285Module() {
    elementSegments.init();
  }

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(0);

  @override
  late final List<Table> tables = [table0];

  @override
  late final ElementSegments elementSegments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  List<Function> _initFunctionTable() {
    return [];
  }
}

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final BinaryLeb1285Module module;

  @override
  late final List<List<int>?> segments = [null];

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    copyTo(module.table0, 0, 0, 0, []); /* segment0 */
  }
}
