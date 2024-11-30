import 'package:test/test.dart';

import './unit.dart';

void main() {
  group('Unit Class Tests', () {
    test('Test setting and getting type property', () {
      final unit = Unit(1000);
      unit.setType('infantry');
      expect(unit.getType(), equals('infantry'));
    });

    test('Test setting and getting unit-specific property', () {
      final unit = Unit(1000);
      unit.setProperty('hitPoints', 25);
      expect(unit.getProperty('hitPoints'), equals(25));
    });

    test('Test getting a non-existent property', () {
      final unit = Unit(1000);
      expect(unit.getProperty('strength'), isNull);
    });
  });
}
