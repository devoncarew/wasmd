import 'package:dasm/runtime.dart';

import 'print.wasm.dart';

void main(List<String> args) {
  print('before module init');
  var memory = Memory(1);
  // ignore: unused_local_variable
  var module = Module(
    consoleImports: _ConsoleImports(memory),
    memory: memory,
  );
  print('after module init');
}

class _ConsoleImports implements ConsoleImports {
  final Memory memory;

  _ConsoleImports(this.memory);

  @override
  void log(i32 arg0, i32 arg1) {
    var bytes = memory.data.buffer.asUint8List(arg0, arg1);
    var str = String.fromCharCodes(bytes);

    print(str);
  }
}
