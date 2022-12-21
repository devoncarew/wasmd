// Generated from test/wasm/memory_grow_0.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:wasmd/runtime.dart';

import 'src/infra.dart';

void main() {
  group('memory_grow_0', () {
    final Module m = Module();

    returns('test_size_0', m.test_size_0, 0);
    traps('test_store_at_zero_0', m.test_store_at_zero_0,
        "out of bounds memory access");
    traps('test_load_at_zero_0', m.test_load_at_zero_0,
        "out of bounds memory access");
    traps('test_store_at_page_size_0', m.test_store_at_page_size_0,
        "out of bounds memory access");
    traps('test_load_at_page_size_0', m.test_load_at_page_size_0,
        "out of bounds memory access");
    returns('test_grow_0', m.test_grow_0, 0);
    returns('test_size_1', m.test_size_1, 1);
    returns('test_load_at_zero_1', m.test_load_at_zero_1, 0);
    returns('test_store_at_zero_1', m.test_store_at_zero_1);
    returns('test_load_at_zero_2', m.test_load_at_zero_2, 2);
    traps('test_store_at_page_size_1', m.test_store_at_page_size_1,
        "out of bounds memory access");
    traps('test_load_at_page_size_1', m.test_load_at_page_size_1,
        "out of bounds memory access");
    returns('test_grow_1', m.test_grow_1, 1);
    returns('test_size_2', m.test_size_2, 5);
    returns('test_load_at_zero_3', m.test_load_at_zero_3, 2);
    returns('test_store_at_zero_2', m.test_store_at_zero_2);
    returns('test_load_at_zero_4', m.test_load_at_zero_4, 2);
    returns('test_load_at_page_size_2', m.test_load_at_page_size_2, 0);
    returns('test_store_at_page_size_2', m.test_store_at_page_size_2);
    returns('test_load_at_page_size_3', m.test_load_at_page_size_3, 3);
  });
}

class Module {
  Module() {
    dataSegments.init(memory);
  }

  final Memory memory = Memory(0);

  final DataSegments dataSegments = DataSegments();

  i32 load_at_zero() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_load(2, 0);
    return frame.pop();
  }

  void store_at_zero() {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(2);
    frame.i32_store(2, 0);
  }

  i32 load_at_page_size() {
    final frame = Frame(memory);
    frame.i32_const(0x10000);
    frame.i32_load(2, 0);
    return frame.pop();
  }

  void store_at_page_size() {
    final frame = Frame(memory);
    frame.i32_const(0x10000);
    frame.i32_const(3);
    frame.i32_store(2, 0);
  }

  i32 grow(i32 sz) {
    final frame = Frame(memory);
    frame.push(sz);
    frame.memory_grow(0);
    return frame.pop();
  }

  i32 size() {
    final frame = Frame(memory);
    frame.memory_size(0);
    return frame.pop();
  }

  i32 test_size_0() {
    final frame = Frame(memory);
    frame.push(size());
    return frame.pop();
  }

  void test_store_at_zero_0() {
    final frame = Frame(memory);
    store_at_zero();
  }

  i32 test_load_at_zero_0() {
    final frame = Frame(memory);
    frame.push(load_at_zero());
    return frame.pop();
  }

  void test_store_at_page_size_0() {
    final frame = Frame(memory);
    store_at_page_size();
  }

  i32 test_load_at_page_size_0() {
    final frame = Frame(memory);
    frame.push(load_at_page_size());
    return frame.pop();
  }

  i32 test_grow_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      frame.push(grow(t0));
    }
    return frame.pop();
  }

  i32 test_size_1() {
    final frame = Frame(memory);
    frame.push(size());
    return frame.pop();
  }

  i32 test_load_at_zero_1() {
    final frame = Frame(memory);
    frame.push(load_at_zero());
    return frame.pop();
  }

  void test_store_at_zero_1() {
    final frame = Frame(memory);
    store_at_zero();
  }

  i32 test_load_at_zero_2() {
    final frame = Frame(memory);
    frame.push(load_at_zero());
    return frame.pop();
  }

  void test_store_at_page_size_1() {
    final frame = Frame(memory);
    store_at_page_size();
  }

  i32 test_load_at_page_size_1() {
    final frame = Frame(memory);
    frame.push(load_at_page_size());
    return frame.pop();
  }

  i32 test_grow_1() {
    final frame = Frame(memory);
    frame.i32_const(4);
    {
      var t0 = frame.pop();
      frame.push(grow(t0));
    }
    return frame.pop();
  }

  i32 test_size_2() {
    final frame = Frame(memory);
    frame.push(size());
    return frame.pop();
  }

  i32 test_load_at_zero_3() {
    final frame = Frame(memory);
    frame.push(load_at_zero());
    return frame.pop();
  }

  void test_store_at_zero_2() {
    final frame = Frame(memory);
    store_at_zero();
  }

  i32 test_load_at_zero_4() {
    final frame = Frame(memory);
    frame.push(load_at_zero());
    return frame.pop();
  }

  i32 test_load_at_page_size_2() {
    final frame = Frame(memory);
    frame.push(load_at_page_size());
    return frame.pop();
  }

  void test_store_at_page_size_2() {
    final frame = Frame(memory);
    store_at_page_size();
  }

  i32 test_load_at_page_size_3() {
    final frame = Frame(memory);
    frame.push(load_at_page_size());
    return frame.pop();
  }
}

typedef FunctionType0 = i32 Function();
typedef FunctionType1 = void Function();
typedef FunctionType2 = i32 Function(i32);

class DataSegments {
  Uint8List trap_store_at_zero_0 = decodeDataLiteral(_hex0);

  Uint8List trap_load_at_zero_0 = decodeDataLiteral(_hex1);

  Uint8List trap_store_at_page_size_0 = decodeDataLiteral(_hex2);

  Uint8List trap_load_at_page_size_0 = decodeDataLiteral(_hex3);

  Uint8List trap_store_at_page_size_1 = decodeDataLiteral(_hex4);

  Uint8List trap_load_at_page_size_1 = decodeDataLiteral(_hex5);

  static const String _hex0 =
      '\x6F\x75\x74\x20\x6F\x66\x20\x62\x6F\x75\x6E\x64\x73\x20\x6D\x65\x6D\x6F'
      '\x72\x79\x20\x61\x63\x63\x65\x73\x73';

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

  void init(Memory memory) {}
}
