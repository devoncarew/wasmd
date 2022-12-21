// Generated from test/wasm/address_0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:wasmd/runtime.dart';

import 'src/infra.dart';

void main() {
  group('address_0', () {
    final Module m = Module();

    returns('test_8u_good1_0', m.test_8u_good1_0, 97);
    returns('test_8u_good2_0', m.test_8u_good2_0, 97);
    returns('test_8u_good3_0', m.test_8u_good3_0, 98);
    returns('test_8u_good4_0', m.test_8u_good4_0, 99);
    returns('test_8u_good5_0', m.test_8u_good5_0, 122);
    returns('test_8s_good1_0', m.test_8s_good1_0, 97);
    returns('test_8s_good2_0', m.test_8s_good2_0, 97);
    returns('test_8s_good3_0', m.test_8s_good3_0, 98);
    returns('test_8s_good4_0', m.test_8s_good4_0, 99);
    returns('test_8s_good5_0', m.test_8s_good5_0, 122);
    returns('test_16u_good1_0', m.test_16u_good1_0, 0x6261);
    returns('test_16u_good2_0', m.test_16u_good2_0, 0x6261);
    returns('test_16u_good3_0', m.test_16u_good3_0, 0x6362);
    returns('test_16u_good4_0', m.test_16u_good4_0, 0x6463);
    returns('test_16u_good5_0', m.test_16u_good5_0, 122);
    returns('test_16s_good1_0', m.test_16s_good1_0, 0x6261);
    returns('test_16s_good2_0', m.test_16s_good2_0, 0x6261);
    returns('test_16s_good3_0', m.test_16s_good3_0, 0x6362);
    returns('test_16s_good4_0', m.test_16s_good4_0, 0x6463);
    returns('test_16s_good5_0', m.test_16s_good5_0, 122);
    returns('test_32_good1_0', m.test_32_good1_0, 0x64636261);
    returns('test_32_good2_0', m.test_32_good2_0, 0x64636261);
    returns('test_32_good3_0', m.test_32_good3_0, 0x65646362);
    returns('test_32_good4_0', m.test_32_good4_0, 0x66656463);
    returns('test_32_good5_0', m.test_32_good5_0, 122);
    returns('test_8u_good1_1', m.test_8u_good1_1, 0);
    returns('test_8u_good2_1', m.test_8u_good2_1, 0);
    returns('test_8u_good3_1', m.test_8u_good3_1, 0);
    returns('test_8u_good4_1', m.test_8u_good4_1, 0);
    returns('test_8u_good5_1', m.test_8u_good5_1, 0);
    returns('test_8s_good1_1', m.test_8s_good1_1, 0);
    returns('test_8s_good2_1', m.test_8s_good2_1, 0);
    returns('test_8s_good3_1', m.test_8s_good3_1, 0);
    returns('test_8s_good4_1', m.test_8s_good4_1, 0);
    returns('test_8s_good5_1', m.test_8s_good5_1, 0);
    returns('test_16u_good1_1', m.test_16u_good1_1, 0);
    returns('test_16u_good2_1', m.test_16u_good2_1, 0);
    returns('test_16u_good3_1', m.test_16u_good3_1, 0);
    returns('test_16u_good4_1', m.test_16u_good4_1, 0);
    returns('test_16u_good5_1', m.test_16u_good5_1, 0);
    returns('test_16s_good1_1', m.test_16s_good1_1, 0);
    returns('test_16s_good2_1', m.test_16s_good2_1, 0);
    returns('test_16s_good3_1', m.test_16s_good3_1, 0);
    returns('test_16s_good4_1', m.test_16s_good4_1, 0);
    returns('test_16s_good5_1', m.test_16s_good5_1, 0);
    returns('test_32_good1_1', m.test_32_good1_1, 0);
    returns('test_32_good2_1', m.test_32_good2_1, 0);
    returns('test_32_good3_1', m.test_32_good3_1, 0);
    returns('test_32_good4_1', m.test_32_good4_1, 0);
    returns('test_32_good5_1', m.test_32_good5_1, 0);
    returns('test_8u_good1_2', m.test_8u_good1_2, 0);
    returns('test_8u_good2_2', m.test_8u_good2_2, 0);
    returns('test_8u_good3_2', m.test_8u_good3_2, 0);
    returns('test_8u_good4_2', m.test_8u_good4_2, 0);
    returns('test_8u_good5_2', m.test_8u_good5_2, 0);
    returns('test_8s_good1_2', m.test_8s_good1_2, 0);
    returns('test_8s_good2_2', m.test_8s_good2_2, 0);
    returns('test_8s_good3_2', m.test_8s_good3_2, 0);
    returns('test_8s_good4_2', m.test_8s_good4_2, 0);
    returns('test_8s_good5_2', m.test_8s_good5_2, 0);
    returns('test_16u_good1_2', m.test_16u_good1_2, 0);
    returns('test_16u_good2_2', m.test_16u_good2_2, 0);
    returns('test_16u_good3_2', m.test_16u_good3_2, 0);
    returns('test_16u_good4_2', m.test_16u_good4_2, 0);
    returns('test_16u_good5_2', m.test_16u_good5_2, 0);
    returns('test_16s_good1_2', m.test_16s_good1_2, 0);
    returns('test_16s_good2_2', m.test_16s_good2_2, 0);
    returns('test_16s_good3_2', m.test_16s_good3_2, 0);
    returns('test_16s_good4_2', m.test_16s_good4_2, 0);
    returns('test_16s_good5_2', m.test_16s_good5_2, 0);
    returns('test_32_good1_2', m.test_32_good1_2, 0);
    returns('test_32_good2_2', m.test_32_good2_2, 0);
    returns('test_32_good3_2', m.test_32_good3_2, 0);
    returns('test_32_good4_2', m.test_32_good4_2, 0);
    traps('test_32_good5_2', m.test_32_good5_2, "out of bounds memory access");
    traps('test_8u_good3_3', m.test_8u_good3_3, "out of bounds memory access");
    traps('test_8s_good3_3', m.test_8s_good3_3, "out of bounds memory access");
    traps(
        'test_16u_good3_3', m.test_16u_good3_3, "out of bounds memory access");
    traps(
        'test_16s_good3_3', m.test_16s_good3_3, "out of bounds memory access");
    traps('test_32_good3_3', m.test_32_good3_3, "out of bounds memory access");
    traps('test_32_good3_4', m.test_32_good3_4, "out of bounds memory access");
    traps('test_8u_bad_0', m.test_8u_bad_0, "out of bounds memory access");
    traps('test_8s_bad_0', m.test_8s_bad_0, "out of bounds memory access");
    traps('test_16u_bad_0', m.test_16u_bad_0, "out of bounds memory access");
    traps('test_16s_bad_0', m.test_16s_bad_0, "out of bounds memory access");
    traps('test_32_bad_0', m.test_32_bad_0, "out of bounds memory access");
    traps('test_8u_bad_1', m.test_8u_bad_1, "out of bounds memory access");
    traps('test_8s_bad_1', m.test_8s_bad_1, "out of bounds memory access");
    traps('test_16u_bad_1', m.test_16u_bad_1, "out of bounds memory access");
    traps('test_16s_bad_1', m.test_16s_bad_1, "out of bounds memory access");
    traps('test_32_bad_1', m.test_32_bad_1, "out of bounds memory access");
  });
}

