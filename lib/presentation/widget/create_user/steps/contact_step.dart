import 'package:chatvigor/core/widget/buttons/app_button.dart';
import 'package:chatvigor/core/widget/input/app_input.dart';
import 'package:chatvigor/presentation/bloc/chat/chat_bloc.dart';
import 'package:chatvigor/presentation/bloc/chat/chat_event.dart';
import 'package:flutter/material.dart';

class ContactStep extends StatefulWidget {
  final VoidCallback? onContinue;
  final ChatBloc chatBloc;
  const ContactStep({
    super.key,
    this.onContinue,
    required this.chatBloc,
  });

  @override
  ContactStepState createState() {
    return ContactStepState();
  }
}

class ContactStepState extends State<ContactStep> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    mobileNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppInput(
          label: "Email Address",
          hintText: 'Enter email address',
          controller: emailController,
        ),
        AppInput(
          label: "Mobile Number",
          hintText: 'Enter mobile number',
          controller: mobileNumberController,
        ),
        AppButton.primary(
          onPressed: () {
            widget.chatBloc.add(
              OnSavedContactEvent(
                mobileNumber: mobileNumberController.text,
                email: emailController.text,
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
