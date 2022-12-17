// ignore_for_file: non_constant_identifier_names

import 'package:wasmd/runtime.dart';

import 'rot13.dart';

late Module module;

void main(List<String> args) {
  var str = 'test string';
  var memory = Memory(10);
  module = Module(hostImports: Rot13Env(str, memory), memory: memory);
  print(str);
  print('calling rot13:');
  module.rot13();
}

class Rot13Env extends HostImports {
  final String data;
  final Memory memory;

  Rot13Env(this.data, this.memory);

  @override
  i32 fill_buf(i32 arg0, i32 arg1) {
    print('fill_buf called: $arg0 $arg1');

    var chars = data.codeUnits;

    for (int i = 0; i < chars.length; i++) {
      module.memory.data.setInt8(arg0 + i, chars[i]);
    }

    return chars.length;
  }

  @override
  void buf_done(i32 arg0, i32 arg1) {
    print('buf_done called: $arg0 $arg1');

    var bytes = module.memory.data.buffer.asUint8List(arg0, arg1);
    var str = String.fromCharCodes(bytes);

    print(str);
  }
}
