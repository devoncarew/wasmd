import 'sha3.dart';

void main(List<String> args) {
  // Note that this main does not attempt to confirm sha3 correctness -
  // it's just executing the code.
  var module = Sha3Module();
  module.init(0, 100, 200);
  var result = module.absorb(0, 100, 200);
  module.squeeze(1, 2, 3);
  print(result);
}
