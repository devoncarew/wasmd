import 'package:meta/meta.dart';
import 'package:test/test.dart' hide throws;
import 'package:wasmd/runtime.dart';

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

@isTest
void traps(
  String testName,
  Function() testClosure,
  String expected,
) {
  test(testName, () {
    try {
      testClosure();
      fail('trap expected but not thrown');
    } on Trap catch (e) {
      expect(e.message, expected, reason: 'difference in trap message');
    }
  });
}
