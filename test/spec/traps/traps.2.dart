// Generated from test/spec/traps/traps.2.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Traps2Module implements Module {
  Traps2Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  void no_dce_i32_trunc_f32_s(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_trunc_f32_s();
    frame.drop();
  }

  void no_dce_i32_trunc_f32_u(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_trunc_f32_u();
    frame.drop();
  }

  void no_dce_i32_trunc_f64_s(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_trunc_f64_s();
    frame.drop();
  }

  void no_dce_i32_trunc_f64_u(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_trunc_f64_u();
    frame.drop();
  }

  void no_dce_i64_trunc_f32_s(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i64_trunc_f32_s();
    frame.drop();
  }

  void no_dce_i64_trunc_f32_u(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i64_trunc_f32_u();
    frame.drop();
  }

  void no_dce_i64_trunc_f64_s(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i64_trunc_f64_s();
    frame.drop();
  }

  void no_dce_i64_trunc_f64_u(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i64_trunc_f64_u();
    frame.drop();
  }
}

typedef FunctionType0 = void Function(f32);
typedef FunctionType1 = void Function(f64);
