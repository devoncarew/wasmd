import 'fib.wasm.dart';

void main(List<String> args) {
  var module = Module();
  for (var i = 0; i <= 10; i++) {
    print('fib($i) = ${module.fib(i)}');
  }
}
