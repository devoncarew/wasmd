// Generated from test/spec/float_exprs/float_exprs.52.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatExprs52Module implements Module {
  FloatExprs52Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f32 llvm_pr27036(i32 arg0, i32 arg1) => _func0(arg0, arg1);

  f32 _func0(i32 x, i32 y) {
    final frame = Frame(this);
    frame.push(x);
    frame.i32_const(-0x17e0035);
    frame.i32_or();
    frame.f32_convert_i32_s();
    frame.push(y);
    frame.i32_const(0xe40000);
    frame.i32_and();
    frame.f32_convert_i32_s();
    frame.f32_add();
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(i32, i32);
