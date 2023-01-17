// Generated from test/spec/func_ptrs/func_ptrs.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

/// A class representing the symbols imported from the 'spectest' module.
abstract class SpectestImports {
  void print_i32(i32 arg0);
}

class FuncPtrs0Module extends Module {
  FuncPtrs0Module({required this.spectestImports}) {
    vm = VM(this);
  }

  final SpectestImports spectestImports;

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 one() => _func2();
  i32 two(i32 arg0) => _func3(arg0);
  i32 three(i32 arg0) => _func4(arg0);
  void four(i32 arg0) => _func5(arg0);

  void _func0() {}

  void _func1() {}

  i32 _func2() {
    return 13;
  }

  i32 _func3(i32 arg0) {
    var t0 = vm.i32_add(arg0, 1);
    return t0;
  }

  i32 _func4(i32 a) {
    var t0 = vm.i32_sub(a, 2);
    return t0;
  }

  void _func5(i32 arg0) {
    spectestImports.print_i32(arg0);
  }
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = void Function();
typedef FunctionType2 = void Function();
typedef FunctionType3 = i32 Function();
typedef FunctionType4 = i32 Function();
typedef FunctionType5 = i32 Function(i32);
typedef FunctionType6 = void Function(i32);
