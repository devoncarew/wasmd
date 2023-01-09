import 'dart:typed_data';

import 'package:meta/meta.dart';
import 'package:test/test.dart';
import 'package:wasmd/runtime.dart' show Trap;

import 'spectest.dart';

export 'package:test/test.dart' show group;

export 'spectest.dart' show SpectestModule;

/// Assert that the result of the given closure matches the expected result.
@isTest
void returns(
  String testName,
  Function() testClosure, [
  Object? expected,
  String? skip,
]) {
  const floatEpsilon = 1 / 1000000;

  test(
    testName,
    () {
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
    },
    skip: skip,
  );
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

int $i32(String value) {
  var n = BigInt.parse(value, radix: 16);
  return n.toSigned(32).toInt();
}

int $i64(String value) {
  var n = BigInt.parse(value, radix: 16);
  return n.toSigned(64).toInt();
}

final ByteData _reinterpretData = ByteData(8);

double $f32(String value) {
  var val = $i32(value);
  _reinterpretData.setInt32(0, val, Endian.little);
  return _reinterpretData.getFloat32(0, Endian.little);
}

double $f64(String value) {
  var val = $i64(value);
  _reinterpretData.setInt64(0, val, Endian.little);
  return _reinterpretData.getFloat64(0, Endian.little);
}

Function $externref(String value) {
  int val = $i32(value);
  return _testExterns[val];
}

final SpectestModule spectest = SpectestModule();

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

class Tuple16<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14,
    T15> {
  final T0 t0;
  final T1 t1;
  final T2 t2;
  final T3 t3;
  final T4 t4;
  final T5 t5;
  final T6 t6;
  final T7 t7;
  final T8 t8;
  final T9 t9;
  final T10 t10;
  final T11 t11;
  final T12 t12;
  final T13 t13;
  final T14 t14;
  final T15 t15;

  Tuple16(
    this.t0,
    this.t1,
    this.t2,
    this.t3,
    this.t4,
    this.t5,
    this.t6,
    this.t7,
    this.t8,
    this.t9,
    this.t10,
    this.t11,
    this.t12,
    this.t13,
    this.t14,
    this.t15,
  );

  factory Tuple16.from(List<Object?> stack) {
    var t15 = stack.removeLast() as T15;
    var t14 = stack.removeLast() as T14;
    var t13 = stack.removeLast() as T13;
    var t12 = stack.removeLast() as T12;

    var t11 = stack.removeLast() as T11;
    var t10 = stack.removeLast() as T10;
    var t9 = stack.removeLast() as T9;
    var t8 = stack.removeLast() as T8;
    var t7 = stack.removeLast() as T7;
    var t6 = stack.removeLast() as T6;

    var t5 = stack.removeLast() as T5;
    var t4 = stack.removeLast() as T4;
    var t3 = stack.removeLast() as T3;
    var t2 = stack.removeLast() as T2;
    var t1 = stack.removeLast() as T1;
    var t0 = stack.removeLast() as T0;
    return Tuple16(
        t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15);
  }

  void pushTo(List<Object?> stack) {
    stack.add(t0);
    stack.add(t1);
    stack.add(t2);
    stack.add(t3);
    stack.add(t4);
    stack.add(t5);
    stack.add(t6);
    stack.add(t7);
    stack.add(t8);
    stack.add(t9);
    stack.add(t10);
    stack.add(t11);
    stack.add(t12);
    stack.add(t13);
    stack.add(t14);
    stack.add(t15);
  }

  @override
  bool operator ==(Object other) {
    if (other is! Tuple16) return false;

    return t0 == other.t0 &&
        t1 == other.t1 &&
        t2 == other.t2 &&
        t3 == other.t3 &&
        t4 == other.t4 &&
        t5 == other.t5 &&
        t6 == other.t6 &&
        t7 == other.t7 &&
        t8 == other.t8 &&
        t9 == other.t9 &&
        t10 == other.t10 &&
        t11 == other.t11 &&
        t12 == other.t12 &&
        t13 == other.t13 &&
        t14 == other.t14 &&
        t15 == other.t15;
  }

  @override
  int get hashCode => Object.hash(
      t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15);

  @override
  String toString() => 'Tuple16($t0, $t1, $t2, $t3, $t4, $t5, $t6, $t7, $t8, '
      '$t9, $t10, $t11, $t12, $t13, $t14, $t15)';
}
