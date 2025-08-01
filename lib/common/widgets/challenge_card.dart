import 'package:flutter/material.dart';

class ChallengeCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final double progress;
  final String emoji;
  final VoidCallback? onAddTap;
  final Widget? avatarWidget;

  const ChallengeCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.progress,
    required this.emoji,
    this.onAddTap,
    this.avatarWidget,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
        child: Column(
          spacing: 8.0,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 10.0,
              children: [
                Row(
                  spacing: 10.0,
                  children: [
                    SizedBox(
                      width: 31.54,
                      height: 31.54,
                      child: Center(
                        child: Text(emoji, style: TextStyle(fontSize: 24)),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        Text(
                          subtitle,
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if (avatarWidget != null) avatarWidget!,
                    Text(
                      '2 friends joined',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),

                  ],
                ),
              ],
            ),
            SizedBox(
              height: 3.5,
              child: LinearProgressIndicator(
                value: 0.9,
                backgroundColor: Theme.of(context).colorScheme.outline,
                valueColor: AlwaysStoppedAnimation<Color>(
                  Theme.of(context).colorScheme.primary,
                ),
                borderRadius: BorderRadius.circular(7.0),
                trackGap: 25.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
