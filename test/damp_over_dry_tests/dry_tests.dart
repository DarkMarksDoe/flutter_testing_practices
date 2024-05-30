import 'package:flutter_test/flutter_test.dart';
import 'package:testing_practices/damp_over_dry/login_constants.dart';
import 'package:testing_practices/damp_over_dry/login_page.dart';

// DRY (Don't Repeat Yourself) example
void main() {
// Abstracted setup and interaction method
  Future<void> enterCredentials(
    WidgetTester tester,
    String username,
    String password,
  ) async {
    await tester.enterText(find.byKey(LoginKeys.usernameFieldKey), username);
    await tester.enterText(find.byKey(LoginKeys.passwordFieldKey), password);
    await tester.tap(find.byKey(LoginKeys.loginButtonKey));
    await tester.pump();
  }

  testWidgets(
    'Valid login',
    (tester) async {
      // Arrange
      const String validUsername = 'validUser';
      const String validPassword = 'validPassword';

      // Act
      await tester.pumpWidget(const DampOverDryApp());
      await enterCredentials(tester, validUsername, validPassword);

      // Assert
      expect(
        find.text(LoginLabels.loginSuccessLabel),
        findsOneWidget,
        reason: 'Login should succeed with valid credentials',
      );
    },
  );

  testWidgets(
    'Invalid login',
    (tester) async {
      // Arrange
      const String invalidUsername = 'invalidUser';
      const String invalidPassword = 'invalidPassword';

      // Act
      await tester.pumpWidget(const DampOverDryApp());
      await enterCredentials(tester, invalidUsername, invalidPassword);

      // Assert
      expect(
        find.text(LoginLabels.loginFailureLabel),
        findsOneWidget,
        reason: 'Login should fail with invalid credentials',
      );
    },
  );
}
