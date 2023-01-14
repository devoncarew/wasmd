// Generated from samples/hello.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class HelloWorldModule implements Module {
  HelloWorldModule() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(10);

  final Globals globals = Globals();

  @override
  late final List<Table> tables = [];

  i32 add(i32 arg0, i32 arg1) => _add(arg0, arg1);
  i32 complex(i32 arg0, i32 arg1) => _complex(arg0, arg1);

  i32 _add(i32 lhs, i32 rhs) {
    var t0 = vm.i32_add(lhs, rhs);
    return t0;
  }

  i32 _sub(i32 lhs, i32 rhs) {
    var t0 = vm.i32_sub(lhs, rhs);
    return t0;
  }

  i32 _complex(i32 lhs, i32 rhs) {
    i32 i = 0;

    i = -1;
    i = -0x80000000;
    var t0 = _sub(lhs, rhs);
    var t1 = vm.i32_mul(t0, i);
    return t1;
  }
}

typedef FunctionType0 = i32 Function(i32, i32);

class Globals {
  i64 a_0 = 0;

  final i64 b_0 = 0;

  final i64 a_1 = 0;

  i64 b_1 = 0;
}
