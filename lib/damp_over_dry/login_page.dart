import 'package:flutter/material.dart';
import 'package:testing_practices/damp_over_dry/login_constants.dart';
import 'package:testing_practices/damp_over_dry/widgets/password_field.dart';
import 'package:testing_practices/damp_over_dry/widgets/username_field.dart';

import 'widgets/login_button.dart';

class DampOverDryApp extends StatelessWidget {
  const DampOverDryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'DAMP over DRY',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _message = '';

  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Check if username and password match
    if (username == 'validUser' && password == 'validPassword') {
      setState(() {
        _message = LoginLabels.loginSuccessLabel;
      });
    } else {
      setState(() {
        _message = LoginLabels.loginFailureLabel;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(LoginLabels.loginPageLabel)),
      body: Column(
        children: [
          UsernameField(usernameController: _usernameController),
          PasswordField(passwordController: _passwordController),
          LoginButton(onPressed: _login),
          Text(_message, key: LoginKeys.messageKey),
        ],
      ),
    );
  }
}