class Module {
  Module() {
    dataSegments.init(memory);
  }

  final Memory memory = Memory(1);

  final DataSegments dataSegments = DataSegments();

  i32 $8u_good1(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load8_u(0, 0);
    return frame.pop();
  }

  i32 $8u_good2(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load8_u(0, 0);
    return frame.pop();
  }

  i32 $8u_good3(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load8_u(0, 1);
    return frame.pop();
  }

  i32 $8u_good4(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load8_u(0, 2);
    return frame.pop();
  }

  i32 $8u_good5(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load8_u(0, 25);
    return frame.pop();
  }

  i32 $8s_good1(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load8_s(0, 0);
    return frame.pop();
  }

  i32 $8s_good2(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load8_s(0, 0);
    return frame.pop();
  }

  i32 $8s_good3(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load8_s(0, 1);
    return frame.pop();
  }

  i32 $8s_good4(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load8_s(0, 2);
    return frame.pop();
  }

  i32 $8s_good5(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load8_s(0, 25);
    return frame.pop();
  }

  i32 $16u_good1(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load16_u(1, 0);
    return frame.pop();
  }

  i32 $16u_good2(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load16_u(0, 0);
    return frame.pop();
  }

  i32 $16u_good3(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load16_u(0, 1);
    return frame.pop();
  }

