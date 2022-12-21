// Generated from test/wasm/address_3.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:wasmd/runtime.dart';

import 'src/infra.dart';

void main() {
  group('address_3', () {
    final Module m = Module();
    final Globals g = m.globals;

    returns('test_64_good1_0', g.expect_64_good1_0, m.test_64_good1_0);
    returns('test_64_good2_0', g.expect_64_good2_0, m.test_64_good2_0);
    returns('test_64_good3_0', g.expect_64_good3_0, m.test_64_good3_0);
    returns('test_64_good4_0', g.expect_64_good4_0, m.test_64_good4_0);
    returns('test_64_good5_0', g.expect_64_good5_0, m.test_64_good5_0);
    returns('test_64_good1_1', g.expect_64_good1_1, m.test_64_good1_1);
    returns('test_64_good2_1', g.expect_64_good2_1, m.test_64_good2_1);
    returns('test_64_good3_1', g.expect_64_good3_1, m.test_64_good3_1);
    returns('test_64_good4_1', g.expect_64_good4_1, m.test_64_good4_1);
    returns('test_64_good5_1', g.expect_64_good5_1, m.test_64_good5_1);
    returns('test_64_good1_2', g.expect_64_good1_2, m.test_64_good1_2);
    returns('test_64_good2_2', g.expect_64_good2_2, m.test_64_good2_2);
    returns('test_64_good3_2', g.expect_64_good3_2, m.test_64_good3_2);
    returns('test_64_good4_2', g.expect_64_good4_2, m.test_64_good4_2);
  });
}

class Module {
  Module() {
    dataSegments.init(memory);
  }

  final Memory memory = Memory(1);

  final Globals globals = Globals();

  final DataSegments dataSegments = DataSegments();

  f64 $64_good1(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.f64_load(3, 0);
    return frame.pop();
  }

  f64 $64_good2(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.f64_load(0, 0);
    return frame.pop();
  }

  f64 $64_good3(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.f64_load(0, 1);
    return frame.pop();
  }

  f64 $64_good4(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.f64_load(1, 2);
    return frame.pop();
  }

  f64 $64_good5(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.f64_load(3, 18);
    return frame.pop();
  }

  void $64_bad(i32 i) {
    final frame = Frame(memory);
    frame.push(i);
    frame.f64_load(3, 0xffffffff);
    frame.drop();
  }

  f64 test_64_good1_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($64_good1(t0));
    }
    return frame.pop();
  }

  f64 test_64_good2_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($64_good2(t0));
    }
    return frame.pop();
  }

  f64 test_64_good3_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($64_good3(t0));
    }
    return frame.pop();
  }

  f64 test_64_good4_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($64_good4(t0));
    }
    return frame.pop();
  }

  f64 test_64_good5_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      frame.push($64_good5(t0));
    }
    return frame.pop();
  }

  f64 test_64_good1_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe6);
    {
      var t0 = frame.pop();
      frame.push($64_good1(t0));
    }
    return frame.pop();
  }

  f64 test_64_good2_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe6);
    {
      var t0 = frame.pop();
      frame.push($64_good2(t0));
    }
    return frame.pop();
  }

  f64 test_64_good3_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe6);
    {
      var t0 = frame.pop();
      frame.push($64_good3(t0));
    }
    return frame.pop();
  }

  f64 test_64_good4_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe6);
    {
      var t0 = frame.pop();
      frame.push($64_good4(t0));
    }
    return frame.pop();
  }

  f64 test_64_good5_1() {
    final frame = Frame(memory);
    frame.i32_const(0xffe6);
    {
      var t0 = frame.pop();
      frame.push($64_good5(t0));
    }
    return frame.pop();
  }

  f64 test_64_good1_2() {
    final frame = Frame(memory);
    frame.i32_const(0xffe7);
    {
      var t0 = frame.pop();
      frame.push($64_good1(t0));
    }
    return frame.pop();
  }

  f64 test_64_good2_2() {
    final frame = Frame(memory);
    frame.i32_const(0xffe7);
    {
      var t0 = frame.pop();
      frame.push($64_good2(t0));
    }
    return frame.pop();
  }

  f64 test_64_good3_2() {
    final frame = Frame(memory);
    frame.i32_const(0xffe7);
    {
      var t0 = frame.pop();
      frame.push($64_good3(t0));
    }
    return frame.pop();
  }

  f64 test_64_good4_2() {
    final frame = Frame(memory);
    frame.i32_const(0xffe7);
    {
      var t0 = frame.pop();
      frame.push($64_good4(t0));
    }
    return frame.pop();
  }
}

