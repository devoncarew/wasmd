import 'dart:typed_data';

import 'package:meta/meta.dart';
import 'package:test/test.dart';
import 'package:wasmd/runtime.dart' show Trap;

export 'package:test/test.dart' show group;

/// Assert that the result of the given closure matches the expected result.
@isTest
void returns(
  String testName,
  Function() testClosure, [
  Object? expected,
]) {
  const floatEpsilon = 1 / 1000000;

  test(testName, () {
    final actual = testClosure();
    if (expected != null) {
      if (expected is double && expected.isNaN) {
        expect(actual, isNaN);
      } else if (expected is int && expected.isNaN) {
        expect(actual, isNaN);
      } else if (expected is double && expected.isFinite) {
        // TODO: we only want to do this check for floats, not doubles (we did
        // the intermediate calculations with more precision than an actual
        // float, so can have some variance nine or ten places out).
        final e = expected == 0.0 ? 1e-38 : (expected * floatEpsilon).abs();
        expect(actual, closeTo(expected, e));
      } else {
        expect(actual, expected);
      }
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

int i32(String value) {
  var n = BigInt.parse(value, radix: 16);
  return n.toSigned(32).toInt();
}

int i64(String value) {
  var n = BigInt.parse(value, radix: 16);
  return n.toSigned(64).toInt();
}

final ByteData _reinterpretData = ByteData(8);

double f32(String value) {
  var val = i32(value);
  _reinterpretData.setInt32(0, val, Endian.little);
  return _reinterpretData.getFloat32(0, Endian.little);
}

double f64(String value) {
  var val = i64(value);
  _reinterpretData.setInt64(0, val, Endian.little);
  return _reinterpretData.getFloat64(0, Endian.little);
}

Function externref(String value) {
  int val = i32(value);
  return _testExterns[val];
}

final List<Function> _testExterns = [
  extern0,
  extern1,
  extern2,
  extern3,
  extern4,
  extern5,
  extern6,
];

int extern0() => 0;
int extern1(int p) => p * p;
int extern2(int p0, int p1) => p0 + p1;
int extern3(int p0, int p1, int p2) => p0 + p1;
int extern4(int p0, int p1, int p2, int p3) => p0 + p1;
int extern5(int p0, int p1, int p2, int p3, int p4) => p0 + p1;
int extern6(int p0, int p1, int p2, int p3, int p4, int p5) => p0 + p1;
