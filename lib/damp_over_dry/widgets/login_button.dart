import 'package:flutter/material.dart';
import 'package:testing_practices/damp_over_dry/login_constants.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      key: LoginKeys.loginButtonKey,
      onPressed: onPressed,
      child: const Text(LoginLabels.loginLabel),
    );
  }
}
