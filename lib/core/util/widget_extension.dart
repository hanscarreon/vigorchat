import 'package:chatvigor/presentation/bloc/chat/chat_bloc.dart';
import 'package:chatvigor/presentation/cubit/steps_cubit.dart';
import 'package:chatvigor/presentation/widget/create_user/create_user_bottom_sheet.dart';
import 'package:flutter/material.dart';

extension WidgetExtension on Widget {
  void showCreateUserDialog(
    BuildContext context, {
    required StepsCubit stepCubit,
    required ChatBloc chatBloc,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: false,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.transparent,
      builder: (context) => CreateUserDialog(
        stepCubit: stepCubit,
        chatBloc: chatBloc,
        
      ),
    ).then((value) {
      stepCubit.reset();
    });
  }
}
