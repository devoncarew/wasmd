import 'package:meta/meta.dart';
import 'package:test/test.dart';

@isTest
void returns(String testName, Object expected, Function() testClosure) {
  test(testName, () {
    final actual = testClosure();
    expect(actual, expected);
  });
}
