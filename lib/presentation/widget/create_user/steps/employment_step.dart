import 'package:chatvigor/core/widget/buttons/app_button.dart';
import 'package:chatvigor/core/widget/input/app_input.dart';
import 'package:chatvigor/presentation/bloc/chat/chat_bloc.dart';
import 'package:flutter/material.dart';

class EmploymentStep extends StatefulWidget {
  final VoidCallback? onContinue;
  final ChatBloc chatBloc;
  const EmploymentStep({
    super.key,
    this.onContinue,
    required this.chatBloc,
  });

  @override
  EmploymentStepState createState() => EmploymentStepState();
}

class EmploymentStepState extends State<EmploymentStep> {
  final TextEditingController jobTitleController = TextEditingController();
  final TextEditingController incomeSourceController = TextEditingController();

  @override
  void dispose() {
    jobTitleController.dispose();
    incomeSourceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppInput(
          label: "Job Title",
          hintText: 'Enter job title',
          controller: jobTitleController,
        ),
        AppInput(
          label: "Source of Income",
          hintText: 'Enter source of income',
          controller: incomeSourceController,
        ),
        AppButton.primary(
          onPressed: () {
            widget.onContinue?.call();
          },
          label: 'Continue',
          minWidth: double.infinity,
        ),
      ],
    );
  }
}
