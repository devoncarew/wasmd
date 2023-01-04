// Generated from test/spec/float_exprs/float_exprs.42.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs42Module implements Module {
  FloatExprs42Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 f32_ult(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_ge();
    frame.i32_eqz();
    return frame.pop();
  }

  i32 f32_ule(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_gt();
    frame.i32_eqz();
    return frame.pop();
  }

  i32 f32_ugt(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_le();
    frame.i32_eqz();
    return frame.pop();
  }

  i32 f32_uge(f32 x, f32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f32_lt();
    frame.i32_eqz();
    return frame.pop();
  }

  i32 f64_ult(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_ge();
    frame.i32_eqz();
    return frame.pop();
  }

  i32 f64_ule(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_gt();
    frame.i32_eqz();
    return frame.pop();
  }

  i32 f64_ugt(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_le();
    frame.i32_eqz();
    return frame.pop();
  }

  i32 f64_uge(f64 x, f64 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(y);
    frame.f64_lt();
    frame.i32_eqz();
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(f32, f32);
typedef FunctionType1 = i32 Function(f64, f64);
