import 'package:chatvigor/core/widget/buttons/app_button.dart';
import 'package:chatvigor/core/widget/input/app_input.dart';
import 'package:flutter/material.dart';

class EmploymentStep extends StatelessWidget {
  final VoidCallback? onContinue;
  const EmploymentStep({
    super.key,
    this.onContinue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppInput(
          label: "Job Title",
          hintText: 'Enter job title',
        ),
        const AppInput(
          label: "Source of Income",
          hintText: 'Enter source of income',
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
