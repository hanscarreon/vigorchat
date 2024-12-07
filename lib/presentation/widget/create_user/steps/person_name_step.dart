import 'package:chatvigor/core/widget/buttons/app_button.dart';
import 'package:chatvigor/core/widget/input/app_input.dart';
import 'package:flutter/material.dart';

class PersonNameStep extends StatelessWidget {
  final VoidCallback? onContinue;
  const PersonNameStep({
    super.key,
    this.onContinue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const AppInput(
          label: "First Name",
          hintText: 'Enter first name',
        ),
        const AppInput(
          label: "Last Name",
          hintText: 'Enter last name',
        ),
        const AppInput(
          label: "Middle Name",
          hintText: 'Enter middle name',
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
