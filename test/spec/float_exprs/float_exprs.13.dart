// Generated from test/spec/float_exprs/float_exprs.13.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs13Module implements Module {
  FloatExprs13Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 f32_no_fold_ne_self(f32 arg0) => _func0(arg0);
  i32 f64_no_fold_ne_self(f64 arg0) => _func1(arg0);

  i32 _func0(f32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(x);
    frame.f32_ne();
    return frame.pop();
  }

  i32 _func1(f64 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.push(x);
    frame.f64_ne();
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function(f32);
typedef FunctionType1 = i32 Function(f64);
