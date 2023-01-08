// Generated from test/spec/float_literals/float_literals.1.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';

class FloatLiterals1Module implements Module {
  FloatLiterals1Module();

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  f64 $4294967249() => _func0();

  f64 _func0() {
    final frame = Frame(this);
    frame.f64_const(4294967249.0);
    return frame.pop();
  }
}

typedef FunctionType0 = f64 Function();
