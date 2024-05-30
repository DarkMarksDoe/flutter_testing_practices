import 'package:flutter/material.dart';
import 'package:testing_practices/damp_over_dry/login_constants.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    super.key,
    required this.passwordController,
  });

  final TextEditingController passwordController;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: passwordController,
      key: LoginKeys.passwordFieldKey,
      decoration: const InputDecoration(
        labelText: LoginLabels.passwordLabel,
      ),
      obscureText: true,
    );
  }
}