  i32 $16u_good4(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load16_u(1, 2);
    return frame.pop();
  }

  i32 $16u_good5(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load16_u(1, 25);
    return frame.pop();
  }

  i32 $16s_good1(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load16_s(1, 0);
    return frame.pop();
  }

  i32 $16s_good2(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load16_s(0, 0);
    return frame.pop();
  }

  i32 $16s_good3(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load16_s(0, 1);
    return frame.pop();
  }

  i32 $16s_good4(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load16_s(1, 2);
    return frame.pop();
  }

  i32 $16s_good5(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load16_s(1, 25);
    return frame.pop();
  }

  i32 $32_good1(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load(2, 0);
    return frame.pop();
  }

  i32 $32_good2(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load(0, 0);
    return frame.pop();
  }

  i32 $32_good3(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load(0, 1);
    return frame.pop();
  }

  i32 $32_good4(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load(1, 2);
    return frame.pop();
  }

  i32 $32_good5(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load(2, 25);
    return frame.pop();
  }

  void $8u_bad(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load8_u(0, 0xffffffff);
    frame.drop();
  }

  void $8s_bad(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load8_s(0, 0xffffffff);
    frame.drop();
  }

  void $16u_bad(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load16_u(1, 0xffffffff);
    frame.drop();
  }

  void $16s_bad(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load16_s(1, 0xffffffff);
    frame.drop();
  }

  void $32_bad(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.i32_load(2, 0xffffffff);
    frame.drop();
  }

