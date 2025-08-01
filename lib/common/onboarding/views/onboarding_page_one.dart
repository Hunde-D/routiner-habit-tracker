import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:routiner/common/onboarding/widget/avatar_message_bubble_large.dart';
import 'package:routiner/common/onboarding/widget/avatar_message_bubble_medium.dart';
import 'package:routiner/common/onboarding/widget/avatar_message_bubble_small.dart';

class OnboardingPageOne extends StatelessWidget {
  const OnboardingPageOne({super.key, required this.screenSize});

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
        Positioned(
          top: screenSize.height * 0.16,
          left: screenSize.width * 0.12,
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withValues(alpha: 0.2),
            ),
          ),
        ),
        Positioned(
          top: screenSize.height * 0.1,
          left: screenSize.width * 0.3,
          child: ClipPath(
            clipper: OctagonalClipper(),
            child: Container(width: 15, height: 15, color: Colors.white),
          ),
        ),
        Positioned(
          top: screenSize.height * 0.2,
          left: screenSize.width * 0.3,
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withValues(alpha: 0.5),
            ),
          ),
        ),
        // the avatar and bubble
        AvatarMessageBubbleSmall(),
        // the second avatar and bubble
        AvatarMessageBubbleMedium(),
        // the third avatar and bubble
        AvatarMessageBubbleLarge(),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 24.0, bottom: screenSize.height * 0.31,),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Create\nGood Habits', 
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(height: 16),
                Text('Change your life by slowly adding new healthy habits and sticking to them.',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                )
                
              ],
            ),
          ),
        )
      ],
    );
  }
}
