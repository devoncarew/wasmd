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
    final Globals g = m.globals;

    returns('test_8u_good1_0', g.expect_8u_good1_0, m.test_8u_good1_0);
    returns('test_8u_good2_0', g.expect_8u_good2_0, m.test_8u_good2_0);
    returns('test_8u_good3_0', g.expect_8u_good3_0, m.test_8u_good3_0);
    returns('test_8u_good4_0', g.expect_8u_good4_0, m.test_8u_good4_0);
    returns('test_8u_good5_0', g.expect_8u_good5_0, m.test_8u_good5_0);
    returns('test_8s_good1_0', g.expect_8s_good1_0, m.test_8s_good1_0);
    returns('test_8s_good2_0', g.expect_8s_good2_0, m.test_8s_good2_0);
    returns('test_8s_good3_0', g.expect_8s_good3_0, m.test_8s_good3_0);
    returns('test_8s_good4_0', g.expect_8s_good4_0, m.test_8s_good4_0);
    returns('test_8s_good5_0', g.expect_8s_good5_0, m.test_8s_good5_0);
    returns('test_16u_good1_0', g.expect_16u_good1_0, m.test_16u_good1_0);
    returns('test_16u_good2_0', g.expect_16u_good2_0, m.test_16u_good2_0);
    returns('test_16u_good3_0', g.expect_16u_good3_0, m.test_16u_good3_0);
    returns('test_16u_good4_0', g.expect_16u_good4_0, m.test_16u_good4_0);
    returns('test_16u_good5_0', g.expect_16u_good5_0, m.test_16u_good5_0);
    returns('test_16s_good1_0', g.expect_16s_good1_0, m.test_16s_good1_0);
    returns('test_16s_good2_0', g.expect_16s_good2_0, m.test_16s_good2_0);
    returns('test_16s_good3_0', g.expect_16s_good3_0, m.test_16s_good3_0);
    returns('test_16s_good4_0', g.expect_16s_good4_0, m.test_16s_good4_0);
    returns('test_16s_good5_0', g.expect_16s_good5_0, m.test_16s_good5_0);
    returns('test_32_good1_0', g.expect_32_good1_0, m.test_32_good1_0);
    returns('test_32_good2_0', g.expect_32_good2_0, m.test_32_good2_0);
    returns('test_32_good3_0', g.expect_32_good3_0, m.test_32_good3_0);
    returns('test_32_good4_0', g.expect_32_good4_0, m.test_32_good4_0);
    returns('test_32_good5_0', g.expect_32_good5_0, m.test_32_good5_0);
    returns('test_8u_good1_1', g.expect_8u_good1_1, m.test_8u_good1_1);
    returns('test_8u_good2_1', g.expect_8u_good2_1, m.test_8u_good2_1);
    returns('test_8u_good3_1', g.expect_8u_good3_1, m.test_8u_good3_1);
    returns('test_8u_good4_1', g.expect_8u_good4_1, m.test_8u_good4_1);
    returns('test_8u_good5_1', g.expect_8u_good5_1, m.test_8u_good5_1);
    returns('test_8s_good1_1', g.expect_8s_good1_1, m.test_8s_good1_1);
    returns('test_8s_good2_1', g.expect_8s_good2_1, m.test_8s_good2_1);
    returns('test_8s_good3_1', g.expect_8s_good3_1, m.test_8s_good3_1);
    returns('test_8s_good4_1', g.expect_8s_good4_1, m.test_8s_good4_1);
    returns('test_8s_good5_1', g.expect_8s_good5_1, m.test_8s_good5_1);
    returns('test_16u_good1_1', g.expect_16u_good1_1, m.test_16u_good1_1);
    returns('test_16u_good2_1', g.expect_16u_good2_1, m.test_16u_good2_1);
    returns('test_16u_good3_1', g.expect_16u_good3_1, m.test_16u_good3_1);
    returns('test_16u_good4_1', g.expect_16u_good4_1, m.test_16u_good4_1);
    returns('test_16u_good5_1', g.expect_16u_good5_1, m.test_16u_good5_1);
    returns('test_16s_good1_1', g.expect_16s_good1_1, m.test_16s_good1_1);
    returns('test_16s_good2_1', g.expect_16s_good2_1, m.test_16s_good2_1);
    returns('test_16s_good3_1', g.expect_16s_good3_1, m.test_16s_good3_1);
    returns('test_16s_good4_1', g.expect_16s_good4_1, m.test_16s_good4_1);
    returns('test_16s_good5_1', g.expect_16s_good5_1, m.test_16s_good5_1);
    returns('test_32_good1_1', g.expect_32_good1_1, m.test_32_good1_1);
    returns('test_32_good2_1', g.expect_32_good2_1, m.test_32_good2_1);
    returns('test_32_good3_1', g.expect_32_good3_1, m.test_32_good3_1);
    returns('test_32_good4_1', g.expect_32_good4_1, m.test_32_good4_1);
    returns('test_32_good5_1', g.expect_32_good5_1, m.test_32_good5_1);
    returns('test_8u_good1_2', g.expect_8u_good1_2, m.test_8u_good1_2);
    returns('test_8u_good2_2', g.expect_8u_good2_2, m.test_8u_good2_2);
    returns('test_8u_good3_2', g.expect_8u_good3_2, m.test_8u_good3_2);
    returns('test_8u_good4_2', g.expect_8u_good4_2, m.test_8u_good4_2);
    returns('test_8u_good5_2', g.expect_8u_good5_2, m.test_8u_good5_2);
    returns('test_8s_good1_2', g.expect_8s_good1_2, m.test_8s_good1_2);
    returns('test_8s_good2_2', g.expect_8s_good2_2, m.test_8s_good2_2);
    returns('test_8s_good3_2', g.expect_8s_good3_2, m.test_8s_good3_2);
    returns('test_8s_good4_2', g.expect_8s_good4_2, m.test_8s_good4_2);
    returns('test_8s_good5_2', g.expect_8s_good5_2, m.test_8s_good5_2);
    returns('test_16u_good1_2', g.expect_16u_good1_2, m.test_16u_good1_2);
    returns('test_16u_good2_2', g.expect_16u_good2_2, m.test_16u_good2_2);
    returns('test_16u_good3_2', g.expect_16u_good3_2, m.test_16u_good3_2);
    returns('test_16u_good4_2', g.expect_16u_good4_2, m.test_16u_good4_2);
    returns('test_16u_good5_2', g.expect_16u_good5_2, m.test_16u_good5_2);
    returns('test_16s_good1_2', g.expect_16s_good1_2, m.test_16s_good1_2);
    returns('test_16s_good2_2', g.expect_16s_good2_2, m.test_16s_good2_2);
    returns('test_16s_good3_2', g.expect_16s_good3_2, m.test_16s_good3_2);
    returns('test_16s_good4_2', g.expect_16s_good4_2, m.test_16s_good4_2);
    returns('test_16s_good5_2', g.expect_16s_good5_2, m.test_16s_good5_2);
    returns('test_32_good1_2', g.expect_32_good1_2, m.test_32_good1_2);
    returns('test_32_good2_2', g.expect_32_good2_2, m.test_32_good2_2);
    returns('test_32_good3_2', g.expect_32_good3_2, m.test_32_good3_2);
    returns('test_32_good4_2', g.expect_32_good4_2, m.test_32_good4_2);
  });
}

