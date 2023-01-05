// Generated from test/spec/float_exprs/float_exprs.60.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class FloatExprs60Module implements Module {
  FloatExprs60Module() {
    _data.init(memory);
  }

  @override
  final Memory memory = Memory(
    1,
    1,
  );

  final DataSegments _data = DataSegments();

  @override
  late final List<Table> tables = [];

  f64 f64_load(i32 k) {
    final frame = Frame(this);
    frame.push(k);
    frame.f64_load(3, 0);
    return frame.pop();
  }

  void f64_simple_x4_sum(i32 i, i32 j, i32 k) {
    f64 x0 = 0;
    f64 x1 = 0;
    f64 x2 = 0;
    f64 x3 = 0;
    f64 y0 = 0;
    f64 y1 = 0;
    f64 y2 = 0;
    f64 y3 = 0;

    final frame = Frame(this);
    frame.push(i);
    frame.f64_load(3, 0);
    x0 = frame.pop();
    frame.push(i);
    frame.f64_load(3, 8);
    x1 = frame.pop();
    frame.push(i);
    frame.f64_load(3, 16);
    x2 = frame.pop();
    frame.push(i);
    frame.f64_load(3, 24);
    x3 = frame.pop();
    frame.push(j);
    frame.f64_load(3, 0);
    y0 = frame.pop();
    frame.push(j);
    frame.f64_load(3, 8);
    y1 = frame.pop();
    frame.push(j);
    frame.f64_load(3, 16);
    y2 = frame.pop();
    frame.push(j);
    frame.f64_load(3, 24);
    y3 = frame.pop();
    frame.push(k);
    frame.push(x0);
    frame.push(y0);
    frame.f64_add();
    frame.f64_store(3, 0);
    frame.push(k);
    frame.push(x1);
    frame.push(y1);
    frame.f64_add();
    frame.f64_store(3, 8);
    frame.push(k);
    frame.push(x2);
    frame.push(y2);
    frame.f64_add();
    frame.f64_store(3, 16);
    frame.push(k);
    frame.push(x3);
    frame.push(y3);
    frame.f64_add();
    frame.f64_store(3, 24);
  }
}

typedef FunctionType0 = void Function(i32, i32, i32);
typedef FunctionType1 = f64 Function(i32);

class DataSegments {
  final Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 =
      '\x01\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x80\x01\x00\x00\x00\x00\x00\x00\x00\x01\x00'
      '\x00\x00\x00\x00\x00\x80\x01\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00'
      '\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00'
      '\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00';

  void init(Memory memory) {
    memory.copyFrom(data0, 0, 0, data0.length);
  }
}
