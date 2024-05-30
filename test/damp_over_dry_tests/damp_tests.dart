import 'package:flutter_test/flutter_test.dart';
import 'package:testing_practices/damp_over_dry/login_constants.dart';
import 'package:testing_practices/damp_over_dry/login_page.dart';

// DAMP (Descriptive And Meaningful Phrases)
void main() {
  testWidgets(
    'Valid login',
    (tester) async {
      // Arrange
      await tester.pumpWidget(const DampOverDryApp());

      await tester.enterText(
        find.byKey(LoginKeys.usernameFieldKey),
        'validUser',
      );
      await tester.enterText(
        find.byKey(LoginKeys.passwordFieldKey),
        'validPassword',
      );

      // Act
      await tester.tap(
        find.byKey(LoginKeys.loginButtonKey),
      );

      await tester.pump();

      // Assert
      expect(
        find.text(LoginLabels.loginSuccessLabel),
        findsOneWidget,
        reason: 'Login should succeed with valid credentials',
      );
    },
  );

  testWidgets(
    'Valid login',
    (tester) async {
      // Arrange
      await tester.pumpWidget(const DampOverDryApp());

      await tester.enterText(
        find.byKey(LoginKeys.usernameFieldKey),
        'invalidUser',
      );
      await tester.enterText(
        find.byKey(LoginKeys.passwordFieldKey),
        'invalidPassword',
      );

      // Act
      await tester.tap(
        find.byKey(LoginKeys.loginButtonKey),
      );

      await tester.pump();

      // Assert
      expect(
        find.text(LoginLabels.loginFailureLabel),
        findsOneWidget,
        reason: 'Login should fail with invalid credentials',
      );
    },
  );
}
