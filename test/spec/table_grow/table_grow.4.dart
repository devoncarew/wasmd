// Generated from test/spec/table_grow/table_grow.4.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class TableGrow4Module implements Module {
  TableGrow4Module() {
    segments.init();
  }

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(10);

  @override
  late final List<Table> tables = [table0];

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  FuncRef? check_table_null(i32 arg0, i32 arg1) {
    FuncRef? local0;

    final frame = Frame(this);
    frame.push(check_table_null);
    local0 = frame.pop();
    block_label_0:
    {
      loop_label_1:
      for (;;) {
        frame.push(arg0);
        frame.push(table0[frame.pop()]);
        local0 = frame.pop();
        frame.push(local0);
        frame.ref_is_null();
        frame.i32_eqz();
        if (frame.pop() != 0) {
          frame.unwindTo(0, 0);
          break block_label_0;
        }
        frame.push(arg0);
        frame.push(arg1);
        frame.i32_ge_u();
        if (frame.pop() != 0) {
          frame.unwindTo(0, 0);
          break block_label_0;
        }
        frame.push(arg0);
        frame.i32_const(1);
        frame.i32_add();
        arg0 = frame.pop();
        frame.push(arg0);
        frame.push(arg1);
        frame.i32_le_u();
        if (frame.pop() != 0) {
          continue loop_label_1;
        }
        break;
      }
    }
    frame.push(local0);
    return frame.pop();
  }

  i32 grow(i32 arg0) {
    final frame = Frame(this);
    frame.ref_null(112);
    frame.push(arg0);
    frame.table_grow(0);
    return frame.pop();
  }

  List<Function> _initFunctionTable() {
    return [grow, check_table_null];
  }
}

typedef FunctionType0 = i32 Function(i32);
typedef FunctionType1 = FuncRef? Function(i32, i32);

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final TableGrow4Module module;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {}
}
