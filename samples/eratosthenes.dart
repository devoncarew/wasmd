// Generated from samples/eratosthenes.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

/// A class representing the symbols imported from the 'env' module.
abstract class EnvImports {
  void abort(i32 arg0, i32 arg1, i32 arg2, i32 arg3);
}

class EratosthenesModule extends Module {
  EratosthenesModule({required this.envImports}) {
    dataSegments.init(memory);
    _func2();
    vm = VM(this);
  }

  final EnvImports envImports;

  late final VM vm;

  @override
  final Memory memory = Memory(1);

  final Globals globals = Globals();

  @override
  final DataSegments dataSegments = DataSegments();

  @override
  late final List<Table> tables = [];

  i32 prime(i32 arg0) => _func0(arg0);
  void abort(i32 arg0, i32 arg1, i32 arg2, i32 arg3) => _func1(arg0, arg1, arg2, arg3);

  i32 _func0(i32 arg0) {
    i32 local0 = 0;
    i32 local1 = 0;
    i32 local2 = 0;
    i32 local3 = 0;
    i32 local4 = 0;
    i32 local5 = 0;
    i32 local6 = 0;
    i32 local7 = 0;

    var t0 = vm.i32_eq(arg0, 2);
    if_label_0:
    if (t0 != 0) {
      return 2;
    } else {
      var t1 = vm.i32_lt_s(arg0, 2);
      if_label_1:
      if (t1 != 0) {
        return 0;
      }
    }
    var t2 = vm.i32_sub(arg0, 1);
    var t3 = vm.i32_div_s(t2, 2);
    local1 = t3;
    var t4 = vm.i32_gt_u(t3, 0x3ffffffc);
    if_label_0:
    if (t4 != 0) {
      envImports.abort(0x420, 0x450, 51, 60);
      vm.unreachable();
    }
    var t5 = vm.i32_gt_u(local1, 0x3fffffec);
    if_label_0:
    if (t5 != 0) {
      envImports.abort(0x490, 0x4d0, 86, 30);
      vm.unreachable();
    }
    var t6 = vm.i32_add(local1, 16);
    local3 = t6;
    var t7 = vm.i32_gt_u(t6, 0x3ffffffc);
    if_label_0:
    if (t7 != 0) {
      envImports.abort(0x490, 0x4d0, 33, 29);
      vm.unreachable();
    }
    local2 = globals.global0;
    local4 = globals.global0;
    var t8 = vm.i32_add(local2, 4);
    local2 = t8;
    var t9 = vm.i32_add(local3, 19);
    var t10 = vm.i32_and(t9, -16);
    var t11 = vm.i32_sub(t10, 4);
    local5 = t11;
    var t12 = vm.i32_add(t8, t11);
    local3 = t12;
    var t13 = vm.memory_size(0);
    local6 = t13;
    var t14 = vm.i32_shl(t13, 16);
    var t15 = vm.i32_add(t14, 15);
    var t16 = vm.i32_and(t15, -16);
    local7 = t16;
    var t17 = vm.i32_gt_u(t12, t16);
    if_label_0:
    if (t17 != 0) {
      var t18 = vm.i32_sub(local3, local7);
      var t19 = vm.i32_add(t18, 0xffff);
      var t20 = vm.i32_and(t19, -0x10000);
      var t21 = vm.i32_shr_u(t20, 16);
      local7 = t21;
      var t22 = vm.i32_gt_s(local6, local7);
      var t23 = vm.select(local6, t21, t22);
      var t24 = vm.memory_grow(0, t23);
      var t25 = vm.i32_lt_s(t24, 0);
      if_label_1:
      if (t25 != 0) {
        var t26 = vm.memory_grow(0, local7);
        var t27 = vm.i32_lt_s(t26, 0);
        if_label_2:
        if (t27 != 0) {
          vm.unreachable();
        }
      }
    }
    globals.global0 = local3;
    vm.i32_store(2, 0, local4, local5);
    var t28 = vm.i32_sub(local2, 4);
    local3 = t28;
    vm.i32_store(2, 4, t28, 0);
    vm.i32_store(2, 8, local3, 0);
    vm.i32_store(2, 12, local3, 4);
    vm.i32_store(2, 16, local3, local1);
    var t29 = vm.i32_add(local2, 16);
    local2 = t29;
    vm.memory_fill(0, t29, 0, local1);
    var t30 = vm.i32_sub(local2, 20);
    var t31 = vm.i32_load(2, 16, t30);
    local3 = t31;
    var t32 = vm.i32_le_s(local3, 0);
    var t33 = vm.select(t31, 0, t32);
    local4 = t33;
    var t34 = vm.i32_gt_s(local3, local4);
    if_label_0:
    if (t34 != 0) {
      var t35 = vm.i32_add(local2, local4);
      var t36 = vm.i32_sub(local3, local4);
      vm.memory_fill(0, t35, 1, t36);
    }
    var t37 = vm.f32_convert_i32_s(arg0);
    var t38 = vm.f32_sqrt(t37);
    var t39 = vm.f32_floor(t38);
    var t40 = vm.i32_trunc_sat_f32_u(t39);
    local3 = t40;

    loop_label_0:
    for (;;) {
      var t41 = vm.i32_lt_s(local0, local1);
      if_label_1:
      if (t41 != 0) {
        var t42 = vm.i32_shl(local0, 1);
        var t43 = vm.i32_add(t42, 3);
        local4 = t43;
        var t44 = vm.i32_ge_u(local3, t43);
        if_label_2:
        if (t44 != 0) {
          var t45 = vm.i32_add(local0, 1);
          arg0 = t45;

          loop_label_3:
          for (;;) {
            var t46 = vm.i32_lt_s(arg0, local1);
            if_label_4:
            if (t46 != 0) {
              var t47 = vm.i32_add(arg0, local2);
              var t48 = vm.i32_load8_u(0, 0, t47);
              if_label_5:
              if (t48 != 0) {
                var t49 = vm.i32_shl(arg0, 1);
                var t50 = vm.i32_add(t49, 3);
                var t51 = vm.i32_rem_u(t50, local4);
                var t52 = vm.i32_eqz(t51);
                if_label_6:
                if (t52 != 0) {
                  var t53 = vm.i32_add(arg0, local2);
                  vm.i32_store8(0, 0, t53, 0);
                }
              }
              var t54 = vm.i32_add(arg0, 1);
              arg0 = t54;
              continue loop_label_3;
            }
            break;
          }
          var t55 = vm.i32_add(local0, 1);
          local0 = t55;
          continue loop_label_0;
        }
      }
      break;
    }
    local0 = 2;
    var t56 = vm.i32_sub(local1, 1);
    arg0 = t56;

    loop_label_0:
    for (;;) {
      var t57 = vm.i32_ge_s(arg0, 0);
      if_label_1:
      if (t57 != 0) {
        block_label_2:
        {
          var t58 = vm.i32_add(arg0, local2);
          var t59 = vm.i32_load8_u(0, 0, t58);
          if_label_3:
          if (t59 != 0) {
            var t60 = vm.i32_shl(arg0, 1);
            var t61 = vm.i32_add(t60, 3);
            local0 = t61;
            break block_label_2;
          }
          var t62 = vm.i32_sub(arg0, 1);
          arg0 = t62;
          continue loop_label_0;
        }
      }
      break;
    }
    return local0;
  }

