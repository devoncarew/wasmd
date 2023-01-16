// Generated from test/spec/traps/traps.2.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class Traps2Module extends Module {
  Traps2Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  void no_dce_i32_trunc_f32_s(f32 arg0) => _func0(arg0);
  void no_dce_i32_trunc_f32_u(f32 arg0) => _func1(arg0);
  void no_dce_i32_trunc_f64_s(f64 arg0) => _func2(arg0);
  void no_dce_i32_trunc_f64_u(f64 arg0) => _func3(arg0);
  void no_dce_i64_trunc_f32_s(f32 arg0) => _func4(arg0);
  void no_dce_i64_trunc_f32_u(f32 arg0) => _func5(arg0);
  void no_dce_i64_trunc_f64_s(f64 arg0) => _func6(arg0);
  void no_dce_i64_trunc_f64_u(f64 arg0) => _func7(arg0);

  void _func0(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_trunc_f32_s();
    frame.drop();
  }

  void _func1(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_trunc_f32_u();
    frame.drop();
  }

  void _func2(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_trunc_f64_s();
    frame.drop();
  }

  void _func3(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_trunc_f64_u();
    frame.drop();
  }

  void _func4(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i64_trunc_f32_s();
    frame.drop();
  }

  void _func5(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i64_trunc_f32_u();
    frame.drop();
  }

  void _func6(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i64_trunc_f64_s();
    frame.drop();
  }

  void _func7(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i64_trunc_f64_u();
    frame.drop();
  }
}

typedef FunctionType0 = void Function(f32);
typedef FunctionType1 = void Function(f64);
