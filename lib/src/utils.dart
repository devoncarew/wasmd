import 'dart:collection';

import 'package:code_builder/code_builder.dart';

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
