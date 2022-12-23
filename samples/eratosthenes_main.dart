import 'package:wasmd/runtime.dart';

import 'eratosthenes.dart';

void main(List<String> args) {
  var module = EratosthenesModule(envImports: _EnvImports());
  var x = args.isEmpty ? 100 : int.parse(args.first);
  var stopwatch = Stopwatch()..start();
  print('eratosthenes prime of $x is ${module.prime(x)}.');
  print('(${stopwatch.elapsedMilliseconds} ms)');
}

class _EnvImports implements EnvImports {
  @override
  void abort(i32 arg0, i32 arg1, i32 arg2, i32 arg3) {
    throw 'abort!';
  }
}
