// Generated from test/wasm/float_memory_4.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:wasmd/runtime.dart';

import 'src/infra.dart';

void main() {
  group('float_memory_4', () {
    final Module m = Module();

    returns('test_i32_load_0', m.test_i32_load_0, 0x7fd00001);
    returns('test_f32_load_0', m.test_f32_load_0, double.nan);
    m.test_invoke_reset_0();
    returns('test_i32_load_1', m.test_i32_load_1, 0);
    returns('test_f32_load_1', m.test_f32_load_1, 0.0);
    m.test_invoke_f32_store_0();
    returns('test_i32_load_2', m.test_i32_load_2, 0x7fd00001);
    returns('test_f32_load_2', m.test_f32_load_2, double.nan);
    m.test_invoke_reset_1();
    returns('test_i32_load_3', m.test_i32_load_3, 0);
    returns('test_f32_load_3', m.test_f32_load_3, 0.0);
    m.test_invoke_i32_store_0();
    returns('test_i32_load_4', m.test_i32_load_4, 0x7fd00001);
    returns('test_f32_load_4', m.test_f32_load_4, double.nan);
  });
}

class Module {
  Module() {
    dataSegments.init(memory);
  }

  final Memory memory = Memory(
    1,
    1,
  );

  final DataSegments dataSegments = DataSegments();

  f32 f32_load() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.f32_load(2, 0);
    return frame.pop();
  }

  i32 i32_load() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    return frame.pop();
  }

  void f32_store() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.f32_const(double.nan);
    frame.f32_store(2, 0);
  }

  void i32_store() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0x7fd00001);
    frame.i32_store(2, 0);
  }

  void reset() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0);
    frame.i32_store(2, 0);
  }

  i32 test_i32_load_0() {
    final frame = Frame(memory);
    frame.push(i32_load());
    return frame.pop();
  }

  f32 test_f32_load_0() {
    final frame = Frame(memory);
    frame.push(f32_load());
    return frame.pop();
  }

  void test_invoke_reset_0() {
    final frame = Frame(memory);
    reset();
  }

  i32 test_i32_load_1() {
    final frame = Frame(memory);
    frame.push(i32_load());
    return frame.pop();
  }

  f32 test_f32_load_1() {
    final frame = Frame(memory);
    frame.push(f32_load());
    return frame.pop();
  }

  void test_invoke_f32_store_0() {
    final frame = Frame(memory);
    f32_store();
  }

  i32 test_i32_load_2() {
    final frame = Frame(memory);
    frame.push(i32_load());
    return frame.pop();
  }

  f32 test_f32_load_2() {
    final frame = Frame(memory);
    frame.push(f32_load());
    return frame.pop();
  }

  void test_invoke_reset_1() {
    final frame = Frame(memory);
    reset();
  }

  i32 test_i32_load_3() {
    final frame = Frame(memory);
    frame.push(i32_load());
    return frame.pop();
  }

  f32 test_f32_load_3() {
    final frame = Frame(memory);
    frame.push(f32_load());
    return frame.pop();
  }

  void test_invoke_i32_store_0() {
    final frame = Frame(memory);
    i32_store();
  }

  i32 test_i32_load_4() {
    final frame = Frame(memory);
    frame.push(i32_load());
    return frame.pop();
  }

  f32 test_f32_load_4() {
    final frame = Frame(memory);
    frame.push(f32_load());
    return frame.pop();
  }
}

typedef FunctionType0 = f32 Function();
typedef FunctionType1 = i32 Function();
typedef FunctionType2 = void Function();

class DataSegments {
  Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 = '\x01\x00\xD0\x7F';

  void init(Memory memory) {
    memory.copyTo(data0, 0);
  }
}
