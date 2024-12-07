import 'package:chatvigor/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:progress_stepper/progress_stepper.dart';

class ProgressSteps extends StatelessWidget {
  final int currentStep;
  final int stepCount;
  final List<String> titles;
  const ProgressSteps({
    super.key,
    this.currentStep = 0,
    this.stepCount = 5,
    required this.titles,
  }) : assert(titles.length == stepCount,
            'Titles length and step count must be equal');

  @override
  Widget build(BuildContext context) {
    return ProgressStepper(
      width: 450,
      height: 20,
      padding: 1,
      stepCount: stepCount,
      currentStep: currentStep,
      bluntHead: true,
      bluntTail: true,
      color: AppColors.lightGray,
      progressColor: AppColors.primaryColor,
      labels: titles,
      defaultTextStyle: const TextStyle(
        color: AppColors.primaryColor,
        fontWeight: FontWeight.w500,
      ),
      selectedTextStyle: const TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
