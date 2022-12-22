// Generated from test/wasm/bulk_3.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:wasmd/runtime.dart';

import 'src/infra.dart';

void main() {
  group('bulk_3', () {
    final Module m = Module();

    invoke('invoke_init_passive_0', m.invoke_init_passive_0);
    invoke('invoke_drop_passive_0', m.invoke_drop_passive_0);
    invoke('invoke_drop_passive_1', m.invoke_drop_passive_1);
    returns('test_init_passive_1', m.test_init_passive_1);
    traps('test_init_passive_2', m.test_init_passive_2,
        "out of bounds memory access");
    invoke('invoke_init_passive_3', m.invoke_init_passive_3);
    invoke('invoke_drop_active_0', m.invoke_drop_active_0);
    returns('test_init_active_0', m.test_init_active_0);
    traps('test_init_active_1', m.test_init_active_1,
        "out of bounds memory access");
    invoke('invoke_init_active_2', m.invoke_init_active_2);
  });
}

class Module {
  Module() {
    dataSegments.init(memory);
  }

  final Memory memory = Memory(1);

  final DataSegments dataSegments = DataSegments();

  void drop_passive() {
    final frame = Frame(memory);
    throw 'unreachable (0xFC)';
  }

  void init_passive(i32 len) {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0);
    frame.push(len);
    throw 'unreachable (0xFC)';
  }

  void drop_active() {
    final frame = Frame(memory);
    throw 'unreachable (0xFC)';
  }

  void init_active(i32 len) {
    final frame = Frame(memory);
    frame.i32_const(0);
    frame.i32_const(0);
    frame.push(len);
    throw 'unreachable (0xFC)';
  }

  void invoke_init_passive_0() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      init_passive(t0);
    }
  }

  void invoke_drop_passive_0() {
    final frame = Frame(memory);
    drop_passive();
  }

  void invoke_drop_passive_1() {
    final frame = Frame(memory);
    drop_passive();
  }

  void test_init_passive_1() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      init_passive(t0);
    }
  }

  void test_init_passive_2() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      init_passive(t0);
    }
  }

  void invoke_init_passive_3() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      init_passive(t0);
    }
  }

  void invoke_drop_active_0() {
    final frame = Frame(memory);
    drop_active();
  }

  void test_init_active_0() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      init_active(t0);
    }
  }

  void test_init_active_1() {
    final frame = Frame(memory);
    frame.i32_const(1);
    {
      var t0 = frame.pop();
      init_active(t0);
    }
  }

  void invoke_init_active_2() {
    final frame = Frame(memory);
    frame.i32_const(0);
    {
      var t0 = frame.pop();
      init_active(t0);
    }
  }
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = void Function(i32);

class DataSegments {
  Uint8List p = decodeDataLiteral(_hex0);

  Uint8List a = decodeDataLiteral(_hex1);

  Uint8List trap_init_passive_2 = decodeDataLiteral(_hex2);

  Uint8List trap_init_active_1 = decodeDataLiteral(_hex3);

  static const String _hex0 = '\x78';

  static const String _hex1 = '\x78';

  static const String _hex2 =
      '\x6F\x75\x74\x20\x6F\x66\x20\x62\x6F\x75\x6E\x64\x73\x20\x6D\x65\x6D\x6F'
      '\x72\x79\x20\x61\x63\x63\x65\x73\x73';

  static const String _hex3 =
      '\x6F\x75\x74\x20\x6F\x66\x20\x62\x6F\x75\x6E\x64\x73\x20\x6D\x65\x6D\x6F'
      '\x72\x79\x20\x61\x63\x63\x65\x73\x73';

  void init(Memory memory) {
    memory.copyTo(a, 0);
  }
}
