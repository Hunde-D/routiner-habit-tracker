import 'package:flutter/material.dart';
import 'package:routiner/app/data/habit_dummy_data.dart';

class PopularHabitsCard extends StatelessWidget {
  const PopularHabitsCard({super.key, required this.habit});

  final Habit habit;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: habit.color,
      child: Container(
        width: 128,
        height: 102,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Container(
              width: 32.0,
              height: 32.0,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Theme.of(context).colorScheme.tertiaryContainer,
              ),
              child: Text(habit.emoji),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(habit.title, style: Theme.of(context).textTheme.labelMedium),
                Text(habit.goal, style: Theme.of(context).textTheme.labelSmall),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
