// Generated from test/wasm/address_2.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:wasmd/runtime.dart';

import 'src/infra.dart';

void main() {
  group('address_2', () {
    final Module m = Module();
    final Globals g = m.globals;

    returns('test_32_good1_0', g.expect_32_good1_0, m.test_32_good1_0);
    returns('test_32_good2_0', g.expect_32_good2_0, m.test_32_good2_0);
    returns('test_32_good3_0', g.expect_32_good3_0, m.test_32_good3_0);
    returns('test_32_good4_0', g.expect_32_good4_0, m.test_32_good4_0);
    returns('test_32_good5_0', g.expect_32_good5_0, m.test_32_good5_0);
    returns('test_32_good1_1', g.expect_32_good1_1, m.test_32_good1_1);
    returns('test_32_good2_1', g.expect_32_good2_1, m.test_32_good2_1);
    returns('test_32_good3_1', g.expect_32_good3_1, m.test_32_good3_1);
    returns('test_32_good4_1', g.expect_32_good4_1, m.test_32_good4_1);
    returns('test_32_good5_1', g.expect_32_good5_1, m.test_32_good5_1);
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

  f32 $32_good1(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.f32_load(2, 0);
    return frame.pop();
  }

  f32 $32_good2(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.f32_load(0, 0);
    return frame.pop();
  }

  f32 $32_good3(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.f32_load(0, 1);
    return frame.pop();
  }

  f32 $32_good4(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.f32_load(1, 2);
    return frame.pop();
  }

  f32 $32_good5(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.f32_load(2, 8);
    return frame.pop();
  }

  void $32_bad(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.f32_load(2, 0xffffffff);
    frame.drop();
  }

  f32 test_32_good1_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($32_good1(t0));
    }
    return frame.pop();
  }

  f32 test_32_good2_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($32_good2(t0));
    }
    return frame.pop();
  }

  f32 test_32_good3_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($32_good3(t0));
    }
    return frame.pop();
  }

  f32 test_32_good4_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($32_good4(t0));
    }
    return frame.pop();
  }

  f32 test_32_good5_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($32_good5(t0));
    }
    return frame.pop();
  }

  f32 test_32_good1_1() {
    final frame = Frame(memory);
    frame.i32_const(0xfff4);
    {
      var t0 = frame.pop();
      frame.push($32_good1(t0));
    }
    return frame.pop();
  }

  f32 test_32_good2_1() {
    final frame = Frame(memory);
    frame.i32_const(0xfff4);
    {
      var t0 = frame.pop();
      frame.push($32_good2(t0));
    }
    return frame.pop();
  }

  f32 test_32_good3_1() {
    final frame = Frame(memory);
    frame.i32_const(0xfff4);
    {
      var t0 = frame.pop();
      frame.push($32_good3(t0));
    }
    return frame.pop();
  }

  f32 test_32_good4_1() {
    final frame = Frame(memory);
    frame.i32_const(0xfff4);
    {
      var t0 = frame.pop();
      frame.push($32_good4(t0));
    }
    return frame.pop();
  }

  f32 test_32_good5_1() {
    final frame = Frame(memory);
    frame.i32_const(0xfff4);
    {
      var t0 = frame.pop();
      frame.push($32_good5(t0));
    }
    return frame.pop();
  }

  f32 test_32_good1_2() {
    final frame = Frame(memory);
    frame.i32_const(0xfff5);
    {
      var t0 = frame.pop();
      frame.push($32_good1(t0));
    }
    return frame.pop();
  }

  f32 test_32_good2_2() {
    final frame = Frame(memory);
    frame.i32_const(0xfff5);
    {
      var t0 = frame.pop();
      frame.push($32_good2(t0));
    }
    return frame.pop();
  }

  f32 test_32_good3_2() {
    final frame = Frame(memory);
    frame.i32_const(0xfff5);
    {
      var t0 = frame.pop();
      frame.push($32_good3(t0));
    }
    return frame.pop();
  }

  f32 test_32_good4_2() {
    final frame = Frame(memory);
    frame.i32_const(0xfff5);
    {
      var t0 = frame.pop();
      frame.push($32_good4(t0));
    }
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function(i32);
typedef FunctionType1 = void Function(i32);
typedef FunctionType2 = f32 Function();

class Globals {
  final f32 expect_32_good1_0 = _initExpect_32_good1_0();

  final f32 expect_32_good2_0 = _initExpect_32_good2_0();

  final f32 expect_32_good3_0 = _initExpect_32_good3_0();

  final f32 expect_32_good4_0 = _initExpect_32_good4_0();

  final f32 expect_32_good5_0 = _initExpect_32_good5_0();

  final f32 expect_32_good1_1 = _initExpect_32_good1_1();

  final f32 expect_32_good2_1 = _initExpect_32_good2_1();

  final f32 expect_32_good3_1 = _initExpect_32_good3_1();

  final f32 expect_32_good4_1 = _initExpect_32_good4_1();

  final f32 expect_32_good5_1 = _initExpect_32_good5_1();

  final f32 expect_32_good1_2 = _initExpect_32_good1_2();

  final f32 expect_32_good2_2 = _initExpect_32_good2_2();

  final f32 expect_32_good3_2 = _initExpect_32_good3_2();

  final f32 expect_32_good4_2 = _initExpect_32_good4_2();

  static final Memory memory = Memory(0);

  static f32 _initExpect_32_good1_0() {
    final frame = Frame(memory);
    frame.f32_const(0.0);
    return frame.pop();
  }

  static f32 _initExpect_32_good2_0() {
    final frame = Frame(memory);
    frame.f32_const(0.0);
    return frame.pop();
  }

  static f32 _initExpect_32_good3_0() {
    final frame = Frame(memory);
    frame.f32_const(0.0);
    return frame.pop();
  }

  static f32 _initExpect_32_good4_0() {
    final frame = Frame(memory);
    frame.f32_const(0.0);
    return frame.pop();
  }

  static f32 _initExpect_32_good5_0() {
    final frame = Frame(memory);
    frame.f32_const(double.nan);
    return frame.pop();
  }

  static f32 _initExpect_32_good1_1() {
    final frame = Frame(memory);
    frame.f32_const(0.0);
    return frame.pop();
  }

  static f32 _initExpect_32_good2_1() {
    final frame = Frame(memory);
    frame.f32_const(0.0);
    return frame.pop();
  }

  static f32 _initExpect_32_good3_1() {
    final frame = Frame(memory);
    frame.f32_const(0.0);
    return frame.pop();
  }

  static f32 _initExpect_32_good4_1() {
    final frame = Frame(memory);
    frame.f32_const(0.0);
    return frame.pop();
  }

  static f32 _initExpect_32_good5_1() {
    final frame = Frame(memory);
    frame.f32_const(0.0);
    return frame.pop();
  }

  static f32 _initExpect_32_good1_2() {
    final frame = Frame(memory);
    frame.f32_const(0.0);
    return frame.pop();
  }

  static f32 _initExpect_32_good2_2() {
    final frame = Frame(memory);
    frame.f32_const(0.0);
    return frame.pop();
  }

  static f32 _initExpect_32_good3_2() {
    final frame = Frame(memory);
    frame.f32_const(0.0);
    return frame.pop();
  }

  static f32 _initExpect_32_good4_2() {
    final frame = Frame(memory);
    frame.f32_const(0.0);
    return frame.pop();
  }
}

class DataSegments {
  Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 =
      '\x00\x00\x00\x00\x00\x00\xA0\x7F\x01\x00\xD0\x7F';

  void init(Memory memory) {
    memory.copyTo(data0, 0);
  }
}
