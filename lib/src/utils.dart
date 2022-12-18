// ignore_for_file: constant_identifier_names

import 'dart:collection';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

class NoPrefixAllocator implements Allocator {
  final Set<String> _imports = SplayTreeSet();

  NoPrefixAllocator();

  @override
  String allocate(Reference reference) {
    if (reference.url != null) {
      _imports.add(reference.url!);
    }
    return reference.symbol!;
  }

  @override
  Iterable<Directive> get imports =>
      _imports.map((url) => Directive.import(url));
}

bool isValidIdentifier(String str) {
  if (str.isEmpty) return false;

  var chars = str.codeUnits;

  if (!isLetter(chars[0])) return false;

  for (var char in chars.skip(1)) {
    if (!isLetterNumber(char)) return false;
  }

  return true;
}

const _0 = 48;
const _9 = 57;
const _A = 65;
const _Z = 90;
const _underscore = 95;
const _a = 97;
const _z = 122;

bool isLetter(int char) {
  if (char == _underscore) return true;
  if (char >= _a && char <= _z) return true;
  if (char >= _A && char <= _Z) return true;
  return false;
}

bool isLetterNumber(int char) {
  if (char == _underscore) return true;
  if (char >= _a && char <= _z) return true;
  if (char >= _A && char <= _Z) return true;
  if (char >= _0 && char <= _9) return true;
  return false;
}

String emitFormatLibrary(Library library) {
  var formatter = DartFormatter();
  var emitter = DartEmitter(
    orderDirectives: true,
    useNullSafetySyntax: true,
    allocator: NoPrefixAllocator(),
  );

  var code = library.accept(emitter).toString();
  try {
    code = formatter.format(code);
  } catch (e) {
    print(e);
  }
  return code;
}
