// Generated from samples/fac.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FacModule implements Module {
  FacModule() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 fac(i32 arg0) => _func0(arg0);

  i32 _func0(i32 arg0) {
    var t0 = vm.i32_eq(arg0, 0);
    int label_0_result = 0;
    if_label_0: // => i32
    if (t0 != 0) {
      label_0_result = 1;
    } else {
      var t1 = vm.i32_sub(arg0, 1);
      var t2 = _func0(t1);
      var t3 = vm.i32_mul(arg0, t2);
      label_0_result = t3;
    }
    return label_0_result;
  }
}

typedef FunctionType0 = i32 Function(i32);
