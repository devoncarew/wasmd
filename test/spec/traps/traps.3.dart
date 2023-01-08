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

  void no_dce_i32_load(i32 arg0) => _func00(arg0);
  void no_dce_i32_load16_s(i32 arg0) => _func01(arg0);
  void no_dce_i32_load16_u(i32 arg0) => _func02(arg0);
  void no_dce_i32_load8_s(i32 arg0) => _func03(arg0);
  void no_dce_i32_load8_u(i32 arg0) => _func04(arg0);
  void no_dce_i64_load(i32 arg0) => _func05(arg0);
  void no_dce_i64_load32_s(i32 arg0) => _func06(arg0);
  void no_dce_i64_load32_u(i32 arg0) => _func07(arg0);
  void no_dce_i64_load16_s(i32 arg0) => _func08(arg0);
  void no_dce_i64_load16_u(i32 arg0) => _func09(arg0);
  void no_dce_i64_load8_s(i32 arg0) => _func10(arg0);
  void no_dce_i64_load8_u(i32 arg0) => _func11(arg0);
  void no_dce_f32_load(i32 arg0) => _func12(arg0);
  void no_dce_f64_load(i32 arg0) => _func13(arg0);

  void _func00(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load(2, 0);
    frame.drop();
  }

  void _func01(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load16_s(1, 0);
    frame.drop();
  }

  void _func02(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load16_u(1, 0);
    frame.drop();
  }

  void _func03(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load8_s(0, 0);
    frame.drop();
  }

  void _func04(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i32_load8_u(0, 0);
    frame.drop();
  }

  void _func05(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load(3, 0);
    frame.drop();
  }

  void _func06(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load32_s(2, 0);
    frame.drop();
  }

  void _func07(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load32_u(2, 0);
    frame.drop();
  }

  void _func08(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load16_s(1, 0);
    frame.drop();
  }

  void _func09(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load16_u(1, 0);
    frame.drop();
  }

  void _func10(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load8_s(0, 0);
    frame.drop();
  }

  void _func11(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load8_u(0, 0);
    frame.drop();
  }

  void _func12(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.f32_load(2, 0);
    frame.drop();
  }

  void _func13(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.f64_load(3, 0);
    frame.drop();
  }
}

typedef FunctionType0 = void Function(i32);
