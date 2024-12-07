import 'package:chatvigor/core/theme/app_colors.dart';
import 'package:flutter/rendering.dart';

mixin AppStyle {
  static const EdgeInsetsGeometry screendPadding = EdgeInsets.all(8.0);
  static const defaultHorizontalPadding = EdgeInsets.all(16);
  static const modalPaddingSheet = EdgeInsets.all(25.0);

  static const EdgeInsetsGeometry inputPadding = EdgeInsets.symmetric(
    vertical: 8,
    horizontal: 16,
  );

  static BorderRadius borderRadius =
      const BorderRadius.all(Radius.circular(8.0));

  static BorderRadius borderRadiusTop = const BorderRadius.only(
    topLeft: Radius.circular(16),
    topRight: Radius.circular(16),
  );

  static const BorderSide defaultBorderSide = BorderSide(
    color: AppColors.dividerColor,
    width: 1,
  );

  static const titleStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static const buttonTextStyle = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static const smallTextStyle = TextStyle(
    fontSize: 10,
    color: AppColors.white,
  );
}
