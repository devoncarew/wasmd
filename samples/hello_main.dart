import 'hello.dart';

void main(List<String> args) {
  var module = HelloWorldModule();

  print(' 2 + 2 is: ${module.add(2, 2)}');

  print('10 ? 2 is: ${module.complex(10, 2)}');
}

// i32 dataFlow_add(final i32 arg0, final i32 arg1) {
//   var s0 = arg0; // local.get 0
//   var s1 = arg1; // local.get 1
//   var s2 = s0 + s1; // i32.add
//   return s2;
// }
