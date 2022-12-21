import 'package:meta/meta.dart';
import 'package:test/test.dart';

@isTest
void returns(
  String testName,
  Function() testClosure, [
  Object? expected,
]) {
  test(testName, () {
    final actual = testClosure();
    if (expected != null) {
      expect(actual, expected);
    }
  });
}
