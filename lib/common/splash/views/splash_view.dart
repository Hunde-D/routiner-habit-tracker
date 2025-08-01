import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:routiner/app/blocs/auth_cubit.dart';
import 'package:routiner/app/blocs/auth_state.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    await Future.delayed(
      const Duration(seconds: 3),
      () => {
        // Initialize the AuthCubit
        context.read<AuthCubit>().initialize(),
      },
    );

    if (!mounted) return;
    _redirectBasedOnAuth();
  }

  void _redirectBasedOnAuth() {
    final state = context.read<AuthCubit>().state;
    Navigator.of(context).pushNamedAndRemoveUntil(
      state is AuthAuthenticated ? '/home' : '/onboarding',
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E0EF6),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF6B73FF), Color(0xFF000DFF)],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 2,
              left: 0,
              child: Opacity(
                opacity: 0.5,
                child: Image.asset(
                  'assets/images/gradient.png',
                  fit: BoxFit.cover,
                  height: 250,
                ),
              ),
            ),
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  for (int i = 0; i < 5; i++)
                    Opacity(
                      opacity: 0.4,
                      child: Container(
                        width: 40 + (i * 80),
                        height: 40 + (i * 80),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey.shade50.withValues(
                              alpha: 1.0 - (i * 0.2),
                            ),
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  Image.asset(
                    'assets/images/logo.png',
                    width: 200,
                    height: 200,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