class Module {
  Module() {
    dataSegments.init(memory);
  }

  final Memory memory = Memory(1);

  final Globals globals = Globals();

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
}

typedef FunctionType0 = i32 Function(i32);
typedef FunctionType1 = void Function(i32);
typedef FunctionType2 = i32 Function();

class Globals {
  final i32 expect_8u_good1_0 = 97;

  final i32 expect_8u_good2_0 = 97;

  final i32 expect_8u_good3_0 = 98;

  final i32 expect_8u_good4_0 = 99;

  final i32 expect_8u_good5_0 = 122;

  final i32 expect_8s_good1_0 = 97;

  final i32 expect_8s_good2_0 = 97;

  final i32 expect_8s_good3_0 = 98;

  final i32 expect_8s_good4_0 = 99;

  final i32 expect_8s_good5_0 = 122;

  final i32 expect_16u_good1_0 = 0x6261;

  final i32 expect_16u_good2_0 = 0x6261;

  final i32 expect_16u_good3_0 = 0x6362;

  final i32 expect_16u_good4_0 = 0x6463;

  final i32 expect_16u_good5_0 = 122;

  final i32 expect_16s_good1_0 = 0x6261;

  final i32 expect_16s_good2_0 = 0x6261;

  final i32 expect_16s_good3_0 = 0x6362;

