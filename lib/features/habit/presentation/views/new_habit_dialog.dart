import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:routiner/app/data/habit_dummy_data.dart';
import 'package:routiner/common/widgets/app_bar_leading.dart';
import 'package:routiner/common/widgets/popular_habits_card.dart';

class NewHabitDialog extends StatefulWidget {
  const NewHabitDialog({super.key, required this.type});

  final HabitType type;

  @override
  State<NewHabitDialog> createState() => _NewHabitDialogState();
}

class _NewHabitDialogState extends State<NewHabitDialog> {
  List<Habit> habits = [];
  @override
  void initState() {
    super.initState();
    if (widget.type == HabitType.good) {
      habits = popularGoodHabits;
    } else {
      habits = badHabitsToQuit;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24.0, 40.0, 0.0, 40.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8.0,
        children: [
          Text(
            widget.type == HabitType.good ? 'NEW GOOD HABIT' : 'QUIT BAD HABIT',
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: Theme.of(context).textTheme.bodySmall?.color,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  spacing: 12.0,
                  children: [
                    Text(
                      'Create Custom Habit',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    CustomLeading(
                      leadingIcon: FontAwesomeIcons.plus,
                      size: const Size(36, 36),
                      borderRadius: 12,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Text(
            widget.type == HabitType.good ? 'POPULAR HABITS' : 'BAD HABITS',
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: Theme.of(context).textTheme.bodySmall?.color,
            ),
          ),
          SizedBox(
            height: 105,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return PopularHabitsCard(habit: habits[index]);
              },
              separatorBuilder: (_, _) => const SizedBox(width: 12.0),
              itemCount: habits.length,
            ),
          ),
        ],
      ),
    );
  }
}
