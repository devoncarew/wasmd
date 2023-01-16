// Generated from test/spec/endianness/endianness.0.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class Endianness0Module implements Module {
  Endianness0Module() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(1);

  @override
  late final List<Table> tables = [];

  i32 i32_load16_s(i32 arg0) => _func06(arg0);
  i32 i32_load16_u(i32 arg0) => _func07(arg0);
  i32 i32_load(i32 arg0) => _func08(arg0);
  i64 i64_load16_s(i64 arg0) => _func09(arg0);
  i64 i64_load16_u(i64 arg0) => _func10(arg0);
  i64 i64_load32_s(i64 arg0) => _func11(arg0);
  i64 i64_load32_u(i64 arg0) => _func12(arg0);
  i64 i64_load(i64 arg0) => _func13(arg0);
  f32 f32_load(f32 arg0) => _func14(arg0);
  f64 f64_load(f64 arg0) => _func15(arg0);
  i32 i32_store16(i32 arg0) => _func16(arg0);
  i32 i32_store(i32 arg0) => _func17(arg0);
  i64 i64_store16(i64 arg0) => _func18(arg0);
  i64 i64_store32(i64 arg0) => _func19(arg0);
  i64 i64_store(i64 arg0) => _func20(arg0);
  f32 f32_store(f32 arg0) => _func21(arg0);
  f64 f64_store(f64 arg0) => _func22(arg0);

  void _i16_store_little(i32 address, i32 value) {
    vm.i32_store8(0, 0, address, value);
    var t0 = vm.i32_add(address, 1);
    var t1 = vm.i32_shr_u(value, 8);
    vm.i32_store8(0, 0, t0, t1);
  }

  void _i32_store_little(i32 address, i32 value) {
    _i16_store_little(address, value);
    var t0 = vm.i32_add(address, 2);
    var t1 = vm.i32_shr_u(value, 16);
    _i16_store_little(t0, t1);
  }

  void _i64_store_little(i32 address, i64 value) {
    var t0 = vm.i32_wrap_i64(value);
    _i32_store_little(address, t0);
    var t1 = vm.i32_add(address, 4);
    var t2 = vm.i64_shr_u(value, 32);
    var t3 = vm.i32_wrap_i64(t2);
    _i32_store_little(t1, t3);
  }

  i32 _i16_load_little(i32 address) {
    var t0 = vm.i32_load8_u(0, 0, address);
    var t1 = vm.i32_add(address, 1);
    var t2 = vm.i32_load8_u(0, 0, t1);
    var t3 = vm.i32_shl(t2, 8);
    var t4 = vm.i32_or(t0, t3);
    return t4;
  }

  i32 _i32_load_little(i32 address) {
    var t0 = _i16_load_little(address);
    var t1 = vm.i32_add(address, 2);
    var t2 = _i16_load_little(t1);
    var t3 = vm.i32_shl(t2, 16);
    var t4 = vm.i32_or(t0, t3);
    return t4;
  }

  i64 _i64_load_little(i32 address) {
    var t0 = _i32_load_little(address);
    var t1 = vm.i64_extend_i32_u(t0);
    var t2 = vm.i32_add(address, 4);
    var t3 = _i32_load_little(t2);
    var t4 = vm.i64_extend_i32_u(t3);
    var t5 = vm.i64_shl(t4, 32);
    var t6 = vm.i64_or(t1, t5);
    return t6;
  }

  i32 _func06(i32 value) {
    _i16_store_little(0, value);
    var t0 = vm.i32_load16_s(1, 0, 0);
    return t0;
  }

  i32 _func07(i32 value) {
    _i16_store_little(0, value);
    var t0 = vm.i32_load16_u(1, 0, 0);
    return t0;
  }

  i32 _func08(i32 value) {
    _i32_store_little(0, value);
    var t0 = vm.i32_load(2, 0, 0);
    return t0;
  }

  i64 _func09(i64 value) {
    var t0 = vm.i32_wrap_i64(value);
    _i16_store_little(0, t0);
    var t1 = vm.i64_load16_s(1, 0, 0);
    return t1;
  }

  i64 _func10(i64 value) {
    var t0 = vm.i32_wrap_i64(value);
    _i16_store_little(0, t0);
    var t1 = vm.i64_load16_u(1, 0, 0);
    return t1;
  }

  i64 _func11(i64 value) {
    var t0 = vm.i32_wrap_i64(value);
    _i32_store_little(0, t0);
    var t1 = vm.i64_load32_s(2, 0, 0);
    return t1;
  }

  i64 _func12(i64 value) {
    var t0 = vm.i32_wrap_i64(value);
    _i32_store_little(0, t0);
    var t1 = vm.i64_load32_u(2, 0, 0);
    return t1;
  }

  i64 _func13(i64 value) {
    _i64_store_little(0, value);
    var t0 = vm.i64_load(3, 0, 0);
    return t0;
  }

  f32 _func14(f32 value) {
    var t0 = vm.i32_reinterpret_f32(value);
    _i32_store_little(0, t0);
    var t1 = vm.f32_load(2, 0, 0);
    return t1;
  }

  f64 _func15(f64 value) {
    var t0 = vm.i64_reinterpret_f64(value);
    _i64_store_little(0, t0);
    var t1 = vm.f64_load(3, 0, 0);
    return t1;
  }

  i32 _func16(i32 value) {
    vm.i32_store16(1, 0, 0, value);
    var t0 = _i16_load_little(0);
    return t0;
  }

  i32 _func17(i32 value) {
    vm.i32_store(2, 0, 0, value);
    var t0 = _i32_load_little(0);
    return t0;
  }

  i64 _func18(i64 value) {
    vm.i64_store16(1, 0, 0, value);
    var t0 = _i16_load_little(0);
    var t1 = vm.i64_extend_i32_u(t0);
    return t1;
  }

  i64 _func19(i64 value) {
    vm.i64_store32(2, 0, 0, value);
    var t0 = _i32_load_little(0);
    var t1 = vm.i64_extend_i32_u(t0);
    return t1;
  }

  i64 _func20(i64 value) {
    vm.i64_store(3, 0, 0, value);
    var t0 = _i64_load_little(0);
    return t0;
  }

  f32 _func21(f32 value) {
    vm.f32_store(2, 0, 0, value);
    var t0 = _i32_load_little(0);
    var t1 = vm.f32_reinterpret_i32(t0);
    return t1;
  }

  f64 _func22(f64 value) {
    vm.f64_store(3, 0, 0, value);
    var t0 = _i64_load_little(0);
    var t1 = vm.f64_reinterpret_i64(t0);
    return t1;
  }
}

typedef FunctionType0 = void Function(i32, i32);
typedef FunctionType1 = void Function(i32, i64);
typedef FunctionType2 = i32 Function(i32);
typedef FunctionType3 = i64 Function(i32);
typedef FunctionType4 = i64 Function(i64);
typedef FunctionType5 = f32 Function(f32);
typedef FunctionType6 = f64 Function(f64);
