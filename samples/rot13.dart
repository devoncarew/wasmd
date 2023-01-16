// Generated from samples/rot13.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

/// A class representing the symbols imported from the 'host' module.
abstract class HostImports {
  i32 fill_buf(i32 arg0, i32 arg1);
  void buf_done(i32 arg0, i32 arg1);
}

class Rot13Module extends Module {
  Rot13Module({
    required this.hostImports,
    required this.memory,
  }) {
    vm = VM(this);
  }

  final HostImports hostImports;

  late final VM vm;

  /// min pages: 1
  @override
  final Memory memory;

  @override
  late final List<Table> tables = [];

  void rot13() => _func1();

  i32 _rot13c(i32 c) {
    i32 uc = 0;

    var t0 = vm.i32_lt_u(c, 65);
    if_label_0:
    if (t0 != 0) {
      return c;
    }
    var t1 = vm.i32_and(c, 223);
    uc = t1;
    var t2 = vm.i32_le_u(uc, 77);
    if_label_0:
    if (t2 != 0) {
      var t3 = vm.i32_add(c, 13);
      return t3;
    }
    var t4 = vm.i32_le_u(uc, 90);
    if_label_0:
    if (t4 != 0) {
      var t5 = vm.i32_sub(c, 13);
      return t5;
    }
    return c;
  }

  void _func1() {
    i32 size = 0;
    i32 i = 0;

    var t0 = hostImports.fill_buf(0, 0x400);
    size = t0;
    block_label_0:
    {
      loop_label_1:
      for (;;) {
        var t1 = vm.i32_ge_u(i, size);
        if_label_2:
        if (t1 != 0) {
          break block_label_0;
        }
        var t2 = vm.i32_load8_u(0, 0, i);
        var t3 = _rot13c(t2);
        vm.i32_store8(0, 0, i, t3);
        var t4 = vm.i32_add(i, 1);
        i = t4;
        continue loop_label_1;
        break;
      }
    }
    hostImports.buf_done(0, size);
  }
}

typedef FunctionType0 = i32 Function(i32, i32);
typedef FunctionType1 = void Function(i32, i32);
typedef FunctionType2 = i32 Function(i32);
typedef FunctionType3 = void Function();
