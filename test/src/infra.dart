import 'package:meta/meta.dart';
import 'package:test/test.dart' hide throws;
import 'package:wasmd/runtime.dart';

/// Assert that the result of the given closure matches the expected result.
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

/// Assert that the runtime fires a trap.
@isTest
void traps(
  String testName,
  Function() testClosure,
  String expectedTrapMessage,
) {
  test(testName, () {
    try {
      testClosure();
      fail('trap expected but not thrown');
    } on Trap catch (e) {
      expect(e.message, expectedTrapMessage,
          reason: 'difference in trap message');
    }
  });
}

/// Call the given closure at the same time as tests are run.
///
/// This is here to allow us to run code between tests in the same context that
/// the tests run in.
@isTest
void invoke(String testName, Function() closure) {
  test(testName, () {
    closure();
  });
}
