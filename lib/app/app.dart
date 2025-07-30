import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker/common/onboarding/views/onboarding_view.dart';
import 'package:routiner_habit_tracker/common/splash/views/splash_view.dart';
import 'package:routiner_habit_tracker/features/auth/presentation/pages/login_page.dart';
import 'package:routiner_habit_tracker/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
      home: SplashScreen(),
      routes: {
        '/onboarding': (context) => const OnboardingScreen(),
        '/login': (context) => const LoginPage(),
        },
    );
  }
}
