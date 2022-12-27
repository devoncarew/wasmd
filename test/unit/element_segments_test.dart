import 'package:test/test.dart';

import 'element_segments.dart';

void main() {
  group('element segments', () {
    late ElementSegmentsModule module;

    setUp(() {
      module = ElementSegmentsModule();
    });

    test('number of tables', () {
      expect(module.tables, hasLength(1));
    });

    test('table size', () {
      expect(module.table0.funcRefs, hasLength(6));
    });

    group('segment 1', () {
      test('element 0', () {
        expect(module.callByIndex(0), 6);
      });

      test('element 1', () {
        expect(module.callByIndex(1), 7);
      });
    });

    group('segment 2', () {
      test('element 3', () {
        expect(module.callByIndex(3), 42);
      });

      test('element 4', () {
        expect(module.callByIndex(4), 42);
      });

      test('element 5', () {
        expect(module.callByIndex(5), 42);
      });
    });

    group('misc', () {
      test('table get null', () {
        var val = module.table_get(2);
        expect(val, isNull);
      });

      test('table get/set', () {
        var val = module.table_get(0);
        module.table_set(2, val);
        expect(module.callByIndex(2), 6);
      });
    });
  });
}
