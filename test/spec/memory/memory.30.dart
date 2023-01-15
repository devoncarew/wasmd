// Generated from test/spec/memory/memory.30.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class Memory30Module implements Module {
  Memory30Module() {
    _data.init(memory);
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(1);

  final DataSegments _data = DataSegments();

  @override
  late final List<Table> tables = [];

  i32 data() => _func00();
  f64 cast() => _func01();
  i32 i32_load8_s(i32 arg0) => _func02(arg0);
  i32 i32_load8_u(i32 arg0) => _func03(arg0);
  i32 i32_load16_s(i32 arg0) => _func04(arg0);
  i32 i32_load16_u(i32 arg0) => _func05(arg0);
  i64 i64_load8_s(i64 arg0) => _func06(arg0);
  i64 i64_load8_u(i64 arg0) => _func07(arg0);
  i64 i64_load16_s(i64 arg0) => _func08(arg0);
  i64 i64_load16_u(i64 arg0) => _func09(arg0);
  i64 i64_load32_s(i64 arg0) => _func10(arg0);
  i64 i64_load32_u(i64 arg0) => _func11(arg0);

  i32 _func00() {
    var t0 = vm.i32_load8_u(0, 0, 0);
    var t1 = vm.i32_eq(t0, 65);
    var t2 = vm.i32_load8_u(0, 0, 3);
    var t3 = vm.i32_eq(t2, 167);
    var t4 = vm.i32_and(t1, t3);
    var t5 = vm.i32_load8_u(0, 0, 6);
    var t6 = vm.i32_eq(t5, 0);
    var t7 = vm.i32_load8_u(0, 0, 19);
    var t8 = vm.i32_eq(t7, 0);
    var t9 = vm.i32_and(t6, t8);
    var t10 = vm.i32_and(t4, t9);
    var t11 = vm.i32_load8_u(0, 0, 20);
    var t12 = vm.i32_eq(t11, 87);
    var t13 = vm.i32_load8_u(0, 0, 23);
    var t14 = vm.i32_eq(t13, 77);
    var t15 = vm.i32_and(t12, t14);
    var t16 = vm.i32_load8_u(0, 0, 24);
    var t17 = vm.i32_eq(t16, 0);
    var t18 = vm.i32_load8_u(0, 0, 0x3ff);
    var t19 = vm.i32_eq(t18, 0);
    var t20 = vm.i32_and(t17, t19);
    var t21 = vm.i32_and(t15, t20);
    var t22 = vm.i32_and(t10, t21);
    return t22;
  }

  f64 _func01() {
    var t0 = vm.i64_store(3, 0, 8, -0x3039);
    var t1 = vm.f64_load(3, 0, 8);
    var t2 = vm.f64_reinterpret_i64(-0x3039);
    var t3 = vm.f64_eq(t1, t2);
    if_label_0:
    if (t3 != 0) {
      return 0.0;
    }
    var t4 = vm.i64_store(0, 0, 9, 0);
    var t5 = vm.i32_store16(0, 0, 15, 0x4045);
    var t6 = vm.f64_load(0, 0, 9);
    return t6;
  }

  i32 _func02(i32 i) {
    var t0 = vm.i32_store8(0, 0, 8, i);
    var t1 = vm.i32_load8_s(0, 0, 8);
    return t1;
  }

  i32 _func03(i32 i) {
    var t0 = vm.i32_store8(0, 0, 8, i);
    var t1 = vm.i32_load8_u(0, 0, 8);
    return t1;
  }

  i32 _func04(i32 i) {
    var t0 = vm.i32_store16(1, 0, 8, i);
    var t1 = vm.i32_load16_s(1, 0, 8);
    return t1;
  }

  i32 _func05(i32 i) {
    var t0 = vm.i32_store16(1, 0, 8, i);
    var t1 = vm.i32_load16_u(1, 0, 8);
    return t1;
  }

  i64 _func06(i64 i) {
    var t0 = vm.i64_store8(0, 0, 8, i);
    var t1 = vm.i64_load8_s(0, 0, 8);
    return t1;
  }

  i64 _func07(i64 i) {
    var t0 = vm.i64_store8(0, 0, 8, i);
    var t1 = vm.i64_load8_u(0, 0, 8);
    return t1;
  }

  i64 _func08(i64 i) {
    var t0 = vm.i64_store16(1, 0, 8, i);
    var t1 = vm.i64_load16_s(1, 0, 8);
    return t1;
  }

  i64 _func09(i64 i) {
    var t0 = vm.i64_store16(1, 0, 8, i);
    var t1 = vm.i64_load16_u(1, 0, 8);
    return t1;
  }

  i64 _func10(i64 i) {
    var t0 = vm.i64_store32(2, 0, 8, i);
    var t1 = vm.i64_load32_s(2, 0, 8);
    return t1;
  }

  i64 _func11(i64 i) {
    var t0 = vm.i64_store32(2, 0, 8, i);
    var t1 = vm.i64_load32_u(2, 0, 8);
    return t1;
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = f64 Function();
typedef FunctionType2 = i32 Function(i32);
typedef FunctionType3 = i64 Function(i64);

class DataSegments {
  final Uint8List data0 = decodeDataLiteral(_hex0);

  final Uint8List data1 = decodeDataLiteral(_hex1);

  static const String _hex0 = '\x41\x42\x43\xA7\x44';

  static const String _hex1 = '\x57\x41\x53\x4D';

  void init(Memory memory) {
    memory.copyFrom(data0, 0, 0, data0.length);
    memory.copyFrom(data1, 0, 20, data1.length);
  }
}
