// Generated from samples/gcd.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class GcdModule implements Module {
  GcdModule() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 gcd(i32 arg0, i32 arg1) => _func0(arg0, arg1);

  i32 _func0(i32 arg0, i32 arg1) {
    i32 local0 = 0;

    block_label_0:
    {
      block_label_1:
      {
        if (arg0 != 0) break block_label_1;
        local0 = arg1;
        break block_label_0;
      }

      loop_label_1:
      for (;;) {
        local0 = arg0;
        var t0 = vm.i32_rem_u(arg1, arg0);
        arg0 = t0;
        arg1 = local0;
        if (arg0 != 0) continue loop_label_1;
        break;
      }
    }
    return local0;
  }
}

typedef FunctionType0 = i32 Function(i32, i32);
