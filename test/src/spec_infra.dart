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
  test(testName, () {
    final actual = testClosure();
    if (expected != null) {
      if (expected is double && expected.isNaN) {
        expect(actual, isNaN);
      } else if (expected is int && expected.isNaN) {
        expect(actual, isNaN);
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

  // if (n.isValidInt) {
  //   return n.toInt();
  // } else {
  //   int higher = (n >> 8).toInt();
  //   int lower = (n & BigInt.from(0xFF)).toInt();
  //   return (higher << 8 | lower);
  // }
}

final ByteData _reinterpretData = ByteData(8);

double f32(String value) {
  int val = int.parse(value, radix: 16);
  _reinterpretData.setInt64(0, val, Endian.little);
  return _reinterpretData.getFloat32(0, Endian.little);
}

double f64(String value) {
  int val = i64(value);
  _reinterpretData.setInt64(0, val, Endian.little);
  return _reinterpretData.getFloat64(0, Endian.little);
}

// /// Call the given closure at the same time as tests are run.
// ///
// /// This is here to allow us to run code between tests in the same context that
// /// the tests run in.
// void invoke(String testName, Function() closure) {
//   test(testName);
//   try {
//     closure();
//   } catch (e, st) {
//     fail('$e', st);
//   }
// }

// /// Assert that the result of the given closure matches the expected result.
// void returns(
//   String testName,
//   Function() testClosure, [
//   Object? expected,
// ]) {
//   test(testName);
//   try {
//     final actual = testClosure();
//     if (expected != null) {
//       expect(actual, expected);
//     }
//   } catch (e, st) {
//     fail('$e', st);
//   }
// }

// /// Assert that the runtime fires a trap.
// void traps(
//   String testName,
//   Function() testClosure,
//   String expectedTrapMessage,
// ) {
//   try {
//     testClosure();
//     fail('trap expected but not thrown');
//   } on Trap catch (e) {
//     expect(e.message, expectedTrapMessage,
//         reason: 'difference in trap message');
//   } catch (e, st) {
//     fail('$e', st);
//   }
// }

// void fail(String message, [StackTrace? st]) {
//   lastTest!.failed(message, StackTrace.current);
// }

// void expect(Object actual, Object expected, {String? reason}) {
//   if (actual != expected) {
//     var message = "expected '$expected' but got '$actual'";
//     if (reason != null) {
//       message += '\n$reason';
//     }
//     fail(message);
//   }
// }

// String? _groupName;

// void group(String name) {
//   _groupName = name;
// }

// void test(String name) {
//   lastTest?.finish();
//   allTests.add(Test(_groupName == null ? name : '$_groupName.$name'));
// }

// class Test {
//   final String name;
//   String? message;
//   bool done = false;

//   Test(this.name);

//   bool get success => message == null;

//   void failed(String message, StackTrace st) {
//     var temp = st.toString().trimRight();
//     var lines = temp.split('\n');

//     while (lines.first.contains('/test/spec/infra.dart:')) {
//       lines.removeAt(0);
//     }
//     while (lines.last.contains('dart:isolate-patch/isolate_patch.dart')) {
//       lines.removeLast();
//     }

//     this.message = '$message\n${lines.join('\n')}';
//   }

//   void finish() {
//     // todo:
//     if (!done) {
//       done = true;

//       print('${success ? '✅' : '❌'} $name');

//       if (message != null) {
//         message!.split('\n').map((line) => '   $line').forEach(print);
//       }
//     }
//   }
// }

// final List<Test> allTests = [];

// Test? get lastTest => allTests.lastOrNull;

// void reportResults() {
//   lastTest?.finish();

//   var passed = allTests.where((t) => t.success).length;
//   print('\n$passed passed of ${allTests.length}');
// }
