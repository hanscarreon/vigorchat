import 'package:chatvigor/core/theme/app_colors.dart';
import 'package:chatvigor/core/theme/app_style.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.backgroundColor,
      primaryColor: AppColors.primaryColor,
      brightness: Brightness.light,
      useMaterial3: true,
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.blue,
        accentColor: AppColors.secondaryColor,
        errorColor: AppColors.errorColor,
      ),
      inputDecorationTheme: inputDecorationTheme,
    );
  }

  static InputDecorationTheme get inputDecorationTheme {
    return InputDecorationTheme(
      hintStyle: const TextStyle(
        color: AppColors.hintColor,
      ),
      fillColor: AppColors.white,
      contentPadding: AppStyle.inputPadding,
      enabledBorder: OutlineInputBorder(
        borderRadius: AppStyle.borderRadius,
        borderSide: AppStyle.defaultBorderSide,
      ),
      border: OutlineInputBorder(
        borderRadius: AppStyle.borderRadius,
        borderSide: AppStyle.defaultBorderSide,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: AppStyle.borderRadius,
        borderSide: AppStyle.defaultBorderSide.copyWith(
          color: AppColors.primaryColor,
        ),
      ),
    );
  }

  ElevatedButtonThemeData get elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return AppColors.disabledColor;
            }
            return AppColors.primaryColor;
          },
        ),
        foregroundColor: WidgetStateProperty.all(AppColors.white),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: AppStyle.borderRadius,
          ),
        ),
      ),
    );
  }

  AppBarTheme get appBarTheme {
    return const AppBarTheme(
      backgroundColor: AppColors.appBarColor,
      elevation: 0,
      iconTheme: IconThemeData(
        color: AppColors.white,
      ),
      titleTextStyle: TextStyle(
        color: AppColors.white,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
