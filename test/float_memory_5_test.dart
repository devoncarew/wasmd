// Generated from test/wasm/float_memory_5.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:wasmd/runtime.dart';

import 'src/infra.dart';

void main() {
  group('float_memory_5', () {
    final Module m = Module();

    returns('test_i64_load_0', m.test_i64_load_0, 0x7ffc000000000001);
    returns('test_f64_load_0', m.test_f64_load_0, double.nan);
    invoke('invoke_reset_0', m.invoke_reset_0);
    returns('test_i64_load_1', m.test_i64_load_1, 0);
    returns('test_f64_load_1', m.test_f64_load_1, 0.0);
    invoke('invoke_f64_store_0', m.invoke_f64_store_0);
    returns('test_i64_load_2', m.test_i64_load_2, 0x7ffc000000000001);
    returns('test_f64_load_2', m.test_f64_load_2, double.nan);
    invoke('invoke_reset_1', m.invoke_reset_1);
    returns('test_i64_load_3', m.test_i64_load_3, 0);
    returns('test_f64_load_3', m.test_f64_load_3, 0.0);
    invoke('invoke_i64_store_0', m.invoke_i64_store_0);
    returns('test_i64_load_4', m.test_i64_load_4, 0x7ffc000000000001);
    returns('test_f64_load_4', m.test_f64_load_4, double.nan);
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

  f64 f64_load() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.f64_load(3, 0);
    return frame.pop();
  }

  i64 i64_load() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i64_load(3, 0);
    return frame.pop();
  }

  void f64_store() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.f64_const(double.nan);
    frame.f64_store(3, 0);
  }

  void i64_store() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i64_const(0x7ffc000000000001);
    frame.i64_store(3, 0);
  }

  void reset() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i64_const(0);
    frame.i64_store(3, 0);
  }

  i64 test_i64_load_0() {
    final frame = Frame(memory);
    frame.push(i64_load());
    return frame.pop();
  }

  f64 test_f64_load_0() {
    final frame = Frame(memory);
    frame.push(f64_load());
    return frame.pop();
  }

  void invoke_reset_0() {
    final frame = Frame(memory);
    reset();
  }

  i64 test_i64_load_1() {
    final frame = Frame(memory);
    frame.push(i64_load());
    return frame.pop();
  }

  f64 test_f64_load_1() {
    final frame = Frame(memory);
    frame.push(f64_load());
    return frame.pop();
  }

  void invoke_f64_store_0() {
    final frame = Frame(memory);
    f64_store();
  }

  i64 test_i64_load_2() {
    final frame = Frame(memory);
    frame.push(i64_load());
    return frame.pop();
  }

  f64 test_f64_load_2() {
    final frame = Frame(memory);
    frame.push(f64_load());
    return frame.pop();
  }

  void invoke_reset_1() {
    final frame = Frame(memory);
    reset();
  }

  i64 test_i64_load_3() {
    final frame = Frame(memory);
    frame.push(i64_load());
    return frame.pop();
  }

  f64 test_f64_load_3() {
    final frame = Frame(memory);
    frame.push(f64_load());
    return frame.pop();
  }

  void invoke_i64_store_0() {
    final frame = Frame(memory);
    i64_store();
  }

  i64 test_i64_load_4() {
    final frame = Frame(memory);
    frame.push(i64_load());
    return frame.pop();
  }

  f64 test_f64_load_4() {
    final frame = Frame(memory);
    frame.push(f64_load());
    return frame.pop();
  }
}

typedef FunctionType0 = f64 Function();
typedef FunctionType1 = i64 Function();
typedef FunctionType2 = void Function();

class DataSegments {
  Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 = '\x01\x00\x00\x00\x00\x00\xFC\x7F';

  void init(Memory memory) {
    memory.copyTo(data0, 0);
  }
}
