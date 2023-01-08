// Generated from test/spec/address/address.2.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class Address2Module implements Module {
  Address2Module() {
    _data.init(memory);
  }

  @override
  final Memory memory = Memory(1);

  final DataSegments _data = DataSegments();

  @override
  late final List<Table> tables = [];

  i64 $8u_good1(i32 arg0) => _func00(arg0);
  i64 $8u_good2(i32 arg0) => _func01(arg0);
  i64 $8u_good3(i32 arg0) => _func02(arg0);
  i64 $8u_good4(i32 arg0) => _func03(arg0);
  i64 $8u_good5(i32 arg0) => _func04(arg0);
  i64 $8s_good1(i32 arg0) => _func05(arg0);
  i64 $8s_good2(i32 arg0) => _func06(arg0);
  i64 $8s_good3(i32 arg0) => _func07(arg0);
  i64 $8s_good4(i32 arg0) => _func08(arg0);
  i64 $8s_good5(i32 arg0) => _func09(arg0);
  i64 $16u_good1(i32 arg0) => _func10(arg0);
  i64 $16u_good2(i32 arg0) => _func11(arg0);
  i64 $16u_good3(i32 arg0) => _func12(arg0);
  i64 $16u_good4(i32 arg0) => _func13(arg0);
  i64 $16u_good5(i32 arg0) => _func14(arg0);
  i64 $16s_good1(i32 arg0) => _func15(arg0);
  i64 $16s_good2(i32 arg0) => _func16(arg0);
  i64 $16s_good3(i32 arg0) => _func17(arg0);
  i64 $16s_good4(i32 arg0) => _func18(arg0);
  i64 $16s_good5(i32 arg0) => _func19(arg0);
  i64 $32u_good1(i32 arg0) => _func20(arg0);
  i64 $32u_good2(i32 arg0) => _func21(arg0);
  i64 $32u_good3(i32 arg0) => _func22(arg0);
  i64 $32u_good4(i32 arg0) => _func23(arg0);
  i64 $32u_good5(i32 arg0) => _func24(arg0);
  i64 $32s_good1(i32 arg0) => _func25(arg0);
  i64 $32s_good2(i32 arg0) => _func26(arg0);
  i64 $32s_good3(i32 arg0) => _func27(arg0);
  i64 $32s_good4(i32 arg0) => _func28(arg0);
  i64 $32s_good5(i32 arg0) => _func29(arg0);
  i64 $64_good1(i32 arg0) => _func30(arg0);
  i64 $64_good2(i32 arg0) => _func31(arg0);
  i64 $64_good3(i32 arg0) => _func32(arg0);
  i64 $64_good4(i32 arg0) => _func33(arg0);
  i64 $64_good5(i32 arg0) => _func34(arg0);
  void $8u_bad(i32 arg0) => _func35(arg0);
  void $8s_bad(i32 arg0) => _func36(arg0);
  void $16u_bad(i32 arg0) => _func37(arg0);
  void $16s_bad(i32 arg0) => _func38(arg0);
  void $32u_bad(i32 arg0) => _func39(arg0);
  void $32s_bad(i32 arg0) => _func40(arg0);
  void $64_bad(i32 arg0) => _func41(arg0);

  i64 _func00(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load8_u(0, 0);
    return frame.pop();
  }

  i64 _func01(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load8_u(0, 0);
    return frame.pop();
  }

  i64 _func02(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load8_u(0, 1);
    return frame.pop();
  }

  i64 _func03(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load8_u(0, 2);
    return frame.pop();
  }

  i64 _func04(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load8_u(0, 25);
    return frame.pop();
  }

  i64 _func05(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load8_s(0, 0);
    return frame.pop();
  }

  i64 _func06(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load8_s(0, 0);
    return frame.pop();
  }

  i64 _func07(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load8_s(0, 1);
    return frame.pop();
  }

  i64 _func08(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load8_s(0, 2);
    return frame.pop();
  }

  i64 _func09(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load8_s(0, 25);
    return frame.pop();
  }

  i64 _func10(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load16_u(1, 0);
    return frame.pop();
  }

  i64 _func11(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load16_u(0, 0);
    return frame.pop();
  }

  i64 _func12(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load16_u(0, 1);
    return frame.pop();
  }

  i64 _func13(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load16_u(1, 2);
    return frame.pop();
  }

  i64 _func14(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load16_u(1, 25);
    return frame.pop();
  }

  i64 _func15(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load16_s(1, 0);
    return frame.pop();
  }

  i64 _func16(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load16_s(0, 0);
    return frame.pop();
  }

  i64 _func17(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load16_s(0, 1);
    return frame.pop();
  }

  i64 _func18(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load16_s(1, 2);
    return frame.pop();
  }

  i64 _func19(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load16_s(1, 25);
    return frame.pop();
  }

  i64 _func20(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load32_u(2, 0);
    return frame.pop();
  }

  i64 _func21(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load32_u(0, 0);
    return frame.pop();
  }

  i64 _func22(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load32_u(0, 1);
    return frame.pop();
  }

  i64 _func23(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load32_u(1, 2);
    return frame.pop();
  }

  i64 _func24(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load32_u(2, 25);
    return frame.pop();
  }

  i64 _func25(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load32_s(2, 0);
    return frame.pop();
  }

  i64 _func26(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load32_s(0, 0);
    return frame.pop();
  }

  i64 _func27(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load32_s(0, 1);
    return frame.pop();
  }

  i64 _func28(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load32_s(1, 2);
    return frame.pop();
  }

  i64 _func29(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load32_s(2, 25);
    return frame.pop();
  }

  i64 _func30(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load(3, 0);
    return frame.pop();
  }

  i64 _func31(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load(0, 0);
    return frame.pop();
  }

  i64 _func32(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load(0, 1);
    return frame.pop();
  }

  i64 _func33(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load(1, 2);
    return frame.pop();
  }

  i64 _func34(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load(3, 25);
    return frame.pop();
  }

  void _func35(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load8_u(0, 0xffffffff);
    frame.drop();
  }

  void _func36(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load8_s(0, 0xffffffff);
    frame.drop();
  }

  void _func37(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load16_u(1, 0xffffffff);
    frame.drop();
  }

  void _func38(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load16_s(1, 0xffffffff);
    frame.drop();
  }

  void _func39(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load32_u(2, 0xffffffff);
    frame.drop();
  }

  void _func40(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load32_s(2, 0xffffffff);
    frame.drop();
  }

  void _func41(i32 i) {
    final frame = Frame(this);
    frame.push(i);
    frame.i64_load(3, 0xffffffff);
    frame.drop();
  }
}

typedef FunctionType0 = i64 Function(i32);
typedef FunctionType1 = void Function(i32);

class DataSegments {
  final Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 =
      '\x61\x62\x63\x64\x65\x66\x67\x68\x69\x6A\x6B\x6C\x6D\x6E\x6F\x70\x71\x72\x73\x74\x75\x76\x77\x78\x79\x7A';

  void init(Memory memory) {
    memory.copyFrom(data0, 0, 0, data0.length);
  }
}
