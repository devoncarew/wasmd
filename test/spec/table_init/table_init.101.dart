// Generated from test/spec/table_init/table_init.101.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class TableInit101Module implements Module {
  TableInit101Module() {
    segments.init();
  }

  @override
  final Memory memory = Memory(0);

  final Table table0 = Table(1);

  @override
  late final List<Table> tables = [table0];

  late final ElementSegments segments = ElementSegments(this);

  late final List<Function> functionTable = _initFunctionTable();

  void _func0() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(0);
    frame.i32_const(0);
    {
      i32 count = frame.pop() as i32;
      i32 sourceOffset = frame.pop() as i32;
      i32 destOffset = frame.pop() as i32;
      segments.copyTo(table0, sourceOffset, destOffset, count, segments.segment64);
    }
  }

  List<Function> _initFunctionTable() {
    return [_func0];
  }
}

typedef FunctionType0 = void Function();

class ElementSegments extends AbstractElementSegments {
  ElementSegments(this.module);

  final TableInit101Module module;

  late final List<int> segment0;

  late final List<int> segment1;

  late final List<int> segment2;

  late final List<int> segment3;

  late final List<int> segment4;

  late final List<int> segment5;

  late final List<int> segment6;

  late final List<int> segment7;

  late final List<int> segment8;

  late final List<int> segment9;

  late final List<int> segment10;

  late final List<int> segment11;

  late final List<int> segment12;

  late final List<int> segment13;

  late final List<int> segment14;

  late final List<int> segment15;

  late final List<int> segment16;

  late final List<int> segment17;

  late final List<int> segment18;

  late final List<int> segment19;

  late final List<int> segment20;

  late final List<int> segment21;

  late final List<int> segment22;

  late final List<int> segment23;

  late final List<int> segment24;

  late final List<int> segment25;

  late final List<int> segment26;

  late final List<int> segment27;

  late final List<int> segment28;

  late final List<int> segment29;

  late final List<int> segment30;

  late final List<int> segment31;

  late final List<int> segment32;

  late final List<int> segment33;

  late final List<int> segment34;

  late final List<int> segment35;

  late final List<int> segment36;

  late final List<int> segment37;

  late final List<int> segment38;

  late final List<int> segment39;

  late final List<int> segment40;

  late final List<int> segment41;

  late final List<int> segment42;

  late final List<int> segment43;

  late final List<int> segment44;

  late final List<int> segment45;

  late final List<int> segment46;

  late final List<int> segment47;

  late final List<int> segment48;

  late final List<int> segment49;

  late final List<int> segment50;

  late final List<int> segment51;

  late final List<int> segment52;

  late final List<int> segment53;

  late final List<int> segment54;

  late final List<int> segment55;

  late final List<int> segment56;

  late final List<int> segment57;

  late final List<int> segment58;

  late final List<int> segment59;

  late final List<int> segment60;

  late final List<int> segment61;

  late final List<int> segment62;

  late final List<int> segment63;

  late final List<int> segment64;

  @override
  List<Function> get functionTable => module.functionTable;

  void init() {
    segment0 = [];
    segment1 = [];
    segment2 = [];
    segment3 = [];
    segment4 = [];
    segment5 = [];
    segment6 = [];
    segment7 = [];
    segment8 = [];
    segment9 = [];
    segment10 = [];
    segment11 = [];
    segment12 = [];
    segment13 = [];
    segment14 = [];
    segment15 = [];
    segment16 = [];
    segment17 = [];
    segment18 = [];
    segment19 = [];
    segment20 = [];
    segment21 = [];
    segment22 = [];
    segment23 = [];
    segment24 = [];
    segment25 = [];
    segment26 = [];
    segment27 = [];
    segment28 = [];
    segment29 = [];
    segment30 = [];
    segment31 = [];
    segment32 = [];
    segment33 = [];
    segment34 = [];
    segment35 = [];
    segment36 = [];
    segment37 = [];
    segment38 = [];
    segment39 = [];
    segment40 = [];
    segment41 = [];
    segment42 = [];
    segment43 = [];
    segment44 = [];
    segment45 = [];
    segment46 = [];
    segment47 = [];
    segment48 = [];
    segment49 = [];
    segment50 = [];
    segment51 = [];
    segment52 = [];
    segment53 = [];
    segment54 = [];
    segment55 = [];
    segment56 = [];
    segment57 = [];
    segment58 = [];
    segment59 = [];
    segment60 = [];
    segment61 = [];
    segment62 = [];
    segment63 = [];
    segment64 = [];
  }
}
