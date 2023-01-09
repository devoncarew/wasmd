import 'package:test/test.dart';

import 'blocks.dart';

void main() {
  group('blocks', () {
    late BlocksModule module;

    setUp(() {
      module = BlocksModule();
    });

    test('call params()', () {
      expect(module.params(), 3);
    });
  });
}
