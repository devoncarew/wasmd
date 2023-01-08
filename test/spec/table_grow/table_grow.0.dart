// Generated from test/spec/table_grow/table_grow.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class TableGrow0Module implements Module {
  TableGrow0Module();

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(0);

  @override
  late final List<Table> tables = [table0];

  ExternRef? get(i32 arg0) => _func0(arg0);
  void set(i32 arg0, ExternRef? arg1) => _func1(arg0, arg1);
  i32 grow(i32 arg0, ExternRef? arg1) => _func2(arg0, arg1);
  i32 size() => _func3();

  ExternRef? _func0(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.push(table0[frame.pop()]);
    return frame.pop();
  }

  void _func1(i32 i, ExternRef? r) {
    final frame = Frame(this);
    frame.push(i);
    frame.push(r);
    {
      var ref = frame.pop();
      table0[frame.pop() as int] = ref;
    }
  }

  i32 _func2(i32 sz, ExternRef? init) {
    final frame = Frame(this);
    frame.push(init);
    frame.push(sz);
    frame.table_grow(0);
    return frame.pop();
  }

  i32 _func3() {
    final frame = Frame(this);
    frame.table_size(0);
    return frame.pop();
  }
}

typedef FunctionType0 = ExternRef? Function(i32);
typedef FunctionType1 = void Function(i32, ExternRef?);
typedef FunctionType2 = i32 Function(i32, ExternRef?);
typedef FunctionType3 = i32 Function();
