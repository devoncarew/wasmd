// Generated from test/spec/traps/traps.3.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Traps3Module implements Module {
  Traps3Module();

  @override
  final Memory memory = Memory(1);

  @override
  late final List<Table> tables = [];

  void no_dce_f32_load(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.f32_load(2, 0);
    frame.drop();
  }

  void no_dce_f64_load(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.f64_load(3, 0);
    frame.drop();
  }

  void no_dce_i32_load(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load(2, 0);
    frame.drop();
  }

  void no_dce_i32_load16_s(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load16_s(1, 0);
    frame.drop();
  }

  void no_dce_i32_load16_u(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load16_u(1, 0);
    frame.drop();
  }

  void no_dce_i32_load8_s(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load8_s(0, 0);
    frame.drop();
  }

  void no_dce_i32_load8_u(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load8_u(0, 0);
    frame.drop();
  }

  void no_dce_i64_load(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load(3, 0);
    frame.drop();
  }

  void no_dce_i64_load16_s(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load16_s(1, 0);
    frame.drop();
  }

  void no_dce_i64_load16_u(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load16_u(1, 0);
    frame.drop();
  }

  void no_dce_i64_load32_s(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load32_s(2, 0);
    frame.drop();
  }

  void no_dce_i64_load32_u(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load32_u(2, 0);
    frame.drop();
  }

  void no_dce_i64_load8_s(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load8_s(0, 0);
    frame.drop();
  }

  void no_dce_i64_load8_u(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load8_u(0, 0);
    frame.drop();
  }
}

typedef FunctionType0 = void Function(i32);
