import 'package:chatvigor/core/widget/buttons/app_button.dart';
import 'package:chatvigor/core/widget/input/app_input.dart';
import 'package:flutter/material.dart';

class AddressStep extends StatelessWidget {
  final VoidCallback? onContinue;
  const AddressStep({
    super.key,
    this.onContinue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppInput(
          label: "Permanent Address",
          hintText: 'Enter address',
        ),
        const AppInput(
          label: "Current Address",
          hintText: 'Enter current address',
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
