import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;

void main(List<String> args) async {
  print('Running test suite...');

  // todo: 'dart test --reporter=json'
  var result = await Process.run(
      Platform.resolvedExecutable, ['test', '--reporter=json']);

  print('');

  var lines = (result.stdout as String).split('\n').where((l) => l.isNotEmpty);

  // var groups = <String, Group>{};
  var tests = <int, Test>{};

  for (var line in lines) {
    var json = jsonDecode(line) as Map<String, dynamic>;

    // start, suite, testStart, allSuites, testDone, group, error, done, print
    var type = json['type'] as String;

    if (type == 'testStart') {
      var test = json['test'] as Map<String, dynamic>;
      var id = test['id'] as int;

      tests[id] = Test(
        id: id,
        name: test['name'],
        url: test['root_url'] ?? test['url'],
        line: test['root_line'] ?? test['line'],
      );
    } else if (type == 'error') {
      var testID = json['testID'] as int;
      var error = json['error'] as String;

      tests[testID]!.addError(error);
    } else if (type == 'print') {
      var testID = json['testID'] as int;
      var message = json['message'] as String;

      tests[testID]!.addMessage(message);
    } else if (type == 'testDone') {
      var testID = json['testID'] as int;
      var result = json['result'] as String;
      var hidden = (json['hidden'] as bool?) ?? false;

      tests[testID]!.result = result;
      if (hidden) {
        tests[testID]!.hidden = true;
      }
    }
  }

  var expectedFailures = File('tool/tests.properties')
      .readAsLinesSync()
      .map((l) => l.trim())
      .where((l) => l.isNotEmpty)
      .where((l) => !l.startsWith('#'))
      .toList();

  var allTests = tests.values.where((t) => !(t.hidden ?? false)).toList();
  allTests.sort();

  var passed = <Test>[];
  var expectedFailed = <Test>[];
  var unexpectedFailed = <Test>[];
  var unexpectedPassed = <Test>[];

  for (var test in allTests) {
    if (test.passed) {
      if (expectedFailures.contains(test.name)) {
        unexpectedPassed.add(test);
      } else {
        passed.add(test);
      }
    } else {
      if (expectedFailures.contains(test.name)) {
        expectedFailed.add(test);
      } else {
        unexpectedFailed.add(test);
      }
    }
  }

  print('## Passed (${passed.length})');
  for (var test in passed) {
    print(test.describe);
  }
  print('');

  print('## Expected failures (${expectedFailed.length})');
  for (var test in expectedFailed) {
    print(test.describe);
  }
  print('');

  print('## Unexpected failures (${unexpectedFailed.length})');
  for (var test in unexpectedFailed) {
    print(test.describe);
  }
  print('');

  print('## Unexpected passed (${unexpectedPassed.length})');
  for (var test in unexpectedPassed) {
    print(test.describe);
  }
  print('');

  print('total ${plural(allTests.length, 'test')}: ${allTests.length}');
  print('expected ${plural(expectedFailed.length, 'failure')}: '
      '${expectedFailed.length}');
  print('unexpected ${plural(unexpectedFailed.length, 'failure')}: '
      '${unexpectedFailed.length}');
  print('unexpected ${plural(unexpectedPassed.length, 'test')} passed: '
      '${unexpectedPassed.length}');

  exit(unexpectedFailed.isNotEmpty || unexpectedPassed.isNotEmpty ? 1 : 0);
}

class Test implements Comparable<Test> {
  final int id;
  final String name;
  final String? url;
  final int? line;

  final List<String> messages = [];
  final List<String> errors = [];
  // "success", "failure", "error"
  String? result;
  bool? hidden;

  Test({
    required this.id,
    required this.name,
    required this.url,
    required this.line,
  });

  bool get passed => result == 'success';

  String get describe {
    // \x1B[31m
    var status = passed ? '✅' : '❌';

    var location = path;
    if (location != null) {
      return '  $status $location: $name';
    } else {
      return '  $status $name';
    }
  }

  String? get path {
    return url != null ? p.relative(Uri.parse(url!).toFilePath()) : null;
  }

  void addError(String error) => errors.add(error);

  void addMessage(String message) => messages.add(message);

  @override
  int compareTo(Test other) {
    var a = '$path $name';
    var b = '${other.path} ${other.name}';

    return a.compareTo(b);
  }
}

String plural(int count, String word) => count == 1 ? word : '${word}s';