  void _func1(i32 arg0, i32 arg1, i32 arg2, i32 arg3) {
    envImports.abort(0x510, 0x540, 64, 5);
    vm.unreachable();
  }

  void _func2() {
    globals.global0 = 0x55c;
  }
}

typedef FunctionType0 = void Function(i32, i32, i32, i32);
typedef FunctionType1 = i32 Function(i32);
typedef FunctionType2 = void Function();

class Globals {
  i32 global0 = 0;
}

class DataSegments extends AbstractDataSegments {
  final Uint8List data0 = decodeDataLiteral(_hex0);

  final Uint8List data1 = decodeDataLiteral(_hex1);

  final Uint8List data2 = decodeDataLiteral(_hex2);

  final Uint8List data3 = decodeDataLiteral(_hex3);

  final Uint8List data4 = decodeDataLiteral(_hex4);

  final Uint8List data5 = decodeDataLiteral(_hex5);

  final Uint8List data6 = decodeDataLiteral(_hex6);

  final Uint8List data7 = decodeDataLiteral(_hex7);

  final Uint8List data8 = decodeDataLiteral(_hex8);

  final Uint8List data9 = decodeDataLiteral(_hex9);

  final Uint8List data10 = decodeDataLiteral(_hex10);

  final Uint8List data11 = decodeDataLiteral(_hex11);

