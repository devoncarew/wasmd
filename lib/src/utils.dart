// ignore_for_file: constant_identifier_names

import 'dart:collection';

import 'package:charcode/ascii.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

const int formatLineLength = 110;

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

/// Ensure that the given name is a valid Dart identifier.
String patchUpName(String name) {
  name = name.replaceAll('-', '_').replaceAll('.', '_');
  if (isNumber(name.codeUnits[0])) {
    return '\$$name';
  }
  if (_keywords.contains(name)) {
    return '\$$name';
  }
  return name;
}

/// Ensure that the given symbol name is public.
String ensurePublic(String name) {
  return name.startsWith('_') ? '\$$name' : name;
}

const Set<String> _keywords = {
  'for',
  'if',
  'return',
  'switch',
  'while',
};

String titleCase(String name) {
  return name.split('_').map((s) {
    return '${s.substring(0, 1).toUpperCase()}${s.substring(1)}';
  }).join();
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

bool isLetter(int char) {
  if (char == $_) return true;
  if (char >= $a && char <= $z) return true;
  if (char >= $A && char <= $Z) return true;
  return false;
}

bool isLetterNumber(int char) {
  if (char == $_) return true;
  if (char >= $a && char <= $z) return true;
  if (char >= $A && char <= $Z) return true;
  if (char >= $0 && char <= $9) return true;
  return false;
}

bool isNumber(int char) {
  if (char >= $0 && char <= $9) return true;
  return false;
}

String emitFormatLibrary(Library library) {
  var formatter = DartFormatter(pageWidth: formatLineLength);
  var emitter = WasmCustomEmitter();

  var code = library.accept(emitter).toString();
  try {
    code = formatter.format(code);
  } catch (e) {
    print(e);
  }
  return code;
}

// TODO: move these changes into package:code_builder
class WasmCustomEmitter extends DartEmitter {
  WasmCustomEmitter()
      : super(
          orderDirectives: true,
          useNullSafetySyntax: true,
          allocator: NoPrefixAllocator(),
        );

  // @override
  // StringSink visitField(Field spec, [StringSink? output]) {
  //   output ??= StringBuffer();
  //   var replacement = StringBuffer();
  //   super.visitField(spec, replacement);
  //   var str = replacement.toString();
  //   str = str.split('\n').where((s) => s.isNotEmpty).join('\n');
  //   output.writeln(str);
  //   return output;
  // }

  @override
  StringSink visitMethod(Method spec, [StringSink? output]) {
    output ??= StringBuffer();
    var replacement = StringBuffer();
    super.visitMethod(spec, replacement);
    var str = replacement.toString();
    str = str.replaceAll(', )', ')');
    output.write(str);
    return output;
  }
}
