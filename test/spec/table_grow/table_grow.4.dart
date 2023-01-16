// Generated from test/spec/table_grow/table_grow.4.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class TableGrow4Module implements Module {
  TableGrow4Module() {
    segments.init();
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(10);

  @override
  late final List<Table> tables = [table0];

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  i32 grow(i32 arg0) => _func0(arg0);
  FuncRef? check_table_null(i32 arg0, i32 arg1) => _func1(arg0, arg1);

  i32 _func0(i32 arg0) {
    var t0 = vm.table_grow(0, null, arg0);
    return t0;
  }

  FuncRef? _func1(i32 arg0, i32 arg1) {
    FuncRef? local0;

    local0 = _func1;
    block_label_0:
    {
      loop_label_1:
      for (;;) {
        local0 = table0[arg0];
        var t0 = vm.ref_is_null(local0);
        var t1 = vm.i32_eqz(t0);
        if (t1 != 0) break block_label_0;
        var t2 = vm.i32_ge_u(arg0, arg1);
        if (t2 != 0) break block_label_0;
        var t3 = vm.i32_add(arg0, 1);
        arg0 = t3;
        var t4 = vm.i32_le_u(arg0, arg1);
        if (t4 != 0) continue loop_label_1;
        break;
      }
    }
    return local0;
  }

  List<Function> _initFunctionTable() {
    return [_func0, _func1];
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