typedef FunctionType0 = f64 Function(i32);
typedef FunctionType1 = void Function(i32);
typedef FunctionType2 = f64 Function();

class Globals {
  final f64 expect_64_good1_0 = _initExpect_64_good1_0();

  final f64 expect_64_good2_0 = _initExpect_64_good2_0();

  final f64 expect_64_good3_0 = _initExpect_64_good3_0();

  final f64 expect_64_good4_0 = _initExpect_64_good4_0();

  final f64 expect_64_good5_0 = _initExpect_64_good5_0();

  final f64 expect_64_good1_1 = _initExpect_64_good1_1();

  final f64 expect_64_good2_1 = _initExpect_64_good2_1();

  final f64 expect_64_good3_1 = _initExpect_64_good3_1();

  final f64 expect_64_good4_1 = _initExpect_64_good4_1();

  final f64 expect_64_good5_1 = _initExpect_64_good5_1();

  final f64 expect_64_good1_2 = _initExpect_64_good1_2();

  final f64 expect_64_good2_2 = _initExpect_64_good2_2();

  final f64 expect_64_good3_2 = _initExpect_64_good3_2();

  final f64 expect_64_good4_2 = _initExpect_64_good4_2();

  static final Memory memory = Memory(0);

  static f64 _initExpect_64_good1_0() {
    final frame = Frame(memory);
    frame.f64_const(0.0);
    return frame.pop();
  }

  static f64 _initExpect_64_good2_0() {
    final frame = Frame(memory);
    frame.f64_const(0.0);
    return frame.pop();
  }

  static f64 _initExpect_64_good3_0() {
    final frame = Frame(memory);
    frame.f64_const(0.0);
    return frame.pop();
  }

  static f64 _initExpect_64_good4_0() {
    final frame = Frame(memory);
    frame.f64_const(0.0);
    return frame.pop();
  }

  static f64 _initExpect_64_good5_0() {
    final frame = Frame(memory);
    frame.f64_const(double.nan);
    return frame.pop();
  }

  static f64 _initExpect_64_good1_1() {
    final frame = Frame(memory);
    frame.f64_const(0.0);
    return frame.pop();
  }

  static f64 _initExpect_64_good2_1() {
    final frame = Frame(memory);
    frame.f64_const(0.0);
    return frame.pop();
  }

  static f64 _initExpect_64_good3_1() {
    final frame = Frame(memory);
    frame.f64_const(0.0);
    return frame.pop();
  }

  static f64 _initExpect_64_good4_1() {
    final frame = Frame(memory);
    frame.f64_const(0.0);
    return frame.pop();
  }

  static f64 _initExpect_64_good5_1() {
    final frame = Frame(memory);
    frame.f64_const(0.0);
    return frame.pop();
  }

  static f64 _initExpect_64_good1_2() {
    final frame = Frame(memory);
    frame.f64_const(0.0);
    return frame.pop();
  }

  static f64 _initExpect_64_good2_2() {
    final frame = Frame(memory);
    frame.f64_const(0.0);
    return frame.pop();
  }

  static f64 _initExpect_64_good3_2() {
    final frame = Frame(memory);
    frame.f64_const(0.0);
    return frame.pop();
  }

  static f64 _initExpect_64_good4_2() {
    final frame = Frame(memory);
    frame.f64_const(0.0);
    return frame.pop();
  }
}

class DataSegments {
  Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 =
      '\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xF4\x7F'
      '\x01\x00\x00\x00\x00\x00\xFC\x7F';

  void init(Memory memory) {
    memory.copyTo(data0, 0);
  }
}
