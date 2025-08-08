import 'package:flutter/material.dart';
import 'package:routiner/app/data/learnig_dummy_data.dart';

class LearningCard extends StatelessWidget {
  final LearningItem learningItem;

  const LearningCard({Key? key, required this.learningItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Card(
        clipBehavior: Clip.antiAlias, // Ensures content respects card shape
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0),
        ),
        margin: EdgeInsets.zero,
        child: Stack(
          children: [
            // Background Image
            Positioned.fill(
              child: Image.network(
                learningItem.backgroundImage,
                fit: BoxFit.cover,
              ),
            ),
            // Semi-transparent overlay for better text readability
            Positioned.fill(
              child: Container(color: Colors.black.withOpacity(0.4)),
            ),
            // Content (Icon and Title)
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.folder_open, // Using a simple folder icon
                    color: Colors.white,
                    size: 16,
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    learningItem.title,
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
