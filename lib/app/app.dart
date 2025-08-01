import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:routiner/app/blocs/auth_cubit.dart';
import 'package:routiner/common/onboarding/views/onboarding_choose_habits.dart';
import 'package:routiner/common/onboarding/views/onboarding_view.dart';
import 'package:routiner/common/splash/views/splash_view.dart';
import 'package:routiner/features/auth/presentation/pages/login_page.dart';
import 'package:routiner/features/auth/presentation/pages/signup_page.dart';
import 'package:routiner/features/auth/services/auth_service.dart';
import 'package:routiner/features/habit/presentation/page/home_page.dart';
import 'package:routiner/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AuthCubit(AuthService()))],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light,
        themeMode: ThemeMode.light,
        routes: {
          '/': (context) => const SplashScreen(),
          '/onboarding': (context) => const OnboardingScreen(),
          '/onboarding/choose-habits': (context) =>
              const OnboardingChooseHabits(),
          '/login': (context) => const LoginPage(),
          '/signup': (context) => const SignupPage(),
          '/home': (context) => const HomePage(),
        },
        initialRoute: '/',
      ),
    );
  }
}
