import 'package:chatvigor/core/theme/app_colors.dart';
import 'package:chatvigor/core/theme/app_style.dart';
import 'package:flutter/material.dart';

class VCAppBar extends AppBar {
  VCAppBar({super.key});

  VCAppBar.backWithTitle({
    super.key,
    required BuildContext context,
    VoidCallback? onTapBack,
    required String title,
    bool isCenterTitle = true,
    Color appBarColor = AppColors.appBarColor,
    TextStyle? textStyle,
  }) : super(
          leading: IconButton(
            onPressed: onTapBack ?? () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_rounded,
              size: 24,
              color: Colors.white,
            ),
          ),
          centerTitle: isCenterTitle,
          title: Text(
            title,
            style: textStyle ?? AppStyle.titleStyle,
          ),
          backgroundColor: appBarColor,
        );

  VCAppBar.withTitle({
    super.key,
    required BuildContext context,
    VoidCallback? onTapBack,
    required String title,
    bool isCenterTitle = true,
    Color appBarColor = AppColors.appBarColor,
    Widget? leadingIcon,
    TextStyle? textStyle,
    super.automaticallyImplyLeading,
  }) : super(
          leading: leadingIcon,
          centerTitle: isCenterTitle,
          title: Text(
            title,
            style: textStyle ?? AppStyle.titleStyle,
          ),
          backgroundColor: appBarColor,
        );
}
