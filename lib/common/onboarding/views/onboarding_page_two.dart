import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker/common/widgets/avatar_stack.dart';
import 'package:routiner_habit_tracker/common/widgets/challenge_card.dart';
import 'package:routiner_habit_tracker/common/widgets/habit_card.dart';


class OnboardingPageTwo extends StatelessWidget {
  const OnboardingPageTwo({super.key, required this.screenSize});

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
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
            ],
          ),
        ),

        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 24.0,
              horizontal: 20.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Text('Challenges', style: TextStyle(color: Colors.white)),
                ChallengeCard(
                  title: 'Best Runners! 🏃‍♂️',
                  subtitle: '5 days 13 hours left',
                  progress: 0.25,
                  emoji: '🕓',
                  // icon: ,
                  iconColor: Colors.blueAccent,
                  avatarWidget: AvatarStack(
                    imageUrls: [
                      'assets/images/onboarding/avatar-small.png',
                      'assets/images/onboarding/avatar-medium.png',
                    ],
                  ),
                ),
                Text('Habits', style: TextStyle(color: Colors.white)),
                HabitCard(
                  title: 'Drink the water',
                  countText: '1000/2000 ML',
                  progress: 0.5,
                  emoji: '💧',
                  iconColor: Colors.blueAccent,
                  avatarWidget: AvatarStack(
                    imageUrls: [
                      'assets/images/onboarding/avatar-small.png',
                      'assets/images/onboarding/avatar-medium.png',
                      'assets/images/onboarding/avatar-large.png',
                      'assets/images/onboarding/avatar-large.png',
                      'assets/images/onboarding/avatar-large.png',
                    ],
                  ),
                ),
                HabitCard(
                  title: 'Walk',
                  countText: '7500/10000 STEPS',
                  progress: 0.75,
                  emoji: '🚶‍♂️',
                  iconColor: Colors.orangeAccent,
                  avatarWidget: AvatarStack(
                    imageUrls: [
                      'assets/images/onboarding/avatar-small.png',
                      'assets/images/onboarding/avatar-medium.png',
                    ],
                  ),
                ),
                HabitCard(
                  title: 'Meditation',
                  countText: '30/30 MIN',
                  progress: 1.0,
                  emoji: '🧘‍♀️',
                  iconColor: Colors.greenAccent,
                  avatarWidget: AvatarStack(
                    imageUrls: [
                      'assets/images/onboarding/avatar-small.png',
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        // onboarding buttons
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.only(
              left: 24.0,
              bottom: screenSize.height * 0.31,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Track\nYour Progress',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Everyday you become one step closer to your goal. Don\'t give up!',
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.8),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
