import 'package:chatvigor/core/theme/app_colors.dart';
import 'package:chatvigor/core/theme/app_style.dart';
import 'package:chatvigor/presentation/bloc/chat/chat_bloc.dart';
import 'package:chatvigor/presentation/bloc/chat/chat_event.dart';
import 'package:chatvigor/presentation/cubit/steps_cubit.dart';
import 'package:chatvigor/presentation/widget/create_user/steps/address_step.dart';
import 'package:chatvigor/presentation/widget/create_user/steps/contact_step.dart';
import 'package:chatvigor/presentation/widget/create_user/steps/employment_step.dart';
import 'package:chatvigor/presentation/widget/create_user/steps/person_name_step.dart';
import 'package:chatvigor/presentation/widget/create_user/progress_steps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateUserDialog extends Dialog {
  final StepsCubit stepCubit;
  final ChatBloc chatBloc;
  const CreateUserDialog({
    super.key,
    required this.stepCubit,
    required this.chatBloc,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StepsCubit, int>(
      bloc: stepCubit,
      builder: (context, int currentStep) {
        return SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: AppStyle.borderRadiusTop,
              color: AppColors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: ProgressSteps(
                    titles: const [
                      'Name',
                      'Address',
                      'Contact',
                      'Employment',
                    ],
                    currentStep: currentStep + 1,
                    stepCount: 4,
                  ),
                ),
                const SizedBox(height: 16),
                if (currentStep == 0)
                  PersonNameStep(
                    chatBloc: chatBloc,
                    onContinue: () {
                      stepCubit.nextStep();
                    },
                  ),
                if (currentStep == 1)
                  AddressStep(
                    chatBloc: chatBloc,
                    onContinue: () {
                      stepCubit.nextStep();
                    },
                  ),
                if (currentStep == 2)
                  ContactStep(
                    chatBloc: chatBloc,
                    onContinue: () {
                      stepCubit.nextStep();
                    },
                  ),
                if (currentStep == 3)
                  EmploymentStep(
                    chatBloc: chatBloc,
                    onContinue: () {
                      stepCubit.reset();
                      Future.delayed(const Duration(milliseconds: 1000), () async{
                        chatBloc.add(const OnTapOpenAccountEvent());
                      });

                    },
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
