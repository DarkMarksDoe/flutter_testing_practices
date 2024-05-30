import 'package:flutter_test/flutter_test.dart';
import 'package:testing_practices/arrange_act_assert_pattern/calculator.dart';

main() {
  group('Tests using Arrange-Act-Assert Pattern', () {
    test('should add two numbers correctly', () {
      // Arrange
      final calculator = Calculator();
      // Act
      final result = calculator.add(2, 3);
      // Assert
      expect(result, 5);
    });
  });
}
