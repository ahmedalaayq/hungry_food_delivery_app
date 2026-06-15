import 'package:flutter/material.dart';
import 'package:hungry/features/auth/views/login_view.dart';
import 'package:hungry/splash_view.dart';

import 'core/constants/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hungry',
      theme: ThemeData(
        brightness: .light,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: AppColors.primary,
          selectionHandleColor: AppColors.primary,
          selectionColor: AppColors.primary.withOpacity(.2),
        )
      ),
      themeMode: .light,
      darkTheme: ThemeData(
          brightness: .dark,
      ),
      home: LoginView(),
    );
  }
}