  i32 test_8u_good1_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($8u_good1(t0));
    }
    return frame.pop();
  }

  i32 test_8u_good2_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($8u_good2(t0));
    }
    return frame.pop();
  }

  i32 test_8u_good3_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($8u_good3(t0));
    }
    return frame.pop();
  }

  i32 test_8u_good4_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($8u_good4(t0));
    }
    return frame.pop();
  }

  i32 test_8u_good5_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($8u_good5(t0));
    }
    return frame.pop();
  }

  i32 test_8s_good1_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($8s_good1(t0));
    }
    return frame.pop();
  }

  i32 test_8s_good2_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($8s_good2(t0));
    }
    return frame.pop();
  }

  i32 test_8s_good3_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($8s_good3(t0));
    }
    return frame.pop();
  }

  i32 test_8s_good4_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($8s_good4(t0));
    }
    return frame.pop();
  }

  i32 test_8s_good5_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($8s_good5(t0));
    }
    return frame.pop();
  }

  i32 test_16u_good1_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($16u_good1(t0));
    }
    return frame.pop();
  }

  i32 test_16u_good2_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($16u_good2(t0));
    }
    return frame.pop();
  }

  i32 test_16u_good3_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($16u_good3(t0));
    }
    return frame.pop();
  }

  i32 test_16u_good4_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($16u_good4(t0));
    }
    return frame.pop();
  }

  i32 test_16u_good5_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($16u_good5(t0));
    }
    return frame.pop();
  }

  i32 test_16s_good1_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($16s_good1(t0));
    }
    return frame.pop();
  }

  i32 test_16s_good2_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($16s_good2(t0));
    }
    return frame.pop();
  }

  i32 test_16s_good3_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($16s_good3(t0));
    }
    return frame.pop();
  }

  i32 test_16s_good4_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($16s_good4(t0));
    }
    return frame.pop();
  }

  i32 test_16s_good5_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($16s_good5(t0));
    }
    return frame.pop();
  }

  i32 test_32_good1_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($32_good1(t0));
    }
    return frame.pop();
  }

  i32 test_32_good2_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($32_good2(t0));
    }
    return frame.pop();
  }

  i32 test_32_good3_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($32_good3(t0));
    }
    return frame.pop();
  }

  i32 test_32_good4_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($32_good4(t0));
    }
    return frame.pop();
  }

  i32 test_32_good5_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($32_good5(t0));
    }
    return frame.pop();
  }

  i32 test_8u_good1_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe3);
    {
      var t0 = frame.pop();
      frame.push($8u_good1(t0));
    }
    return frame.pop();
  }

  i32 test_8u_good2_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe3);
    {
      var t0 = frame.pop();
      frame.push($8u_good2(t0));
    }
    return frame.pop();
  }

  i32 test_8u_good3_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe3);
    {
      var t0 = frame.pop();
      frame.push($8u_good3(t0));
    }
    return frame.pop();
  }

  i32 test_8u_good4_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe3);
    {
      var t0 = frame.pop();
      frame.push($8u_good4(t0));
    }
    return frame.pop();
  }

  i32 test_8u_good5_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe3);
    {
      var t0 = frame.pop();
      frame.push($8u_good5(t0));
    }
    return frame.pop();
  }

  i32 test_8s_good1_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe3);
    {
      var t0 = frame.pop();
      frame.push($8s_good1(t0));
    }
    return frame.pop();
  }

  i32 test_8s_good2_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe3);
    {
      var t0 = frame.pop();
      frame.push($8s_good2(t0));
    }
    return frame.pop();
  }

  i32 test_8s_good3_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe3);
    {
      var t0 = frame.pop();
      frame.push($8s_good3(t0));
    }
    return frame.pop();
  }

  i32 test_8s_good4_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe3);
    {
      var t0 = frame.pop();
      frame.push($8s_good4(t0));
    }
    return frame.pop();
  }

  i32 test_8s_good5_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe3);
    {
      var t0 = frame.pop();
      frame.push($8s_good5(t0));
    }
    return frame.pop();
  }

  i32 test_16u_good1_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe3);
    {
      var t0 = frame.pop();
      frame.push($16u_good1(t0));
    }
    return frame.pop();
  }

  i32 test_16u_good2_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe3);
    {
      var t0 = frame.pop();
      frame.push($16u_good2(t0));
    }
    return frame.pop();
  }

  i32 test_16u_good3_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe3);
    {
      var t0 = frame.pop();
      frame.push($16u_good3(t0));
    }
    return frame.pop();
  }

  i32 test_16u_good4_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe3);
    {
      var t0 = frame.pop();
      frame.push($16u_good4(t0));
    }
    return frame.pop();
  }

  i32 test_16u_good5_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe3);
    {
      var t0 = frame.pop();
      frame.push($16u_good5(t0));
    }
    return frame.pop();
  }

  i32 test_16s_good1_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe3);
    {
      var t0 = frame.pop();
      frame.push($16s_good1(t0));
    }
    return frame.pop();
  }

  i32 test_16s_good2_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe3);
    {
      var t0 = frame.pop();
      frame.push($16s_good2(t0));
    }
    return frame.pop();
  }

  i32 test_16s_good3_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe3);
    {
      var t0 = frame.pop();
      frame.push($16s_good3(t0));
    }
    return frame.pop();
  }

  i32 test_16s_good4_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe3);
    {
      var t0 = frame.pop();
      frame.push($16s_good4(t0));
    }
    return frame.pop();
  }

  i32 test_16s_good5_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe3);
    {
      var t0 = frame.pop();
      frame.push($16s_good5(t0));
    }
    return frame.pop();
  }

  i32 test_32_good1_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe3);
    {
      var t0 = frame.pop();
      frame.push($32_good1(t0));
    }
    return frame.pop();
  }

  i32 test_32_good2_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe3);
    {
      var t0 = frame.pop();
      frame.push($32_good2(t0));
    }
    return frame.pop();
  }

  i32 test_32_good3_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe3);
    {
      var t0 = frame.pop();
      frame.push($32_good3(t0));
    }
    return frame.pop();
  }

  i32 test_32_good4_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe3);
    {
      var t0 = frame.pop();
      frame.push($32_good4(t0));
    }
    return frame.pop();
  }

  i32 test_32_good5_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe3);
    {
      var t0 = frame.pop();
      frame.push($32_good5(t0));
    }
    return frame.pop();
  }

  i32 test_8u_good1_2() {
    final frame = Frame(memory);
    frame.i32_const(0xffe4);
    {
      var t0 = frame.pop();
      frame.push($8u_good1(t0));
    }
    return frame.pop();
  }

  i32 test_8u_good2_2() {
    final frame = Frame(memory);
    frame.i32_const(0xffe4);
    {
      var t0 = frame.pop();
      frame.push($8u_good2(t0));
    }
    return frame.pop();
  }

  i32 test_8u_good3_2() {
    final frame = Frame(memory);
    frame.i32_const(0xffe4);
    {
      var t0 = frame.pop();
      frame.push($8u_good3(t0));
    }
    return frame.pop();
  }

  i32 test_8u_good4_2() {
    final frame = Frame(memory);
    frame.i32_const(0xffe4);
    {
      var t0 = frame.pop();
      frame.push($8u_good4(t0));
    }
    return frame.pop();
  }

  i32 test_8u_good5_2() {
    final frame = Frame(memory);
    frame.i32_const(0xffe4);
    {
      var t0 = frame.pop();
      frame.push($8u_good5(t0));
    }
    return frame.pop();
  }

  i32 test_8s_good1_2() {
    final frame = Frame(memory);
    frame.i32_const(0xffe4);
    {
      var t0 = frame.pop();
      frame.push($8s_good1(t0));
    }
    return frame.pop();
  }

  i32 test_8s_good2_2() {
    final frame = Frame(memory);
    frame.i32_const(0xffe4);
    {
      var t0 = frame.pop();
      frame.push($8s_good2(t0));
    }
    return frame.pop();
  }

  i32 test_8s_good3_2() {
    final frame = Frame(memory);
    frame.i32_const(0xffe4);
    {
      var t0 = frame.pop();
      frame.push($8s_good3(t0));
    }
    return frame.pop();
  }

  i32 test_8s_good4_2() {
    final frame = Frame(memory);
    frame.i32_const(0xffe4);
    {
      var t0 = frame.pop();
      frame.push($8s_good4(t0));
    }
    return frame.pop();
  }

  i32 test_8s_good5_2() {
    final frame = Frame(memory);
    frame.i32_const(0xffe4);
    {
      var t0 = frame.pop();
      frame.push($8s_good5(t0));
    }
    return frame.pop();
  }

  i32 test_16u_good1_2() {
    final frame = Frame(memory);
    frame.i32_const(0xffe4);
    {
      var t0 = frame.pop();
      frame.push($16u_good1(t0));
    }
    return frame.pop();
  }

  i32 test_16u_good2_2() {
    final frame = Frame(memory);
    frame.i32_const(0xffe4);
    {
      var t0 = frame.pop();
      frame.push($16u_good2(t0));
    }
    return frame.pop();
  }

  i32 test_16u_good3_2() {
    final frame = Frame(memory);
    frame.i32_const(0xffe4);
    {
      var t0 = frame.pop();
      frame.push($16u_good3(t0));
    }
    return frame.pop();
  }

  i32 test_16u_good4_2() {
    final frame = Frame(memory);
    frame.i32_const(0xffe4);
    {
      var t0 = frame.pop();
      frame.push($16u_good4(t0));
    }
    return frame.pop();
  }

  i32 test_16u_good5_2() {
    final frame = Frame(memory);
    frame.i32_const(0xffe4);
    {
      var t0 = frame.pop();
      frame.push($16u_good5(t0));
    }
    return frame.pop();
  }

  i32 test_16s_good1_2() {
    final frame = Frame(memory);
    frame.i32_const(0xffe4);
    {
      var t0 = frame.pop();
      frame.push($16s_good1(t0));
    }
    return frame.pop();
  }

  i32 test_16s_good2_2() {
    final frame = Frame(memory);
    frame.i32_const(0xffe4);
    {
      var t0 = frame.pop();
      frame.push($16s_good2(t0));
    }
    return frame.pop();
  }

  i32 test_16s_good3_2() {
    final frame = Frame(memory);
    frame.i32_const(0xffe4);
    {
      var t0 = frame.pop();
      frame.push($16s_good3(t0));
    }
    return frame.pop();
  }

  i32 test_16s_good4_2() {
    final frame = Frame(memory);
    frame.i32_const(0xffe4);
    {
      var t0 = frame.pop();
      frame.push($16s_good4(t0));
    }
    return frame.pop();
  }

  i32 test_16s_good5_2() {
    final frame = Frame(memory);
    frame.i32_const(0xffe4);
    {
      var t0 = frame.pop();
      frame.push($16s_good5(t0));
    }
    return frame.pop();
  }

  i32 test_32_good1_2() {
    final frame = Frame(memory);
    frame.i32_const(0xffe4);
    {
      var t0 = frame.pop();
      frame.push($32_good1(t0));
    }
    return frame.pop();
  }

  i32 test_32_good2_2() {
    final frame = Frame(memory);
    frame.i32_const(0xffe4);
    {
      var t0 = frame.pop();
      frame.push($32_good2(t0));
    }
    return frame.pop();
  }

  i32 test_32_good3_2() {
    final frame = Frame(memory);
    frame.i32_const(0xffe4);
    {
      var t0 = frame.pop();
      frame.push($32_good3(t0));
    }
    return frame.pop();
  }

  i32 test_32_good4_2() {
    final frame = Frame(memory);
    frame.i32_const(0xffe4);
    {
      var t0 = frame.pop();
      frame.push($32_good4(t0));
    }
    return frame.pop();
  }

  i32 test_32_good5_2() {
    final frame = Frame(memory);
    frame.i32_const(0xffe4);
    {
      var t0 = frame.pop();
      frame.push($32_good5(t0));
    }
    return frame.pop();
  }

  i32 test_8u_good3_3() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    {
      var t0 = frame.pop();
      frame.push($8u_good3(t0));
    }
    return frame.pop();
  }

  i32 test_8s_good3_3() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    {
      var t0 = frame.pop();
      frame.push($8s_good3(t0));
    }
    return frame.pop();
  }

  i32 test_16u_good3_3() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    {
      var t0 = frame.pop();
      frame.push($16u_good3(t0));
    }
    return frame.pop();
  }

  i32 test_16s_good3_3() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    {
      var t0 = frame.pop();
      frame.push($16s_good3(t0));
    }
    return frame.pop();
  }

  i32 test_32_good3_3() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    {
      var t0 = frame.pop();
      frame.push($32_good3(t0));
    }
    return frame.pop();
  }

  i32 test_32_good3_4() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    {
      var t0 = frame.pop();
      frame.push($32_good3(t0));
    }
    return frame.pop();
  }

  void test_8u_bad_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      $8u_bad(t0);
    }
  }

  void test_8s_bad_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      $8s_bad(t0);
    }
  }

  void test_16u_bad_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      $16u_bad(t0);
    }
  }

  void test_16s_bad_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      $16s_bad(t0);
    }
  }

  void test_32_bad_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      $32_bad(t0);
    }
  }

  void test_8u_bad_1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      $8u_bad(t0);
    }
  }

  void test_8s_bad_1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      $8s_bad(t0);
    }
  }

  void test_16u_bad_1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      $16u_bad(t0);
    }
  }

  void test_16s_bad_1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      $16s_bad(t0);
    }
  }

  void test_32_bad_1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      $32_bad(t0);
    }
  }
}

