import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:cli_util/cli_logging.dart' as cli;

void main(List<String> args) async {
  final verbose = args.contains('-v');

  var logger = cli.Logger.standard();
  var progress = logger.progress('Running test suite');

  var result = await Process.run(
      Platform.resolvedExecutable, ['test', '--reporter=json']);

  progress.finish(showTiming: true);
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

// print timming
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
  if (verbose) {
    for (var test in passed) {
      print(test.describe);
    }
  } else {
    print('  (hidding passing tests; use \'-v\' to show all tests)');
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
    var status = passed ? '✅' : '❌';
    var location = path;

    return location == null ? '$status $name' : '$status $location: $name';
  }

  String? get path {
    return url != null ? p.relative(Uri.parse(url!).toFilePath()) : null;
  }

  String? _pathName;

  String get pathAndName => _pathName ?? (_pathName = '$path $name');

  void addError(String error) => errors.add(error);

  void addMessage(String message) => messages.add(message);

  @override
  int compareTo(Test other) {
    return pathAndName.compareTo(other.pathAndName);
  }
}

String plural(int count, String word) => count == 1 ? word : '${word}s';
