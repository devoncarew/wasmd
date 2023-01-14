// Generated from samples/print.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'dart:typed_data';

import 'package:wasmd/runtime.dart';
import 'package:wasmd/runtime_vm.dart';

/// A class representing the symbols imported from the 'console' module.
abstract class ConsoleImports {
  void log(i32 arg0, i32 arg1);
}

class PrintModule implements Module {
  PrintModule({
    required this.consoleImports,
    required this.memory,
  }) {
    _data.init(memory);
    _writeHi();
    vm = VM(this);
  }

  final ConsoleImports consoleImports;

  late final VM vm;

  /// min pages: 1
  @override
  final Memory memory;

  final DataSegments _data = DataSegments();

  @override
  late final List<Table> tables = [];

  void writeHi() => _writeHi();

  void _writeHi() {
    consoleImports.log(0, 16);
  }
}

typedef FunctionType0 = void Function(i32, i32);
typedef FunctionType1 = void Function();

class DataSegments {
  final Uint8List helloString = decodeDataLiteral(_hex0);

  final Uint8List otherString = decodeDataLiteral(_hex1);

  static const String _hex0 = '\x48\x65\x6C\x6C\x6F\x20\x66\x72\x6F\x6D\x20\x77\x61\x73\x6D\x21\x00';

  static const String _hex1 = '\x62\x75\x65\x6E\x6F\x73\x20\x64\x69\x61\x73\x00';

  void init(Memory memory) {
    memory.copyFrom(helloString, 0, 0, helloString.length);
  }
}
