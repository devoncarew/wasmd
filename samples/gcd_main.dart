import 'gcd.dart';

void main() {
  var module = GcdModule();

  int a = 18;
  int b = 30;
  print('gcd($a, $b) = ${module.gcd(a, b)}');
}
