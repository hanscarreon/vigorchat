import 'package:chatvigor/core/theme/app_style.dart';
import 'package:flutter/material.dart';

class AppButton extends ElevatedButton {
  const AppButton({
    super.key,
    required super.onPressed,
    required super.child,
  });

  AppButton.primary({
    super.key,
    required VoidCallback super.onPressed,
    required String label,
    double minWidth = 88,
  }) : super(
          style: ButtonStyle(
            minimumSize: WidgetStateProperty.all<Size>( Size(minWidth, 36)),
            backgroundColor: WidgetStateProperty.all<Color>(Colors.blue),
            shape: WidgetStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: AppStyle.borderRadius,
              ),
            ),
          ),
          child: Text(
            label,
            style: AppStyle.buttonTextStyle,
          ),
        );
}
