import 'dart:io';

import 'package:path/path.dart' as p;

import 's_expr.dart';

// Given an wast file, generate one or more wat module files that represent unit
// tests.

void main(List<String> args) {
  if (args.isEmpty) {
    print('usage: dart test/infra/generate.dart <wast file>');
    return;
  }

  for (var arg in args) {
    var file = File(arg);

    generateFor(file);
  }
}

void generateFor(File file) {
  print('parsing ${file.path}...');

  var compilationUnit = ComilationUnit.parse(file.readAsStringSync());
  var testModules = _findTestModules(_process(compilationUnit));

  var dir = file.parent;
  var basename = p.basenameWithoutExtension(file.path);

  if (testModules.length == 1) {
    var out = File(p.join(dir.path, '${basename}_test.wat'));
    out.writeAsStringSync('''
;; Generated from ${file.path}.

${testModules.first.prettyPrint()}''');
    print('wrote ${out.path}.');
  } else {
    var i = 0;
    for (var module in testModules) {
      var out = File(p.join(dir.path, '${basename}_${i}_test.wat'));
      i++;
      out.writeAsStringSync('''
;; Generated from ${file.path}.

${module.prettyPrint()}''');
      print('wrote ${out.path}.');
    }
  }
}

List<Expression> _process(ComilationUnit compilationUnit) {
  var modules = <Expression>[];
  Expression? module;
  var testNameMap = <String?, int>{};
  var expectationTypeNames = <String>{};

  List<Expression> transmute(
    Expression module,
    Expression node, {
    bool assertTrap = false,
  }) {
    // (func (export "fac-ssa") (param i64) (result i64) (i64.const 1) (local.get 0) (loop $l (param i64 i64) (result i64) (call $pick1) (call $pick1) (i64.mul) (call $pick1) (i64.const 1) (i64.sub) (call $pick0) (i64.const 0) (i64.gt_u) (br_if $l) (drop) (return)))
    // (assert_return (invoke "fac-rec" (i64.const 25)) (i64.const 7034535277573963776))
    var name = findName(node)!; // todo:

    var id = testNameMap[name] ?? 0;
    testNameMap[name] = id + 1;
    var testName = 'test_${name.replaceAll('-', '_')}_$id';
    var testInstrs = node.nodes[1] as Expression;

    if (assertTrap) {
      // todo: handle assert_traps
      print('todo: handle assert_trap tests');
      return [];
    }

    var expectName = 'expect_${name.replaceAll('-', '_')}_$id';
    var expectInstrs =
        node.nodes.length >= 2 ? node.nodes[2] as Expression : null;

    var typeName = getTypeForMethod(module, name);

    return [
      Expression([
        Atom('func'),
        Expression([Atom('export'), Atom('"$testName"')]),
        Expression([Atom('result'), Atom(typeName)]),
        Expression([
          Atom('call'),
          Atom('\$$name'),
          ...testInstrs.nodes.skip(2),
        ]),
      ]),
      if (expectInstrs != null)
        Expression([
          Atom('global'),
          // Atom('\$$expectName'),
          Expression([Atom('export'), Atom('"$expectName"')]),
          Atom(typeName),
          ...expectInstrs.nodes,
        ]),
    ];
  }

  for (var expr in compilationUnit.expressions) {
    if (isModule(expr)) {
      testNameMap.clear();
      expectationTypeNames.clear();
      module = expr;
      modules.add(module);

      for (var child in module.nodes) {
        if (child is Expression && kind(child) == 'func') {
          if (child.nodes[1] is Expression) {
            var name = findName(child);
            child.nodes.insert(1, Atom('\$$name'));
          }
        }
      }
    } else if (kind(expr) == 'assert_return' && module != null) {
      // re-write into the module as a test method
      module.nodes.addAll(transmute(module, expr));
    } else if (kind(expr) == 'assert_trap' && module != null) {
      // re-write into the module as a test method
      module.nodes.addAll(transmute(module, expr, assertTrap: true));
    }
  }

  return modules;
}

List<Expression> _findTestModules(List<Expression> expressions) {
  return expressions.where((expression) {
    if (!isModule(expression)) {
      return false;
    }

    // todo: more checks - has a test method
    return true;
  }).toList();
}

bool isModule(Expression expr) => kind(expr) == 'module';

String? kind(Expression expr) {
  if (expr.nodes.isNotEmpty) {
    var first = expr.nodes.first;
    if (first is Atom) {
      return first.value;
    }
  }

  return null;
}

String? findName(Expression node) {
  for (var child in node.nodes.whereType<Expression>()) {
    if (kind(child) == 'invoke' || kind(child) == 'export') {
      var val = (child.nodes[1] as Atom).value;
      return stripQuotes(val);
    }
  }

  return null;
}

String stripQuotes(String str) {
  if (str.startsWith('"') && str.endsWith('"')) {
    return str.substring(1, str.length - 1);
  } else {
    return str;
  }
}

String getTypeForMethod(Expression module, String methodName) {
  for (var method in module.nodes.whereType<Expression>()) {
    if (kind(method) != 'func') continue;

    if (findName(method) == methodName) {
      for (var child in method.nodes.whereType<Expression>()) {
        if (kind(child) == 'result') {
          return (child.nodes[1] as Atom).value;
        }
      }
    }
  }

  throw "could not find return type for method '$methodName'";
}
