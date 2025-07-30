import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker/common/onboarding/widget/onboarding_buttons.dart';
import 'package:routiner_habit_tracker/common/onboarding/views/onboarding_page_one.dart';
import 'package:routiner_habit_tracker/common/onboarding/views/onboarding_page_two.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6B73FF), Color(0xFF000DFF)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              children: [
                OnboardingPageOne(screenSize: screenSize),
                OnboardingPageTwo(screenSize: screenSize),
                
              ],
            ),
            OnboardingButtons(currentPage: _currPage)
          ],
        ),
      ),
    );
  }
}
