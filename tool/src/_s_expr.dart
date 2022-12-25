// void main(List<String> args) {
//   print(
//     ComilationUnit.parse(
//       File(args.first).readAsStringSync(),
//     ).prettyPrint(),
//   );
// }

abstract class Node {}

class Atom extends Node {
  final String value;

  Atom(this.value);

  @override
  String toString() => value;
}

class Expression extends Node {
  final List<Node> nodes;

  Expression(this.nodes);

  String prettyPrint() {
    if (nodes.isEmpty) return '';

    var buf = StringBuffer();

    buf.writeln('(${nodes.first}');

    for (var node in nodes.skip(1)) {
      buf.writeln('  $node');
    }

    buf.writeln(')');

    return buf.toString();
  }

  @override
  String toString() {
    return '(${nodes.map((n) => n.toString()).join(' ')})';
  }
}

class ComilationUnit {
  final List<Expression> expressions;

  ComilationUnit(this.expressions);

  String prettyPrint() {
    var buf = StringBuffer();

    for (var expr in expressions) {
      buf.writeln(expr.prettyPrint());
    }

    return buf.toString().trimRight();
  }

  static ComilationUnit parse(String str, {TokenRewriter? tokenRewriter}) {
    final tokenizer = Tokenizer(str);
    var expressions = <Expression>[];

    var tokens = tokenizer.parse(tokenRewriter: tokenRewriter);
    var itor = tokens.iterator;

    Node parseNode() {
      var token = itor.current;

      if (token.lparan) {
        itor.moveNext();

        var nodes = <Node>[];
        while (!itor.current.rparan) {
          nodes.add(parseNode());
          itor.moveNext();
        }

        return Expression(nodes);
      } else {
        return Atom(token.value);
      }
    }

    while (itor.moveNext()) {
      expressions.add(parseNode() as Expression);
    }

    return ComilationUnit(expressions);
  }
}

class Tokenizer {
  final String str;

  late final int len = str.length;

  int _pos = 0;

  Tokenizer(this.str);

  Iterable<Token> parse({TokenRewriter? tokenRewriter}) {
    if (tokenRewriter == null) {
      return _parse();
    } else {
      return _parse().map((token) => tokenRewriter.replace(token));
    }
  }

  Iterable<Token> _parse() sync* {
    while (_pos < len) {
      var s = _next()!;
      if (s == '(') {
        yield Token(s);
      } else if (s == ')') {
        yield Token(s);
      } else if (s == ';' && _peek() == ';') {
        _advanceUntil('\n');
      } else if (s == '"') {
        var start = _pos - 1;
        _advanceUntil('"');
        yield Token(str.substring(start, _pos));
      } else if (s.trim().isEmpty) {
        // skip ws
      } else {
        var start = _pos - 1;
        // collect until not ws or parans
        while (true) {
          var p = _peek();
          if (p == null || p == '(' || p == ')' || p.trim().isEmpty) {
            break;
          }
          _pos++;
        }
        yield Token(str.substring(start, _pos));
      }
    }
  }

  String? _next() {
    if (_pos < len) {
      var result = str[_pos];
      _pos++;
      return result;
    } else {
      return null;
    }
  }

  String? _peek() {
    return _pos < len ? str[_pos] : null;
  }

  void _advanceUntil(String s) {
    while (true) {
      var p = _peek();
      if (p == null || p == s) {
        _pos++;
        break;
      } else {
        _pos++;
      }
    }
  }
}

class Token {
  // words, (, )
  final String value;

  Token(this.value);

  bool get lparan => value == '(';
  bool get rparan => value == ')';

  @override
  String toString() => value;
}

abstract class TokenRewriter {
  Token replace(Token token);
}
