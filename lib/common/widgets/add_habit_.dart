import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:routiner/app/data/habit_dummy_data.dart';
import 'package:routiner/features/habit/presentation/views/new_habit_dialog.dart';

class AddHabitCards extends StatelessWidget {
  const AddHabitCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Theme.of(context).colorScheme.surface,
                    isScrollControlled: true,
                    builder: (context) => const NewHabitDialog(type: HabitType.bad),
                  );
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      spacing: 12.0,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Quit Bad Habit',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              Text(
                                'Never too late to start',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.shield,
                              size: 24,
                              color: Color(0xFFF7CECD),
                            ),
                            Icon(FontAwesomeIcons.xmark, size: 13, color: Color(0xFFE3524F)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Theme.of(context).colorScheme.surface,
                    isScrollControlled: true,
                    builder: (context) => const NewHabitDialog(type: HabitType.good),
                  );
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      spacing: 12.0,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'New Good Habit',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              Text(
                                'For a better life',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.shield,
                              size: 24,
                              color: Color(0xFFC3EBC0),
                            ),
                            Icon(
                              FontAwesomeIcons.check,
                              size: 13,
                              color: Color(0xFF3BA935),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
