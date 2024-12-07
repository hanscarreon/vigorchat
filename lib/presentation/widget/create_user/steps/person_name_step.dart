import 'package:chatvigor/core/widget/buttons/app_button.dart';
import 'package:chatvigor/core/widget/input/app_input.dart';
import 'package:chatvigor/presentation/bloc/chat/chat_bloc.dart';
import 'package:chatvigor/presentation/bloc/chat/chat_event.dart';
import 'package:flutter/material.dart';

class PersonNameStep extends StatefulWidget {
  final VoidCallback? onContinue;
  final ChatBloc chatBloc;
  const PersonNameStep({
    super.key,
    this.onContinue,
    required this.chatBloc,
  });

  @override
  PersonNameStepState createState() => PersonNameStepState();
}

class PersonNameStepState extends State<PersonNameStep> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController middleNameController = TextEditingController();

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    middleNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AppInput(
          label: "First Name",
          hintText: 'Enter first name',
          controller: firstNameController,
        ),
        AppInput(
          label: "Last Name",
          hintText: 'Enter last name',
          controller: lastNameController,
        ),
        AppInput(
          label: "Middle Name",
          hintText: 'Enter middle name',
          controller: middleNameController,
        ),
        AppButton.primary(
          onPressed: () {
            widget.chatBloc.add(
              OnSaveNameEvent(
                firstName: firstNameController.text,
                lastName: lastNameController.text,
                middleName: middleNameController.text,
              ),
            );
            widget.onContinue?.call();
          },
          label: 'Continue',
          minWidth: double.infinity,
        ),
      ],
    );
  }
}