typedef FunctionType0 = i32 Function(i32);
typedef FunctionType1 = void Function(i32);
typedef FunctionType2 = i32 Function();
typedef FunctionType3 = void Function();

class DataSegments {
  Uint8List data0 = decodeDataLiteral(_hex0);

  Uint8List trap_32_good5_2 = decodeDataLiteral(_hex1);

  Uint8List trap_8u_good3_3 = decodeDataLiteral(_hex2);

  Uint8List trap_8s_good3_3 = decodeDataLiteral(_hex3);

  Uint8List trap_16u_good3_3 = decodeDataLiteral(_hex4);

  Uint8List trap_16s_good3_3 = decodeDataLiteral(_hex5);

  Uint8List trap_32_good3_3 = decodeDataLiteral(_hex6);

  Uint8List trap_32_good3_4 = decodeDataLiteral(_hex7);

  Uint8List trap_8u_bad_0 = decodeDataLiteral(_hex8);

  Uint8List trap_8s_bad_0 = decodeDataLiteral(_hex9);

  Uint8List trap_16u_bad_0 = decodeDataLiteral(_hex10);

  Uint8List trap_16s_bad_0 = decodeDataLiteral(_hex11);

  Uint8List trap_32_bad_0 = decodeDataLiteral(_hex12);

