import 'package:chatvigor/core/widget/buttons/app_button.dart';
import 'package:chatvigor/core/widget/input/app_input.dart';
import 'package:chatvigor/presentation/bloc/chat/chat_bloc.dart';
import 'package:chatvigor/presentation/bloc/chat/chat_event.dart';
import 'package:flutter/material.dart';

class AddressStep extends StatefulWidget {
  final VoidCallback? onContinue;
  final ChatBloc chatBloc;
  const AddressStep({
    super.key,
    this.onContinue,
    required this.chatBloc,
  });

  @override
  AddressStepState createState() => AddressStepState();
}

class AddressStepState extends State<AddressStep> {
  final TextEditingController permanentAddressController =
      TextEditingController();
  final TextEditingController currentAddressController =
      TextEditingController();

  @override
  void dispose() {
    permanentAddressController.dispose();
    currentAddressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppInput(
          label: "Permanent Address",
          hintText: 'Enter address',
          controller: permanentAddressController,
        ),
        AppInput(
          label: "Current Address",
          hintText: 'Enter current address',
          controller: currentAddressController,
        ),
        AppButton.primary(
          onPressed: () {
            widget.chatBloc.add(
              OnSaveAddressEvent(
                currentAddress: currentAddressController.text,
                permanentAddress: permanentAddressController.text,
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
