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

    returns('32_good1_0', m.test_32_good1_0, 0.0);
    returns('32_good2_0', m.test_32_good2_0, 0.0);
    returns('32_good3_0', m.test_32_good3_0, 0.0);
    returns('32_good4_0', m.test_32_good4_0, 0.0);
    returns('32_good5_0', m.test_32_good5_0, double.nan);
    returns('32_good1_1', m.test_32_good1_1, 0.0);
    returns('32_good2_1', m.test_32_good2_1, 0.0);
    returns('32_good3_1', m.test_32_good3_1, 0.0);
    returns('32_good4_1', m.test_32_good4_1, 0.0);
    returns('32_good5_1', m.test_32_good5_1, 0.0);
    returns('32_good1_2', m.test_32_good1_2, 0.0);
    returns('32_good2_2', m.test_32_good2_2, 0.0);
    returns('32_good3_2', m.test_32_good3_2, 0.0);
    returns('32_good4_2', m.test_32_good4_2, 0.0);
    traps('32_good5_2', m.test_32_good5_2, "out of bounds memory access");
    traps('32_good3_3', m.test_32_good3_3, "out of bounds memory access");
    traps('32_good3_4', m.test_32_good3_4, "out of bounds memory access");
    traps('32_bad_0', m.test_32_bad_0, "out of bounds memory access");
    traps('32_bad_1', m.test_32_bad_1, "out of bounds memory access");
  });
}

class Module {
  Module() {
    dataSegments.init(memory);
  }

  final Memory memory = Memory(1);

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

  f32 test_32_good5_2() {
    final frame = Frame(memory);
    frame.i32_const(0xfff5);
    {
      var t0 = frame.pop();
      frame.push($32_good5(t0));
    }
    return frame.pop();
  }

  f32 test_32_good3_3() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    {
      var t0 = frame.pop();
      frame.push($32_good3(t0));
    }
    return frame.pop();
  }

  f32 test_32_good3_4() {
    final frame = Frame(memory);
    frame.i32_const(-1);
    {
      var t0 = frame.pop();
      frame.push($32_good3(t0));
    }
    return frame.pop();
  }

  void test_32_bad_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      $32_bad(t0);
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

typedef FunctionType0 = f32 Function(i32);
typedef FunctionType1 = void Function(i32);
typedef FunctionType2 = f32 Function();
typedef FunctionType3 = void Function();

class DataSegments {
  Uint8List data0 = decodeDataLiteral(_hex0);

  Uint8List trap_32_good5_2 = decodeDataLiteral(_hex1);

  Uint8List trap_32_good3_3 = decodeDataLiteral(_hex2);

  Uint8List trap_32_good3_4 = decodeDataLiteral(_hex3);

  Uint8List trap_32_bad_0 = decodeDataLiteral(_hex4);

  Uint8List trap_32_bad_1 = decodeDataLiteral(_hex5);

  static const String _hex0 =
      '\x00\x00\x00\x00\x00\x00\xA0\x7F\x01\x00\xD0\x7F';

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

  void init(Memory memory) {
    memory.copyTo(data0, 0);
  }
}