  final i32 expect_16s_good4_0 = 0x6463;

  final i32 expect_16s_good5_0 = 122;

  final i32 expect_32_good1_0 = 0x64636261;

  final i32 expect_32_good2_0 = 0x64636261;

  final i32 expect_32_good3_0 = 0x65646362;

  final i32 expect_32_good4_0 = 0x66656463;

  final i32 expect_32_good5_0 = 122;

  final i32 expect_8u_good1_1 = 0;

  final i32 expect_8u_good2_1 = 0;

  final i32 expect_8u_good3_1 = 0;

  final i32 expect_8u_good4_1 = 0;

  final i32 expect_8u_good5_1 = 0;

  final i32 expect_8s_good1_1 = 0;

  final i32 expect_8s_good2_1 = 0;

  final i32 expect_8s_good3_1 = 0;

  final i32 expect_8s_good4_1 = 0;

  final i32 expect_8s_good5_1 = 0;

  final i32 expect_16u_good1_1 = 0;

  final i32 expect_16u_good2_1 = 0;

  final i32 expect_16u_good3_1 = 0;

  final i32 expect_16u_good4_1 = 0;

  final i32 expect_16u_good5_1 = 0;

  final i32 expect_16s_good1_1 = 0;

  final i32 expect_16s_good2_1 = 0;

  final i32 expect_16s_good3_1 = 0;

  final i32 expect_16s_good4_1 = 0;

  final i32 expect_16s_good5_1 = 0;

  final i32 expect_32_good1_1 = 0;

  final i32 expect_32_good2_1 = 0;

  final i32 expect_32_good3_1 = 0;

  final i32 expect_32_good4_1 = 0;

  final i32 expect_32_good5_1 = 0;

  final i32 expect_8u_good1_2 = 0;

  final i32 expect_8u_good2_2 = 0;

  final i32 expect_8u_good3_2 = 0;

  final i32 expect_8u_good4_2 = 0;

  final i32 expect_8u_good5_2 = 0;

  final i32 expect_8s_good1_2 = 0;

  final i32 expect_8s_good2_2 = 0;

  final i32 expect_8s_good3_2 = 0;

  final i32 expect_8s_good4_2 = 0;

  final i32 expect_8s_good5_2 = 0;

  final i32 expect_16u_good1_2 = 0;

  final i32 expect_16u_good2_2 = 0;

  final i32 expect_16u_good3_2 = 0;

  final i32 expect_16u_good4_2 = 0;

  final i32 expect_16u_good5_2 = 0;

  final i32 expect_16s_good1_2 = 0;

  final i32 expect_16s_good2_2 = 0;

  final i32 expect_16s_good3_2 = 0;

  final i32 expect_16s_good4_2 = 0;

  final i32 expect_16s_good5_2 = 0;

  final i32 expect_32_good1_2 = 0;

  final i32 expect_32_good2_2 = 0;

  final i32 expect_32_good3_2 = 0;

  final i32 expect_32_good4_2 = 0;
}

class DataSegments {
  Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 =
      '\x61\x62\x63\x64\x65\x66\x67\x68\x69\x6A\x6B\x6C\x6D\x6E\x6F\x70\x71\x72'
      '\x73\x74\x75\x76\x77\x78\x79\x7A';

  void init(Memory memory) {
    memory.copyTo(data0, 0);
  }
}