  Uint8List trap_8u_bad_1 = decodeDataLiteral(_hex13);

  Uint8List trap_8s_bad_1 = decodeDataLiteral(_hex14);

  Uint8List trap_16u_bad_1 = decodeDataLiteral(_hex15);

  Uint8List trap_16s_bad_1 = decodeDataLiteral(_hex16);

  Uint8List trap_32_bad_1 = decodeDataLiteral(_hex17);

  static const String _hex0 =
      '\x61\x62\x63\x64\x65\x66\x67\x68\x69\x6A\x6B\x6C\x6D\x6E\x6F\x70\x71\x72'
      '\x73\x74\x75\x76\x77\x78\x79\x7A';

  static const String _hex1 =
      '\x6F\x75\x74\x20\x6F\x66\x20\x62\x6F\x75\x6E\x64\x73\x20\x6D\x65\x6D\x6F'
      '\x72\x79\x20\x61\x63\x63\x65\x73\x73';

  static const String _hex2 =
      '\x6F\x75\x74\x20\x6F\x66\x20\x62\x6F\x75\x6E\x64\x73\x20\x6D\x65\x6D\x6F'
      '\x72\x79\x20\x61\x63\x63\x65\x73\x73';

  static const String _hex3 =
      '\x6F\x75\x74\x20\x6F\x66\x20\x62\x6F\x75\x6E\x64\x73\x20\x6D\x65\x6D\x6F'
      '\x72\x79\x20\x61\x63\x63\x65\x73\x73';

