import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;

final List<String> expectedFailures = [
  'bulk call_0',
  'bulk call_12',
  'bulk init_active_1',
  'bulk init_active_3',
  'bulk init_active_4',
  'bulk init_active_5',
  'bulk init_passive_2',
  'bulk init_passive_6',
  'bulk load8_u_24',
  'bulk load8_u_25',
  'bulk load8_u_26',
  'conversions f32_convert_i32_u_10',
  'conversions f32_convert_i32_u_11',
  'conversions f32_convert_i32_u_3',
  'conversions f32_convert_i32_u_5',
  'conversions f32_convert_i32_u_6',
  'conversions f32_convert_i32_u_7',
  'conversions f32_convert_i32_u_8',
  'conversions f32_convert_i32_u_9',
  'conversions f32_convert_i64_u_10',
  'conversions f32_convert_i64_u_3',
  'conversions f32_convert_i64_u_4',
  'conversions f32_convert_i64_u_9',
  'conversions f32_demote_f64_20',
  'conversions f32_demote_f64_21',
  'conversions f32_demote_f64_24',
  'conversions f32_demote_f64_25',
  'conversions f32_demote_f64_42',
  'conversions f32_demote_f64_43',
  'conversions f32_demote_f64_44',
  'conversions f32_demote_f64_45',
  'conversions f32_demote_f64_50',
  'conversions f32_demote_f64_51',
  'conversions f64_convert_i32_u_3',
  'conversions f64_convert_i32_u_4',
  'conversions f64_convert_i64_u_10',
  'conversions f64_convert_i64_u_3',
  'conversions f64_convert_i64_u_4',
  'conversions f64_convert_i64_u_5',
  'conversions f64_convert_i64_u_6',
  'conversions f64_convert_i64_u_7',
  'conversions f64_convert_i64_u_8',
  'conversions f64_convert_i64_u_9',
  'conversions i32_reinterpret_f32_1',
  'conversions i32_reinterpret_f32_10',
  'conversions i32_reinterpret_f32_12',
  'conversions i32_reinterpret_f32_13',
  'conversions i32_reinterpret_f32_14',
  'conversions i32_reinterpret_f32_3',
  'conversions i32_reinterpret_f32_4',
  'conversions i32_reinterpret_f32_8',
  'conversions i32_trunc_f32_s_14',
  'conversions i32_trunc_f32_s_15',
  'conversions i32_trunc_f32_u_10',
  'conversions i32_trunc_f32_u_13',
  'conversions i32_trunc_f32_u_14',
  'conversions i32_trunc_f32_u_9',
  'conversions i32_trunc_f64_s_16',
  'conversions i32_trunc_f64_s_17',
  'conversions i32_trunc_f64_u_10',
  'conversions i32_trunc_f64_u_15',
  'conversions i32_trunc_f64_u_16',
  'conversions i32_trunc_f64_u_17',
  'conversions i32_trunc_f64_u_18',
  'conversions i32_trunc_f64_u_19',
  'conversions i32_trunc_f64_u_20',
  'conversions i32_trunc_f64_u_9',
  'conversions i32_trunc_sat_f32_s_10',
  'conversions i32_trunc_sat_f32_s_11',
  'conversions i32_trunc_sat_f32_s_13',
  'conversions i32_trunc_sat_f32_s_14',
  'conversions i32_trunc_sat_f32_s_15',
  'conversions i32_trunc_sat_f32_s_16',
  'conversions i32_trunc_sat_f32_s_17',
  'conversions i32_trunc_sat_f32_s_18',
  'conversions i32_trunc_sat_f32_s_19',
  'conversions i32_trunc_sat_f32_s_20',
  'conversions i32_trunc_sat_f32_s_21',
  'conversions i32_trunc_sat_f32_s_7',
  'conversions i32_trunc_sat_f32_s_8',
  'conversions i32_trunc_sat_f32_s_9',
  'conversions i32_trunc_sat_f32_u_10',
  'conversions i32_trunc_sat_f32_u_13',
  'conversions i32_trunc_sat_f32_u_14',
  'conversions i32_trunc_sat_f32_u_15',
  'conversions i32_trunc_sat_f32_u_16',
  'conversions i32_trunc_sat_f32_u_17',
  'conversions i32_trunc_sat_f32_u_18',
  'conversions i32_trunc_sat_f32_u_19',
  'conversions i32_trunc_sat_f32_u_20',
  'conversions i32_trunc_sat_f32_u_9',
  'conversions i32_trunc_sat_f64_s_10',
  'conversions i32_trunc_sat_f64_s_11',
  'conversions i32_trunc_sat_f64_s_13',
  'conversions i32_trunc_sat_f64_s_14',
  'conversions i32_trunc_sat_f64_s_15',
  'conversions i32_trunc_sat_f64_s_16',
  'conversions i32_trunc_sat_f64_s_17',
  'conversions i32_trunc_sat_f64_s_18',
  'conversions i32_trunc_sat_f64_s_19',
  'conversions i32_trunc_sat_f64_s_20',
  'conversions i32_trunc_sat_f64_s_21',
  'conversions i32_trunc_sat_f64_s_7',
  'conversions i32_trunc_sat_f64_s_8',
  'conversions i32_trunc_sat_f64_s_9',
  'conversions i32_trunc_sat_f64_u_10',
  'conversions i32_trunc_sat_f64_u_14',
  'conversions i32_trunc_sat_f64_u_15',
  'conversions i32_trunc_sat_f64_u_16',
  'conversions i32_trunc_sat_f64_u_17',
  'conversions i32_trunc_sat_f64_u_18',
  'conversions i32_trunc_sat_f64_u_19',
  'conversions i32_trunc_sat_f64_u_20',
  'conversions i32_trunc_sat_f64_u_21',
  'conversions i32_trunc_sat_f64_u_22',
  'conversions i32_trunc_sat_f64_u_23',
  'conversions i32_trunc_sat_f64_u_24',
  'conversions i32_trunc_sat_f64_u_9',
  'conversions i32_wrap_i64_10',
  'conversions i32_wrap_i64_11',
  'conversions i32_wrap_i64_2',
  'conversions i32_wrap_i64_3',
  'conversions i32_wrap_i64_4',
  'conversions i32_wrap_i64_5',
  'conversions i32_wrap_i64_6',
  'conversions i32_wrap_i64_8',
  'conversions i32_wrap_i64_9',
  'conversions i64_extend_i32_u_2',
  'conversions i64_extend_i32_u_3',
  'conversions i64_extend_i32_u_5',
  'conversions i64_trunc_f32_s_16',
  'conversions i64_trunc_f32_s_17',
  'conversions i64_trunc_f32_u_11',
  'conversions i64_trunc_f32_u_12',
  'conversions i64_trunc_f32_u_8',
  'conversions i64_trunc_f64_s_16',
  'conversions i64_trunc_f64_s_17',
  'conversions i64_trunc_f64_u_14',
  'conversions i64_trunc_f64_u_15',
  'conversions i64_trunc_f64_u_16',
  'conversions i64_trunc_f64_u_9',
  'conversions i64_trunc_sat_f32_s_18',
  'conversions i64_trunc_sat_f32_s_19',
  'conversions i64_trunc_sat_f32_s_20',
  'conversions i64_trunc_sat_f32_s_21',
  'conversions i64_trunc_sat_f32_s_22',
  'conversions i64_trunc_sat_f32_s_23',
  'conversions i64_trunc_sat_f32_u_11',
  'conversions i64_trunc_sat_f32_u_12',
  'conversions i64_trunc_sat_f32_u_13',
  'conversions i64_trunc_sat_f32_u_14',
  'conversions i64_trunc_sat_f32_u_15',
  'conversions i64_trunc_sat_f32_u_16',
  'conversions i64_trunc_sat_f32_u_17',
  'conversions i64_trunc_sat_f32_u_18',
  'conversions i64_trunc_sat_f32_u_8',
  'conversions i64_trunc_sat_f64_s_18',
  'conversions i64_trunc_sat_f64_s_19',
  'conversions i64_trunc_sat_f64_s_20',
  'conversions i64_trunc_sat_f64_s_21',
  'conversions i64_trunc_sat_f64_s_22',
  'conversions i64_trunc_sat_f64_s_23',
  'conversions i64_trunc_sat_f64_u_14',
  'conversions i64_trunc_sat_f64_u_15',
  'conversions i64_trunc_sat_f64_u_16',
  'conversions i64_trunc_sat_f64_u_17',
  'conversions i64_trunc_sat_f64_u_18',
  'conversions i64_trunc_sat_f64_u_19',
  'conversions i64_trunc_sat_f64_u_20',
  'conversions i64_trunc_sat_f64_u_21',
  'conversions i64_trunc_sat_f64_u_22',
  'conversions i64_trunc_sat_f64_u_9',
  'f32 add_264',
  'f32 add_267',
  'f32 div_124',
  'f32 div_125',
  'f32 div_126',
  'f32 div_127',
  'f32 div_164',
  'f32 div_165',
  'f32 div_166',
  'f32 div_167',
  'f32 div_204',
  'f32 div_205',
  'f32 div_206',
  'f32 div_207',
  'f32 div_208',
  'f32 div_209',
  'f32 div_210',
  'f32 div_211',
  'f32 div_244',
  'f32 div_245',
  'f32 div_246',
  'f32 div_247',
  'f32 div_248',
  'f32 div_249',
  'f32 div_250',
  'f32 div_251',
  'f32 div_252',
  'f32 div_253',
  'f32 div_254',
  'f32 div_255',
  'f32 mul_204',
  'f32 mul_205',
  'f32 mul_206',
  'f32 mul_207',
  'f32 mul_224',
  'f32 mul_225',
  'f32 mul_226',
  'f32 mul_227',
  'f32 mul_260',
  'f32 mul_261',
  'f32 mul_262',
  'f32 mul_263',
  'f32 mul_264',
  'f32 mul_265',
  'f32 mul_266',
  'f32 mul_267',
  'f32 mul_60',
  'f32 mul_61',
  'f32 mul_62',
  'f32 mul_63',
  'f32 nearest_6',
  'f32 nearest_7',
  'f32 sub_265',
  'f32 sub_266',
  'f64 nearest_6',
  'f64 nearest_7',
  'float_memory i32_load_12',
  'float_memory i32_load_2',
  'float_memory i32_load_7',
  'float_memory i64_load_12',
  'float_memory i64_load_2',
  'float_memory i64_load_7',
  'i32 add_4',
  'i32 add_5',
  'i32 add_6',
  'i32 div_s_2',
  'i32 div_u_10',
  'i32 div_u_11',
  'i32 div_u_12',
  'i32 div_u_5',
  'i32 div_u_6',
  'i32 div_u_7',
  'i32 div_u_8',
  'i32 extend16_s_2',
  'i32 extend16_s_3',
  'i32 extend16_s_4',
  'i32 extend8_s_2',
  'i32 extend8_s_3',
  'i32 extend8_s_4',
  'i32 ge_u_12',
  'i32 ge_u_13',
  'i32 ge_u_2',
  'i32 ge_u_8',
  'i32 ge_u_9',
  'i32 gt_u_12',
  'i32 gt_u_13',
  'i32 gt_u_2',
  'i32 gt_u_8',
  'i32 gt_u_9',
  'i32 le_u_12',
  'i32 le_u_13',
  'i32 le_u_2',
  'i32 le_u_8',
  'i32 le_u_9',
  'i32 lt_u_12',
  'i32 lt_u_13',
  'i32 lt_u_2',
  'i32 lt_u_8',
  'i32 lt_u_9',
  'i32 mul_5',
  'i32 mul_6',
  'i32 rem_u_10',
  'i32 rem_u_11',
  'i32 rem_u_12',
  'i32 rem_u_5',
  'i32 rem_u_7',
  'i32 rem_u_8',
  'i32 rotl_10',
  'i32 rotl_11',
  'i32 rotl_12',
  'i32 rotl_4',
  'i32 rotl_5',
  'i32 rotl_6',
  'i32 rotl_8',
  'i32 rotl_9',
  'i32 rotr_0',
  'i32 rotr_10',
  'i32 rotr_11',
  'i32 rotr_12',
  'i32 rotr_4',
  'i32 rotr_6',
  'i32 rotr_8',
  'i32 rotr_9',
  'i32 shl_10',
  'i32 shl_2',
  'i32 shl_3',
  'i32 shl_5',
  'i32 shl_6',
  'i32 shl_9',
  'i32 shr_s_11',
  'i32 shr_s_12',
  'i32 shr_s_13',
  'i32 shr_s_14',
  'i32 shr_s_15',
  'i32 shr_s_16',
  'i32 shr_s_2',
  'i32 shr_s_4',
  'i32 shr_u_11',
  'i32 shr_u_12',
  'i32 shr_u_13',
  'i32 shr_u_14',
  'i32 shr_u_15',
  'i32 shr_u_16',
  'i32 shr_u_2',
  'i32 shr_u_4',
  'i32 sub_3',
  'i32 sub_4',
  'i64 div_s_2',
  'i64 div_u_10',
  'i64 div_u_11',
  'i64 div_u_12',
  'i64 div_u_5',
  'i64 div_u_6',
  'i64 div_u_7',
  'i64 div_u_8',
  'i64 ge_u_12',
  'i64 ge_u_13',
  'i64 ge_u_2',
  'i64 ge_u_8',
  'i64 ge_u_9',
  'i64 gt_u_12',
  'i64 gt_u_13',
  'i64 gt_u_2',
  'i64 gt_u_8',
  'i64 gt_u_9',
  'i64 le_u_12',
  'i64 le_u_13',
  'i64 le_u_2',
  'i64 le_u_8',
  'i64 le_u_9',
  'i64 lt_u_12',
  'i64 lt_u_13',
  'i64 lt_u_2',
  'i64 lt_u_8',
  'i64 lt_u_9',
  'i64 rem_u_10',
  'i64 rem_u_11',
  'i64 rem_u_12',
  'i64 rem_u_5',
  'i64 rem_u_7',
  'i64 rem_u_8',
  'memory_grow as_call_indirect_index_0',
  'memory_init load8_u_105',
  'memory_init load8_u_106',
  'return as_br_if_cond_0',
  'return type_f32_0',
  'return type_f64_0',
  'return type_i32_0',
  'return type_i64_0',
  'switch arg_0',
  'switch arg_1',
  'switch arg_4',
  'switch arg_5',
  'switch arg_8',
];

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
        rootUrl: test['root_url'],
        rootLine: test['root_line'],
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

  var allTests = tests.values.where((t) => !(t.hidden ?? false)).toList();

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

  print('${allTests.length} total ${plural(allTests.length, 'test')}');
  print('${expectedFailed.length} expected '
      '${plural(expectedFailed.length, 'failure')}');
  print('${unexpectedFailed.length} unexpected '
      '${plural(unexpectedFailed.length, 'failure')}');
  print('${unexpectedPassed.length} unexpected '
      '${plural(unexpectedPassed.length, 'test')} passed');

  exit(unexpectedFailed.isNotEmpty || unexpectedPassed.isNotEmpty ? 1 : 0);
}

class Test {
  final int id;
  final String name;
  final String? rootUrl;
  final int? rootLine;

  final List<String> messages = [];
  final List<String> errors = [];
  // "success", "failure", "error"
  String? result;
  bool? hidden;

  Test({
    required this.id,
    required this.name,
    required this.rootUrl,
    required this.rootLine,
  });

  bool get passed => result == 'success';

  String get describe {
    if (rootUrl != null) {
      var url = Uri.parse(rootUrl!);
      var path = p.relative(url.toFilePath());
      return '$name ($path:$rootLine)';
    } else {
      return name;
    }
  }

  void addError(String error) => errors.add(error);

  void addMessage(String message) => messages.add(message);
}

String plural(int count, String word) => count == 1 ? word : '${word}s';