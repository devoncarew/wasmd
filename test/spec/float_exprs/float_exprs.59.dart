// Generated from test/spec/float_exprs/float_exprs.59.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs59Module implements Module {
  FloatExprs59Module() {
    _data.init(memory);
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(
    1,
    1,
  );

  final DataSegments _data = DataSegments();

  @override
  late final List<Table> tables = [];

  void f32_simple_x4_sum(i32 arg0, i32 arg1, i32 arg2) => _func0(arg0, arg1, arg2);
  f32 f32_load(i32 arg0) => _func1(arg0);

  void _func0(i32 i, i32 j, i32 k) {
    f32 x0 = 0;
    f32 x1 = 0;
    f32 x2 = 0;
    f32 x3 = 0;
    f32 y0 = 0;
    f32 y1 = 0;
    f32 y2 = 0;
    f32 y3 = 0;

    var t0 = vm.f32_load(2, 0, i);
    x0 = t0;
    var t1 = vm.f32_load(2, 4, i);
    x1 = t1;
    var t2 = vm.f32_load(2, 8, i);
    x2 = t2;
    var t3 = vm.f32_load(2, 12, i);
    x3 = t3;
    var t4 = vm.f32_load(2, 0, j);
    y0 = t4;
    var t5 = vm.f32_load(2, 4, j);
    y1 = t5;
    var t6 = vm.f32_load(2, 8, j);
    y2 = t6;
    var t7 = vm.f32_load(2, 12, j);
    y3 = t7;
    var t8 = vm.f32_add(x0, y0);
    vm.f32_store(2, 0, k, t8);
    var t9 = vm.f32_add(x1, y1);
    vm.f32_store(2, 4, k, t9);
    var t10 = vm.f32_add(x2, y2);
    vm.f32_store(2, 8, k, t10);
    var t11 = vm.f32_add(x3, y3);
    vm.f32_store(2, 12, k, t11);
  }

  f32 _func1(i32 k) {
    var t0 = vm.f32_load(2, 0, k);
    return t0;
  }
}

typedef FunctionType0 = void Function(i32, i32, i32);
typedef FunctionType1 = f32 Function(i32);

class DataSegments {
  final Uint8List data0 = decodeDataLiteral(_hex0);

  static const String _hex0 =
      '\x01\x00\x00\x00\x01\x00\x00\x80\x01\x00\x00\x00\x01\x00\x00\x80\x01\x00\x00\x00\x01\x00\x00\x00\x00\x00'
      '\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00';

  void init(Memory memory) {
    memory.copyFrom(data0, 0, 0, data0.length);
  }
}
