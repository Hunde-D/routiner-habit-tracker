import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker/presentation/views/screens/onboarding/onboarding_view.dart';
import 'package:routiner_habit_tracker/presentation/views/screens/splash/splash_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {'/onboarding': (context) => const OnboardingScreen()},
    );
  }
}