  static const String _hex4 =
      '\x6F\x75\x74\x20\x6F\x66\x20\x62\x6F\x75\x6E\x64\x73\x20\x6D\x65\x6D\x6F'
      '\x72\x79\x20\x61\x63\x63\x65\x73\x73';

  static const String _hex5 =
      '\x6F\x75\x74\x20\x6F\x66\x20\x62\x6F\x75\x6E\x64\x73\x20\x6D\x65\x6D\x6F'
      '\x72\x79\x20\x61\x63\x63\x65\x73\x73';

  static const String _hex6 =
      '\x6F\x75\x74\x20\x6F\x66\x20\x62\x6F\x75\x6E\x64\x73\x20\x6D\x65\x6D\x6F'
      '\x72\x79\x20\x61\x63\x63\x65\x73\x73';

  static const String _hex7 =
      '\x6F\x75\x74\x20\x6F\x66\x20\x62\x6F\x75\x6E\x64\x73\x20\x6D\x65\x6D\x6F'
      '\x72\x79\x20\x61\x63\x63\x65\x73\x73';

  static const String _hex8 =
      '\x6F\x75\x74\x20\x6F\x66\x20\x62\x6F\x75\x6E\x64\x73\x20\x6D\x65\x6D\x6F'
      '\x72\x79\x20\x61\x63\x63\x65\x73\x73';

  static const String _hex9 =
      '\x6F\x75\x74\x20\x6F\x66\x20\x62\x6F\x75\x6E\x64\x73\x20\x6D\x65\x6D\x6F'
      '\x72\x79\x20\x61\x63\x63\x65\x73\x73';

  static const String _hex10 =
      '\x6F\x75\x74\x20\x6F\x66\x20\x62\x6F\x75\x6E\x64\x73\x20\x6D\x65\x6D\x6F'
      '\x72\x79\x20\x61\x63\x63\x65\x73\x73';

  static const String _hex11 =
      '\x6F\x75\x74\x20\x6F\x66\x20\x62\x6F\x75\x6E\x64\x73\x20\x6D\x65\x6D\x6F'
      '\x72\x79\x20\x61\x63\x63\x65\x73\x73';

  static const String _hex12 =
      '\x6F\x75\x74\x20\x6F\x66\x20\x62\x6F\x75\x6E\x64\x73\x20\x6D\x65\x6D\x6F'
      '\x72\x79\x20\x61\x63\x63\x65\x73\x73';

  static const String _hex13 =
      '\x6F\x75\x74\x20\x6F\x66\x20\x62\x6F\x75\x6E\x64\x73\x20\x6D\x65\x6D\x6F'
      '\x72\x79\x20\x61\x63\x63\x65\x73\x73';

  static const String _hex14 =
      '\x6F\x75\x74\x20\x6F\x66\x20\x62\x6F\x75\x6E\x64\x73\x20\x6D\x65\x6D\x6F'
      '\x72\x79\x20\x61\x63\x63\x65\x73\x73';

  static const String _hex15 =
      '\x6F\x75\x74\x20\x6F\x66\x20\x62\x6F\x75\x6E\x64\x73\x20\x6D\x65\x6D\x6F'
      '\x72\x79\x20\x61\x63\x63\x65\x73\x73';

  static const String _hex16 =
      '\x6F\x75\x74\x20\x6F\x66\x20\x62\x6F\x75\x6E\x64\x73\x20\x6D\x65\x6D\x6F'
      '\x72\x79\x20\x61\x63\x63\x65\x73\x73';

  static const String _hex17 =
      '\x6F\x75\x74\x20\x6F\x66\x20\x62\x6F\x75\x6E\x64\x73\x20\x6D\x65\x6D\x6F'
      '\x72\x79\x20\x61\x63\x63\x65\x73\x73';

  void init(Memory memory) {
    memory.copyTo(data0, 0);
  }
}
