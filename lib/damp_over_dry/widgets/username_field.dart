import 'package:flutter/material.dart';
import 'package:testing_practices/damp_over_dry/login_constants.dart';

class UsernameField extends StatelessWidget {
  const UsernameField({
    super.key,
    required this.usernameController,
  });

  final TextEditingController usernameController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: usernameController,
      key: LoginKeys.usernameFieldKey,
      decoration: const InputDecoration(
        labelText: LoginLabels.usernameLabel,
      ),
    );
  }
}
