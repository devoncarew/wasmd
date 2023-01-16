// Generated from test/spec/address/address.3.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

class Address3Module extends Module {
  Address3Module() {
    dataSegments.init(memory);
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(1);

  @override
  final DataSegments dataSegments = DataSegments();

  @override
  late final List<Table> tables = [];

  f32 $32_good1(i32 arg0) => _func0(arg0);
  f32 $32_good2(i32 arg0) => _func1(arg0);
  f32 $32_good3(i32 arg0) => _func2(arg0);
  f32 $32_good4(i32 arg0) => _func3(arg0);
  f32 $32_good5(i32 arg0) => _func4(arg0);
  void $32_bad(i32 arg0) => _func5(arg0);

  f32 _func0(i32 i) {
    var t0 = vm.f32_load(2, 0, i);
    return t0;
  }

  f32 _func1(i32 i) {
    var t0 = vm.f32_load(0, 0, i);
    return t0;
  }

  f32 _func2(i32 i) {
    var t0 = vm.f32_load(0, 1, i);
    return t0;
  }

  f32 _func3(i32 i) {
    var t0 = vm.f32_load(1, 2, i);
    return t0;
  }

  f32 _func4(i32 i) {
    var t0 = vm.f32_load(2, 8, i);
    return t0;
  }

  void _func5(i32 i) {
    var t0 = vm.f32_load(2, 0xffffffff, i);
  }
}

typedef FunctionType0 = f32 Function(i32);
typedef FunctionType1 = void Function(i32);

class DataSegments extends AbstractDataSegments {
  final Uint8List data0 = decodeDataLiteral(_hex0);

  @override
  late final List<Uint8List> data = [data0];

  static const String _hex0 = '\x00\x00\x00\x00\x00\x00\xA0\x7F\x01\x00\xD0\x7F';

  void init(Memory memory) {
    memory.copyFrom(data0, 0, 0, data0.length);
  }
}
