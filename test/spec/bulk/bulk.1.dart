// Generated from test/spec/bulk/bulk.1.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class Bulk1Module implements Module {
  Bulk1Module() {
    segments.init();
  }

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(3);

  @override
  late final List<Table> tables = [table0];

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  void _func0() {
    final frame = Frame(this);
  }

  void _func1() {
    final frame = Frame(this);
  }

  List<Function> _initFunctionTable() {
    return [_func0, _func1];
  }
}

typedef FunctionType0 = void Function();

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final Bulk1Module module;

  late final List<FuncRef?> segment0;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    segment0 = [
      () {
        final frame = Frame(module);
        frame.push(module._func0);
        return frame.pop();
      }(),
      () {
        final frame = Frame(module);
        frame.ref_null(112);
        return frame.pop();
      }(),
      () {
        final frame = Frame(module);
        frame.push(module._func1);
        return frame.pop();
      }()
    ];
  }
}
