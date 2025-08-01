import 'package:flutter/material.dart';

class HabitCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final double progress;
  final String emoji;
  final VoidCallback? onAddTap;
  final Widget? avatarWidget;
  
  const HabitCard({
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
        padding: const EdgeInsets.all(14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 10.0,
          children: [
            Row(
              spacing: 10.0,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 31.54,
                      height: 31.54,
                      child: CircularProgressIndicator(
                        value: progress,
                        strokeWidth: 1.75,
                        backgroundColor: Theme.of(context).colorScheme.outline,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                      Text(
                        emoji, style: Theme.of(context).textTheme.labelMedium,
                      )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: Theme.of(context).textTheme.labelMedium),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              spacing: 10.0,
              children: [
                if (avatarWidget != null) avatarWidget!,
                InkWell(
                  onTap: onAddTap,
                  child: Container(
                    padding: EdgeInsets.all(3.5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.51),
                    ),
                    child: Icon(Icons.add, color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
