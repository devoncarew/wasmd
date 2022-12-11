import 'branch1.wasm.dart';

void main(List<String> args) {
  var module = Module();
  var result = module.sample();
  print('sample result: $result');
}
