import 'package:flutter/material.dart';

class AppInput extends StatelessWidget {
  final String label;
  final String? hintText;
  final List<String?> Function(String?)? validator;
  final TextEditingController? controller;
  const AppInput({
    super.key,
    required this.label,
    this.hintText,
    this.validator,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            errorText: validator != null
                ? validator!(controller!.text).firstWhere(
                    (element) => element != null,
                    orElse: () => null)
                : null,
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
