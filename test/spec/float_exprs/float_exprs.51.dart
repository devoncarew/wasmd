// Generated from test/spec/float_exprs/float_exprs.51.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs51Module implements Module {
  FloatExprs51Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 llvm_pr27153(i32 arg0) => _func0(arg0);

  f32 _func0(i32 x) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_const(0xfffffff);
    frame.i32_and();
    frame.f32_convert_i32_s();
    frame.f32_const(-8388608.0);
    frame.f32_add();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(i32);
