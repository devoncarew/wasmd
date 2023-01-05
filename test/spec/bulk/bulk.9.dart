// Generated from test/spec/bulk/bulk.9.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Bulk9Module implements Module {
  Bulk9Module() {
    segments.init();
  }

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(1);

  @override
  late final List<Table> tables = [table0];

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  void drop_active() {
    final frame = Frame(this);
    frame.elem_drop(1);
  }

  void drop_passive() {
    final frame = Frame(this);
    frame.elem_drop(0);
  }

  void init_active(i32 len) {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(0);
    frame.push(len);
    throw 'table.init does not support active element segments';
  }

  void init_passive(i32 len) {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(0);
    frame.push(len);
    {
      i32 count = frame.pop() as i32;
      i32 sourceOffset = frame.pop() as i32;
      i32 destOffset = frame.pop() as i32;
      segments.copyTo(table0, sourceOffset, destOffset, count, segments.segment0);
    }
  }

  void _func0() {
    final frame = Frame(this);
  }

  List<Function> _initFunctionTable() {
    return [_func0, drop_passive, init_passive, drop_active, init_active];
  }
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = void Function(i32);

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final Bulk9Module module;

  late final List<int> segment0;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    segment0 = [0];
    copyTo(module.table0, 0, 0, 1, [0]); /* segment1 */
  }
}
