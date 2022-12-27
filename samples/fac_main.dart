import 'fac.dart';

void main(List<String> args) {
  var module = FacModule();

  var input = args.isEmpty ? 7 : int.parse(args.first);
  var result = module.fac(input);
  print('fac($input) = $result');
}
