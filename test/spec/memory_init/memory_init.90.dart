// Generated from test/spec/memory_init/memory_init.90.wasm.

// ignore_for_file: camel_case_types, dead_code, non_constant_identifier_names
// ignore_for_file: unused_element, unused_label, unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';

class MemoryInit90Module implements Module {
  MemoryInit90Module() {
    dataSegments.init(memory);
  }

  @override
  final Memory memory = Memory(1);

  final DataSegments dataSegments = DataSegments();

  @override
  late final List<Table> tables = [];

  void _func0() {
    final frame = Frame(this);
    frame.i32_const(0);
    frame.i32_const(0);
    frame.i32_const(0);
    {
      i32 count = frame.pop() as i32;
      i32 sourceOffset = frame.pop() as i32;
      i32 destOffset = frame.pop() as i32;
      memory.copyFrom(dataSegments.data64, sourceOffset, destOffset, count);
    }
  }
}

typedef FunctionType0 = void Function();

class DataSegments {
  Uint8List data0 = decodeDataLiteral(_hex0);

  Uint8List data1 = decodeDataLiteral(_hex1);

  Uint8List data2 = decodeDataLiteral(_hex2);

  Uint8List data3 = decodeDataLiteral(_hex3);

  Uint8List data4 = decodeDataLiteral(_hex4);

  Uint8List data5 = decodeDataLiteral(_hex5);

  Uint8List data6 = decodeDataLiteral(_hex6);

  Uint8List data7 = decodeDataLiteral(_hex7);

  Uint8List data8 = decodeDataLiteral(_hex8);

  Uint8List data9 = decodeDataLiteral(_hex9);

  Uint8List data10 = decodeDataLiteral(_hex10);

  Uint8List data11 = decodeDataLiteral(_hex11);

  Uint8List data12 = decodeDataLiteral(_hex12);

  Uint8List data13 = decodeDataLiteral(_hex13);

  Uint8List data14 = decodeDataLiteral(_hex14);

  Uint8List data15 = decodeDataLiteral(_hex15);

  Uint8List data16 = decodeDataLiteral(_hex16);

  Uint8List data17 = decodeDataLiteral(_hex17);

  Uint8List data18 = decodeDataLiteral(_hex18);

  Uint8List data19 = decodeDataLiteral(_hex19);

  Uint8List data20 = decodeDataLiteral(_hex20);

  Uint8List data21 = decodeDataLiteral(_hex21);

  Uint8List data22 = decodeDataLiteral(_hex22);

  Uint8List data23 = decodeDataLiteral(_hex23);

  Uint8List data24 = decodeDataLiteral(_hex24);

  Uint8List data25 = decodeDataLiteral(_hex25);

  Uint8List data26 = decodeDataLiteral(_hex26);

  Uint8List data27 = decodeDataLiteral(_hex27);

  Uint8List data28 = decodeDataLiteral(_hex28);

  Uint8List data29 = decodeDataLiteral(_hex29);

  Uint8List data30 = decodeDataLiteral(_hex30);

  Uint8List data31 = decodeDataLiteral(_hex31);

  Uint8List data32 = decodeDataLiteral(_hex32);

  Uint8List data33 = decodeDataLiteral(_hex33);

  Uint8List data34 = decodeDataLiteral(_hex34);

  Uint8List data35 = decodeDataLiteral(_hex35);

  Uint8List data36 = decodeDataLiteral(_hex36);

  Uint8List data37 = decodeDataLiteral(_hex37);

  Uint8List data38 = decodeDataLiteral(_hex38);

  Uint8List data39 = decodeDataLiteral(_hex39);

  Uint8List data40 = decodeDataLiteral(_hex40);

  Uint8List data41 = decodeDataLiteral(_hex41);

  Uint8List data42 = decodeDataLiteral(_hex42);

  Uint8List data43 = decodeDataLiteral(_hex43);

  Uint8List data44 = decodeDataLiteral(_hex44);

  Uint8List data45 = decodeDataLiteral(_hex45);

  Uint8List data46 = decodeDataLiteral(_hex46);

  Uint8List data47 = decodeDataLiteral(_hex47);

  Uint8List data48 = decodeDataLiteral(_hex48);

  Uint8List data49 = decodeDataLiteral(_hex49);

  Uint8List data50 = decodeDataLiteral(_hex50);

  Uint8List data51 = decodeDataLiteral(_hex51);

  Uint8List data52 = decodeDataLiteral(_hex52);

  Uint8List data53 = decodeDataLiteral(_hex53);

  Uint8List data54 = decodeDataLiteral(_hex54);

  Uint8List data55 = decodeDataLiteral(_hex55);

  Uint8List data56 = decodeDataLiteral(_hex56);

  Uint8List data57 = decodeDataLiteral(_hex57);

  Uint8List data58 = decodeDataLiteral(_hex58);

  Uint8List data59 = decodeDataLiteral(_hex59);

  Uint8List data60 = decodeDataLiteral(_hex60);

  Uint8List data61 = decodeDataLiteral(_hex61);

  Uint8List data62 = decodeDataLiteral(_hex62);

  Uint8List data63 = decodeDataLiteral(_hex63);

  Uint8List data64 = decodeDataLiteral(_hex64);

  static const String _hex0 = '';

  static const String _hex1 = '';

  static const String _hex2 = '';

  static const String _hex3 = '';

  static const String _hex4 = '';

  static const String _hex5 = '';

  static const String _hex6 = '';

  static const String _hex7 = '';

  static const String _hex8 = '';

  static const String _hex9 = '';

  static const String _hex10 = '';

  static const String _hex11 = '';

  static const String _hex12 = '';

  static const String _hex13 = '';

  static const String _hex14 = '';

  static const String _hex15 = '';

  static const String _hex16 = '';

  static const String _hex17 = '';

  static const String _hex18 = '';

  static const String _hex19 = '';

  static const String _hex20 = '';

  static const String _hex21 = '';

  static const String _hex22 = '';

  static const String _hex23 = '';

  static const String _hex24 = '';

  static const String _hex25 = '';

  static const String _hex26 = '';

  static const String _hex27 = '';

  static const String _hex28 = '';

  static const String _hex29 = '';

  static const String _hex30 = '';

  static const String _hex31 = '';

  static const String _hex32 = '';

  static const String _hex33 = '';

  static const String _hex34 = '';

  static const String _hex35 = '';

  static const String _hex36 = '';

  static const String _hex37 = '';

  static const String _hex38 = '';

  static const String _hex39 = '';

  static const String _hex40 = '';

  static const String _hex41 = '';

  static const String _hex42 = '';

  static const String _hex43 = '';

  static const String _hex44 = '';

  static const String _hex45 = '';

  static const String _hex46 = '';

  static const String _hex47 = '';

  static const String _hex48 = '';

  static const String _hex49 = '';

  static const String _hex50 = '';

  static const String _hex51 = '';

  static const String _hex52 = '';

  static const String _hex53 = '';

  static const String _hex54 = '';

  static const String _hex55 = '';

  static const String _hex56 = '';

  static const String _hex57 = '';

  static const String _hex58 = '';

  static const String _hex59 = '';

  static const String _hex60 = '';

  static const String _hex61 = '';

  static const String _hex62 = '';

  static const String _hex63 = '';

  static const String _hex64 = '';

  void init(Memory memory) {}
}
