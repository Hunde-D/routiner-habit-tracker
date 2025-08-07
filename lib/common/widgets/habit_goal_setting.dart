
import 'package:flutter/material.dart';
import 'package:routiner/common/widgets/app_bar_leading.dart';

class HabitGoalSetting extends StatelessWidget {
  const HabitGoalSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 4.0,
      children: [
        Text('GOAL', style: Theme.of(context).textTheme.labelLarge),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8.0,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1 times',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          'or more per day',
                          style: Theme.of(context).textTheme.bodySmall
                        ),
                      ],
                    ),
                    CustomLeading(onTap: () {}, leadingIcon: Icons.edit, size: Size(36,36), borderRadius: 12.0,)
                  ],
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.tertiaryContainer,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    spacing: 12,
                    children: [
                      Text(
                        '🔁 Daily',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        '📄 Every day',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                )
                
              ],
            ),
          ),
        ),
      ],
    );
  }
}