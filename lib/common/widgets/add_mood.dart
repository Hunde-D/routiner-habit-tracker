import 'package:flutter/material.dart';

class AddMood extends StatelessWidget {
  const AddMood({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          spacing: 12.0,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Add Mood', style: Theme.of(context).textTheme.bodyMedium),
                Text(
                  'How are you feeling?',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            Row(
              spacing: 8.0,
              children: [
                InkWell(
                  onTap: () => {},
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 34.0,
                    height: 34.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text('😡'),
                  ),
                ),
                InkWell(
                  onTap: () => {},
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 34.0,
                    height: 34.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text('☹'),
                  ),
                ),
                InkWell(
                  onTap: () => {},
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 34.0,
                    height: 34.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text('😐'),
                  ),
                ),
                InkWell(
                  onTap: () => {},
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 34.0,
                    height: 34.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text('🙂'),
                  ),
                ),
                InkWell(
                  onTap: () => {},
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 34.0,
                    height: 34.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text('😍'),
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