  @override
  late final List<Uint8List> data = [
    data0,
    data1,
    data2,
    data3,
    data4,
    data5,
    data6,
    data7,
    data8,
    data9,
    data10,
    data11
  ];

  static const String _hex0 = '\x2C';

  static const String _hex1 =
      '\x02\x00\x00\x00\x1C\x00\x00\x00\x49\x00\x6E\x00\x76\x00\x61\x00\x6C\x00\x69\x00\x64\x00\x20\x00\x6C\x00'
      '\x65\x00\x6E\x00\x67\x00\x74\x00\x68';

  static const String _hex2 = '\x3C';

  static const String _hex3 =
      '\x02\x00\x00\x00\x26\x00\x00\x00\x7E\x00\x6C\x00\x69\x00\x62\x00\x2F\x00\x73\x00\x74\x00\x61\x00\x74\x00'
      '\x69\x00\x63\x00\x61\x00\x72\x00\x72\x00\x61\x00\x79\x00\x2E\x00\x74\x00\x73';

  static const String _hex4 = '\x3C';

  static const String _hex5 =
      '\x02\x00\x00\x00\x28\x00\x00\x00\x41\x00\x6C\x00\x6C\x00\x6F\x00\x63\x00\x61\x00\x74\x00\x69\x00\x6F\x00'
      '\x6E\x00\x20\x00\x74\x00\x6F\x00\x6F\x00\x20\x00\x6C\x00\x61\x00\x72\x00\x67\x00\x65';

  static const String _hex6 = '\x3C';

  static const String _hex7 =
      '\x02\x00\x00\x00\x1E\x00\x00\x00\x7E\x00\x6C\x00\x69\x00\x62\x00\x2F\x00\x72\x00\x74\x00\x2F\x00\x73\x00'
      '\x74\x00\x75\x00\x62\x00\x2E\x00\x74\x00\x73';

  static const String _hex8 = '\x2C';

  static const String _hex9 =
      '\x02\x00\x00\x00\x0E\x00\x00\x00\x61\x00\x62\x00\x6F\x00\x72\x00\x74\x00\x65\x00\x64';

  static const String _hex10 = '\x2C';

  static const String _hex11 =
      '\x02\x00\x00\x00\x12\x00\x00\x00\x6D\x00\x6F\x00\x64\x00\x75\x00\x6C\x00\x65\x00\x2E\x00\x74\x00\x73';

  void init(Memory memory) {
    memory.copyFrom(data0, 0, 1036, data0.length);
    memory.copyFrom(data1, 0, 1048, data1.length);
    memory.copyFrom(data2, 0, 1084, data2.length);
    memory.copyFrom(data3, 0, 1096, data3.length);
    memory.copyFrom(data4, 0, 1148, data4.length);
    memory.copyFrom(data5, 0, 1160, data5.length);
    memory.copyFrom(data6, 0, 1212, data6.length);
    memory.copyFrom(data7, 0, 1224, data7.length);
    memory.copyFrom(data8, 0, 1276, data8.length);
    memory.copyFrom(data9, 0, 1288, data9.length);
    memory.copyFrom(data10, 0, 1324, data10.length);
    memory.copyFrom(data11, 0, 1336, data11.length);
  }
}
