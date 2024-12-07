import 'package:chatvigor/core/di/dependency_injection.dart';
import 'package:chatvigor/core/router/app_router.dart';
import 'package:chatvigor/core/theme/app_theme.dart';
import 'package:chatvigor/presentation/screen/landing_screen.dart';
import 'package:flutter/material.dart';

void main() {
  setupDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Vigor',
      theme: AppTheme.lightTheme,
      onGenerateRoute: genererateRoute,
      initialRoute: LandingScreen.routeName,
      themeMode: ThemeMode.light,
    );
  }
}
