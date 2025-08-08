import 'package:flutter/material.dart';
import 'package:routiner/app/data/challenges_dummy_data.dart';
import 'package:routiner/common/widgets/avatar_stack.dart';
import 'package:routiner/common/widgets/challenge_card.dart';
import 'package:routiner/common/widgets/habit_card.dart';


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
              spacing: 4.0,
              children: [
                Text(
                  'Challenges',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
                ChallengeCard(
                challenge: challenges[1]),
                Text(
                  'Habits',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
                HabitCard(
                  title: 'Drink the water',
                  subtitle: '1000/2000 ML',
                  progress: 0.5,
                  emoji: '💧',
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
                  subtitle: '7500/10000 STEPS',
                  progress: 0.75,
                  emoji: '🚶‍♂️',
                  avatarWidget: AvatarStack(
                    imageUrls: [
                      'assets/images/onboarding/avatar-small.png',
                      'assets/images/onboarding/avatar-medium.png',
                    ],
                  ),
                ),
                HabitCard(
                  title: 'Meditation',
                  subtitle: '30/30 MIN',
                  progress: 1.0,
                  emoji: '🧘‍♀️',
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
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(height: 16),
                Text(
                  'Everyday you become one step closer to your goal. Don\'t give up!',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
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
