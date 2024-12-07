import 'package:chatvigor/core/widget/buttons/app_button.dart';
import 'package:chatvigor/core/widget/input/app_input.dart';
import 'package:flutter/material.dart';

class ContactStep extends StatelessWidget {
  final VoidCallback? onContinue;
  const ContactStep({
    super.key,
    this.onContinue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppInput(
          label: "Email Address",
          hintText: 'Enter email address',
        ),
        const AppInput(
          label: "Mobile Number",
          hintText: 'Enter mobile number',
        ),
        AppButton.primary(
          onPressed: onContinue ?? () {},
          label: 'Continue',
          minWidth: double.infinity,
        ),
      ],
    );
  }
}
