// Generated from test/spec/table_fill/table_fill.0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class TableFill0Module implements Module {
  TableFill0Module();

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(10);

  @override
  late final List<Table> tables = [table0];

  void fill(i32 i, ExternRef? r, i32 n) {
    final frame = Frame(this);
    frame.push(i);
    frame.push(r);
    frame.push(n);
    frame.table_fill(0);
  }

  ExternRef? get(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.push(table0[frame.pop()]);
    return frame.pop();
  }
}

typedef FunctionType0 = void Function(i32, ExternRef?, i32);
typedef FunctionType1 = ExternRef? Function(i32);
