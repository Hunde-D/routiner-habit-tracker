import 'package:flutter/material.dart';

class HabitIconColorSelector extends StatelessWidget {
  const HabitIconColorSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 4.0,
      children: [
        Text('ICON AND COLOR', style: Theme.of(context).textTheme.labelLarge),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 16.0,
          children: [
            Expanded(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    // mainAxisSize: MainAxisSize.min,
                    spacing: 12.0,
                    children: [
                      Container(
                        width: 36.0,
                        height: 36.0,
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 6.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Theme.of(
                            context,
                          ).colorScheme.tertiaryContainer,
                        ),
                        child: const Text('🚶‍♀️'),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Walking',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            'Icon',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    spacing: 12.0,
                    children: [
                      Container(
                        width: 36.0,
                        height: 36.0,
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 6.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Color(0xFFF15223), // Example color
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Orange',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            'Color',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ],
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
