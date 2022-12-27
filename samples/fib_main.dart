import 'fib.dart';

void main(List<String> args) {
  var module = FibModule();
  for (var i = 0; i <= 10; i++) {
    print('fib($i) = ${module.fib(i)}');
  }
}
