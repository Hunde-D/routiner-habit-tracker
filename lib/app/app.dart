import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker/common/presentation/views/onboarding/onboarding_view.dart';
import 'package:routiner_habit_tracker/common/presentation/views/splash/splash_view.dart';
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
      routes: {'/onboarding': (context) => const OnboardingScreen()},
    );
  }
}
