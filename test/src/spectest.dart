// Generated from test/src/spectest.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class SpectestModule implements Module {
  SpectestModule();

  @override
  final Memory memory = Memory(
    1,
    2,
  );

  final Globals globals = Globals();

  final Table table0 = Table(
    10,
    20,
  );

  @override
  late final List<Table> tables = [table0];

  i32 get global_i32 => globals.global0;
  i64 get global_i64 => globals.global1;
  f32 get global_f32 => globals.global2;
  f64 get global_f64 => globals.global3;

  void print() {
    final frame = Frame(this);
  }

  void print_f32(f32 arg0) {
    final frame = Frame(this);
  }

  void print_f64(f64 arg0) {
    final frame = Frame(this);
  }

  void print_f64_f64(f64 arg0, f64 arg1) {
    final frame = Frame(this);
  }

  void print_i32(i32 arg0) {
    final frame = Frame(this);
  }

  void print_i32_f32(i32 arg0, f32 arg1) {
    final frame = Frame(this);
  }

  void print_i64(i64 arg0) {
    final frame = Frame(this);
  }
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = void Function(i32);
typedef FunctionType2 = void Function(i64);
typedef FunctionType3 = void Function(f32);
typedef FunctionType4 = void Function(f64);
typedef FunctionType5 = void Function(i32, f32);
typedef FunctionType6 = void Function(f64, f64);

class Globals {
  final i32 global0 = 0;

  final i64 global1 = 0;

  final f32 global2 = 0.0;

  final f64 global3 = 0.0;
}
