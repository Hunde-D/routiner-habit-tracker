
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';

class DateTimeline extends StatelessWidget {
  const DateTimeline({super.key});

  @override
  Widget build(BuildContext context) {
    return DatePicker(
              DateTime.now(),
              width: 48,
              height: 80,
              initialSelectedDate: DateTime.now(),
              selectionColor: Theme.of(context).colorScheme.surface,
              selectedTextColor: Theme.of(context).colorScheme.primary,
              daysCount: 30,
              onDateChange: (date) {
                // handle selection here
              },
              locale: "en_US",
              monthTextStyle: const TextStyle(
                fontSize: 0, // make it effectively invisible
                height: 0, // reduce spacing
              ),
              dateTextStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize: 20,
              ),
              dayTextStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            );
  }
}