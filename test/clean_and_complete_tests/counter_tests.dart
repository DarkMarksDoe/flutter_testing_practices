import 'package:flutter_test/flutter_test.dart';
import 'package:testing_practices/clean_and_complete/counter.dart';

void main() {
  group(
    'Clean and Complete Counter tests',
    () {
      test(
        'Value Should Increment',
        () {
          // Arrange
          final counter = Counter();

          // Act
          counter.increment();

          // Assert
          expect(
            counter.value,
            1,
            reason: 'Counter value should increment by 1',
          );
          // and edge cases can be added here
        },
      );

      test(
        'Value Should Decrease',
            () {
          // Arrange
          final counter = Counter();

          // Act
          counter.decrement();

          // Assert
          expect(
            counter.value,
            -1,
            reason: 'Counter value should decrease by 1',
          );
          // and edge cases can be added here
        },
      );
    },
  );
}
