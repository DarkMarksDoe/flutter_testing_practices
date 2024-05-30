import 'package:flutter/material.dart';

class LoginKeys {
  LoginKeys._();

  static const Key usernameFieldKey = Key('usernameField');
  static const Key passwordFieldKey = Key('passwordField');
  static const Key loginButtonKey = Key('loginButton');
  static const Key messageKey = Key('loginMessageText');
}

class LoginLabels {
  LoginLabels._();

  static const String loginPageLabel = 'Login Page';
  static const String usernameLabel = 'Type your username here';
  static const String passwordLabel = 'Type your password here';
  static const String loginLabel = 'Login';

  static const String loginSuccessLabel = 'Login Success!';
  static const String loginFailureLabel = 'Login Failure!';
}
