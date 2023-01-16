// Generated from test/spec/float_exprs/float_exprs.60.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class FloatExprs60Module implements Module {
  FloatExprs60Module() {
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

  void f64_simple_x4_sum(i32 arg0, i32 arg1, i32 arg2) => _func0(arg0, arg1, arg2);
  f64 f64_load(i32 arg0) => _func1(arg0);

  void _func0(i32 i, i32 j, i32 k) {
    f64 x0 = 0;
    f64 x1 = 0;
    f64 x2 = 0;
    f64 x3 = 0;
    f64 y0 = 0;
    f64 y1 = 0;
    f64 y2 = 0;
    f64 y3 = 0;

    var t0 = vm.f64_load(3, 0, i);
    x0 = t0;
    var t1 = vm.f64_load(3, 8, i);
    x1 = t1;
    var t2 = vm.f64_load(3, 16, i);
    x2 = t2;
    var t3 = vm.f64_load(3, 24, i);
    x3 = t3;
    var t4 = vm.f64_load(3, 0, j);
    y0 = t4;
    var t5 = vm.f64_load(3, 8, j);
    y1 = t5;
    var t6 = vm.f64_load(3, 16, j);
    y2 = t6;
    var t7 = vm.f64_load(3, 24, j);
    y3 = t7;
    var t8 = vm.f64_add(x0, y0);
    var t9 = vm.f64_store(3, 0, k, t8);
    var t10 = vm.f64_add(x1, y1);
    var t11 = vm.f64_store(3, 8, k, t10);
    var t12 = vm.f64_add(x2, y2);
    var t13 = vm.f64_store(3, 16, k, t12);
    var t14 = vm.f64_add(x3, y3);
    var t15 = vm.f64_store(3, 24, k, t14);
  }

  f64 _func1(i32 k) {
    var t0 = vm.f64_load(3, 0, k);
    return t0;
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
